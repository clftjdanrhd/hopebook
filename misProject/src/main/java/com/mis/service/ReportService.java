package com.mis.service;

import java.util.List;

import com.mis.domain.BookVO;
import com.mis.domain.ReportBoardVO;
import com.mis.domain.SearchCriteria;

public interface ReportService {

	public void create(ReportBoardVO reportNum) throws Exception;

	public ReportBoardVO read(int reportNum) throws Exception;

	public void update(ReportBoardVO reportNum) throws Exception;

	public void delete(int reportNum) throws Exception;

	// 조회수
	void updateViewCnt(Integer reportNum) throws Exception;

	// 게시글 수
	public int listSearchCount(SearchCriteria cri) throws Exception;

	// 검색
	public List<ReportBoardVO> listSearch(SearchCriteria cri) throws Exception;

	   // 1. 학생 :: 진로분야 선택 - 진로 명 검색
	   public List<BookVO> searchBook(String bookTitle) throws Exception;

	   // 10. 학생 :: 진로분야 선택 - 진로분야 목록
	   public List<BookVO> bookList() throws Exception;
	      

}
