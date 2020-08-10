package com.mis.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.mis.domain.MemberVO;
import com.mis.domain.SearchCriteria;

import com.mis.dto.LoginDTO;

public interface MemberService {

	public void register(MemberVO vo) throws Exception;

	public MemberVO read(int memNum) throws Exception;

	public void modify(MemberVO vo) throws Exception;

	public void remove(int memNum) throws Exception;

	// 페이징, 검색할 수 있는 list
	public List<MemberVO> listSearchCriteria(SearchCriteria cri) throws Exception;

	// 페이징, 검색 하기 위한 게시물 수 반환
	public int listSearchCount(SearchCriteria cri) throws Exception;

	public MemberVO login(MemberVO vo) throws Exception;

	public void logout(HttpSession session) throws Exception;

	public int idChk(MemberVO vo) throws Exception;
	
}
