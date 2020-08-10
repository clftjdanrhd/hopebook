package com.mis.persistence;

import java.util.List;

import com.mis.domain.ProductVO;
import com.mis.domain.SearchCriteria;

public interface ProductDAO {

	public void create(ProductVO vo) throws Exception;

	public ProductVO read(int pno) throws Exception;

	public void update(ProductVO vo) throws Exception;

	public void delete(Integer pno) throws Exception;

	// �럹�씠吏�, 寃��깋�븷 �닔 �엳�뒗 list
	public List<ProductVO> listSearch(SearchCriteria cri) throws Exception;

	// �럹�씠吏�, 寃��깋 �븯湲� �쐞�븳 寃뚯떆臾� �닔 諛섑솚
	public int listSearchCount(SearchCriteria cri) throws Exception;

	public void updateViewCnt(int pno) throws Exception;

}