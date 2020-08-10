package com.mis.domain;
/**占쎌뵠占쎈뼎占쎌벥筌�占� 野껊슣�뻻占쎈솇占쎈�믭옙�뵠�뇡占�
 * 占쎌뵠占쎈뼎占쎌벥筌��굛苡띰옙�뻻占쎈솇甕곕뜇�깈
 * 占쎌뵠占쎈뼎占쎌벥筌��굞�젫筌륅옙
 * 占쎌뵠占쎈뼎占쎌벥筌��굝沅∽옙�뒠
 * 占쎌삂占쎄쉐占쎌뵬占쎌쁽
 * 鈺곌퀬�돳占쎈땾
 * 筌��굝苡뀐옙�깈
 * 占쎌돳占쎌뜚甕곕뜇�깈 
 * @author �넫�굞�뒮
 *
 */

import java.sql.Date;
import java.util.Arrays;

public class BookBoardVO {
	
	private int bookBrdNum;
	private String bookBrdTitle;
	private String bookBrdContent;
	private Date bookBrdDate;
	private int bookNum;
	private String bookTitle;
	private String writer;
	private String publisher; 
	private int memNum;
	private String memName;
	private String imgPath;
	public String getImgPath() {
		return imgPath;
	}
	public void setImgPath(String imgPath) {
		this.imgPath = imgPath;
	}
	private String[] files;
	
	
	public int getBookBrdNum() {
		return bookBrdNum;
	}
	public void setBookBrdNum(int bookBrdNum) {
		this.bookBrdNum = bookBrdNum;
	}
	public String getBookBrdTitle() {
		return bookBrdTitle;
	}
	public void setBookBrdTitle(String bookBrdTitle) {
		this.bookBrdTitle = bookBrdTitle;
	}
	public String getBookBrdContent() {
		return bookBrdContent;
	}
	public void setBookBrdContent(String bookBrdContent) {
		this.bookBrdContent = bookBrdContent;
	}
	public Date getBookBrdDate() {
		return bookBrdDate;
	}
	public void setBookBrdDate(Date bookBrdDate) {
		this.bookBrdDate = bookBrdDate;
	}
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
	public String[] getFiles() {
		return files;
	}
	public void setFiles(String[] files) {
		this.files = files;
	}
	@Override
	public String toString() {
		return "BookBoardVO [bookBrdNum=" + bookBrdNum + ", bookBrdTitle=" + bookBrdTitle + ", bookBrdContent="
				+ bookBrdContent + ", bookBrdDate=" + bookBrdDate + ", bookNum=" + bookNum + ", bookTitle=" + bookTitle
				+ ", writer=" + writer + ", publisher=" + publisher + ", memNum=" + memNum + ", memName=" + memName
				+ ", imgPath=" + imgPath + ", files=" + Arrays.toString(files) + "]";
	}


	
}
