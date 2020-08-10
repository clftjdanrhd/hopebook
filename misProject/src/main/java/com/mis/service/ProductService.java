package com.mis.service;

import java.util.List;

import com.mis.domain.ProductVO;
import com.mis.domain.SearchCriteria;

public interface ProductService {

	public void register(ProductVO vo) throws Exception;

	public ProductVO read(int pno) throws Exception;

	public void modify(ProductVO vo) throws Exception;

	public void remove(int pno) throws Exception;

	// 페이징, 검색할 수 있는 list
	public List<ProductVO> listSearchCriteria(SearchCriteria cri) throws Exception;

	// 페이징, 검색 하기 위한 게시물 수 반환
	public int listSearchCount(SearchCriteria cri) throws Exception;
	
}
