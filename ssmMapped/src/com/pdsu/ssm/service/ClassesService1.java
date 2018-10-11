package com.pdsu.ssm.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pdsu.ssm.dao.ClassesDao1;
import com.pdsu.ssm.oneTomanyBean.Classes;

@Service
public class ClassesService1 {
	@Autowired
	private ClassesDao1 classesDao1;
	
	public Classes getClasses(Integer cid) {
		return classesDao1.getClasses(cid);
	}
}
