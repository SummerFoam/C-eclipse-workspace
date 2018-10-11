package com.pdsu.mybatis.entity;

import java.util.List;

public class Deparment {
	private Integer id;
	private String deptName;
	//Ò»¶Ô¶à
	private List<Employee> list;
	public Deparment() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getDeptName() {
		return deptName;
	}
	public void setDeptName(String deptName) {
		this.deptName = deptName;
	}
	@Override
	public String toString() {
		return "Deparment [id=" + id + ", deptName=" + deptName + ", list=" + list + "]";
	}
	public List<Employee> getList() {
		return list;
	}
	public void setList(List<Employee> list) {
		this.list = list;
	}
	
}
