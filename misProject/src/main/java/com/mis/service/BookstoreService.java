package com.mis.service;

import java.util.List;

import com.mis.domain.BookstoreVO;
import com.mis.domain.SearchCriteria;

public interface BookstoreService {
	
	public void register(BookstoreVO vo) throws Exception;

	public BookstoreVO read(int bookstoreNum) throws Exception;

	public void modify(BookstoreVO vo) throws Exception;

	public void remove(int bookstoreNum) throws Exception;

	// 페이징, 검색할 수 있는 list
	public List<BookstoreVO> listSearchCriteria(SearchCriteria cri) throws Exception;

	// 페이징, 검색 하기 위한 게시물 수 반환
	public int listSearchCount(SearchCriteria cri) throws Exception;

}
