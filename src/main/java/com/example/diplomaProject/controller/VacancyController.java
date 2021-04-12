package com.example.diplomaProject.controller;

import com.example.diplomaProject.domain.User;
import com.example.diplomaProject.domain.Vacancy;
import com.example.diplomaProject.repository.UserRepo;
import com.example.diplomaProject.service.VacancyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import javax.validation.Valid;
import java.security.Principal;
import java.util.List;

@Controller
public class VacancyController {

    @Autowired
    private UserRepo userRepo;

    @Autowired
    private VacancyService vacancyService;

    @GetMapping("/vacancy")
    public String vacancy(Model model) {
        List<Vacancy> vacancyList = vacancyService.listAll(null);
        model.addAttribute("vacancyList", vacancyList);
        model.addAttribute("keyword", "");
        return "vacancy";
    }

    @GetMapping("/vacancySearch")
    public String searchVacancy(Model model, @Param("keyword") String keyword){
        List<Vacancy> vacancyList = vacancyService.listAll(keyword);
        model.addAttribute("vacancyList", vacancyList);
        model.addAttribute("keyword", keyword);

        return "vacancy";
    }

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

    @GetMapping("/aboutVacancy/{id}")
    public String aboutVacancy(Model model, @PathVariable("id") Vacancy id) {
        model.addAttribute("vacancy", id);
        model.addAttribute("message", "");
        model.addAttribute("myPage", false);


        return "aboutVacancy";
    }

}

