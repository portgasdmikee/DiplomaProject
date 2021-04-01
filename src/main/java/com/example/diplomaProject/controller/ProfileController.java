package com.example.diplomaProject.controller;

import com.example.diplomaProject.domain.Profile;
import com.example.diplomaProject.domain.User;
import com.example.diplomaProject.dto.UserProfileDto;
import com.example.diplomaProject.repository.UserRepo;
import com.example.diplomaProject.service.ProfileService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.security.Principal;

@Controller
public class ProfileController {

    @Autowired
    private ProfileService profileService;

    @Autowired
    private UserRepo userRepo;

    @GetMapping("/profile")
    public String profile(Model model, Principal principal) {
        User user = userRepo.findByUsername(principal.getName());
        boolean isProfile = user.getTarget().equals("lookingJob");
        model.addAttribute("user", user);

        return isProfile ? "redirect:/profile" : "redirect:/companyProfile";
    }

    @GetMapping("/editProfile")
    public String editProfile(Model model,  Principal principal) {
        User user = userRepo.findByUsername(principal.getName());
        model.addAttribute("user", user);
        return "editProfile";
    }

    @PostMapping("/editProfile")
    public String profileSave(Model model, UserProfileDto dto){

        profileService.updateProfile(dto, model);

        return "redirect:/profile";

    }
}
