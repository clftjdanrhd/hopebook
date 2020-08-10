package com.mis.domain;

import java.util.Arrays;
import java.util.Date;

/**
 * 모임게시글번호
 * 제목
 * 분류
 * 내용
 * 작성일자
 * 조회수
 * 첨부파일
 * @author 정원
 *
 */

//CREATE TABLE met_board
//(
//		metBrdNum            INT(9) NOT NULL,
//		metBrdName           VARCHAR(100) NULL,
//		metNum               INT(9) NOT NULL,
//		metBrdContent        VARCHAR(1000) NULL,
//		regDate              DATE NULL,
//		metBrdCount          MEDIUMINT NULL,
//		metBrdCategory       VARCHAR(45) NULL,
//		metBrdFile           VARCHAR(20) NULL,
//		memNum               INT(9) NOT NULL,
//		memName              VARCHAR(20) NULL
//	);


public class MetBoardVO {
	
	private int metBrdNum;
	private String metBrdName;
	private String metBrdCategory;
	private String metBrdContent;
	private int metNum;
	private Date regDate;
	private int metBrdCount;
	private String[] files;
	private int memNum;
	private String memName;
	public int getMetBrdNum() {
		return metBrdNum;
	}
	public void setMetBrdNum(int metBrdNum) {
		this.metBrdNum = metBrdNum;
	}
	public String getMetBrdName() {
		return metBrdName;
	}
	public void setMetBrdName(String metBrdName) {
		this.metBrdName = metBrdName;
	}
	public String getMetBrdCategory() {
		return metBrdCategory;
	}
	public void setMetBrdCategory(String metBrdCategory) {
		this.metBrdCategory = metBrdCategory;
	}
	public String getMetBrdContent() {
		return metBrdContent;
	}
	public void setMetBrdContent(String metBrdContent) {
		this.metBrdContent = metBrdContent;
	}
	public int getMetNum() {
		return metNum;
	}
	public void setMetNum(int metNum) {
		this.metNum = metNum;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public int getMetBrdCount() {
		return metBrdCount;
	}
	public void setMetBrdCount(int metBrdCount) {
		this.metBrdCount = metBrdCount;
	}
	public String[] getFiles() {
		return files;
	}
	public void setFiles(String[] files) {
		this.files = files;
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
	@Override
	public String toString() {
		return "MetBoardVO [metBrdNum=" + metBrdNum + ", metBrdName=" + metBrdName + ", metBrdCategory="
				+ metBrdCategory + ", metBrdContent=" + metBrdContent + ", metNum=" + metNum + ", regDate=" + regDate
				+ ", metBrdCount=" + metBrdCount + ", files=" + Arrays.toString(files) + ", memNum=" + memNum
				+ ", memName=" + memName + "]";
	}
	
	
	
	
}
