

package com.mis.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.mis.domain.SearchCriteria;
import com.mis.domain.TaxVO;
import com.mis.persistence.TaxDAO;

@Service
public class TaxServiceImpl implements TaxService {
	@Inject
	private TaxDAO dao;


	@Override
	public void create(TaxVO vo) throws Exception {
		dao.create(vo);
		
	}

	@Override
	public List<TaxVO> listSearch(SearchCriteria cri) throws Exception {
		return dao.listSearch(cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		return dao.listSearchCount(cri);	
		}

	@Override
	public TaxVO read(int taxNum) throws Exception {
		return dao.read(taxNum);
	}

	@Override
	public void update(TaxVO vo) throws Exception {
		dao.update(vo);
	}

	@Override
	public void delete(int taxNum) throws Exception {
		dao.delete(taxNum);
		
	}



}

//@Inject
//private TaxDAO dao;
//
//private static String namespace = "com.mis.book.service";
//
//@Override
//public void insertTax(TaxVO tVo) throws Exception {
//
//}
//
//@Override
//public ArrayList<TaxVO> adminSelectTax(Paging paging) throws Exception {
//	dao.adminSelectTax(paging);
//	return dao.adminSelectTax(paging);
//}
//
//@Override
//public Paging selectTaxRowCount(Paging paging) throws Exception {
//	dao.selectTaxRowCount(paging);
//	return dao.selectTaxRowCount(paging);
//
//}