package com.mis.persistence;

import java.util.List;

import com.mis.domain.FileVO;
import com.mis.domain.QnAVO;
import com.mis.domain.SearchCriteria;

public interface QnADAO {

	public int create(QnAVO vo) throws Exception;

	
	public QnAVO read(int qNum) throws Exception;


	public void update(QnAVO vo) throws Exception;

	

	public void delete(int qNum) throws Exception;

	//게시글 수
	public int listSearchCount(SearchCriteria cri) throws Exception;
	
	//검색
	public List<QnAVO> listSearch(SearchCriteria cri) throws Exception;
	
	//댓글 개수 출력
	public QnAVO comment(int qNum) throws Exception;
	
	// 1. 파일등록
	public void insertFile(FileVO vo) throws Exception;

	// 2. 파일삭제 -> 공지사항에 등록된 파일 모두 삭제
	public void deleteFile(int qNum) throws Exception;

	// 3. 파일목록
	public List<FileVO> list(int qNum) throws Exception;



}
