package com.mis.domain;

import java.util.Arrays;
import java.util.Date;

public class QnAVO {
	private int qNum;
	private String title;
	private String content;
	private int memNum;
	private String memName;
	private Date inDate;
	private int qnaComtNum;
	private int commCnt;

	private String[] files;

	public int getqNum() {
		return qNum;
	}

	public void setqNum(int qNum) {
		this.qNum = qNum;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
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

	public Date getInDate() {
		return inDate;
	}

	public void setInDate(Date inDate) {
		this.inDate = inDate;
	}

	public int getQnaComtNum() {
		return qnaComtNum;
	}

	public void setQnaComtNum(int qnaComtNum) {
		this.qnaComtNum = qnaComtNum;
	}

	public int getCommCnt() {
		return commCnt;
	}

	public void setCommCnt(int commCnt) {
		this.commCnt = commCnt;
	}

	public String[] getFiles() {
		return files;
	}

	public void setFiles(String[] files) {
		this.files = files;
	}

	@Override
	public String toString() {
		return "QnAVO [qNum=" + qNum + ", title=" + title + ", content=" + content + ", memNum=" + memNum + ", memName="
				+ memName + ", inDate=" + inDate + ", qnaComtNum=" + qnaComtNum + ", commCnt=" + commCnt + ", files="
				+ Arrays.toString(files) + "]";
	}

	
	
	
	
}
