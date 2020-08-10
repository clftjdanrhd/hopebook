package com.mis.service;

/*import java.util.ArrayList;*/
import java.util.List;

import com.mis.domain.MetCommentVO;

/**
 * @author 김지훈
 */

public interface MetCommentService {

	// 댓글 등록
	public void addMetComment(MetCommentVO mcvo) throws Exception;

	public List<MetCommentVO> listComment(int metBrdNum) throws Exception;

	public void modifyComment(MetCommentVO mcvo) throws Exception;

	// 댓글 삭제
	public void removeComment(int metComtNum) throws Exception;
	
	public void removeAllComment(int metBrdNum) throws Exception;

}

/*
 * // 댓글 목록 가져오기 public ArrayList<MetCommentVO> getCommentList(String
 * metbrdnum)throws Exception;
 */