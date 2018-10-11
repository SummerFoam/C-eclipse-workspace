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
	//1.导入jar包[mybatis],mysql驱动包
	//2.根据mybatis的全局配置文件创建SqlSessionFactory对象
	//3由qlSessionFactory对象获取SqlSession
	//4通过SqlSession获取sql语句
//	@Test
//	public void test() throws IOException {
//		//1.根据mybatis的全局配置文件创建SqlSessionFactory对象
//		String resource="mybatis-config.xml";
//		InputStream inputStream = Resources.getResourceAsStream(resource);
//		SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
//		
//		//2.通过三qlSessionFactory对象来获取SqlSession
//		//SqlSession代表一次服务器[mybatis]和数据的一次会话
//		//HttpSession浏览器和服务器之间的一次会话
//		SqlSession session = sqlSessionFactory.openSession();
//		try {
//		 User selectOne = session.selectOne("org.mybatis.example.BlogMapper.selectBlog", 1);
//		 System.out.println(selectOne);
//		} finally {
//			//3关闭会话
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
		//mapper为接口的对象
		UserMapper mapper = session.getMapper(UserMapper.class);
		System.out.println(mapper.getClass());
		User user = mapper.getUserById("2");
		System.out.println(user);
	}
	//删除数据
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
	//使用map取值键和xml一致
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
	//参数的返回值类型
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
