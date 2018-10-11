package com.pdsu.mybatis.mapper;

import java.util.List;

import com.pdsu.mybatis.entity.Book;

public interface BookMapper {
	public Book getBookId(Integer id);
	public int addBook(Book book);
	public int updateBook(Book book);
	public List<Book> getAllBook();
	public int deleteBookById(Integer id);
}
