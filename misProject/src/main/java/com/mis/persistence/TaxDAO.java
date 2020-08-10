package com.mis.persistence;

import java.util.List;

import com.mis.domain.SearchCriteria;
import com.mis.domain.TaxVO;

public interface TaxDAO {
	public void create(TaxVO vo) throws Exception;

	public TaxVO read(int taxNum) throws Exception;

	public void update(TaxVO vo) throws Exception;

	public void delete(int taxNum) throws Exception;
	
	//검색
	public List<TaxVO> listSearch(SearchCriteria cri) throws Exception;
	
	//독후감 게시글 수
	public int listSearchCount(SearchCriteria cri) throws Exception;


}
