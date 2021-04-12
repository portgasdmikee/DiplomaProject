package com.example.diplomaProject.repository;

import com.example.diplomaProject.domain.Notification;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface NotificationRepo extends JpaRepository<Notification, Long> {

    @Query("SELECT n from Notification n " +
            "INNER join CompanyProfile c ON n.vacancyId.companyProfile.id = c.id " +
            "where c.id = :id")
    List<Notification> findByCompanyProfile(@Param("id") Long id);


}
