package com.pdsu.entities;

import java.util.Arrays;
import java.util.List;

public class Student {
	private String name;
	private int age;
	private boolean gender;
	private Address address;
	private String[] hobby;
	private List<Role> list;
	
	
	public List<Role> getList() {
		return list;
	}
	public void setList(List<Role> list) {
		this.list = list;
	}
	public String[] getHobby() {
		return hobby;
	}
	public void setHobby(String[] hobby) {
		this.hobby = hobby;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public boolean isGender() {
		return gender;
	}
	public void setGender(boolean gender) {
		this.gender = gender;
	}
	
	public void setAddress(Address address) {
		this.address = address;
	}
	
	public Address getAddress() {
		return address;
	}
	public Student() {
		super();
		// TODO Auto-generated constructor stub
	}
	//有参构造
	public Student(String name, int age, boolean gender) {
		super();
		this.name = name;
		this.age = age;
		this.gender = gender;
	}
	@Override
	public String toString() {
		return "Student [name=" + name + ", age=" + age + ", gender=" + gender + ", address=" + address + ", hobby="
				+ Arrays.toString(hobby) + ", list=" + list + "]";
	}
	

}
