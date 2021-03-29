package com.example.diplomaProject.repository;


import com.example.diplomaProject.domain.Profile;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ProfileRepo extends CrudRepository<Profile, Long> {

}
