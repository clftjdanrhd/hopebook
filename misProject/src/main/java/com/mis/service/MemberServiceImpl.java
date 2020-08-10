package com.mis.service;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Service;

import com.mis.domain.MemberVO;
import com.mis.domain.SearchCriteria;
import com.mis.dto.LoginDTO;
import com.mis.persistence.MemberDAO;
import com.mis.persistence.MemberDAOImpl;

@Service
public class MemberServiceImpl implements MemberService {

	@Inject
	private MemberDAO dao;
	private SqlSessionTemplate userSqlSessin;

	@Override
	public void register(MemberVO vo) throws Exception {
		dao.create(vo);

	}

	@Override
	public MemberVO read(int memNum) throws Exception {
		return dao.read(memNum);
	}

	@Override
	public void modify(MemberVO vo) throws Exception {
		dao.update(vo);

	}

	@Override
	public void remove(int memNum) throws Exception {
		dao.delete(memNum);

	}

	@Override
	public List<MemberVO> listSearchCriteria(SearchCriteria cri) throws Exception {
		return dao.listSearch(cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		return dao.listSearchCount(cri);
	}

	@Override
	public MemberVO login(MemberVO vo) throws Exception {
		return dao.login(vo);
	}

	@Override
	public void logout(HttpSession session) throws Exception {

		session.invalidate();
	}

	@Override
	public int idChk(MemberVO vo) throws Exception {
		int result = dao.idChk(vo);
		return result;
	}

}
