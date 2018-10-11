package com.pdsu.ssm.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;

import com.pdsu.ssm.dao.StudentDao;
import com.pdsu.ssm.oneTomanyBean.Student;

@Service
public class StudentService {
	@Autowired
	private StudentDao studentDao;
	public Student getStudents(Integer sid) {
		return studentDao.getStudents(sid);
	}
}
