package com.mis.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.mis.domain.SearchCriteria;
import com.mis.domain.TaxVO;

@Repository
public class TaxDAOImpl implements TaxDAO {
	private static String namespace = "com.mis.mapper.TaxMapper";

	@Inject
	private SqlSession session;

	@Override
	public void create(TaxVO vo) throws Exception {
		session.insert(namespace + ".create", vo);
		
	}

	@Override
	public List<TaxVO> listSearch(SearchCriteria cri) throws Exception {
		return session.selectList(namespace + ".listSearch", cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		return session.selectOne(namespace + ".listSearchCount", cri);
	}

	@Override
	public TaxVO read(int taxNum) throws Exception {
		return session.selectOne(namespace + ".read", taxNum);
	}

	@Override
	public void update(TaxVO vo) throws Exception {
		session.update(namespace + ".update", vo);
		
	}

	@Override
	public void delete(int taxNum) throws Exception {
		session.delete(namespace + ".delete", taxNum);
		
	}




}


//private static String namespace = "com.mis.mappers.LibraryMapper";
//
//@Inject
//private SqlSession session;
//
//@Override
//public void insertTax(TaxVO tVo) throws Exception {
//	session.insert(namespace + ".insertTax", tVo);
//
//}
//
//@Override
//public ArrayList<TaxVO> adminSelectTax(Paging paging) throws Exception {
//	return session.selectOne(namespace + ".adminSelectTax", paging);
//}
//
//@Override
//public Paging selectTaxRowCount(Paging paging) throws Exception {
//	return session.selectOne(namespace + ".selectTaxRowCount", paging);
//}
