package com.pdsu.entities;

public class User1 {
	private String id;
	private String username;
	private Integer age;
	private boolean gender;
	
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
	public boolean isGender() {
		return gender;
	}
	public void setGender(boolean gender) {
		this.gender = gender;
	}

	public User1(String id, String username, Integer age, boolean gender) {
		super();
		this.id = id;
		this.username = username;
		this.age = age;
		this.gender = gender;
	}
	@Override
	public String toString() {
		return "User1 [id=" + id + ", username=" + username + ", age=" + age + ", gender=" + gender + "]";
	}
	public User1() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
