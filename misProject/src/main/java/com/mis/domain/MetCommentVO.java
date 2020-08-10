package com.mis.domain;

import java.util.Date;

/**
 * ���ӰԽñ۴�۹�ȣ
 * ���ӰԽñ۴�۳���
 * ���ӰԽñ۴���ۼ�����
 * ȸ����
 * ȸ����ȣ
 * ���ӰԽñ۹�ȣ
 * @author ����
 */



public class MetCommentVO {
	
	private int metComtNum;
	private String metComtContent;
	private Date metComtDate;//댓글 작성일자
	private int memNum;
	private int metBrdNum;
	private String memName;
	public int getMetComtNum() {
		return metComtNum;
	}
	public void setMetComtNum(int metComtNum) {
		this.metComtNum = metComtNum;
	}
	public String getMetComtContent() {
		return metComtContent;
	}
	public void setMetComtContent(String metComtContent) {
		this.metComtContent = metComtContent;
	}
	public Date getMetComtDate() {
		return metComtDate;
	}
	public void setMetComtDate(Date metComtDate) {
		this.metComtDate = metComtDate;
	}
	public int getMemNum() {
		return memNum;
	}
	public void setMemNum(int memNum) {
		this.memNum = memNum;
	}
	public int getMetBrdNum() {
		return metBrdNum;
	}
	public void setMetBrdNum(int metBrdNum) {
		this.metBrdNum = metBrdNum;
	}
	public String getMemName() {
		return memName;
	}
	public void setMemName(String memName) {
		this.memName = memName;
	}
	@Override
	public String toString() {
		return "MetCommentVO [metComtNum=" + metComtNum + ", metComtContent=" + metComtContent + ", metComtDate="
				+ metComtDate + ", memNum=" + memNum + ", metBrdNum=" + metBrdNum + ", memName=" + memName + "]";
	}	

}