package com.mis.persistence;

/*import java.util.ArrayList;*/
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.mis.domain.MetCommentVO;

@Repository
public class MetCommentDAOImpl implements MetCommentDAO {

	@Inject
	private SqlSession session;

	private static String namespace = "com.mis.mapper.MetCommentMapper";

	@Override
	public List<MetCommentVO> list(int metBrdNum) throws Exception {
		return session.selectList(namespace + ".list", metBrdNum);
	}

	@Override
	public void create(MetCommentVO mcvo) throws Exception {
		session.insert(namespace + ".create", mcvo);
	}

	@Override
	public void update(MetCommentVO mcvo) throws Exception {

		session.update(namespace + ".update", mcvo);

	}

	@Override
	public void delete(int metComtNum) throws Exception {
		session.delete(namespace + ".delete", metComtNum);
	}

	@Override
	public void deleteAll(int metBrdNum) throws Exception {
		session.delete(namespace + ".deleteAll", metBrdNum);
		
	}


}

/*
 * @Override public ArrayList<MetCommentVO> getCommentList(String metbrdnum)
 * throws Exception { return session.selectOne(namespace+ ".getCommentList",
 * metbrdnum); }
 */