package com.example.diplomaProject.dto;

public class UserProfileDto {

    private Long profileId;

    private String username;
    private String email;
    private String target;

    private String name;
    private String surname;
    private String birthday;
    private String skills;
    private String education;
    private String experience;

    public UserProfileDto() {
    }

    public UserProfileDto(String username, String email, String target, String name, String surname,
                          String birthday, String skills, String education, String experience, Long profileId) {
        this.username = username;
        this.email = email;
        this.target = target;
        this.name = name;
        this.surname = surname;
        this.birthday = birthday;
        this.skills = skills;
        this.education = education;
        this.experience = experience;
        this.profileId = profileId;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTarget() {
        return target;
    }

    public void setTarget(String target) {
        this.target = target;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public String getSkills() {
        return skills;
    }

    public void setSkills(String skills) {
        this.skills = skills;
    }

    public String getEducation() {
        return education;
    }

    public void setEducation(String education) {
        this.education = education;
    }

    public String getExperience() {
        return experience;
    }

    public void setExperience(String experience) {
        this.experience = experience;
    }

    public Long getProfileId() {
        return profileId;
    }

    public void setProfileId(Long profileId) {
        this.profileId = profileId;
    }

    @Override
    public String toString() {
        return "UserProfileDto{" +
                "username='" + username + '\'' +
                ", profileId='" + profileId + '\'' +
                ", email='" + email + '\'' +
                ", target='" + target + '\'' +
                ", name='" + name + '\'' +
                ", surname='" + surname + '\'' +
                ", birthday='" + birthday + '\'' +
                ", skills='" + skills + '\'' +
                ", education='" + education + '\'' +
                ", experience='" + experience + '\'' +
                '}';
    }
}
