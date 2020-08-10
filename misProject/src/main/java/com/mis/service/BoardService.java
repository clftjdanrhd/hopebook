package com.mis.service;

import java.util.List;

import com.mis.domain.BoardVO;
import com.mis.domain.Criteria;
import com.mis.domain.SearchCriteria;

public interface BoardService {

	public void register(BoardVO vo) throws Exception;

	public BoardVO read(int bno) throws Exception;

	public void modify(BoardVO vo) throws Exception;

	public void remove(int bno) throws Exception;

	public List<BoardVO> listAll() throws Exception;

	public List<BoardVO> listCriteria(Criteria cri) throws Exception;

	public int listCountCriteria(Criteria cri) throws Exception;

	// 페이징, 검색할 수 있는 list
	public List<BoardVO> listSearchCriteria(SearchCriteria cri) throws Exception;

	// 페이징, 건색 하기 위한 게시물 수 반환
	public int listSearchCount(SearchCriteria cri) throws Exception;



}
