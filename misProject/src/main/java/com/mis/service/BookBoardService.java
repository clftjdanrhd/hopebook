package com.mis.service;

import java.util.List;

import com.mis.domain.BookBoardVO;
import com.mis.domain.BookVO;
import com.mis.domain.FileVO;
import com.mis.domain.SearchCriteria;

public interface BookBoardService {

	// å ���

	public void insert(BookBoardVO vo) throws Exception;

	// å �󼼺���

	public BookBoardVO read(int bookBrdNum) throws Exception;

	// å ����

	public void modify(BookBoardVO vo) throws Exception;

	// å ����

	public void remove(int bookBrdNum) throws Exception;

	// å �˻�

	public List<BookBoardVO> listSearch(SearchCriteria cri) throws Exception;

	// å �Խñ� ��

	public int listSearchCount(SearchCriteria cri) throws Exception;

	// 3. ���� ���
	public List<FileVO> fileList(int bookBrdNum) throws Exception;

	// 2. ���� ����
	public void deleteFile(int bookBrdNum) throws Exception;


	   // 1. 학생 :: 진로분야 선택 - 진로 명 검색
	   public List<BookVO> searchBook(String bookTitle) throws Exception;

	   // 10. 학생 :: 진로분야 선택 - 진로분야 목록
	   public List<BookVO> bookList() throws Exception;
	   
	   public List<BookBoardVO> mainList() throws Exception;
	   
	   public BookBoardVO mainRead(int bookBrdNum) throws Exception;

	      
/*
	// 10. 학생 :: 진로분야 선택 - 진로분야 목록
	public List<BookVO> bookList( ) throws Exception;*/
}
