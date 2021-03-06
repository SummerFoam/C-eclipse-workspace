package com.pdsu.mybatis.entity;

public class Book {
	private Integer id;
	private String bookName;
	private double price;
	private String author;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getBookName() {
		return bookName;
	}
	public void setBookName(String bookName) {
		this.bookName = bookName;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public Book(Integer id, String bookName, double price, String author) {
		super();
		this.id = id;
		this.bookName = bookName;
		this.price = price;
		this.author = author;
	}
	public Book() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Book [id=" + id + ", bookName=" + bookName + ", price=" + price + ", author=" + author + "]";
	}
	public Book(String bookName, double price, String author) {
		super();
		this.bookName = bookName;
		this.price = price;
		this.author = author;
	}
	
}
