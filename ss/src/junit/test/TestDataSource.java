package junit.test;


import java.sql.Connection;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.pdsu.ss.bean.User;

public class TestDataSource {
	ApplicationContext ioc=new ClassPathXmlApplicationContext("applicationContext.xml");
	@Test
	public void testConnection() throws SQLException {
		DataSource dataSource = ioc.getBean(DataSource.class);
		Connection conn=dataSource.getConnection();
		System.out.println(conn);
	}
}
