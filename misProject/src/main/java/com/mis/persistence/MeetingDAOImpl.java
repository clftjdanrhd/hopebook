package com.mis.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.mis.domain.BookBoardVO;
import com.mis.domain.MeetingVO;
import com.mis.domain.SearchCriteria;


@Repository
public class MeetingDAOImpl implements MeetingDAO{
	
	@Inject
	private SqlSession session;
	
	private static String namespace
	="com.mis.mapper.MeetingMapper";
	

	@Override
	public void create(MeetingVO vo) throws Exception {
		session.insert(namespace + ".create", vo);
		
	}

	@Override
	public MeetingVO read(int metNum) throws Exception {
		return session.selectOne(namespace+ ".read", metNum);
	}

	@Override
	public void update(MeetingVO vo) throws Exception {
		session.update(namespace+ ".update", vo);
		
	}

	@Override
	public void delete(Integer metNum) throws Exception {
		session.delete(namespace+ ".delete", metNum);
		
	}

	@Override
	public List<MeetingVO> listSearch(SearchCriteria cri) throws Exception {
		
		return session.selectList(namespace+ ".listSearch", cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {

		return session.selectOne(namespace+ ".listSearchCount", cri);
	}

	@Override
	public List<MeetingVO> mainList() throws Exception {
		return session.selectList(namespace+".mainList");
	}



}
