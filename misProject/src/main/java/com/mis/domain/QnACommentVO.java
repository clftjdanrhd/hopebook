package com.mis.domain;

import java.util.Date;

public class QnACommentVO {

	private int qnaComtNum;
	private String qnaComContent;
	private Date qnaComtDate;
	private String memName;
	private int qNum;
	private int memNum;
	
	private String ajaxComtDate;
	
	public String getAjaxComtDate() {
		return ajaxComtDate;
	}
	public void setAjaxComtDate(String ajaxComtDate) {
		this.ajaxComtDate = ajaxComtDate;
	}
	public int getQnaComtNum() {
		return qnaComtNum;
	}
	public void setQnaComtNum(int qnaComtNum) {
		this.qnaComtNum = qnaComtNum;
	}
	public String getQnaComContent() {
		return qnaComContent;
	}
	public void setQnaComContent(String qnaComContent) {
		this.qnaComContent = qnaComContent;
	}
	public Date getQnaComtDate() {
		return qnaComtDate;
	}
	public void setQnaComtDate(Date qnaComtDate) {
		this.qnaComtDate = qnaComtDate;
	}
	public String getMemName() {
		return memName;
	}
	public void setMemName(String memName) {
		this.memName = memName;
	}
	public int getqNum() {
		return qNum;
	}
	public void setqNum(int qNum) {
		this.qNum = qNum;
	}
	public int getMemNum() {
		return memNum;
	}
	public void setMemNum(int memNum) {
		this.memNum = memNum;
	}
	
	@Override
	public String toString() {
		return "QnACommentVO [qnaComtNum=" + qnaComtNum + ", qnaComContent=" + qnaComContent + ", qnaComtDate="
				+ qnaComtDate + ", memName=" + memName + ", qNum=" + qNum + ", memNum=" + memNum + ", ajaxComtDate="
				+ ajaxComtDate + "]";
	}


}
