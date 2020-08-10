package com.mis.persistence;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.mis.domain.MemberVO;
import com.mis.domain.SearchCriteria;

import com.mis.dto.LoginDTO;

public interface MemberDAO {
	
	
	public MemberVO login(MemberVO vo) throws Exception;

	public void logout(HttpSession session) throws Exception;
	
	public void create(MemberVO vo) throws Exception;

	public MemberVO read(int memNum) throws Exception;

	public void update(MemberVO vo) throws Exception;

	public void delete(int memNum) throws Exception;

	// 페이징, 검색할 수 있는 list
	public List<MemberVO> listSearch(SearchCriteria cri) throws Exception;

	// 페이징, 검색 하기 위한 게시물 수 반환
	public int listSearchCount(SearchCriteria cri) throws Exception;

	
	// 아이디 중복체크

	//아이디 중복체크
	public int idChk(MemberVO vo) throws Exception;
	
	public int checkOverId(String memId)throws Exception;
	



}