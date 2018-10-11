package com.pdsu.ssm.bean;

import java.util.List;

/*
 * 分页封装的类
 */
public class Page<T>{
	private List<T> list;//当前页列表数据,数据库查询得到
	private int pageNumber;//当前页码，前端页面传递
	private int totalRecord;//总记录数，数据库查询得到
	private int pageSize;//每页显示条数，前端页面传递
//	private int totalPage;//总页数，计算得到
//	private int index;//当前页的起始索引
	private String path;//用来设置servlet访问路径及method参数
	
	public Page(int pageNumber, int totalRecord, int pageSize) {
		super();
		this.pageNumber = pageNumber;
		this.totalRecord = totalRecord;
		this.pageSize = pageSize;
	}
	public List<T> getList() {
		return list;
	}
	public void setList(List<T> list) {
		this.list = list;
	}
	public int getPageNumber() {
		if(pageNumber<1) {
			pageNumber=1;
		}else if(pageNumber>getTotalPage()) {
			pageNumber=getTotalPage();
		}
		return pageNumber;
	}
	public void setPageNumber(int pageNumber) {
		this.pageNumber = pageNumber;
	}
	
	public int getTotalRecord() {
		return totalRecord;
	}
	public void setTotalRecord(int totalRecord) {
		this.totalRecord = totalRecord;
	}
	
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	
	public int getTotalPage() {
		return (int) Math.ceil((double)getTotalRecord()/getPageSize());
	}
	//起始索引
	public int getIndex() {
		return ((getPageNumber()-1)*getPageSize())+1;
	}
	
	public int getEnd() {
		return getPageNumber()*getPageSize();
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	
	
}
