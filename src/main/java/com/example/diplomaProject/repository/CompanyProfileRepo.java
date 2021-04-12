package com.example.diplomaProject.repository;

import com.example.diplomaProject.domain.CompanyProfile;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CompanyProfileRepo extends CrudRepository<CompanyProfile, Long> {



}
