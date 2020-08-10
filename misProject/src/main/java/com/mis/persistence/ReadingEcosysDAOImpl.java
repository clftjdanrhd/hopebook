package com.mis.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.mis.domain.BookVO;
import com.mis.domain.BookstoreVO;
import com.mis.domain.LibraryVO;
import com.mis.domain.MeetingVO;
import com.mis.domain.ReportBoardVO;
import com.mis.domain.SearchCriteria;

@Repository
public class ReadingEcosysDAOImpl implements ReadingEcosysDAO {

	@Inject
	private SqlSession session;

	private static String namespace = "com.mis.mapper.ReadingEcosysMapper";

	/* 독서모임 친구 */
	/*
	 * @Override public List<MeetingVO> listMeeting(Criteria cri) throws Exception {
	 * return session.selectList(namespace + ".listMeeting"); }
	 */
	@Override
	public MeetingVO readMeeting(int metNum) throws Exception {
		return session.selectOne(namespace + ".readMeeting", metNum);
	}

	@Override
	public void updateMeeting(MeetingVO vo) throws Exception {
		session.delete(namespace + ".deleteMeeting", vo);

	}

	@Override
	public void deleteMeeting(int metNum) throws Exception {
		session.update(namespace + ".updateMeeting", metNum);

	}

	@Override
	public List<MeetingVO> meetingListSearch(SearchCriteria cri) throws Exception {

		return session.selectList(namespace + ".meetingListSearch", cri);
	}

	@Override
	public int meetingListSearchCount(SearchCriteria cri) throws Exception {

		return session.selectOne(namespace + ".meetingListSearchCount", cri);
	}

	/* 독서모임 승인 거절 친구 */

	/*
	 * @Override public List<MeetingVO> listYnMeeting(Criteria cri) throws Exception
	 * { return session.selectList(namespace + ".listYnMeeting"); }
	 */

	@Override
	public MeetingVO readYnMeeting(int metNum) throws Exception {
		return session.selectOne(namespace + ".readYnMeeting", metNum);
	}

	@Override
	public void deleteYnMeeting(int metNum) throws Exception {
		session.update(namespace + ".updateYnMeeting", metNum);

	}

	@Override
	public List<MeetingVO> meetingYnListSearch(SearchCriteria cri) throws Exception {

		return session.selectList(namespace + ".meetingYnListSearch", cri);
	}

	@Override
	public int meetingYnListSearchCount(SearchCriteria cri) throws Exception {

		return session.selectOne(namespace + ".meetingYnListSearchCount", cri);
	}

	/* 책 친구 */
	/*
	 * @Override public List<BookVO> listBook(Criteria cri) throws Exception {
	 * return session.selectList(namespace + ".listBook"); }
	 */

	@Override
	public BookVO readBook(int bookNum) throws Exception {
		return session.selectOne(namespace + ".readBook", bookNum);
	}

	@Override
	public void deleteBook(int bookNum) throws Exception {
		session.delete(namespace + ".deleteBook", bookNum);
	}

	@Override
	public void updateBook(BookVO vo) throws Exception {
		session.update(namespace + ".updateBook", vo);
	}

	@Override
	public List<BookVO> bookListSearch(SearchCriteria cri) throws Exception {

		return session.selectList(namespace + ".bookListSearch", cri);
	}

	@Override
	public int bookListSearchCount(SearchCriteria cri) throws Exception {

		return session.selectOne(namespace + ".bookListSearchCount", cri);
	}

	/* 독후감 친구 */

	/*
	 * @Override public List<ReportBoardVO> listReport() throws Exception { return
	 * session.selectList(namespace + ".listReport"); }
	 */

	@Override
	public int countReport() throws Exception {
		return session.selectOne(namespace + ".countReport");
	}

	@Override
	public void deleteReport(int reportNum) throws Exception {
		session.delete(namespace + ".deleteReport", reportNum);
	}

	@Override
	public List<ReportBoardVO> reportListSearch(SearchCriteria cri) throws Exception {

		return session.selectList(namespace + ".reportBoardListSearch", cri);
	}

	@Override
	public int reportListSearchCount(SearchCriteria cri) throws Exception {

		return session.selectOne(namespace + ".reportBoardListSearchCount", cri);
	}

	/* 도서관 친구 */

	@Override
	public void createLibrary(LibraryVO vo) throws Exception {
		session.insert(namespace + ".createLibrary", vo);

	}

	/*
	 * @Override public List<LibraryVO> listLibrary() throws Exception { return
	 * session.selectList(namespace + ".listLibrary"); }
	 */

	@Override
	public LibraryVO readLibrary(int libraryNum) throws Exception {
		return session.selectOne(namespace + ".readLibrary", libraryNum);
	}

	@Override
	public void updateLibrary(LibraryVO vo) throws Exception {
		session.update(namespace + ".updateLibrary", vo);
	}

	@Override
	public void deleteLibrary(int libraryNum) throws Exception {
		session.delete(namespace + ".deleteLibrary", libraryNum);
	}

	@Override
	public List<LibraryVO> libraryListSearch(SearchCriteria cri) throws Exception {

		return session.selectList(namespace + ".libraryListSearch", cri);
	}

	@Override
	public int libraryListSearchCount(SearchCriteria cri) throws Exception {

		return session.selectOne(namespace + ".libraryListSearchCount", cri);
	}

	/* 책방 친구 */

	@Override
	public void createBookstore(BookstoreVO vo) throws Exception {
		session.insert(namespace + ".createBookstore", vo);

	}

	/*
	 * @Override public List<BookstoreVO> listBookstore() throws Exception { return
	 * session.selectList(namespace + ".listBookstore"); }
	 */

	@Override
	public BookstoreVO readBookstore(int bookstoreNum) throws Exception {
		return session.selectOne(namespace + ".readBookstore", bookstoreNum);
	}

	@Override
	public void updateBookstore(BookstoreVO vo) throws Exception {
		session.update(namespace + ".updateBookstore", vo);
	}

	@Override
	public void deleteBookstore(int bookstoreNum) throws Exception {
		session.delete(namespace + ".deleteBookstore", bookstoreNum);
	}

	@Override
	public List<BookstoreVO> bookstoreListSearch(SearchCriteria cri) throws Exception {

		return session.selectList(namespace + ".bookstoreListSearch", cri);
	}

	@Override
	public int bookstoreListSearchCount(SearchCriteria cri) throws Exception {

		return session.selectOne(namespace + ".bookstoreListSearchCount", cri);
	}

}
