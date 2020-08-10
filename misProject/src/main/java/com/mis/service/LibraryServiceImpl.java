package com.mis.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.mis.domain.LibraryVO;
import com.mis.domain.SearchCriteria;
import com.mis.persistence.LibraryDAO;

@Service
public class LibraryServiceImpl implements LibraryService{
	
	@Inject
	private LibraryDAO dao;

	@Override
	public void register(LibraryVO vo) throws Exception {
		dao.create(vo);
		
	}

	@Override
	public LibraryVO read(int libraryNum) throws Exception {
		return dao.read(libraryNum);
	}

	@Override
	public void modify(LibraryVO vo) throws Exception {
		dao.update(vo);
		
	}

	@Override
	public void remove(int libraryNum) throws Exception {
		dao.delete(libraryNum);
		
	}

	@Override
	public List<LibraryVO> listSearchCriteria(SearchCriteria cri) throws Exception {
		return dao.listSearch(cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		return dao.listSearchCount(cri);
	}

}
