package com.example.diplomaProject.service;

import com.example.diplomaProject.domain.CompanyProfile;
import com.example.diplomaProject.domain.Profile;
import com.example.diplomaProject.dto.UserCompanyProfileDto;
import com.example.diplomaProject.dto.UserProfileDto;
import com.example.diplomaProject.repository.CompanyProfileRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

@Service
public class CompanyProfileService {
    @Autowired
    private CompanyProfileRepo companyProfileRepo;

    public void updateCompanyProfile(UserCompanyProfileDto dto, Model model) {
        CompanyProfile companyProfile = companyProfileRepo.findById(dto.getCompanyProfileId())
                .orElse(null);

        if (companyProfile == null) {
            model.addAttribute("errorMessage", "Не найден профиль!");
        }

        companyProfile.setName(dto.getName());
        companyProfile.setActivity(dto.getActivity());
        companyProfile.setInfo(dto.getInfo());
        companyProfile.setCity(dto.getCity());


        companyProfileRepo.save(companyProfile);
    }
}
