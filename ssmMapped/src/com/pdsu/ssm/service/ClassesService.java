package com.pdsu.ssm.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pdsu.ssm.dao.classesDao;
import com.pdsu.ssm.oneTooneBean.Classes;

@Service
public class ClassesService {
	@Autowired
	private classesDao classesDao;
	public Classes getClassInfo(Integer id) {
		return classesDao.getClassInfo(id);
	}
}
