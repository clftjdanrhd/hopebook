package com.mis.domain;

public class LibraryVO {
	
	private String libraryNum ;
	private String libraryTitle;
	private String libraryContent;
	private String libraryUrl;

	public String getLibraryNum() {
		return libraryNum;
	}
	public void setLibraryNum(String libraryNum) {
		this.libraryNum = libraryNum;
	}
	public String getLibraryTitle() {
		return libraryTitle;
	}
	public void setLibraryTitle(String libraryTitle) {
		this.libraryTitle = libraryTitle;
	}
	public String getLibraryContent() {
		return libraryContent;
	}
	public void setLibraryContent(String libraryContent) {
		this.libraryContent = libraryContent;
	}
	public String getLibraryUrl() {
		return libraryUrl;
	}
	public void setLibraryUrl(String libraryUrl) {
		this.libraryUrl = libraryUrl;
	}
	@Override
	public String toString() {
		return "LibraryVO [libraryNum=" + libraryNum + ", libraryTitle=" + libraryTitle + ", libraryContent="
				+ libraryContent + ", libraryUrl=" + libraryUrl + "]";
	}


	
	
	
}
