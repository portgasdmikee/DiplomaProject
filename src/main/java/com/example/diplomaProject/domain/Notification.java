package com.example.diplomaProject.domain;

import org.hibernate.exception.DataException;

import javax.persistence.*;
import java.util.Date;

@Entity
public class Notification {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    @ManyToOne
    @JoinColumn(name = "PROFILE_ID", referencedColumnName = "ID")
    private Profile profileId;
    @ManyToOne
    @JoinColumn(name = "VACANCY_ID", referencedColumnName = "ID")
    private Vacancy vacancyId;
    @Column(name = "DATE")
    private Date date;


    public Notification() {
    }

    public Notification(Long id, Profile profileId, Vacancy vacancyId, Date date) {
        this.id = id;
        this.profileId = profileId;
        this.vacancyId = vacancyId;
        this.date = date;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Profile getProfileId() {
        return profileId;
    }

    public void setProfileId(Profile profileId) {
        this.profileId = profileId;
    }

    public Vacancy getVacancyId() {
        return vacancyId;
    }

    public void setVacancyId(Vacancy vacancyId) {
        this.vacancyId = vacancyId;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }
}
