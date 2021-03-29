package com.example.diplomaProject.service;

import com.example.diplomaProject.domain.CompanyProfile;
import com.example.diplomaProject.domain.Profile;
import com.example.diplomaProject.domain.Role;
import com.example.diplomaProject.domain.User;
import com.example.diplomaProject.repository.CompanyProfileRepo;
import com.example.diplomaProject.repository.ProfileRepo;
import com.example.diplomaProject.repository.UserRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import java.util.Collections;
import java.util.UUID;

@Service
public class UserService implements UserDetailsService {
    @Autowired
    private UserRepo userRepo;

    @Autowired
    private ProfileRepo profileRepo;

    @Autowired
    private CompanyProfileRepo companyProfileRepo;

    @Autowired
    private MailSender mailSender;

    @Autowired
    private PasswordEncoder passwordEncoder;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        User user = userRepo.findByUsername(username);
        if(user == null){
            throw new UsernameNotFoundException("Пользователь не найден");
        }
        return user;
    }

    public boolean addUser(User user){
        User userFromDb = userRepo.findByUsername(user.getUsername());

        if (userFromDb != null){
            return false;
        }
        if (user.getTarget().equals("lookingJob")){
            Profile profile = new Profile();
            profile = profileRepo.save(profile);
            user.setProfile(profile);
        }else {
            CompanyProfile companyProfile = new CompanyProfile();
            companyProfile = companyProfileRepo.save(companyProfile);
            user.setCompanyProfile(companyProfile);
        }


        user.setActive(false);
        user.setRoles(Collections.singleton(Role.USER));
        user.setActivationCode(UUID.randomUUID().toString());
        user.setPassword(passwordEncoder.encode(user.getPassword()));


        userRepo.save(user);

        if (!StringUtils.isEmpty(user.getEmail())){
            String message = String.format(
                    "Приветсвуем, %s! \n " +
                            "Добро пожаловать. Пожалуйста, перейдите по следующей ссылке: http://localhost:8080/activate/%s",
                    user.getUsername(),
                    user.getActivationCode()
            );

            mailSender.send(user.getEmail(), "Activation code", message);
        }

        return true;
    }

    public boolean activateUser(String code) {

        User user = userRepo.findByActivationCode(code);

        if (user == null){
            return false;
        }

            user.setActivationCode(null);
            user.setActive(true);
            userRepo.save(user);


        return true;

    }
}
