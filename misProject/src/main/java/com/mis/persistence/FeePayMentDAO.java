package com.mis.persistence;

import java.util.List;

import com.mis.domain.FeePayMentVO;
import com.mis.domain.SearchCriteria;

public interface FeePayMentDAO {

	// 페이징, 검색할 수 있는 list
	public List<FeePayMentVO> listSearch(SearchCriteria cri) throws Exception;

	// 페이징, 검색 하기 위한 게시물 수 반환
	public int listSearchCount(SearchCriteria cri) throws Exception;

}
