package com.example.diplomaProject.controller;

import com.example.diplomaProject.domain.CompanyProfile;
import com.example.diplomaProject.domain.User;
import com.example.diplomaProject.domain.Vacancy;
import com.example.diplomaProject.repository.UserRepo;
import com.example.diplomaProject.repository.VacancyRepo;
import com.example.diplomaProject.service.VacancyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import javax.validation.Valid;
import java.security.Principal;
import java.util.Map;

@Controller
public class VacancyController {

    @Autowired
    private UserRepo userRepo;

    @Autowired
    private VacancyService vacancyService;

    @GetMapping("/newVacancy")
    public String newVacancy() {
        return "newVacancy";

    }

    @PostMapping("/newVacancy")
    public String createVacancy(
            @Valid Vacancy vacancy,
            Model model,
            Principal principal
    ) {
        User user = userRepo.findByUsername(principal.getName());
        vacancyService.createVacancy(vacancy, user);
        model.addAttribute("user", user);

        return "redirect:/companyProfile";
    }

    @PostMapping("/deleteVacancy")
    public String deleteVacancy(
            @Valid Vacancy vacancy,
            Model model,
            Principal principal) {
        User user = userRepo.findByUsername(principal.getName());
        model.addAttribute("user", user);
        vacancyService.deleteVacancy(vacancy);


        return "redirect:/companyProfile";
    }

}

