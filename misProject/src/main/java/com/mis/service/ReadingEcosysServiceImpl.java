package com.mis.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.mis.domain.BookVO;
import com.mis.domain.BookstoreVO;
import com.mis.domain.Criteria;
import com.mis.domain.LibraryVO;
import com.mis.domain.MeetingVO;
import com.mis.domain.ProductVO;
import com.mis.domain.ReportBoardVO;
import com.mis.domain.SearchCriteria;
import com.mis.persistence.ReadingEcosysDAO;

@Service
public class ReadingEcosysServiceImpl implements ReadingEcosysService {

	@Inject
	private ReadingEcosysDAO dao;
	
	
	/*독서모임 친구*/
	/*@Override
	public List<MeetingVO> listMeeting(Criteria cri) throws Exception {
		return dao.listMeeting(cri);
	}*/

	@Override
	public MeetingVO readMeeting(int metNum) throws Exception {
		return dao.readMeeting(metNum);
	}

	@Override
	public void updateMeeting(MeetingVO vo) throws Exception {
		dao.updateMeeting(vo);
		
	}

	@Override
	public void removeMeeting(int metNum) throws Exception {
		dao.deleteMeeting(metNum);
		
	}
	
	@Override
	public List<MeetingVO> meetingListSearchCriteria(SearchCriteria cri) throws Exception {
		return dao.meetingListSearch(cri);
	}

	@Override
	public int meetingListSearchCount(SearchCriteria cri) throws Exception {
		return dao.meetingListSearchCount(cri);
	}
	
	

/* 독서 모임 승인 거절 친구*/
	
	
/*	@Override
	public List<MeetingVO> listYnMeeting(Criteria cri) throws Exception {
		return dao.listYnMeeting(cri);
	}*/

	@Override
	public MeetingVO readYnMeeting(int metNum) throws Exception {
		return dao.readYnMeeting(metNum);
	}


	@Override
	public void removeYnMeeting(int metNum) throws Exception {
		dao.deleteYnMeeting(metNum);
		
	}
	
	@Override
	public List<MeetingVO>meetingYnListSearchCriteria(SearchCriteria cri) throws Exception {
		return dao.meetingYnListSearch(cri);
	}

	@Override
	public int meetingYnListSearchCount(SearchCriteria cri) throws Exception {
		return dao.meetingYnListSearchCount(cri);
	}
	
	
	/*책 친구*/
/*	@Override
	public List<BookVO> listBook(Criteria cri) throws Exception {
		return dao.listBook(cri);
	}*/

	@Override
	public BookVO readBook(int bookNum) throws Exception {
		return dao.readBook(bookNum);
	}

	@Override
	public void deleteBook(int bookNum) throws Exception {
		dao.deleteBook(bookNum);
	}

	@Override
	public void updateBook(BookVO vo) throws Exception {
		dao.updateBook(vo);
	}
	
	@Override
	public List<BookVO>bookListSearchCriteria(SearchCriteria cri) throws Exception {
		return dao.bookListSearch(cri);
	}

	@Override
	public int bookListSearchCount(SearchCriteria cri) throws Exception {
		return dao.bookListSearchCount(cri);
	}
	
	
	/*독후감 친구*/
/*	@Override
	public List<ReportBoardVO> listReport(Criteria cri) throws Exception {
		return dao.listReport();
	}*/
	
	@Override
	public int countReport() throws Exception {
		return dao.countReport();
	}


	@Override
	public void deleteReport(int reportNum) throws Exception {
		dao.deleteReport(reportNum);
	}
	
	@Override
	public List<ReportBoardVO> reportListSearchCriteria(SearchCriteria cri) throws Exception {
		return dao.reportListSearch(cri);
	}

	@Override
	public int reportListSearchCount(SearchCriteria cri) throws Exception {
		return dao.reportListSearchCount(cri);
	}
	
	
	
	
	
	/*도서관 친구*/
	
	@Override
	public void registerLibrary(LibraryVO vo) throws Exception {
		dao.createLibrary(vo);
		
	}
	
/*	@Override
	public List<LibraryVO> listLibrary() throws Exception {
		return dao.listLibrary();
	}
*/
	@Override
	public LibraryVO readLibrary(int libraryNum) throws Exception {
		return dao.readLibrary(libraryNum);
	}

	@Override
	public void modifyLibrary(LibraryVO vo) throws Exception {
		dao.updateLibrary(vo);
	}

	@Override
	public void removeLibrary(int libraryNum) throws Exception {
		dao.deleteLibrary(libraryNum);
	}

	@Override
	public List<LibraryVO> libraryListSearchCriteria(SearchCriteria cri) throws Exception {
		return dao.libraryListSearch(cri);
	}

	@Override
	public int libraryListSearchCount(SearchCriteria cri) throws Exception {
		return dao.libraryListSearchCount(cri);
	}
	
	
	
	/*책방 친구*/
	
	@Override
	public void registerBookstore(BookstoreVO vo) throws Exception {
		dao.createBookstore(vo);
		
	}
	
/*	@Override
	public List<BookstoreVO> listBookstore() throws Exception {
		return dao.listBookstore();
	}*/

	@Override
	public BookstoreVO readBookstore(int bookstoreNum) throws Exception {
		return dao.readBookstore(bookstoreNum);
	}

	@Override
	public void modifyBookstore(BookstoreVO vo) throws Exception {
		dao.updateBookstore(vo);
	}

	@Override
	public void deleteBookstore(int bookstoreNum) throws Exception {
		dao.deleteBookstore(bookstoreNum);
	}

	@Override
	public List<BookstoreVO> bookstoreListSearchCriteria(SearchCriteria cri) throws Exception {
		return dao.bookstoreListSearch(cri);
	}

	@Override
	public int bookstoreListSearchCount(SearchCriteria cri) throws Exception {
		return dao.bookstoreListSearchCount(cri);
	}


}
