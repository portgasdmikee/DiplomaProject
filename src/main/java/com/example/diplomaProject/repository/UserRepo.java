package com.example.diplomaProject.repository;

import com.example.diplomaProject.domain.CompanyProfile;
import com.example.diplomaProject.domain.User;
import org.springframework.data.repository.CrudRepository;

public interface UserRepo extends CrudRepository<User, Long> {
    User findByUsername(String username);

    User findByActivationCode(String code);

    User findByCompanyProfile(CompanyProfile id);

}
