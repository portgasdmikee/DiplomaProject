package com.example.diplomaProject.service;

import com.example.diplomaProject.domain.CompanyProfile;
import com.example.diplomaProject.domain.User;
import com.example.diplomaProject.domain.Vacancy;
import com.example.diplomaProject.repository.UserRepo;
import com.example.diplomaProject.repository.VacancyRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class VacancyService {
    @Autowired
    private UserRepo userRepo;

    @Autowired
    private VacancyRepo vacancyRepo;

    public void createVacancy(Vacancy vacancy, User user) {

        CompanyProfile companyProfile = user.getCompanyProfile();
        vacancy.setName(vacancy.getName());
        vacancy.setRequirement(vacancy.getRequirement());
        vacancy.setDuty(vacancy.getDuty());
        vacancy.setConditions(vacancy.getConditions());
        vacancy.setCompanyProfile(companyProfile);

        vacancyRepo.save(vacancy);

    }


    public void deleteVacancy(Vacancy vacancy) {
        vacancyRepo.deleteById(vacancy.getId());
    }
}

