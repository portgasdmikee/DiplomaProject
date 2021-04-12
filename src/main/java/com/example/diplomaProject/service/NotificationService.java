package com.example.diplomaProject.service;

import com.example.diplomaProject.domain.CompanyProfile;
import com.example.diplomaProject.domain.Notification;
import com.example.diplomaProject.domain.Profile;
import com.example.diplomaProject.domain.Vacancy;
import com.example.diplomaProject.repository.NotificationRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
public class NotificationService {
    @Autowired
    private NotificationRepo notificationRepo;

    public void addNotification(Vacancy vacancy, Profile profile) {

        Notification notification = new Notification();
        notification.setProfileId(profile);
        notification.setVacancyId(vacancy);
        notification.setDate(new Date());

        notificationRepo.save(notification);
    }

    public List<Notification> findByCompanyProfile(CompanyProfile companyProfile) {

        List<Notification> notifications = notificationRepo.findByCompanyProfile(companyProfile.getId());

        return notifications;
    }
}
