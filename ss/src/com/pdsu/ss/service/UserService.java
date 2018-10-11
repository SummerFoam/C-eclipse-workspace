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
//		1.转账，张三给李思转账100元
//		张三卡扣除100
//		李四卡上加上100
//		加上事物要么都成功，要么都不成功
		return dao.getAll();
	}
}
