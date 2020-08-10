package com.mis.persistence;

import java.util.List;

import com.mis.domain.BookBoardVO;
import com.mis.domain.BookVO;
import com.mis.domain.SearchCriteria;

public interface BookDAO {

	// 梨� �벑濡�

	public void create(BookVO vo) throws Exception;

	// 梨� �긽�꽭蹂닿린

	public BookVO read(int bookNum) throws Exception;

	// 梨� �닔�젙

	public void update(BookVO vo) throws Exception;

	// 梨� �궘�젣

	public void delete(int bookNum) throws Exception;

	// 梨� 寃뚯떆湲� �닔
	
	public List<BookVO> listSearch(SearchCriteria cri) throws Exception;


	public int listSearchCount(SearchCriteria cri) throws Exception;
	
	   // 5. 관리자 :: 진로 목록
	   public List<BookVO> listAll() throws Exception;
	      

	/*
	 * public List<MainDTO> selectMainTodayBooks() throws Exception;
	 * 
	 * // �씠�떖�쓽 梨� 由ъ뒪�듃. (�씪諛섑쉶�썝) public List<BookBoardVO> selectTodayBookList() throws
	 * Exception;
	 * 
	 * // �씠�떖�쓽 梨� 寃뚯떆湲��닔 public SearchCriteria selectTodayBookRowCount(SearchCriteria
	 * search) throws Exception;
	 * 
	 * // �씠�떖�쓽 梨� �럹�씠吏�(�쉶�썝) public ArrayList<BookBoardVO>
	 * selecTodayBookPage(SearchCriteria search) throws Exception;
	 * 
	 * // �씠�떖�쓽 梨� 由ъ뒪�듃�럹�씠吏�(愿�由ъ옄) public ArrayList<BookBoardVO>
	 * selectAdminTodayBookListPaging(SearchCriteria search) throws Exception;
	 * 
	 * // 泥⑤��뙆�씪 �벑濡� public boolean insertAdminTodayBookRegister(BookBoardVO bVo)
	 * throws Exception;
	 * 
	 * //�씠�떖�쓽 梨� �닔�젙 public boolean updateAdminTodayBook(BookBoardVO bVo) throws
	 * Exception;
	 * 
	 * // �씠�떖�쓽 梨� �긽�꽭蹂닿린 public BookBoardVO selectOneBookBrdNum(String bookBrdNum)
	 * throws Exception;
	 * 
	 * // �씠�떖�쓽 梨낆뿉�꽌 寃��깋�븷 �븣 �븘�슂�븳 遺�遺� public ArrayList<BookVO> getBookList(HashMap<String,
	 * Object> listOpt) throws Exception;
	 * 
	 * // �씠�떖�쓽 梨� �궘�젣 public void deleteTodayBook(String bookBrdNum) throws Exception;
	 * 
	 * // 梨� �벑濡� public void insertBookRegister(BookVO bVo) throws Exception;
	 * 
	 * // �궗�슜�옄媛� 梨낅쾲�샇瑜� �겢由��븯硫� �닔�젙 �럹�씠吏�濡� �씠�룞. public BookVO selectOneBookNum(String bookNum)
	 * throws Exception;
	 * 
	 * // 梨� �닔�젙. public void updateBook(BookVO bVo) throws Exception;
	 * 
	 * public void deleteBook(String bookNum) throws Exception;
	 * 
	 * // 愿�由ъ옄 梨� 由ъ뒪�듃 �궘�젣 public void bookDelete(BookVO bVO) throws Exception;
	 * 
	 * // 梨� 由ъ뒪�듃 珥� 寃뚯떆湲� �닔 蹂닿린 public SearchCriteria selectBookRowCount(SearchCriteria
	 * search) throws Exception;
	 * 
	 * // 梨� 由ъ뒪�듃 �럹�씠吏� 泥섎━ public ArrayList<BookVO> selectBookPage(SearchCriteria
	 * search) throws Exception;
	 * 
	 * 
	 * //愿�由ъ옄 梨� 由ъ뒪�듃 �궘�젣 public void todayBookDelete(BookBoardVO bVO) throws Exception;
	 * 
	 * 
	 * public List<BookVO> listSearch(SearchCriteria search) throws Exception;
	 * 
	 * public int listSearchCount(SearchCriteria search) throws Exception;
	 * 
	 * public void updateViewCnt(int bookNum) throws Exception;
	 */

}
