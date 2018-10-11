package com.pdsu.ss.service;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.pdsu.ss.bean.User;
import com.pdsu.ss.dao.UserDao;

@Service
public class UserService {
	@Autowired
	private UserDao dao;
	@Transactional
	public List<User> getList() throws SQLException{
//		1.ת�ˣ���������˼ת��100Ԫ
//		�������۳�100
//		���Ŀ��ϼ���100
//		��������Ҫô���ɹ���Ҫô�����ɹ�
		return dao.getAll();
	}
}
