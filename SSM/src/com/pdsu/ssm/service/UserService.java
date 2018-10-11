package com.pdsu.ssm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.pdsu.ssm.bean.User;
import com.pdsu.ssm.mapper.UserMapper;
//ʵ�ֲ�
@Service
public class UserService {
	@Autowired
	private UserMapper mapper;
	@Transactional(readOnly=true)
	public List<User> getList(){
		return mapper.getList();
	}
	
	//ע��
	@Transactional
	public int regist(User user) {
		// TODO Auto-generated method stub
		return mapper.regist(user);
	}
	//��¼
	@Transactional
	public User login(User user) {
		// TODO Auto-generated method stub
		return mapper.login(user);
	}
}
