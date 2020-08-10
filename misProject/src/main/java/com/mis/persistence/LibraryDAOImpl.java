package com.mis.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.mis.domain.LibraryVO;
import com.mis.domain.SearchCriteria;

@Repository
public class LibraryDAOImpl implements LibraryDAO{
	
	
	@Inject
	private SqlSession session;
	
	private static String namespace
	="com.mis.mapper.LibraryMapper";

	@Override
	public void create(LibraryVO vo) throws Exception {
		session.insert(namespace + ".create", vo);
		
	}

	@Override
	public LibraryVO read(int libraryNum) throws Exception {
		return session.selectOne(namespace+ ".read", libraryNum);
	}

	@Override
	public void update(LibraryVO vo) throws Exception {
		session.update(namespace+ ".update", vo);
		
	}

	@Override
	public void delete(int libraryNum) throws Exception {
		session.delete(namespace+ ".delete", libraryNum);
		
	}

	@Override
	public List<LibraryVO> listSearch(SearchCriteria cri) throws Exception {
		System.out.println("listSearch    DAO");
		return session.selectList(namespace+ ".listSearch", cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		return session.selectOne(namespace+ ".listSearchCount", cri);
	}


}
