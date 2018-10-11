package com.pdsu.ssm.bean;

public class Book {
	private Integer id;
	private String bookName;
	private String author;
	private double price;
	//ÏúÁ¿
	private int sales;
	//¿â´æ
	private int stock;
	private String imgPath="/static/img/default.jpg";
	public Book() {
		super();
		// TODO Auto-generated constructor stub
	}
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
	public int getSales() {
		return sales;
	}
	public void setSales(int sales) {
		this.sales = sales;
	}
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	public String getImgPath() {
		return imgPath;
	}
	public void setImgPath(String imgPath) {
		this.imgPath = imgPath;
	}
	
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	@Override
	public String toString() {
		return "book [id=" + id + ", bookName=" + bookName + ", author=" + author + ", price=" + price + ", sales="
				+ sales + ", stock=" + stock + ", imgPath=" + imgPath + "]";
	}
	
	
}
