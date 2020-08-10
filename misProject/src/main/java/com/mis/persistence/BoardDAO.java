package com.mis.persistence;

import java.util.List;

import com.mis.domain.BoardVO;
import com.mis.domain.Criteria;
import com.mis.domain.SearchCriteria;

public interface BoardDAO {

	public void create(BoardVO vo) throws Exception;

	public BoardVO read(int bno) throws Exception;

	public void update(BoardVO vo) throws Exception;

	public void delete(int bno) throws Exception;

	public List<BoardVO> listAll() throws Exception;

	// 페이징을 할 수 있는 list
	public List<BoardVO> listCriteria(Criteria cri) throws Exception;

	// 전체 게시물 수 반환
	public int countPaging(Criteria cri) throws Exception;
	
	//페이징, 검색할 수 있는 list
	public List<BoardVO> listSearch(SearchCriteria cri) throws Exception;
	
	//페이징, 건색 하기 위한 게시물 수 반환
	public int listSearchCount(SearchCriteria cri) throws Exception;

	void updateViewCnt(Integer bno) throws Exception;
}