package com.example.diplomaProject.controller;

import com.example.diplomaProject.domain.User;
import com.example.diplomaProject.domain.Vacancy;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.validation.Valid;

@Controller
public class VacancyController {
    @GetMapping("/newVacancy")
    public String newVacancy() {

        return "newVacancy";

    }
    @PostMapping("/newVacancy")
    public String createVacancy(
            @Valid Vacancy vacancy,
            BindingResult bindingResult,
            Model model,
            @AuthenticationPrincipal User user
    ){

        return "redirect:/companyProfile";
    }

}
