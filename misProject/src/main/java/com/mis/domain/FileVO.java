package com.mis.domain;
/**공지사항첨부파일 테이블
 * 공지사항파일번호
 * 파일명
 * 등록일
 * 공지사항번호
 * @author 종욱
 *
 */

import java.sql.Date;

public class FileVO {
	
	private String fileNum;
	private String fileName;
	private Date fileDate;
	private int noticeNum;
	private int metBrdNum;
	private int bookBrdNum;
	private int qNum;
	private String fileLocation;
	
	
	public String getFileNum() {
		return fileNum;
	}
	public void setFileNum(String fileNum) {
		this.fileNum = fileNum;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public Date getFileDate() {
		return fileDate;
	}
	public void setFileDate(Date fileDate) {
		this.fileDate = fileDate;
	}
	public int getNoticeNum() {
		return noticeNum;
	}
	public void setNoticeNum(int noticeNum) {
		this.noticeNum = noticeNum;
	}
	public int getMetBrdNum() {
		return metBrdNum;
	}
	public void setMetBrdNum(int metBrdNum) {
		this.metBrdNum = metBrdNum;
	}
	public int getbookBrdNum() {
		return bookBrdNum;
	}
	public void setbookBrdNum(int bookBrdNum) {
		this.bookBrdNum = bookBrdNum;
	}
	public int getqNum() {
		return qNum;
	}
	public void setqNum(int qNum) {
		this.qNum = qNum;
	}
	public String getFileLocation() {
		return fileLocation;
	}
	public void setFileLocation(String fileLocation) {
		this.fileLocation = fileLocation;
	}
	@Override
	public String toString() {
		return "FileVO [fileNum=" + fileNum + ", fileName=" + fileName + ", fileDate=" + fileDate + ", noticeNum="
				+ noticeNum + ", metBrdNum=" + metBrdNum + ", bookBrdNum=" + bookBrdNum + ", qNum=" + qNum + ", fileLocation="
				+ fileLocation + "]";
	}
	
	
	
	

	
	
}
