package com.pdsu.mybatis.mapper;

import com.pdsu.mybatis.entity.Deparment;

public interface DepartmentMapper {
	//��һ
	public Deparment getDeptById(Integer id);
	//�Զ��һ��
	public Deparment getDeptAndemp(Integer id);
	//�Զ�ڶ���
	public Deparment getDeptAndEmpWithStep(Integer id);
}
