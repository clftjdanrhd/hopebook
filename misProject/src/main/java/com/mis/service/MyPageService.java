package com.mis.service;

import java.util.List;

import com.mis.domain.MemberVO;

public interface MyPageService {
	
	public List<MemberVO> list(int memNum) throws Exception;

	public MemberVO read(int memNum) throws Exception;
	
	// 회원정보 수정
	public void memberUpdate(MemberVO vo)throws Exception;

	public void delete(int memNum) throws Exception;

	}
