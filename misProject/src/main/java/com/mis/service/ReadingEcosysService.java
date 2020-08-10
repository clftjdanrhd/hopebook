package com.mis.service;

import java.util.List;

import com.mis.domain.BookVO;
import com.mis.domain.BookstoreVO;
import com.mis.domain.LibraryVO;
import com.mis.domain.MeetingVO;
import com.mis.domain.ReportBoardVO;
import com.mis.domain.SearchCriteria;

public interface ReadingEcosysService {

	// 독서모임 리스트
/*	public List<MeetingVO> listMeeting(Criteria cri) throws Exception;*/

	public MeetingVO readMeeting(int metNum) throws Exception;

	public void updateMeeting(MeetingVO vo) throws Exception;

	public void removeMeeting(int metNum) throws Exception;

	public List<MeetingVO> meetingListSearchCriteria(SearchCriteria cri) throws Exception;

	public int meetingListSearchCount(SearchCriteria cri) throws Exception;

	
	
	// 독서 모임 승인 거절 리스트

/*	public List<MeetingVO> listYnMeeting(Criteria cri) throws Exception;*/

	public MeetingVO readYnMeeting(int metNum) throws Exception;

	public void removeYnMeeting(int metNum) throws Exception;
	
	public List<MeetingVO>  meetingYnListSearchCriteria(SearchCriteria cri) throws Exception;

	public int meetingYnListSearchCount(SearchCriteria cri) throws Exception;
	

	// 책 리스트
/*	public List<BookVO> listBook(Criteria cri) throws Exception;*/

	public BookVO readBook(int bookNum) throws Exception;

	public void deleteBook(int bookNum) throws Exception;

	public void updateBook(BookVO vo) throws Exception;
	
	public List<BookVO> bookListSearchCriteria(SearchCriteria cri) throws Exception;

	public int bookListSearchCount(SearchCriteria cri) throws Exception;
	

	// 독후감 리스트
/*	public List<ReportBoardVO> listReport(Criteria cri) throws Exception;*/

	public void deleteReport(int reportNum) throws Exception;

	public int countReport() throws Exception;
	
	public List<ReportBoardVO> reportListSearchCriteria(SearchCriteria cri) throws Exception;

	public int reportListSearchCount(SearchCriteria cri) throws Exception;
	

	// 도서관 리스트
	
	public void registerLibrary(LibraryVO vo) throws Exception;
	
/*	public List<LibraryVO> listLibrary() throws Exception;*/

	public LibraryVO readLibrary(int libraryNum) throws Exception;

	public void modifyLibrary(LibraryVO vo) throws Exception;

	public void removeLibrary(int libraryNum) throws Exception;
	
	public List<LibraryVO> libraryListSearchCriteria(SearchCriteria cri) throws Exception;

	public int libraryListSearchCount(SearchCriteria cri) throws Exception;
	
	

	// 책방 리스트
	
	public void registerBookstore(BookstoreVO vo) throws Exception;
	
	/*	public List<BookstoreVO> listBookstore() throws Exception;*/

	public BookstoreVO readBookstore(int bookstoreNum) throws Exception;

	public void modifyBookstore(BookstoreVO vo) throws Exception;

	public void deleteBookstore(int bookstoreNum) throws Exception;

	public List<BookstoreVO> bookstoreListSearchCriteria(SearchCriteria cri) throws Exception;

	public int bookstoreListSearchCount(SearchCriteria cri) throws Exception;

}
