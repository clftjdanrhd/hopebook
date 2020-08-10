package com.mis.persistence;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.mis.domain.MemberVO;
import com.mis.domain.SearchCriteria;

import com.mis.dto.LoginDTO;

@Repository
public class MemberDAOImpl implements MemberDAO {

	@Inject
	private SqlSession session;

	private static String namespace = "com.mis.mapper.MemberMapper";

	@Override
	public MemberVO login(MemberVO vo) throws Exception {
		return session.selectOne(namespace + ".login", vo);
	}

	@Override
	public void logout(HttpSession session) throws Exception {

	}

	@Override
	public void create(MemberVO vo) throws Exception {
		session.insert(namespace + ".create", vo);

	}

	@Override
	public MemberVO read(int memNum) throws Exception {
		return session.selectOne(namespace + ".read", memNum);
	}

	@Override
	public void update(MemberVO vo) throws Exception {
		session.update(namespace + ".update", vo);

	}

	@Override
	public void delete(int memNum) throws Exception {
		session.delete(namespace + ".delete", memNum);

	}

	@Override
	public List<MemberVO> listSearch(SearchCriteria cri) throws Exception {

		return session.selectList(namespace + ".listSearch", cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {

		return session.selectOne(namespace + ".listSearchCount", cri);
	}

	// 아이디 중복 체크
	@Override
	public int idChk(MemberVO vo) throws Exception {
		int result = session.selectOne(namespace + ".idChk", vo);
		return result;
	}

	@Override
	public int checkOverId(String memId) throws Exception {

		return session.selectOne(namespace + ".checkOverId", memId);

	}

}
