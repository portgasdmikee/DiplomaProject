package com.example.diplomaProject.repository;

import com.example.diplomaProject.domain.Vacancy;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface VacancyRepo extends JpaRepository<Vacancy, Long> {

    @Query("SELECT v FROM Vacancy v INNER JOIN CompanyProfile p ON p = v.companyProfile " +
            "WHERE CONCAT(v.name, v.conditions, v.duty, v.requirement, p.name, p.city ) LIKE %?1%")
    public List<Vacancy> search(String keyword);


}
