package com.mis.persistence;

import java.util.List;

import com.mis.domain.BookVO;
import com.mis.domain.ReportBoardVO;
import com.mis.domain.SearchCriteria;

public interface ReportDAO {

	// 독후감 등록
	public void create(ReportBoardVO reportNum) throws Exception;

	// 독후감 상세보기
	public ReportBoardVO read(Integer reportNum) throws Exception;

	// 독후감 수정
	public void update(ReportBoardVO reportNum) throws Exception;

	// 독후감 삭제
	public void delete(int reportNum) throws Exception;

	// 독후감 게시글 수
	public int listSearchCount(SearchCriteria cri) throws Exception;

	// 독후감 검색
	public List<ReportBoardVO> listSearch(SearchCriteria cri) throws Exception;

	// 조회수
	public void updateViewCnt(Integer reportNum) throws Exception;
	
	   // 1. 학생 :: 진로분야 선택 - 진로 명 검색
    public List<BookVO> searchBook(String bookTitle) throws Exception;
    
    // 10. 학생 :: 졸업인증신청 관리 - 졸업인증항목 목록
    public List<BookVO> bookList() throws Exception;


}
