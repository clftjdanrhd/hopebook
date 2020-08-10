package com.mis.domain;

public class BookstoreVO {
	
	private int bookstoreNum ;
	private String bookstoreTitle;
	private String bookstoreContent;
	private String bookstoreUrl;
	private int memNum;
	public int getBookstoreNum() {
		return bookstoreNum;
	}
	public void setBookstoreNum(int bookstoreNum) {
		this.bookstoreNum = bookstoreNum;
	}
	public String getBookstoreTitle() {
		return bookstoreTitle;
	}
	public void setBookstoreTitle(String bookstoreTitle) {
		this.bookstoreTitle = bookstoreTitle;
	}
	public String getBookstoreContent() {
		return bookstoreContent;
	}
	public void setBookstoreContent(String bookstoreContent) {
		this.bookstoreContent = bookstoreContent;
	}
	public String getBookstoreUrl() {
		return bookstoreUrl;
	}
	public void setBookstoreUrl(String bookstoreUrl) {
		this.bookstoreUrl = bookstoreUrl;
	}
	public int getMemNum() {
		return memNum;
	}
	public void setMemNum(int memNum) {
		this.memNum = memNum;
	}
	@Override
	public String toString() {
		return "BookstoreVO [bookstoreNum=" + bookstoreNum + ", bookstoreTitle=" + bookstoreTitle
				+ ", bookstoreContent=" + bookstoreContent + ", bookstoreUrl=" + bookstoreUrl + ", memNum=" + memNum
				+ "]";
	}
	



}
