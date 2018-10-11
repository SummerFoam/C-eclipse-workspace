package com.pdsu.mybatis.mapper;

import java.util.List;
import java.util.Map;

import com.pdsu.mybatis.entity.User;

public interface UserMapper {
	public int saveUser(User user);
	public User getUserById(String id);
	public int deleteUserById(String id);
	public User getUserByIdAndPwd(String username,String password);
	public User getUserByMap(Map<String, Object> map);
	public List<User> getAll();
	public Map<String,Object> getUserMapById(Integer id);
}
