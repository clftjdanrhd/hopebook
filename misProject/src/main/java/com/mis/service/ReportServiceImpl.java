package com.mis.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.mis.domain.BookVO;
import com.mis.domain.ReportBoardVO;
import com.mis.domain.SearchCriteria;
import com.mis.persistence.ReportDAO;

@Service
public class ReportServiceImpl implements ReportService {

	@Inject
	private ReportDAO dao;

	@Override
	public void create(ReportBoardVO reportNum) throws Exception {
		dao.create(reportNum);

	}

	@Override
	public ReportBoardVO read(int reportNum) throws Exception {
		dao.updateViewCnt(reportNum);
		return dao.read(reportNum);
	}

	@Override
	public void update(ReportBoardVO reportNum) throws Exception {
		dao.update(reportNum);

	}

	@Override
	public void delete(int reportNum) throws Exception {
		dao.delete(reportNum);

	}

	@Override
	public List<ReportBoardVO> listSearch(SearchCriteria cri) throws Exception {
		return dao.listSearch(cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		return dao.listSearchCount(cri);
	}

	@Override
	public void updateViewCnt(Integer reportNum) throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public List<BookVO> searchBook(String bookTitle) throws Exception {
		return dao.searchBook(bookTitle);
	}

	@Override
	public List<BookVO> bookList() throws Exception {
		return dao.bookList();
	}

}
