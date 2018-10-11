package com.pdsu.ss.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pdsu.ss.bean.User;

@Repository
public class UserDao {
	/*
	 * ���Զ����Ա���������������캯�����б�ע������Զ�װ��Ĺ�����
	 *  ͨ�� @Autowired��ʹ�������� set ��get������
	 */
	@Autowired
	private DataSource dataSource;
	public List<User> getAll() throws SQLException{
		List<User> list=new ArrayList<User>();
		Connection conn=dataSource.getConnection();
		PreparedStatement ps=conn.prepareStatement("select id, username from user");
		ResultSet rs=ps.executeQuery();
		while(rs.next()) {
			String id=rs.getString("id");
			String username=rs.getString("username");
			User user=new User(id,username);
			list.add(user);
			
		}
		return list;
	}
}
