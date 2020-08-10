package com.mis.service;

import java.util.List;

import com.mis.domain.SearchCriteria;
import com.mis.domain.TaxVO;

public interface TaxService {
	public void create(TaxVO vo) throws Exception;

	public TaxVO read(int taxNum) throws Exception;

	public void update(TaxVO vo) throws Exception;

	public void delete(int taxNum) throws Exception;

	public int listSearchCount(SearchCriteria cri) throws Exception;

	public List<TaxVO> listSearch(SearchCriteria cri) throws Exception;
	}
