package com.example.diplomaProject.repository;

import com.example.diplomaProject.domain.Vacancy;
import org.springframework.data.repository.CrudRepository;

public interface VacancyRepo extends CrudRepository<Vacancy, Long> {

}
