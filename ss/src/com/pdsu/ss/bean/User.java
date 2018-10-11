package com.pdsu.ss.bean;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.NumberFormat;

public class User {
	private String id;
	private String username;
	private Integer age;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date birth;
	@NumberFormat(pattern="###,###,##")
	private double salary;
	
	public double getSalary() {
		return salary;
	}
	public void setSalary(double salary) {
		this.salary = salary;
	}
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	public User(String id, String username, Integer age, Date birth) {
		super();
		this.id = id;
		this.username = username;
		this.age = age;
		this.birth = birth;
	}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public Integer getAge() {
		return age;
	}
	public void setAge(Integer age) {
		this.age = age;
	}
	public Date getBirth() {
		return birth;
	}
	public void setBirth(Date birth) {
		this.birth = birth;
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", username=" + username + ", age=" + age + ", birth=" + birth + "]";
	}
	public User(String id, String username) {
		super();
		this.id = id;
		this.username = username;
	}
	
}
