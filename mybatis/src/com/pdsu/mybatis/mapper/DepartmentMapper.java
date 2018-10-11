package com.pdsu.mybatis.mapper;

import com.pdsu.mybatis.entity.Deparment;

public interface DepartmentMapper {
	//对一
	public Deparment getDeptById(Integer id);
	//对多第一种
	public Deparment getDeptAndemp(Integer id);
	//对多第二种
	public Deparment getDeptAndEmpWithStep(Integer id);
}
