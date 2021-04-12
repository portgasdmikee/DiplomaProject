package com.example.diplomaProject.controller;

import com.example.diplomaProject.domain.CompanyProfile;
import com.example.diplomaProject.domain.Profile;
import com.example.diplomaProject.domain.User;
import com.example.diplomaProject.domain.Vacancy;
import com.example.diplomaProject.dto.UserCompanyProfileDto;
import com.example.diplomaProject.dto.UserProfileDto;
import com.example.diplomaProject.repository.UserRepo;
import com.example.diplomaProject.repository.VacancyRepo;
import com.example.diplomaProject.service.CompanyProfileService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import java.security.Principal;

@Controller
public class CompanyProfileController {


    @Autowired
    private CompanyProfileService companyProfileService;

    @Autowired
    private UserRepo userRepo;

    @GetMapping("/companyProfile")
    public String profile(Model model, Principal principal) {

        User user = userRepo.findByUsername(principal.getName());
        model.addAttribute("user", user);
        model.addAttribute("myPage", true);


        return "companyProfile";
    }

    @GetMapping("/editCompanyProfile")
    public String editProfile(Model model,  Principal principal) {
        User user = userRepo.findByUsername(principal.getName());
        model.addAttribute("user", user);
        return "editCompanyProfile";
    }

    @PostMapping("/editCompanyProfile")
    public String profileSave(Model model, UserCompanyProfileDto dto){

        companyProfileService.updateCompanyProfile(dto, model);

        return "redirect:/companyProfile";

    }

    @GetMapping("/aboutCompany/{id}")
    public String aboutEmployee(Model model, @PathVariable("id") CompanyProfile id) {

        User user = userRepo.findByCompanyProfile(id);
        model.addAttribute("user", user);
        model.addAttribute("myPage", false);


        return "companyProfile";
    }

}
