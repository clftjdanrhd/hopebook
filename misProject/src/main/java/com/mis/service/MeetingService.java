package com.mis.service;

import java.util.List;

import com.mis.domain.BookBoardVO;
import com.mis.domain.MeetingVO;
import com.mis.domain.SearchCriteria;

public interface MeetingService {
	
	public void register(MeetingVO vo) throws Exception;

	public MeetingVO read(int metNum) throws Exception;

	public void modify(MeetingVO vo) throws Exception;

	public void remove(int metNum) throws Exception;

	// 페이징, 검색할 수 있는 list
	public List<MeetingVO> listSearchCriteria(SearchCriteria cri) throws Exception;

	// 페이징, 검색 하기 위한 게시물 수 반환
	public int listSearchCount(SearchCriteria cri) throws Exception;
	
	public List<MeetingVO> mainList() throws Exception;

}
