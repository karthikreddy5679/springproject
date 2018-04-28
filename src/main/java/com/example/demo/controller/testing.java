package com.example.demo.controller;




import java.util.List;
import java.util.stream.Collectors;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

import org.hibernate.SessionEventListener;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.model.student;

import com.example.demo.repository.studentrep;
import com.example.demo.service.studentservice; 

@Controller 
public class testing implements HttpSessionListener {
 
	@Autowired
	private studentservice a33;
	@RequestMapping("/")
	public String login() { 
		return "loginpage"; 
	}  
	
	@RequestMapping("/check") 
	public String logincheck(HttpServletRequest request1) {
		String a=request1.getParameter("username");
	    String b=request1.getParameter("password");
        if(a33.username().stream().filter(n->n.getUsername().equals(a)).count()>0 && a33.username().stream().filter(n->n.getPassword().equals(b)).count()>0) {
        	request1.setAttribute("students",a33.username().stream().filter(n->n.getUsername().equals(a)).collect(Collectors.toList()));
        	return "welcome";
        }
        return "errorpage";
         
	}  
	 
	@RequestMapping("/update") 
	public String update(HttpServletRequest request9) {
		String a=request9.getParameter("update");
		student b=a33.username().stream().filter(n->n.getId().equals(a)).findFirst().get();
	request9.setAttribute("student",b);
	return "update";
	
	}
	@RequestMapping("/regis") 
	public String register( ) { 
		return "registrationpage"; 
	} 
	@Autowired
	private studentrep stu;
	@RequestMapping("/getdetails")
	public  String userreg1(@RequestParam String username,@RequestParam String password,
			@RequestParam String id,@RequestParam String major,@RequestParam String name) {
		student a=new student(username,password,id,major,name);
		stu.save(a);
		return "success";	   
	}
	@RequestMapping("/update1")
	public  String userupdate(HttpServletRequest request,@RequestParam String id,@RequestParam String major,
			@RequestParam String name,@RequestParam String username,@RequestParam String password) {
		  
		student s2=new student(username,password,id, major, name);
    	  a33.savestudent(s2);
    	  request.setAttribute("student", s2);
    	  return "NewFile";
	}
	
	/*@RequestMapping("/show-students")
	public  String userreg2(HttpServletRequest request) {
	List<student> a34=(List<student>) stu.findAll();
	request.setAttribute("students", a34); 
	return "welcome";
				 
	}*/
	@Override
	public void sessionCreated(HttpSessionEvent se) {
		se.getSession().setMaxInactiveInterval(1*120);
		
	}
	@Override
	public void sessionDestroyed(HttpSessionEvent se) {
		// TODO Auto-generated method stub
		
	}

}