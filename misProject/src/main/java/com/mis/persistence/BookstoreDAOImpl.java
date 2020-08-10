package com.mis.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.mis.domain.BookstoreVO;

import com.mis.domain.SearchCriteria;

@Repository
public class BookstoreDAOImpl implements BookstoreDAO{
	
	
	@Inject
	private SqlSession session;
	
	private static String namespace
	="com.mis.mapper.BookstoreMapper";

	@Override
	public void create(BookstoreVO vo) throws Exception {
		session.insert(namespace + ".create", vo);
		
	}

	@Override
	public BookstoreVO read(int bookstoreNum) throws Exception {
		return session.selectOne(namespace+ ".read", bookstoreNum);
	}

	@Override
	public void update(BookstoreVO vo) throws Exception {
		session.update(namespace+ ".update", vo);
		
	}

	@Override
	public void delete(int bookstoreNum) throws Exception {
		session.delete(namespace+ ".delete", bookstoreNum);
		
	}

	@Override
	public List<BookstoreVO> listSearch(SearchCriteria cri) throws Exception {
		System.out.println("listSearch");
		return session.selectList(namespace+ ".listSearch", cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		return session.selectOne(namespace+ ".listSearchCount", cri);
	}






}
