package com.pdsu.ssm.mapper;

import java.util.List;

import com.pdsu.ssm.bean.User;
//�൱��dao��ӿڲ�
public interface UserMapper {
	public List<User> getList();

	public int regist(User user);

	public User login(User user);
}
