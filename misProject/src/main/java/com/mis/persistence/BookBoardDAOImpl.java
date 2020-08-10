package com.mis.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.mis.domain.BookBoardVO;
import com.mis.domain.BookVO;
import com.mis.domain.FileVO;
import com.mis.domain.SearchCriteria;

@Repository
public class BookBoardDAOImpl implements BookBoardDAO {

	@Inject
	private SqlSession session;

	private static String namespace = "com.mis.mappers.BookBoardMapper";

	@Override
	public int create(BookBoardVO vo) throws Exception {
		session.insert(namespace + ".create", vo);

		
		return vo.getBookBrdNum();
	}

	@Override
	public BookBoardVO read(int bookBrdNum) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace + ".read", bookBrdNum);
	}

	@Override
	public int update(BookBoardVO vo) throws Exception {
		session.update(namespace + ".update", vo);
		return vo.getBookBrdNum();
	}

	@Override
	public void delete(int bookBrdNum) throws Exception {
		session.update(namespace + ".delete", bookBrdNum);
	}

	@Override
	public List<BookBoardVO> listSearch(SearchCriteria cri) throws Exception {
		return session.selectList(namespace + ".listSearch", cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		return session.selectOne(namespace + ".listSearchCount", cri);

	}

	@Override
	public List<BookVO> searchBook(String bookTitle) throws Exception {

		return session.selectList(namespace + ".searchBook", bookTitle);
	
	}


	@Override
	public List<BookVO> bookList() throws Exception {
		return session.selectList(namespace+".bookList");
		
	}

	@Override
	public void insertFile(FileVO vo) throws Exception {
		session.insert(namespace + ".insertFiles", vo);		
	}

	@Override
	public void deleteFile(FileVO vo) throws Exception {
		session.insert(namespace + ".deleteFile", vo);		
	}

	@Override
	public List<FileVO> list(int bookBrdNum) throws Exception {
		return session.selectList(namespace + ".fileList" , bookBrdNum);
	}

	@Override
	public List<BookBoardVO> mainList() throws Exception {
		return session.selectList(namespace+".mainList");
	}

	@Override
	public BookBoardVO mainRead(int bookBrdNum) throws Exception {
		return session.selectOne(namespace+ ".mainRead", bookBrdNum);
	}
	 
/*	
	@Override
	public List<BookVO> bookList( ) throws Exception {
		 return session.selectList(namespace+".bookList");
		 
	}*/



}
