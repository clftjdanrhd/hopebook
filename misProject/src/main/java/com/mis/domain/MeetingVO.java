package com.mis.domain;

import java.util.Date;

public class MeetingVO {
	
	
	
	private int metNum;
	private String metName ;
	private String   metGreeting;
	private String represent ;
	private Date metDate;
	private int headCount;
	private String metIntro;
	private String keyword ;
	private String location;
	private String metPlace;
	private String approval;
	private String 	metImg;
	private int memNum;
	
	public int getMetNum() {
		return metNum;
	}
	public void setMetNum(int metNum) {
		this.metNum = metNum;
	}
	public String getMetName() {
		return metName;
	}
	public void setMetName(String metName) {
		this.metName = metName;
	}
	public String getMetGreeting() {
		return metGreeting;
	}
	public void setMetGreeting(String metGreeting) {
		this.metGreeting = metGreeting;
	}
	public String getRepresent() {
		return represent;
	}
	public void setRepresent(String represent) {
		this.represent = represent;
	}
	public Date getMetDate() {
		return metDate;
	}
	public void setMetDate(Date metDate) {
		this.metDate = metDate;
	}
	public int getHeadCount() {
		return headCount;
	}
	public void setHeadCount(int headCount) {
		this.headCount = headCount;
	}
	public String getMetIntro() {
		return metIntro;
	}
	public void setMetIntro(String metIntro) {
		this.metIntro = metIntro;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getMetPlace() {
		return metPlace;
	}
	public void setMetPlace(String metPlace) {
		this.metPlace = metPlace;
	}
	public String getApproval() {
		return approval;
	}
	public void setApproval(String approval) {
		this.approval = approval;
	}
	public String getMemId() {
		return metImg;
	}
	public void setMemId(String metImg) {
		this.metImg = metImg;
	}
	public int getMemNum() {
		return memNum;
	}
	public void setMemNum(int memNum) {
		this.memNum = memNum;
	}
	@Override
	public String toString() {
		return "MeetingVO [metNum=" + metNum + ", metName=" + metName + ", metGreeting=" + metGreeting + ", represent="
				+ represent + ", metDate=" + metDate + ", headCount=" + headCount + ", metIntro=" + metIntro
				+ ", keyword=" + keyword + ", location=" + location + ", metPlace=" + metPlace + ", approval="
				+ approval + ", metImg=" + metImg + ", memNum=" + memNum + "]";
	}
	
	
}
