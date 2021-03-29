package com.example.diplomaProject.dto;

public class UserCompanyProfileDto {

    private Long companyProfileId;

    private String username;
    private String email;
    private String target;

    private String name;
    private String activity;
    private String info;
    private String city;

    public UserCompanyProfileDto() {
    }

    public UserCompanyProfileDto(Long companyProfileId, String username, String email, String target,
                                 String name, String activity, String info, String city) {
        this.companyProfileId = companyProfileId;
        this.username = username;
        this.email = email;
        this.target = target;
        this.name = name;
        this.activity = activity;
        this.info = info;
        this.city = city;
    }

    public Long getCompanyProfileId() {
        return companyProfileId;
    }

    public void setCompanyProfileId(Long companyProfileId) {
        this.companyProfileId = companyProfileId;
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

    public String getActivity() {
        return activity;
    }

    public void setActivity(String activity) {
        this.activity = activity;
    }

    public String getInfo() {
        return info;
    }

    public void setInfo(String info) {
        this.info = info;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

}
