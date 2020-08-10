package com.mis.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.mis.domain.QnACommentVO;
import com.mis.domain.QnAVO;
import com.mis.persistence.QnACommentDAO;
import com.mis.persistence.QnADAO;

@Service
public class QnACommentServiceImpl implements QnACommentService {

	@Inject
	private QnACommentDAO dao;
	
	@Inject QnADAO qdao;

	public List<QnACommentVO> listComment(int qNum) throws Exception {
		return dao.list(qNum);
	}

	@Override
	public void addQnAComment(QnACommentVO vo) throws Exception {
		dao.create(vo);

	}

	@Override
	public void modifyComment(QnACommentVO vo) throws Exception {
		dao.update(vo);

	}

	@Override
	public void removeComment(int qnaComtNum) throws Exception {
		dao.delete(qnaComtNum);
	}

	@Override
	public void removeAllComment(int qNum) throws Exception {
		dao.delete(qNum);

	}


	@Override
	public QnAVO comment(int qNum) throws Exception {
		return qdao.comment(qNum);
	}

}
