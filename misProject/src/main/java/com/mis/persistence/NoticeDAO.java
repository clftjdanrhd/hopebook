package com.mis.persistence;

import java.util.List;

import com.mis.domain.FileVO;
import com.mis.domain.NoticeVO;

import com.mis.domain.SearchCriteria;

/*
 * @Author 동주
 * */

public interface NoticeDAO {

	// 공지 게시물 등록
	public int create(NoticeVO vo) throws Exception;

	// 모임게시판 게시글 상세보기
	public NoticeVO read(int noticeNum) throws Exception;

	// 공지 수정
	public int update(NoticeVO vo) throws Exception;

	// 공지 삭제
	public void delete(int noticeNum) throws Exception;

	// 검색
	public List<NoticeVO> listSearch(SearchCriteria cri) throws Exception;

	// 페이징
	public int listSearchCount(SearchCriteria cri) throws Exception;

	// 조회수
	public void noticeCount(int noticeNum) throws Exception;

	// 1. 파일등록
	public void insertFile(FileVO vo) throws Exception;

	// 2. 파일삭제 -> 공지사항에 등록된 파일 모두 삭제
	public void deleteFile(int noticeNum) throws Exception;

	// 3. 파일목록
	public List<FileVO> list(int noticeNum) throws Exception;
}
