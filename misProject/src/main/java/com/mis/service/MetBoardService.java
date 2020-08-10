package com.mis.service;

/*import java.util.ArrayList;*/
import java.util.List;

import com.mis.domain.FileVO;
import com.mis.domain.MetBoardVO;
import com.mis.domain.SearchCriteria;

/**
 * @author 김지훈
 */
public interface MetBoardService {

	// 모임게시판 게시물 등록
	public void register(MetBoardVO mvo) throws Exception;

	public MetBoardVO read(int metBrdNum) throws Exception;

	// 모임게시판 게시물 수정
	public void modify(MetBoardVO mvo) throws Exception;
	
	// 모임게시판 게시물 삭제
		public void remove(int metBrdNum) throws Exception;

	 // 페이징, 검색할 수 있는 list
	   public List<MetBoardVO> listSearchCriteria(SearchCriteria cri) throws Exception;

	   // 페이징, 검색 하기 위한 게시물 수 반환
	   public int listSearchCount(SearchCriteria cri) throws Exception;

	//3. 파일목록
		public List<FileVO> fileList(int metBrdNum)throws Exception;
}