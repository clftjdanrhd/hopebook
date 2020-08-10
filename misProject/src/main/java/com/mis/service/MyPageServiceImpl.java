
package com.mis.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.mis.domain.MemberVO;
import com.mis.persistence.MyPageDAO;

@Service
public class MyPageServiceImpl implements MyPageService {
	@Inject
	private MyPageDAO dao;


	@Override
	public void memberUpdate(MemberVO vo) throws Exception {
		
		//받은 vo를 DAO로 보내줍니다.
		dao.memberUpdate(vo);
		
	}
	@Override
	public void delete(int memNum) throws Exception {
		dao.delete(memNum);

	}

	@Override
	public MemberVO read(int memNum) throws Exception {
		return dao.read(memNum);
	}

	@Override
	public List<MemberVO> list(int memNum) throws Exception {
		return dao.list(memNum);
	}

}

