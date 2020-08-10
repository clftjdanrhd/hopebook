package com.mis.service;

import java.util.List;

import com.mis.domain.BookBoardVO;
import com.mis.domain.BookVO;
import com.mis.domain.SearchCriteria;

public interface BookService {
	
	
	
	// å ���

		public void insert(BookVO vo) throws Exception;

		// å �󼼺���

		public BookVO read(int bookNum) throws Exception;

		// å ����

		public void modify(BookVO vo) throws Exception;

		// å ����

		public void remove(int bookNum) throws Exception;

		// å �˻�

		// å �˻�

		public List<BookVO> listSearch(SearchCriteria cri) throws Exception;

		// å �Խñ� ��

		public int listSearchCount(SearchCriteria cri) throws Exception;
		
		
		
	    // 5. 관리자 :: 진로 목록
	      public List<BookVO> listAll() throws Exception;

	
	
	
	
	
	
	
	
	

	/*public List<MainDTO> selectMainTodayBooks() throws Exception;

	public List<BookBoardVO> selectTodayBookList() throws Exception;

	public SearchCriteria selectTodayBookRowCount(SearchCriteria search) throws Exception;

	public ArrayList<BookBoardVO> selecTodayBookPage(SearchCriteria search) throws Exception;

	public ArrayList<BookBoardVO> selectAdminTodayBookListPaging(SearchCriteria search) throws Exception;

	public boolean registerAdminTodayBookRegister(BookBoardVO bVo);

	public boolean modifyAdminTodayBook(BookBoardVO bVo) throws Exception;

	public BookBoardVO selectOneBookBrdNum(String bookBrdNum) throws Exception;

	public ArrayList<BookVO> getBookList(HashMap<String, Object> listOpt) throws Exception;

	public void removeTodayBook(String bookBrdNum) throws Exception;

	public void registerBookRegister(BookVO bVo) throws Exception;

	public BookVO selectOneBookNum(String bookNum) throws Exception;

	public void modifyBook(BookVO bVo) throws Exception;

	public void removeBook(String bookNum) throws Exception;

	public void bookremove(BookVO bVO) throws Exception;

	public SearchCriteria selectBookRowCount(SearchCriteria search) throws Exception;

	public ArrayList<BookVO> selectBookPage(SearchCriteria search) throws Exception;

	public void todayBookremove(BookBoardVO bVO) throws Exception;

	public List<BookVO> listSearch(SearchCriteria search) throws Exception;

	public int listSearchCount(SearchCriteria search) throws Exception;
*/
}
