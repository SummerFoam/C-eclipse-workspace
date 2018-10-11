package com.pdsu.ssm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pdsu.ssm.dao.userDao;
import com.pdsu.ssm.manyTomanyBean.Users;

@Service
public class userService {
	@Autowired
	private userDao userDao;
	public List<Users> getUsers(Integer uid) {
		return userDao.getUsers(uid);
	}
}
