package com.mis.domain;

import java.util.Date;

public class ReportBoardVO {
	
	   private int reportNum;            
	   private String reportTitle;         
	   private String reportContent;        
	   private Date reportDate;          
	   private int reportCount;         
	   private int memNum;               
	   private int bookNum;             
	   private String reportCategory;      
	   private String memName;             
	   private String writer;             
	   private String publisher;
	   
	public int getReportNum() {
		return reportNum;
	}
	public void setReportNum(int reportNum) {
		this.reportNum = reportNum;
	}
	public String getReportTitle() {
		return reportTitle;
	}
	public void setReportTitle(String reportTitle) {
		this.reportTitle = reportTitle;
	}
	public String getReportContent() {
		return reportContent;
	}
	public void setReportContent(String reportContent) {
		this.reportContent = reportContent;
	}
	public Date getReportDate() {
		return reportDate;
	}
	public void setReportDate(Date reportDate) {
		this.reportDate = reportDate;
	}
	public int getReportCount() {
		return reportCount;
	}
	public void setReportCount(int reportCount) {
		this.reportCount = reportCount;
	}
	public int getMemNum() {
		return memNum;
	}
	public void setMemNum(int memNum) {
		this.memNum = memNum;
	}
	public int getBookNum() {
		return bookNum;
	}
	public void setBookNum(int bookNum) {
		this.bookNum = bookNum;
	}
	public String getReportCategory() {
		return reportCategory;
	}
	public void setReportCategory(String reportCategory) {
		this.reportCategory = reportCategory;
	}
	public String getMemName() {
		return memName;
	}
	public void setMemName(String memName) {
		this.memName = memName;
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
	@Override
	public String toString() {
		return "ReportBoardVO [reportNum=" + reportNum + ", reportTitle=" + reportTitle + ", reportContent="
				+ reportContent + ", reportDate=" + reportDate + ", reportCount=" + reportCount + ", memNum=" + memNum
				+ ", bookNum=" + bookNum + ", reportCategory=" + reportCategory + ", memName=" + memName + ", writer="
				+ writer + ", publisher=" + publisher + "]";
	}  




}
