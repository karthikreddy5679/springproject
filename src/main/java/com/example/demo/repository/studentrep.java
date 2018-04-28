package com.example.demo.repository;

import org.springframework.data.repository.CrudRepository;

import com.example.demo.model.student;

public interface studentrep extends CrudRepository<student, Integer> {

	
}
