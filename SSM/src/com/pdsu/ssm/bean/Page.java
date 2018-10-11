package com.pdsu.ssm.bean;

import java.util.List;

/*
 * ��ҳ��װ����
 */
public class Page<T>{
	private List<T> list;//��ǰҳ�б�����,���ݿ��ѯ�õ�
	private int pageNumber;//��ǰҳ�룬ǰ��ҳ�洫��
	private int totalRecord;//�ܼ�¼�������ݿ��ѯ�õ�
	private int pageSize;//ÿҳ��ʾ������ǰ��ҳ�洫��
//	private int totalPage;//��ҳ��������õ�
//	private int index;//��ǰҳ����ʼ����
	private String path;//��������servlet����·����method����
	
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
	//��ʼ����
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
