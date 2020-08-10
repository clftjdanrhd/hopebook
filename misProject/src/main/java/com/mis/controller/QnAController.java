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
import com.mis.domain.QnAVO;
import com.mis.domain.SearchCriteria;
import com.mis.service.QnACommentService;
import com.mis.service.QnAService;

@Controller
@RequestMapping("/qna/*")
public class QnAController {

	private static final Logger logger = LoggerFactory.getLogger(QnAController.class);

	@Inject
	private QnAService service;

	// 리스트
	// 페이지-------------------------------------------------------------------------------------
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public void listPage(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {

		logger.info(cri.toString());
		System.out.println(cri.getPage());

		Paging paging = new Paging();
		paging.setCri(cri);
		paging.setTotalCount(service.listSearchCount(cri));

		model.addAttribute("list", service.listSearch(cri));
		model.addAttribute("paging", paging);
	}
	// ------------------------------------------------------------------------------------------------

	// 등록
	// 페이지-----------------------------------------------------------------------------------------
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public void registerGET() throws Exception {
		logger.info("regist get.......");

	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String registerPOST(QnAVO board, RedirectAttributes rttr) throws Exception {
		logger.info("regist POST.......");
		logger.info(board.toString());

		service.create(board);

		rttr.addFlashAttribute("msg", "SUCCESS");
		return "redirect:/qna/list";
	}

	// ------------------------------------------------------------------------------------------------

	// 읽기
	// 페이지---------------------------------------------------------------------------------------
	/*
	 * @RequestMapping(value = "/read", method = RequestMethod.GET) public void
	 * read(@RequestParam(value = "qNum", required = false) int qNum, Model model)
	 * throws Exception { model.addAttribute(service.read(qNum));
	 * logger.info("readPage.FileVO: " + service.fileList(qNum).size());
	 * model.addAttribute("fileVO", service.fileList(qNum)); }
	 */

	@RequestMapping(value = "/readPage", method = RequestMethod.GET)
	public void readPage(@RequestParam(value = "qNum", required = false) int qNum,
			@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		model.addAttribute(service.read(qNum));
		logger.info("readPage.FileVO: " + service.fileList(qNum).size());
		model.addAttribute("fileVO", service.fileList(qNum));

	}
	// -------------------------------------------------------------------------------------------------

	// 수정
	// 페이지---------------------------------------------------------------------------------------------
	@RequestMapping(value = "/modifyPage", method = RequestMethod.GET)
	public void modifyPageGET(@RequestParam int qNum, @ModelAttribute("cri") SearchCriteria cri, Model model)
			throws Exception {

		model.addAttribute("fileVO", service.fileList(qNum));
		model.addAttribute(service.read(qNum));

	}

	@RequestMapping(value = "/modifyPage", method = RequestMethod.POST)
	public String modifyPagePOST(QnAVO board, @RequestParam("qNum") int qNum, SearchCriteria cri,
			RedirectAttributes rttr) throws Exception {

		logger.info(cri.toString());
		service.update(board);

		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("perPageNum", cri.getPerPageNum());
		rttr.addAttribute("criType", cri.getSearchType());
		rttr.addAttribute("keyword", cri.getKeyword());

		rttr.addFlashAttribute("msg", "SUCCESS");

		logger.info(rttr.toString());

		return "redirect:/qna/list";

	}
	// -------------------------------------------------------------------------------------------------

	// 식제
	// 페이지---------------------------------------------------------------------------------------------
	@RequestMapping(value = "/removePage", method = RequestMethod.POST)
	public String remove(@RequestParam("qNum") int qNum, SearchCriteria cri, RedirectAttributes rttr) throws Exception {
		service.delete(qNum);

		rttr.addAttribute("Page", cri.getPage());
		rttr.addAttribute("perPageNum", cri.getPerPageNum());
		rttr.addAttribute("searchType", cri.getSearchType());
		rttr.addAttribute("keyword", cri.getKeyword());

		rttr.addFlashAttribute("msg", "SUCCESS");

		return "redirect:/qna/list";

	}
	// -------------------------------------------------------------------------------------------------

}
