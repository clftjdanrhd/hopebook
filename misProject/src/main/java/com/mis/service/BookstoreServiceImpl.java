package com.mis.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.mis.domain.BookstoreVO;
import com.mis.domain.SearchCriteria;
import com.mis.persistence.BookstoreDAO;

@Service
public class BookstoreServiceImpl implements BookstoreService{
	
	@Inject
	private BookstoreDAO dao;

	@Override
	public void register(BookstoreVO vo) throws Exception {
		dao.create(vo);
		
	}

	@Override
	public BookstoreVO read(int bookstoreNum) throws Exception {
		return dao.read(bookstoreNum);
	}

	@Override
	public void modify(BookstoreVO vo) throws Exception {
		dao.update(vo);
		
	}

	@Override
	public void remove(int bookstoreNum) throws Exception {
		dao.delete(bookstoreNum);
		
	}

	@Override
	public List<BookstoreVO> listSearchCriteria(SearchCriteria cri) throws Exception {
		return dao.listSearch(cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		return dao.listSearchCount(cri);
	}

}
