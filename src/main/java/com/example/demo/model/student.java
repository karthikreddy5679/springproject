package com.example.demo.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="student")
public class student {

	@Override
	public String toString() {
		return "student [username=" + username + ", password=" + password + ", id=" + id + ", major=" + major
				+ ", name=" + name + "]";
	}
	private String username;
	private String password;
	@Id
	private String id;
	private String major;
	private String name;
	
	public student(String username, String password,String id, String major, String name) {
		super();
		this.username = username;
		this.password = password;
		this.major = major;
		this.name = name;
		this.id=id;
	}
	
	public student() {
		
	}
	
    public student(String id,String major, String name) {
		this.id=id;
		this.major=major;
		this.name=name;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getMajor() {
		return major;
	}
	public void setMajor(String major) {
		this.major = major;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	
	
	
	
}
