package com.pdsu.ssm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.pdsu.ssm.bean.Book;
import com.pdsu.ssm.bean.Page;
import com.pdsu.ssm.mapper.BookMapper;

@Service
public class BookService {
	@Autowired
	private BookMapper bookMapper;
	@Transactional(readOnly=true)
	public List<Book> getList() {
		// TODO Auto-generated method stub
		List<Book> list=bookMapper.getList();
		return list;
	}
	//分页
	@Transactional
	public Page<Book> getPageInfo(String pageNo,int pageSize){
		int currentNo=1;
		Page<Book> page=null;
		try {
			currentNo=Integer.parseInt(pageNo);
			
		}catch(Exception e) {
			
		}finally {
			int totalRecord=bookMapper.getTotalRecord();
			page=new Page<Book>(currentNo,totalRecord,pageSize);
			//select * from book limit 起始索引，查几条
			List<Book>list=bookMapper.getLimitList(page.getIndex(),pageSize);
			page.setList(list);
		}
		
	
		return page;
	}
	
}
