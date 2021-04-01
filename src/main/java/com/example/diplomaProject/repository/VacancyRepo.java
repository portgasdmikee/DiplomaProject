package com.example.diplomaProject.repository;

import com.example.diplomaProject.domain.Vacancy;
import org.springframework.data.jpa.repository.JpaRepository;

public interface VacancyRepo extends JpaRepository<Vacancy, Long> {

}
