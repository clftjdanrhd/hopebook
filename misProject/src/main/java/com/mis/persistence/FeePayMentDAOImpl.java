package com.mis.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.mis.domain.FeePayMentVO;
import com.mis.domain.SearchCriteria;

@Repository
public class FeePayMentDAOImpl implements FeePayMentDAO{

	@Inject
	private SqlSession session;

	private static String namespace = "com.mis.mapper.FeePayMentMapper";
	

	@Override
	public List<FeePayMentVO> listSearch(SearchCriteria cri) throws Exception {
		return session.selectList(namespace + ".listSearch", cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		return session.selectOne(namespace + ".listSearchCount", cri);
	}

}
