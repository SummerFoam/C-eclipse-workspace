package junit.test;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.Test;

import com.pdsu.mybatis.entity.Deparment;
import com.pdsu.mybatis.entity.Employee;
import com.pdsu.mybatis.mapper.DepartmentMapper;
import com.pdsu.mybatis.mapper.EmployeeMapper;

public class DepartmentMapperTest {
	//对多第一种
//	@Test
//	public void testOnetoMany() throws IOException {
//		String resource="mybatis-config.xml";
//		InputStream inputStream = Resources.getResourceAsStream(resource);
//		SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
//		SqlSession session = sqlSessionFactory.openSession();
//		//mapper为接口的对象
//		DepartmentMapper mapper = session.getMapper(DepartmentMapper.class);
//		Deparment deparment = mapper.getDeptAndemp(3);
//		List<Employee> list=deparment.getList();
//		for(Employee e:list) {
//			System.out.println(e.getEmpName());
//		}
//	}

	//对多第二种
	@Test
	public void testOnetoMany1() throws IOException {
		String resource="mybatis-config.xml";
		InputStream inputStream = Resources.getResourceAsStream(resource);
		SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		SqlSession session = sqlSessionFactory.openSession();
		//mapper为接口的对象
		DepartmentMapper mapper = session.getMapper(DepartmentMapper.class);
		Deparment deparment = mapper.getDeptAndEmpWithStep(3);
		List<Employee> list=deparment.getList();
		for(Employee e:list) {
			System.out.println(e.getEmpName());
		}
}
}
