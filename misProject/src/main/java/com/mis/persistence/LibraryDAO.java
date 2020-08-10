package com.mis.persistence;

import java.util.List;

import com.mis.domain.LibraryVO;
import com.mis.domain.SearchCriteria;

public interface LibraryDAO {
	
	
	public void create(LibraryVO vo) throws Exception;

	public LibraryVO read(int libraryNum) throws Exception;

	public void update(LibraryVO vo) throws Exception;

	public void delete(int libraryNum) throws Exception;

	// 페이징, 검색할 수 있는 list
	public List<LibraryVO> listSearch(SearchCriteria cri) throws Exception;

	// 페이징, 검색 하기 위한 게시물 수 반환
	public int listSearchCount(SearchCriteria cri) throws Exception;


}
