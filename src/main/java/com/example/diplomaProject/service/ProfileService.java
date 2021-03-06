package com.example.diplomaProject.service;

import com.example.diplomaProject.domain.Profile;
import com.example.diplomaProject.domain.Vacancy;
import com.example.diplomaProject.dto.UserProfileDto;
import com.example.diplomaProject.repository.ProfileRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import java.util.List;

@Service
public class ProfileService {
    @Autowired
    private ProfileRepo profileRepo;

    public List<Profile> listAll(String keyword){
        if (keyword != null){
            return profileRepo.search(keyword);
        }
        return profileRepo.findAll();
    }

    public void updateProfile(UserProfileDto dto, Model model) {
        Profile profile = profileRepo.findById(dto.getProfileId()).orElse(null);

        if (profile == null) {
            model.addAttribute("errorMessage", "Не найден профиль!");
        }

        profile.setName(dto.getName());
        profile.setSurname(dto.getSurname());
        profile.setBirthday(dto.getBirthday());
        profile.setSkills(dto.getSkills());
        profile.setEducation(dto.getEducation());
        profile.setExperience(dto.getExperience());


        profileRepo.save(profile);
    }


}
