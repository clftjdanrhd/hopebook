package com.mis.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mis.domain.Paging;
import com.mis.domain.SearchCriteria;
import com.mis.domain.TaxVO;
import com.mis.service.TaxService;

@Controller
@RequestMapping("/tax/*")
public class TaxController {

	private static final Logger logger = LoggerFactory.getLogger(TaxController.class);

	@Inject
	private TaxService service;

	// 리스트
	// 페이지---------------------------------------------------------------------------------------------
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public void listPage(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		logger.info(cri.toString());

		model.addAttribute("list", service.listSearch(cri));
		Paging paging = new Paging();
		paging.setCri(cri);
		// pageMaker.setTotalCount(131);

		paging.setTotalCount(service.listSearchCount(cri));
		model.addAttribute("paging", paging);
	}
	// -------------------------------------------------------------------------------------------------

	// 등록 페이지---------------------------------------------------------------------------------------------
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public void registerGET() throws Exception {
		logger.info("regist get.......");

	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String registerPOST(TaxVO taxNum, RedirectAttributes rttr) throws Exception {
		logger.info("regist POST.......");
		logger.info(taxNum.toString());
		service.create(taxNum);
		rttr.addFlashAttribute("msg", "SUCCESS");
		return "redirect:/tax/list";

	}
	// -------------------------------------------------------------------------------------------------

	//읽기 페이지---------------------------------------------------------------------------------------------
	@RequestMapping(value = "/readPage", method = RequestMethod.GET)
	public void readPage(@RequestParam("taxNum") int taxNum, @ModelAttribute("cri") SearchCriteria cri, Model model)
			throws Exception {
		model.addAttribute(service.read(taxNum));
	}

	//-------------------------------------------------------------------------------------------------
	
	
	//수정 페이지-------------------------------------------------------------------------------------------------
	@RequestMapping(value = "/modifyPage", method = RequestMethod.GET)
	public void modifyPagingGET(@RequestParam int taxNum, @ModelAttribute("cri") SearchCriteria cri, Model model)
			throws Exception {
		model.addAttribute(service.read(taxNum));
	}

	@RequestMapping(value = "/modifyPage", method = RequestMethod.POST)
	public String modifyPOST(TaxVO taxNum, SearchCriteria cri, RedirectAttributes rttr) throws Exception {

		service.update(taxNum);
		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("perPageNum", cri.getPerPageNum());
		rttr.addFlashAttribute("msg", "SUCCESS");
		return "redirect:/tax/list";
	}
	//-------------------------------------------------------------------------------------------------

	//삭제 페이지-------------------------------------------------------------------------------------------------
	@RequestMapping(value = "/removePage", method = RequestMethod.POST)
	public String remove(@RequestParam("taxNum") int taxNum, SearchCriteria cri, RedirectAttributes rttr)
			throws Exception {
		service.delete(taxNum);
		
		rttr.addAttribute("Page", cri.getPage());
		rttr.addAttribute("perPageNum", cri.getPerPageNum());
		rttr.addAttribute("searchType", cri.getSearchType());
		rttr.addAttribute("keyword", cri.getKeyword());
		
		rttr.addFlashAttribute("msg", "SUCCESS");
		
		return "redirect:/tax/list";
		
	}
	//-------------------------------------------------------------------------------------------------
}