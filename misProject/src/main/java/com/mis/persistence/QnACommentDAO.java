package com.mis.persistence;

import java.util.List;

import com.mis.domain.QnACommentVO;

public interface QnACommentDAO {

	// 페이징, 검색 할 수 있는 list
	public List<QnACommentVO> list(int qNum) throws Exception;

	// 댓글 등록
	public void create(QnACommentVO vo) throws Exception;

	public void update(QnACommentVO vo) throws Exception;

	// 댓글 삭제
	public void delete(int qnaComtNum) throws Exception;

	public void deleteAll(int qnaComtNum) throws Exception;
	

}
