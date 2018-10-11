package com.pdsu.ssm.mapper;

import java.util.List;

import com.pdsu.ssm.bean.User;
//相当于dao层接口层
public interface UserMapper {
	public List<User> getList();

	public int regist(User user);

	public User login(User user);
}
