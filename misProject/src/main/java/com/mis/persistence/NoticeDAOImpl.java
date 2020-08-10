package com.mis.persistence;

import java.util.List;


import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.mis.domain.FileVO;
import com.mis.domain.NoticeVO;

import com.mis.domain.SearchCriteria;

/*
 * @Author 동주
 * */

@Repository
public class NoticeDAOImpl implements NoticeDAO {

	@Inject
	private SqlSession session;

	private static String namespace = "com.mis.mappers.NoticeMapper";

	@Override
	public int create(NoticeVO vo) throws Exception {
		session.insert(namespace + ".create", vo);
		return vo.getNoticeNum();
	}

	@Override
	public NoticeVO read(int noticeNum) throws Exception {
		return session.selectOne(namespace + ".read", noticeNum);
	}

	@Override
	public int update(NoticeVO vo) throws Exception {
		session.update(namespace + ".update", vo);

		return vo.getNoticeNum();
	}

	@Override
	public void delete(int noticeNum) throws Exception {
		session.delete(namespace + ".delete", noticeNum);

	}

	@Override
	public List<NoticeVO> listSearch(SearchCriteria cri) throws Exception {
		return session.selectList(namespace + ".listSearch", cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		return session.selectOne(namespace + ".listSearchCount", cri);
	}

	@Override
	public void noticeCount(int noticeNum) throws Exception {
		
		session.update(namespace + ".noticeCount", noticeNum);
	}

	

	@Override
	public void insertFile(FileVO vo) throws Exception {
		
		session.insert(namespace + ".insertFiles", vo);
		
	}

	@Override
	public void deleteFile(int noticeNum) throws Exception {
		session.insert(namespace + ".deleteFile", noticeNum);		
	}

	@Override
	public List<FileVO> list(int noticeNum) throws Exception {
		return session.selectList(namespace + ".fileList" , noticeNum);
		
	}



}
