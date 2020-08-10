package com.mis.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.mis.domain.BookBoardVO;
import com.mis.domain.BookVO;
import com.mis.domain.SearchCriteria;


@Repository
public class BookDAOImpl implements BookDAO{
	
	
	@Inject
	private SqlSession session;
	
	private static String namespace
	="com.mis.mappers.BookMapper";
	
	

	@Override
	public void create(BookVO vo) throws Exception {
		session.insert(namespace + ".create", vo);		
	}

	@Override
	public BookVO read(int bookNum) throws Exception {
		return session.selectOne(namespace+ ".read", bookNum);
		
	}

	@Override
	public void update(BookVO vo) throws Exception {
		
		session.update(namespace+ ".update", vo);

	}

	@Override
	public void delete(int bookNum) throws Exception {
		session.delete(namespace+ ".delete", bookNum);		
	}



	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		return session.selectOne(namespace+ ".listSearchCount", cri);
		
	}

	@Override
	public List<BookVO> listSearch(SearchCriteria cri) throws Exception {
		return session.selectList(namespace + ".listSearch", cri);
	}

	@Override
	public List<BookVO> listAll() throws Exception {
		return session.selectList(namespace + ".listAll");
		}


	
			
			
			
			
			
	/*@Override
	public List<MainDTO> selectMainTodayBooks() throws Exception {
		return session.selectList(namespace+ ".selectMainTodayBooks");
	}

	@Override
	public List<BookBoardVO> selectTodayBookList() throws Exception {
		return session.selectList(namespace+ ".selectTodayBookList");
	}

	@Override
	public SearchCriteria selectTodayBookRowCount(SearchCriteria search) throws Exception {
		return session.selectOne(namespace+ ".selectTodayBookRowCount", search);
	}

	@Override
	public ArrayList<BookBoardVO> selecTodayBookPage(SearchCriteria search) throws Exception {
		return session.selectOne(namespace+ ".selecTodayBookPage", search);
	}

	@Override
	public ArrayList<BookBoardVO> selectAdminTodayBookListPaging(SearchCriteria search) throws Exception {
		return session.selectOne(namespace+ ".selectAdminTodayBookListPaging", search);
	}

	@Override
	public boolean insertAdminTodayBookRegister(BookBoardVO bVo) throws Exception {
		return false;
	}

	@Override
	public boolean updateAdminTodayBook(BookBoardVO bVo) throws Exception {
		return false;
	}

	@Override
	public BookBoardVO selectOneBookBrdNum(String bookBrdNum) throws Exception {
		return session.selectOne(namespace+ ".selectOneBookBrdNum", bookBrdNum);

	}

	@Override
	public ArrayList<BookVO> getBookList(HashMap<String, Object> listOpt) throws Exception {
		return session.selectOne(namespace+ ".getBookList", listOpt);
		
	}

	@Override
	public void deleteTodayBook(String bookBrdNum) throws Exception {
		session.delete(namespace+ ".deleteTodayBook", bookBrdNum);		
	}

	@Override
	public void insertBookRegister(BookVO bVo) throws Exception {
		session.insert(namespace + ".insertBookRegister", bVo);		
	}

	@Override
	public BookVO selectOneBookNum(String bookNum) throws Exception {
		return session.selectOne(namespace+ ".selectOneBookNum", bookNum);
		}

	@Override
	public void updateBook(BookVO bVo) throws Exception {

		
		session.update(namespace+ ".updateBook", bVo);
	}

	@Override
	public void deleteBook(String bookNum) throws Exception {

		session.delete(namespace+ ".deleteBook", bookNum);
	}

	@Override
	public void bookDelete(BookVO bVO) throws Exception {
		session.delete(namespace+ ".bookDelete", bVO);		
	}

	@Override
	public SearchCriteria selectBookRowCount(SearchCriteria search) throws Exception {
		return session.selectOne(namespace+ ".selectBookRowCount", search);
		}

	@Override
	public ArrayList<BookVO> selectBookPage(SearchCriteria search) throws Exception {
		
		return session.selectOne(namespace+ ".selectBookPage", search);
	}

	@Override
	public void todayBookDelete(BookBoardVO bVO) throws Exception {
		session.delete(namespace+ ".todayBookDelete", bVO);		
	}

	@Override
	public List<BookVO> listSearch(SearchCriteria search) throws Exception {

		return session.selectList(namespace+ ".listSearch", search);
	}

	@Override
	public int listSearchCount(SearchCriteria search) throws Exception {
		return session.selectOne(namespace+ ".listSearchCount", search);
		
	}

	@Override
	public void updateViewCnt(int bookNum) throws Exception {

		
		session.update(namespace+ ".updateViewCnt", bookNum);
	}*/

}
