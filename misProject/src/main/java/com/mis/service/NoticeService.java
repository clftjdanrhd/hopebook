package com.mis.service;
/* 
 * @Author 동주
 * */
/*import java.util.ArrayList;*/
import java.util.List;

import com.mis.domain.FileVO;
/*import com.mis.domain.NoticeFile;*/
import com.mis.domain.NoticeVO;

import com.mis.domain.SearchCriteria;

public interface NoticeService {

	public void register(NoticeVO vo) throws Exception;

	public void modify(NoticeVO vo) throws Exception;

	public void remove(int noticeNum) throws Exception;

	// 검색
	public List<NoticeVO> listSearchCriteria(SearchCriteria cri) throws Exception;

	// 페이징
	public int listSearchCount(SearchCriteria cri) throws Exception;

	public NoticeVO read(int noticeNum) throws Exception;
	
	//3. 파일목록
	public List<FileVO> fileList(int noticeNum)throws Exception;
	

	
}
