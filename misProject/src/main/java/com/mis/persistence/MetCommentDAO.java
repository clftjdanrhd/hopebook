package com.mis.persistence;

/*import java.util.ArrayList;*/
import java.util.List;

import com.mis.domain.MetCommentVO;

/**
 * @author 김지훈
 */

public interface MetCommentDAO {

	// 페이징, 검색 할 수 있는 list
	public List<MetCommentVO> list(int metBrdNum) throws Exception;

	// 댓글 등록
	public void create(MetCommentVO mcvo) throws Exception;

	
	public void update(MetCommentVO mcvo) throws Exception;

	// 댓글 삭제
	public void delete(int metComtNum) throws Exception;
	
	public void deleteAll(int metBrdNum) throws Exception;
	
	
	

}

/*
 * // 댓글 목록 가져오기 public ArrayList<MetCommentVO> getCommentList(String metbrdnum)
 * throws Exception;
 */