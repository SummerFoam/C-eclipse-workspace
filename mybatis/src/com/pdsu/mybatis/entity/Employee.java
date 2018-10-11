package com.pdsu.mybatis.entity;

public class Employee {
	private Integer id;
	private String empName;
	private String password;
	private boolean gender;
	private String email;
	//∂‡∂‘“ª
	private Deparment dept;
	public Employee() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getEmpName() {
		return empName;
	}
	public void setEmpName(String empName) {
		this.empName = empName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public boolean isGender() {
		return gender;
	}
	public void setGender(boolean gender) {
		this.gender = gender;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Deparment getDept() {
		return dept;
	}
	public void setDept(Deparment dept) {
		this.dept = dept;
	}
	@Override
	public String toString() {
		return "Employee [id=" + id + ", empName=" + empName + ", password=" + password + ", gender=" + gender
				+ ", email=" + email + ", dept=" + dept + "]";
	}
	
}
