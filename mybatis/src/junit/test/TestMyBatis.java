package junit.test;

import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.Test;

import com.pdsu.mybatis.entity.User;
import com.pdsu.mybatis.mapper.UserMapper;

public class TestMyBatis{
	public SqlSessionFactory getSqlSessionFactory() throws IOException {
		String resource="mybatis-config.xml";
		InputStream inputStream = Resources.getResourceAsStream(resource);
		SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		return sqlSessionFactory;
	}
	//1.����jar��[mybatis],mysql������
	//2.����mybatis��ȫ�������ļ�����SqlSessionFactory����
	//3��qlSessionFactory�����ȡSqlSession
	//4ͨ��SqlSession��ȡsql���
//	@Test
//	public void test() throws IOException {
//		//1.����mybatis��ȫ�������ļ�����SqlSessionFactory����
//		String resource="mybatis-config.xml";
//		InputStream inputStream = Resources.getResourceAsStream(resource);
//		SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
//		
//		//2.ͨ����qlSessionFactory��������ȡSqlSession
//		//SqlSession����һ�η�����[mybatis]�����ݵ�һ�λỰ
//		//HttpSession������ͷ�����֮���һ�λỰ
//		SqlSession session = sqlSessionFactory.openSession();
//		try {
//		 User selectOne = session.selectOne("org.mybatis.example.BlogMapper.selectBlog", 1);
//		 System.out.println(selectOne);
//		} finally {
//			//3�رջỰ
//		  session.close();
//		}
//	}
//	
	@Test
	public void test1() throws IOException {
		String resource="mybatis-config.xml";
		InputStream inputStream = Resources.getResourceAsStream(resource);
		SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		SqlSession session = sqlSessionFactory.openSession();
		//mapperΪ�ӿڵĶ���
		UserMapper mapper = session.getMapper(UserMapper.class);
		System.out.println(mapper.getClass());
		User user = mapper.getUserById("2");
		System.out.println(user);
	}
	//ɾ������
	@Test
	public void testDelete() throws IOException {
		SqlSessionFactory sessionFactory=getSqlSessionFactory();
		SqlSession session = sessionFactory.openSession();
		UserMapper mapper = session.getMapper(UserMapper.class);
		int result=mapper.deleteUserById("2");
		System.out.println(result);
		session.commit();
		session.close();
	}
	@Test
	public void testMultiParameter() throws IOException {
		SqlSessionFactory sessionFactory=getSqlSessionFactory();
		SqlSession session = sessionFactory.openSession();
		UserMapper mapper = session.getMapper(UserMapper.class);
		User u = mapper.getUserByIdAndPwd("qq", "123");
		System.out.println(u);
		session.close();
	}
	
	@Test
	public void testSave() throws IOException {
		SqlSessionFactory sessionFactory=getSqlSessionFactory();
		SqlSession session = sessionFactory.openSession();
		UserMapper mapper = session.getMapper(UserMapper.class);
		int i = mapper.saveUser(new User("1","pan","123","1234@qq.com"));
		System.out.println(i);
		session.commit();
		session.close();
	}
	//ʹ��mapȡֵ����xmlһ��
	@Test
	public void testParamMap() throws IOException {
		SqlSessionFactory sessionFactory=getSqlSessionFactory();
		SqlSession session = sessionFactory.openSession();
		UserMapper mapper = session.getMapper(UserMapper.class);
		Map<String, Object> map=new HashMap<String,Object>();
		map.put("name", "pan");
		map.put("pwd", "123");
		map.put("table", "user");
		User user=mapper.getUserByMap(map);
		System.out.println(user);
		session.commit();
		session.close();
	}
	//�����ķ���ֵ����
	@Test
	public void testResultList() throws IOException {
		SqlSessionFactory sessionFactory=getSqlSessionFactory();
		SqlSession session = sessionFactory.openSession();
		UserMapper mapper = session.getMapper(UserMapper.class);
		Map<String, Object> map=new HashMap<String,Object>();
		List<User> list=mapper.getAll();
		for(User user : list) {
			System.out.println(user);
		}
		session.commit();
		session.close();
	}
	
	@Test
	public void testResultMap() throws IOException {
		SqlSessionFactory sessionFactory=getSqlSessionFactory();
		SqlSession session = sessionFactory.openSession();
		UserMapper mapper = session.getMapper(UserMapper.class);
		//ctrl+1
		Map<String, Object> map = mapper.getUserMapById(1);
		
		Set<Entry<String, Object>> set = map.entrySet();
		for(Entry<String, Object> entry : set) {
			System.out.println(entry.getKey()+":"+entry.getValue());
		}
		session.commit();
		session.close();
	}
}
