package com.mis.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.mis.domain.QnACommentVO;

@Repository
public class QnACommentDAOImpl implements QnACommentDAO {

	@Inject
	private SqlSession session;

	private static String namespace = "com.mis.mapper.qnaCommentMapper";

	@Override
	public List<QnACommentVO> list(int qNum) throws Exception {
		return session.selectList(namespace + ".list", qNum);
	}

	@Override
	public void create(QnACommentVO vo) throws Exception {
		session.insert(namespace + ".create", vo);

	}

	@Override
	public void update(QnACommentVO vo) throws Exception {
		session.update(namespace + ".update", vo);
	}

	@Override
	public void delete(int qnaComtNum) throws Exception {
		session.delete(namespace + ".delete", qnaComtNum);

	}

	@Override
	public void deleteAll(int qnaComtNum) throws Exception {
		session.delete(namespace + ".deleteAll", qnaComtNum);

	}


}
