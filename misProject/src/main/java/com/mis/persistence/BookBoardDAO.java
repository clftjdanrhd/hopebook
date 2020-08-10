package com.mis.persistence;

import java.util.List;

import com.mis.domain.BookBoardVO;
import com.mis.domain.BookVO;
import com.mis.domain.FileVO;
import com.mis.domain.SearchCriteria;

public interface BookBoardDAO {

	// å ���

	public int create(BookBoardVO vo) throws Exception;

	// å �󼼺���

	public BookBoardVO read(int bookBrdNum) throws Exception;

	// å ����

	public int update(BookBoardVO vo) throws Exception;

	// å ����

	public void delete(int bookBrdNum) throws Exception;

	// å �˻�

	public List<BookBoardVO> listSearch(SearchCriteria cri) throws Exception;

	// å �Խñ� ��

	public int listSearchCount(SearchCriteria cri) throws Exception;

	// ÷������
	// 1. 파일등록
	public void insertFile(FileVO vo) throws Exception;

	// 2. 파일삭제

	public void deleteFile(FileVO vo) throws Exception;

	// 3. 파일목록
	public List<FileVO> list(int bookBrdNum) throws Exception;

	// 1. 학생 :: 진로분야 선택 - 진로 명 검색
	public List<BookVO> searchBook(String bookTitle) throws Exception;

	// 10. 학생 :: 졸업인증신청 관리 - 졸업인증항목 목록
	public List<BookVO> bookList() throws Exception;

	public List<BookBoardVO> mainList() throws Exception;
	
	public BookBoardVO mainRead(int bookBrdNum) throws Exception;

	
	

}
