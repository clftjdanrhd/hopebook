package com.mis.persistence;

import java.util.List;

import com.mis.domain.BookBoardVO;
import com.mis.domain.MeetingVO;
import com.mis.domain.SearchCriteria;

public interface MeetingDAO {

	
	public void create(MeetingVO vo) throws Exception;

	public MeetingVO read(int metNum) throws Exception;

	public void update(MeetingVO vo) throws Exception;

	public void delete(Integer metNum) throws Exception;

	// 페이징, 검색할 수 있는 list
	public List<MeetingVO> listSearch(SearchCriteria cri) throws Exception;

	// 페이징, 검색 하기 위한 게시물 수 반환
	public int listSearchCount(SearchCriteria cri) throws Exception;
	
	public List<MeetingVO> mainList() throws Exception;


	
}
