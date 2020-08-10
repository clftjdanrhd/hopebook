package com.mis.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.mis.domain.FileVO;
import com.mis.domain.QnAVO;
import com.mis.domain.SearchCriteria;

@Repository
public class QnADAOImpl implements QnADAO {
	private static String namespace = "com.mis.mappers.qnaMapper";

	@Inject
	private SqlSession session;

	@Override
	public int create(QnAVO vo) throws Exception {
		
		
		session.insert(namespace + ".create", vo);		
		return vo.getqNum();
				
	}

	@Override
	public QnAVO read(int qNum) throws Exception {
		return session.selectOne(namespace + ".read", qNum);

	}

	@Override
	public void update(QnAVO qNum) throws Exception {
		session.update(namespace + ".update", qNum);

	}

	@Override
	public void delete(int qNum) throws Exception {
		session.delete(namespace + ".delete", qNum);

	}

	@Override
	public List<QnAVO> listSearch(SearchCriteria cri) throws Exception {
		return session.selectList(namespace + ".listSearch", cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		return session.selectOne(namespace + ".listSearchCount", cri);
	}

	@Override
	public QnAVO comment(int qNum) throws Exception {
		return session.selectOne(namespace + ".comment", qNum);
	}

	@Override
	public void insertFile(FileVO vo) throws Exception {
		session.insert(namespace + ".insertFiles", vo);

	}

	@Override
	public void deleteFile(int qNum) throws Exception {
		session.insert(namespace + ".deleteFile", qNum);
	}

	@Override
	public List<FileVO> list(int qNum) throws Exception {
		return session.selectList(namespace + ".fileList", qNum);

	}

}
