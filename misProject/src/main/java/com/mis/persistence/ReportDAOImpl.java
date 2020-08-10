package com.mis.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.mis.domain.BookVO;
import com.mis.domain.ReportBoardVO;
import com.mis.domain.SearchCriteria;

@Repository
public class ReportDAOImpl implements ReportDAO {
	private static String namespace = "com.mis.mappers.reportMapper";

	@Inject
	private SqlSession session;

	@Override
	public void create(ReportBoardVO reportNum) throws Exception {
		session.insert(namespace + ".create", reportNum);
	}

	@Override
	public ReportBoardVO read(Integer reportNum) throws Exception {
		return session.selectOne(namespace + ".read", reportNum);

	}

	@Override
	public void update(ReportBoardVO reportNum) throws Exception {
		session.update(namespace + ".update", reportNum);

	}

	@Override
	public void delete(int reportNum) throws Exception {
		session.delete(namespace + ".delete", reportNum);

	}

	@Override
	public List<ReportBoardVO> listSearch(SearchCriteria cri) throws Exception {
		return session.selectList(namespace + ".listSearch", cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		return session.selectOne(namespace + ".listSearchCount", cri);
	}

	@Override
	public void updateViewCnt(Integer reportNum) throws Exception {
		session.update(namespace + ".updateViewCnt", reportNum);

	}

	@Override
	public List<BookVO> searchBook(String bookTitle) throws Exception {

		return session.selectList(namespace + ".searchBook", bookTitle);
	
	}


	@Override
	public List<BookVO> bookList() throws Exception {
		return session.selectList(namespace+".bookList");
		
	}

}
