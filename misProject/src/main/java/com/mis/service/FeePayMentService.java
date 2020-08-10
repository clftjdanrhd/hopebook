package com.mis.service;

import java.util.List;

import com.mis.domain.FeePayMentVO;
import com.mis.domain.SearchCriteria;


public interface FeePayMentService {
	
	public List<FeePayMentVO> listSearch(SearchCriteria cri) throws Exception;

	// 페이징, 검색 하기 위한 게시물 수 반환
	public int listSearchCount(SearchCriteria cri) throws Exception;

}
