package com.mis.domain;
/**
 * 筌��굝苡뀐옙�깈
 * 筌��굞�젫筌륅옙
 * 占쏙옙占쎌쁽
 * �빊�뮉�솇占쎄텢
 * �빊�뮉�솇占쎌뵬
 * 占쎄텕占쎌뜖占쎈굡1
 * 占쎄텕占쎌뜖占쎈굡2
 * 占쎄텕占쎌뜖占쎈굡3
 * ISBN
 * 占쎌돳占쎌뜚筌륅옙
 * 占쎌돳占쎌뜚甕곕뜇�깈
 * @author 占쎌젟占쎌뜚
 *
 */

import java.sql.Date;

public class BookVO {

	private int bookNum;
	private String bookTitle;
	private String writer;
	private String publisher;
	private Date publishDate;
	private int memNum ;
	private String bookKeyword1;
	private String bookKeyword2;
	private String bookKeyword3;
	private String isbn;
	private String memName;
	
	public int getBookNum() {
		return bookNum;
	}
	public void setBookNum(int bookNum) {
		this.bookNum = bookNum;
	}
	public String getBookTitle() {
		return bookTitle;
	}
	public void setBookTitle(String bookTitle) {
		this.bookTitle = bookTitle;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getPublisher() {
		return publisher;
	}
	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}
	public Date getPublishDate() {
		return publishDate;
	}
	public void setPublishDate(Date publishDate) {
		this.publishDate = publishDate;
	}
	public int getMemNum() {
		return memNum;
	}
	public void setMemNum(int memNum) {
		this.memNum = memNum;
	}
	public String getBookKeyword1() {
		return bookKeyword1;
	}
	public void setBookKeyword1(String bookKeyword1) {
		this.bookKeyword1 = bookKeyword1;
	}
	public String getBookKeyword2() {
		return bookKeyword2;
	}
	public void setBookKeyword2(String bookKeyword2) {
		this.bookKeyword2 = bookKeyword2;
	}
	public String getBookKeyword3() {
		return bookKeyword3;
	}
	public void setBookKeyword3(String bookKeyword3) {
		this.bookKeyword3 = bookKeyword3;
	}
	public String getIsbn() {
		return isbn;
	}
	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}
	public String getMemName() {
		return memName;
	}
	public void setMemName(String memName) {
		this.memName = memName;
	}
	@Override
	public String toString() {
		return "BookVO [bookNum=" + bookNum + ", bookTitle=" + bookTitle + ", writer=" + writer + ", publisher="
				+ publisher + ", publishDate=" + publishDate + ", memNum=" + memNum + ", bookKeyword1=" + bookKeyword1
				+ ", bookKeyword2=" + bookKeyword2 + ", bookKeyword3=" + bookKeyword3 + ", isbn=" + isbn + ", memName="
				+ memName + "]";
	}


	


}
