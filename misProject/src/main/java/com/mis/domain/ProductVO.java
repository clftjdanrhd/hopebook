package com.mis.domain;

import java.util.Date;

public class ProductVO {

	private int pno;
	private String title;
	private String price;
	private String content;
	private String writer;
	private Date regdate;
	private int viewcnt;
	public int getPno() {
		return pno;
	}
	public void setPno(int pno) {
		this.pno = pno;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public int getViewcnt() {
		return viewcnt;
	}
	public void setViewcnt(int viewcnt) {
		this.viewcnt = viewcnt;
	}
	@Override
	public String toString() {
		return "ProductVO [pno=" + pno + ", title=" + title + ", price=" + price + ", content=" + content + ", writer="
				+ writer + ", regdate=" + regdate + ", viewcnt=" + viewcnt + "]";
	}



}
