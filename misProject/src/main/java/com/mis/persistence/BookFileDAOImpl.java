package com.mis.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.mis.domain.FileVO;

@Repository
public class BookFileDAOImpl implements FileDAO {
	
	@Inject
	private SqlSession session;
	
	private static String namespace ="com.mis.mappers.BookBoardMapper";

	@Override
	public void insert(FileVO vo) throws Exception {
		
		session.insert(namespace + ".insertFiles", vo);
		
	}

	@Override
	public void delete(int BookBrdNum) throws Exception {
		session.insert(namespace + ".deleteFile", BookBrdNum);		
	}

	@Override
	public List<FileVO> list(int BookBrdNum) throws Exception {
		return session.selectList(namespace + ".fileList" , BookBrdNum);
		
	}

}
