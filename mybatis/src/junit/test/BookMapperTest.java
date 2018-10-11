package junit.test;


import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.Test;

import com.pdsu.mybatis.entity.Book;
import com.pdsu.mybatis.mapper.BookMapper;
import com.pdsu.mybatis.mapper.UserMapper;
//http://blog.csdn.net/xiaokui_wingfly/article/details/40380221
//http://blog.csdn.net/wojiaohuangyu/article/details/52022210
public class BookMapperTest {

	@Test
	public void testGetBookById() throws IOException {
		String resource="mybatis-config.xml";
		InputStream inputStream = Resources.getResourceAsStream(resource);
		SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		SqlSession session = sqlSessionFactory.openSession();
		//mapper为接口的对象
		BookMapper mapper = session.getMapper(BookMapper.class);
		Book book = mapper.getBookId(1);
		System.out.println(book);
	}
	@Test
	public void testAddBook() throws IOException {
		String resource="mybatis-config.xml";
		InputStream inputStream = Resources.getResourceAsStream(resource);
		SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		SqlSession session = sqlSessionFactory.openSession();
		//mapper为接口的对象
		BookMapper mapper = session.getMapper(BookMapper.class);
		Book book=new Book();
		book.setBookName("张");
		book.setPrice(333.33);
		book.setAuthor("aa");
		int addBook = mapper.addBook(book);
		session.commit();
		System.out.println(addBook);
		session.close();
	}
	@Test
	public void testUpdateBook() throws IOException {
			String resource="mybatis-config.xml";
			InputStream inputStream = Resources.getResourceAsStream(resource);
			SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
			SqlSession session = sqlSessionFactory.openSession();
			//mapper为接口的对象
			BookMapper mapper = session.getMapper(BookMapper.class);
			Book book=new Book();
			book.setId(2);
			book.setBookName("张");
			book.setPrice(663.33);
			book.setAuthor("aabbb");
			int i = mapper.updateBook(book);
			session.commit();
			session.close();
			System.out.println(i);
	}
	@Test
	public void testAll() throws IOException {
		String resource="mybatis-config.xml";
		InputStream inputStream = Resources.getResourceAsStream(resource);
		SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		SqlSession session = sqlSessionFactory.openSession();
		//mapper为接口的对象
		BookMapper mapper = session.getMapper(BookMapper.class);
		List<Book> list = mapper.getAllBook();
		for(Book book:list) {
			System.out.println(list);
		}
		session.commit();
		session.close();
		
	}
	
	@Test
	public void testDelete() throws IOException {
		String resource="mybatis-config.xml";
		InputStream inputStream = Resources.getResourceAsStream(resource);
		SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		SqlSession session = sqlSessionFactory.openSession();
		BookMapper mapper = session.getMapper(BookMapper.class);
		int result=mapper.deleteBookById(2);
		System.out.println(result);
		session.commit();
		session.close();
	}
}
