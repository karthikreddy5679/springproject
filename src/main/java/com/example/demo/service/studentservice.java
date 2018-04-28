package com.example.demo.service;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.persistence.FetchType;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.example.demo.model.student;
import com.example.demo.repository.studentrep;

@Service
@Transactional()
public class studentservice {
	
	private final studentrep stdrep;
    public studentservice(studentrep stdrep) {
    	this.stdrep=stdrep;
    }
	public void savestudent(student std) {
		stdrep.save(std);
	}
	public List<student> showall(){
		List<student> students=new ArrayList<student>();
		for(student std:stdrep.findAll()) {
			students.add(std);
		}
		
		return students;
	}
	public List<student> username() {
       return (List<student>) stdrep.findAll();

	}
	


}
