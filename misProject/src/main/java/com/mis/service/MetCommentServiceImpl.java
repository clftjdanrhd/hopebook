package com.mis.service;

/*import java.util.ArrayList;*/
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.mis.domain.MetCommentVO;
import com.mis.persistence.MetCommentDAO;

/**
 * @author 김지훈
 */

@Service
public class MetCommentServiceImpl implements MetCommentService {

	@Inject
	private MetCommentDAO dao;
	
	@Override
	public void addMetComment(MetCommentVO mcvo) throws Exception {
		dao.create(mcvo);
	}

	@Override
	public List<MetCommentVO> listComment(int metBrdNum) throws Exception {
		return dao.list(metBrdNum);
	}

	@Override
	public void modifyComment(MetCommentVO mcvo) throws Exception {

		dao.update(mcvo);

	}

	@Override
	public void removeComment(int metComtNum) throws Exception {

		dao.delete(metComtNum);

	}

	@Override
	public void removeAllComment(int metBrdNum) throws Exception {
		dao.delete(metBrdNum);
		
	}


}

/*
 * String[] files = mcvo.getFiles(); if(files == null) {return;} for (String
 * fileName : files) {
 * 
 * dao.addAttach(fileName);
 * 
 * }
 */
/*
 * @Override public ArrayList<MetCommentVO> getCommentList(String metBrdNum)
 * throws Exception { return dao.getCommentList(metBrdNum); }
 */