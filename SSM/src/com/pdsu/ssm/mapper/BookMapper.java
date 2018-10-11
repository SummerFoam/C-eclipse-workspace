package com.pdsu.ssm.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.pdsu.ssm.bean.Book;

public interface BookMapper {
	public List<Book> getList();

	public Integer getTotalRecord();

	public List<Book> getLimitList(@Param("index")int index, @Param("pageSize")int pageSize);
}
