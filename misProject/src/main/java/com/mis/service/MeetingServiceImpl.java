package com.mis.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.mis.domain.BookBoardVO;
import com.mis.domain.MeetingVO;
import com.mis.domain.SearchCriteria;
import com.mis.persistence.MeetingDAO;

@Service
public class MeetingServiceImpl implements MeetingService{
	@Inject
	private MeetingDAO dao;

	@Override
	public void register(MeetingVO vo) throws Exception {
		dao.create(vo);
		
	}

	@Override
	public MeetingVO read(int metNum) throws Exception {
		return dao.read(metNum);
	}

	@Override
	public void modify(MeetingVO vo) throws Exception {
		dao.update(vo);
		
	}

	@Override
	public void remove(int metNum) throws Exception {
		dao.delete(metNum);
		
	}


	@Override
	public List<MeetingVO> listSearchCriteria(SearchCriteria cri) throws Exception {
		return dao.listSearch(cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		return dao.listSearchCount(cri);
	}

	@Override
	public List<MeetingVO> mainList() throws Exception {
		return dao.mainList();
		
	}


}
