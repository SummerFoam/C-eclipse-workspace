package com.pdsu.ssm.dao;

import java.util.List;

import com.pdsu.ssm.manyTomanyBean.Users;

public interface userDao {
	public List<Users> getUsers(Integer uid);
}
