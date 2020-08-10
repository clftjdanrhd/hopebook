package com.mis.persistence;
import java.util.List;
/*import java.util.Map;*/

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.mis.domain.FileVO;
import com.mis.domain.MetBoardVO;
import com.mis.domain.SearchCriteria;


/**
 * @author 김지훈
 */


@Repository
public class MetBoardDAOImpl implements MetBoardDAO {

	@Inject
	private SqlSession session;

	private static String namespace = "com.mis.mapper.MetBoardMapper";



	@Override
	public int create(MetBoardVO mvo) throws Exception {
		session.insert(namespace + ".create", mvo);
		return mvo.getMetBrdNum();
	}

	@Override
	public MetBoardVO read(int metBrdNum) throws Exception {
		return session.selectOne(namespace + ".read", metBrdNum);
	}

	@Override
	public int update(MetBoardVO mvo) throws Exception {
		session.update(namespace + ".update", mvo);
		
		return mvo.getMetBrdNum();
	}

	@Override
	public void delete(int metBrdNum) throws Exception {
		session.delete(namespace+ ".delete", metBrdNum);
		
	}

	@Override
	   public List<MetBoardVO> listSearch(SearchCriteria cri) throws Exception {
	      
	      return session.selectList(namespace+ ".listSearch", cri);
	   }

	   @Override
	   public int listSearchCount(SearchCriteria cri) throws Exception {

	      return session.selectOne(namespace+ ".listSearchCount", cri);
	   }
	
	@Override
	public void updateMetBrdCount(int mvo) throws Exception {
		session.update(namespace+ ".updateMetBrdCount", mvo);
		
	}
	@Override
	public void insertFile(FileVO vo) throws Exception {
		
		session.insert(namespace + ".insertFiles", vo);
		
	}

	@Override
	public void deleteFile(int metBrdNum) throws Exception {
		session.delete(namespace + ".deleteFile", metBrdNum);		
	}

	@Override
	public List<FileVO> list(int metBrdNum) throws Exception {
		return session.selectList(namespace + ".fileList" , metBrdNum);
		
	}

}
