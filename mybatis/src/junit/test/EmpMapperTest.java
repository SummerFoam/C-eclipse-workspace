package junit.test;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.Test;

import com.pdsu.mybatis.entity.Employee;
import com.pdsu.mybatis.mapper.EmployeeMapper;

public class EmpMapperTest {
	@Test
	public void testManytoOne() throws IOException {
		String resource="mybatis-config.xml";
		InputStream inputStream = Resources.getResourceAsStream(resource);
		SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		SqlSession session = sqlSessionFactory.openSession();
		//mapper为接口的对象
		EmployeeMapper mapper = session.getMapper(EmployeeMapper.class);
		Employee employee = mapper.getEmpAndDeptById(3);
		System.out.println(employee);
		System.out.println(employee.getEmpName());
		System.out.println("--------------");
		System.out.println(employee.getDept());
	}
	
}
