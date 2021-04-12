package com.example.diplomaProject.controller;

import com.example.diplomaProject.domain.*;
import com.example.diplomaProject.repository.UserRepo;
import com.example.diplomaProject.service.NotificationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.security.Principal;
import java.util.List;

@Controller
public class NotificationController {
    @Autowired
    private UserRepo userRepo;

    @Autowired
    private NotificationService notificationService;

    @GetMapping("/notifications")
    public String profileNotifications(Model model, Principal principal) {

        User user = userRepo.findByUsername(principal.getName());
        CompanyProfile companyProfile = user.getCompanyProfile();
        List<Notification> notifications = notificationService.findByCompanyProfile(companyProfile);
        model.addAttribute("notifications", notifications);


        return "notification";
    }

    @PostMapping("/addNotification")
    public String addNotification(Model model,
                                  @RequestParam("vacancyId")Vacancy vacancy,
                                  Principal principal){
        User user = userRepo.findByUsername(principal.getName());
        Profile profile = user.getProfile();

        notificationService.addNotification(vacancy, profile);
        model.addAttribute("message", "Вы откликнулись");
        model.addAttribute("vacancy", vacancy);



        return "aboutVacancy";

    }


}
