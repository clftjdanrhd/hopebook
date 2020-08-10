package com.mis.service;

import java.util.List;

import com.mis.domain.FileVO;
import com.mis.domain.QnAVO;
import com.mis.domain.SearchCriteria;

public interface QnAService {
	
	public void create(QnAVO qNum) throws Exception;


	public QnAVO read(int qNum) throws Exception;


	public void update(QnAVO qNum) throws Exception;



	public void delete(int qNum) throws Exception;

	//게시글 수 	
	public int listSearchCount(SearchCriteria cri) throws Exception;

	//검색 	
	public List<QnAVO> listSearch(SearchCriteria cri) throws Exception;
	
	//3. 파일목록
	public List<FileVO> fileList(int qNum)throws Exception;
	
	
		


}
