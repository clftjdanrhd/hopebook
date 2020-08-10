package com.mis.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.mis.domain.FeePayMentVO;
import com.mis.domain.SearchCriteria;
import com.mis.persistence.FeePayMentDAO;

@Service
public class FeePayMentServiceImpl implements FeePayMentService{
	
	@Inject
	private FeePayMentDAO dao;

	@Override
	public List<FeePayMentVO> listSearch(SearchCriteria cri) throws Exception {
		return dao.listSearch(cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		return dao.listSearchCount(cri);
	}

}
