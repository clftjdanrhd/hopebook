package com.mis.domain;

import java.sql.Date;
import java.util.Arrays;

/**
 * 
 * 공지사항 등록, 수정, 삭제, 조회를 할 수 있는 클래스(싱글톤)
 * 
 * @author 김정민
 *
 */

public class NoticeVO {
	
	private int noticeNum;
	private String noticeTitle;
	private String noticeContent;
	private Date noticeDate;
	private int memNum;
	private String memName;
	private int noticeCount;
	
	private String[] files;

	public int getNoticeNum() {
		return noticeNum;
	}

	public void setNoticeNum(int noticeNum) {
		this.noticeNum = noticeNum;
	}

	public String getNoticeTitle() {
		return noticeTitle;
	}

	public void setNoticeTitle(String noticeTitle) {
		this.noticeTitle = noticeTitle;
	}

	public String getNoticeContent() {
		return noticeContent;
	}

	public void setNoticeContent(String noticeContent) {
		this.noticeContent = noticeContent;
	}

	public Date getNoticeDate() {
		return noticeDate;
	}

	public void setNoticeDate(Date noticeDate) {
		this.noticeDate = noticeDate;
	}

	public int getMemNum() {
		return memNum;
	}

	public void setMemNum(int memNum) {
		this.memNum = memNum;
	}

	public String getMemName() {
		return memName;
	}

	public void setMemName(String memName) {
		this.memName = memName;
	}

	public int getNoticeCount() {
		return noticeCount;
	}

	public void setNoticeCount(int noticeCount) {
		this.noticeCount = noticeCount;
	}

	public String[] getFiles() {
		return files;
	}

	public void setFiles(String[] files) {
		this.files = files;
	}

	@Override
	public String toString() {
		return "NoticeVO [noticeNum=" + noticeNum + ", noticeTitle=" + noticeTitle + ", noticeContent=" + noticeContent + ", noticeDate=" + noticeDate + ", memNum="
				+ memNum + ", memName=" + memName + ", noticeCount=" + noticeCount + ", files="
				+ Arrays.toString(files) + "]";
	}
	
	
	
}
	
