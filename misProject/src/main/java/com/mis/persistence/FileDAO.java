package com.mis.persistence;

import java.util.List;   

import com.mis.domain.FileVO;

public interface FileDAO {
	
	
	//1. 파일등록
	public void insert(FileVO vo)throws Exception;
	
	
	//2. 파일삭제
	
	public void delete (int bookBrdNum)throws Exception;
	
	//3. 파일목록
	public List<FileVO> list(int bookBrdNum)throws Exception;
	

}
