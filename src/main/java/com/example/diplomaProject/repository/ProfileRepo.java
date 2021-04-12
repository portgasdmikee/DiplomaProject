package com.example.diplomaProject.repository;


import com.example.diplomaProject.domain.Profile;
import com.example.diplomaProject.domain.Vacancy;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ProfileRepo extends JpaRepository<Profile, Long> {

    @Query("SELECT p FROM Profile p " +
            "WHERE CONCAT(p.name, p.surname, p.education, p.experience, p.skills, p.birthday ) LIKE %?1%")
    public List<Profile> search(String keyword);

}
