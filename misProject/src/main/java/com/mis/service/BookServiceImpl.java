package com.mis.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.mis.domain.BookBoardVO;
import com.mis.domain.BookVO;
import com.mis.domain.SearchCriteria;
import com.mis.persistence.BookDAO;
@Service
public class BookServiceImpl implements BookService {

	@Inject
	private BookDAO dao;

	@Override
	public void insert(BookVO vo) throws Exception {
		dao.create(vo);
	}

	@Override
	public BookVO read(int bookNum) throws Exception {
		return dao.read(bookNum);
	}

	@Override
	public void modify(BookVO vo) throws Exception {
		dao.update(vo);
	}

	@Override
	public void remove(int bookNum) throws Exception {
		dao.delete(bookNum);
	}


	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		return dao.listSearchCount(cri);
	}

	@Override
	public List<BookVO> listSearch(SearchCriteria cri) throws Exception {
		return dao.listSearch(cri);
	}

	@Override
	public List<BookVO> listAll() throws Exception {

		  return dao.listAll();
	}

	/*
	 * @Override public List<MainDTO> selectMainTodayBooks() throws Exception {
	 * return dao.selectMainTodayBooks(); }
	 * 
	 * @Override public List<BookBoardVO> selectTodayBookList() throws Exception {
	 * return dao.selectTodayBookList(); }
	 * 
	 * @Override public SearchCriteria selectTodayBookRowCount(SearchCriteria
	 * search) throws Exception { return dao.selectTodayBookRowCount(search); }
	 * 
	 * @Override public ArrayList<BookBoardVO> selecTodayBookPage(SearchCriteria
	 * search) throws Exception { return dao.selecTodayBookPage(search); }
	 * 
	 * @Override public ArrayList<BookBoardVO>
	 * selectAdminTodayBookListPaging(SearchCriteria search) throws Exception {
	 * return dao.selectAdminTodayBookListPaging(search); }
	 * 
	 * @Override public boolean registerAdminTodayBookRegister(BookBoardVO bVo) {
	 * return false; }
	 * 
	 * @Override public boolean modifyAdminTodayBook(BookBoardVO bVo) throws
	 * Exception { return false; }
	 * 
	 * @Override public BookBoardVO selectOneBookBrdNum(String bookBrdNum) throws
	 * Exception { return dao.selectOneBookBrdNum(bookBrdNum); }
	 * 
	 * @Override public ArrayList<BookVO> getBookList(HashMap<String, Object>
	 * listOpt) throws Exception { return dao.getBookList(listOpt); }
	 * 
	 * @Override public void removeTodayBook(String bookBrdNum) throws Exception {
	 * 
	 * dao.deleteTodayBook(bookBrdNum);
	 * 
	 * }
	 * 
	 * @Override public void registerBookRegister(BookVO bVo) throws Exception {
	 * dao.insertBookRegister(bVo); }
	 * 
	 * @Override public BookVO selectOneBookNum(String bookNum) throws Exception {
	 * return dao.selectOneBookNum(bookNum); }
	 * 
	 * @Override public void modifyBook(BookVO bVo) throws Exception {
	 * dao.updateBook(bVo); }
	 * 
	 * @Override public void removeBook(String bookNum) throws Exception {
	 * dao.deleteBook(bookNum); }
	 * 
	 * @Override public void bookremove(BookVO bVO) throws Exception {
	 * dao.bookDelete(bVO); }
	 * 
	 * @Override public SearchCriteria selectBookRowCount(SearchCriteria search)
	 * throws Exception { return dao.selectBookRowCount(search); }
	 * 
	 * @Override public ArrayList<BookVO> selectBookPage(SearchCriteria search)
	 * throws Exception { return dao.selectBookPage(search); }
	 * 
	 * @Override public void todayBookremove(BookBoardVO bVO) throws Exception {
	 * dao.todayBookDelete(bVO); }
	 * 
	 * @Override public List<BookVO> listSearch(SearchCriteria search) throws
	 * Exception { // TODO Auto-generated method stub return dao.listSearch(search);
	 * }
	 * 
	 * @Override public int listSearchCount(SearchCriteria search) throws Exception
	 * { return dao.listSearchCount(search); }
	 */
}
