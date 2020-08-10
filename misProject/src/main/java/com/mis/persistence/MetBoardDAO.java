/**
 * @author 김지훈
 */
package com.mis.persistence;

/*import java.util.ArrayList;*/
import java.util.List;

import com.mis.domain.FileVO;
import com.mis.domain.MetBoardVO;
import com.mis.domain.SearchCriteria;

public interface MetBoardDAO {

	// 모임게시판 게시물 등록
	public int create(MetBoardVO mvo) throws Exception;

	public MetBoardVO read(int metBrdNum) throws Exception;

	// 모임게시판 게시물 수정
	public int update(MetBoardVO mvo) throws Exception;

	// 모임게시판 게시물 삭제
	public void delete(int metBrdNum) throws Exception;

	  // 페이징, 검색할 수 있는 list
	   public List<MetBoardVO> listSearch(SearchCriteria cri) throws Exception;

	   // 페이징, 검색 하기 위한 게시물 수 반환
	   public int listSearchCount(SearchCriteria cri) throws Exception;

	// 조회수증가
	public void updateMetBrdCount(int mvo) throws Exception;

	// 1. 파일등록
	public void insertFile(FileVO vo) throws Exception;

	// 2. 파일삭제

	public void deleteFile(int metBrdNum) throws Exception;

	// 3. 파일목록
	public List<FileVO> list(int metBrdNum) throws Exception;

}