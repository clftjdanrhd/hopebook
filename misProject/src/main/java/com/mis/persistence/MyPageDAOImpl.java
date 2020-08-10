package com.mis.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.mis.domain.MemberVO;

@Repository
public class MyPageDAOImpl implements MyPageDAO {
	private static String namespace = "com.mis.mappers.mypageMapper";

	@Inject
	private SqlSession session;


	@Override
	public void memberUpdate(MemberVO vo) throws Exception {
		// vo에 담긴 파라미터들은 memberMapper.xml에 memberMapper라는 namespace에 
		// 아이디가 memberUpdate인 쿼리에 파라미터들을 넣어줍니다.
		session.update(namespace+".memberUpdate", vo); 
	}

	@Override
	public void delete(int memNum) throws Exception {
		session.delete(namespace + ".delete", memNum);
		
	}

	@Override
	public MemberVO read(int memNum) throws Exception {
		return session.selectOne(namespace+ ".read", memNum);
	}

	@Override
	public List<MemberVO> list(int memNum) throws Exception {
		return session.selectList(namespace + ".list", memNum);
	}

	

}
