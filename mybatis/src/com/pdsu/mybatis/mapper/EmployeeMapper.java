package com.pdsu.mybatis.mapper;

import java.util.List;

import com.pdsu.mybatis.entity.Deparment;
import com.pdsu.mybatis.entity.Employee;

public interface EmployeeMapper {
	//��һ
	public Employee getEmpAndDeptById(Integer id);
	//�Զ�ڶ��ַ�ʽ
	public List<Employee> getEmpsByDeptId(Integer id);
}
