package com.mis.service;

import java.util.List;

import com.mis.domain.QnACommentVO;
import com.mis.domain.QnAVO;

public interface QnACommentService {

	public List<QnACommentVO> listComment(int qNum) throws Exception;

	// 댓글 등록
	public void addQnAComment(QnACommentVO vo) throws Exception;

	public void modifyComment(QnACommentVO vo) throws Exception;

	// 댓글 삭제
	public void removeComment(int qnaComtNum) throws Exception;

	public void removeAllComment(int qNum) throws Exception;

	// 댓글 개수 출력
	public QnAVO comment(int qNum) throws Exception;

}
