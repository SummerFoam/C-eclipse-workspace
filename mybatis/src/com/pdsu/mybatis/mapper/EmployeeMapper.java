package com.pdsu.mybatis.mapper;

import java.util.List;

import com.pdsu.mybatis.entity.Deparment;
import com.pdsu.mybatis.entity.Employee;

public interface EmployeeMapper {
	//对一
	public Employee getEmpAndDeptById(Integer id);
	//对多第二种方式
	public List<Employee> getEmpsByDeptId(Integer id);
}
