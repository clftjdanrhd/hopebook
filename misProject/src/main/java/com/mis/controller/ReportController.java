package com.mis.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mis.domain.BookVO;
import com.mis.domain.Paging;
import com.mis.domain.ReportBoardVO;
import com.mis.domain.SearchCriteria;
import com.mis.service.BookService;
import com.mis.service.ReportService;

@Controller
@RequestMapping("/reportboard/*")
public class ReportController {
	private static final Logger logger = LoggerFactory.getLogger(ReportController.class);

	@Inject
	private ReportService service;
	
	@Inject BookService bookservice;

	// 리스트
	// 페이지----------------------------------------------------------------------------------------------
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public void listPage(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {

		logger.info(cri.toString());
		System.out.println(cri.getPage());

		Paging paging = new Paging();
		paging.setCri(cri);

		System.out.println(paging.toString());

		System.out.println("list : " + service.listSearch(cri));
		model.addAttribute("list", service.listSearch(cri));

		paging.setTotalCount(service.listSearchCount(cri));
		System.out.println("paging : " + service.listSearchCount(cri));
		model.addAttribute("paging", paging);

	}
	// -------------------------------------------------------------------------------------------------

	// 등록
	// 페이지--------------------------------------------------------------------------------------------
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public void registerGET(HttpServletRequest request, Model model) throws Exception {
		logger.info("regist get.......");
        logger.info("show all list......................");
        model.addAttribute(bookservice.listAll());
        model.addAttribute("listAll", bookservice.listAll());

	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String registerPOST(ReportBoardVO reportNum, RedirectAttributes rttr) throws Exception {
		logger.info("regist POST.......");
		logger.info(reportNum.toString());
		service.create(reportNum);
		rttr.addFlashAttribute("msg", "SUCCESS");
		return "redirect:/reportboard/list";

	}
	// -------------------------------------------------------------------------------------------------

	// 읽기
	// 페이지----------------------------------------------------------------------------------------------
	@RequestMapping(value = "/read", method = RequestMethod.GET)
	public void read(@RequestParam(value = "vo", required = false) int vo, Model model) throws Exception {
		model.addAttribute(service.read(vo));
	}

	@RequestMapping(value = "/readPage", method = RequestMethod.GET)
	public void readPage(@RequestParam(value = "reportNum", required = false) int vo,
			@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		model.addAttribute(service.read(vo));
	}

	// -------------------------------------------------------------------------------------------------

	// 수정
	// 페이지----------------------------------------------------------------------------------------------
	@RequestMapping(value = "/modifyPage", method = RequestMethod.GET)
	public void modifyPagingGET(@RequestParam int reportNum, @ModelAttribute("cri") SearchCriteria cri, Model model)
			throws Exception {
		model.addAttribute(service.read(reportNum));
	}

	@RequestMapping(value = "/modifyPage", method = RequestMethod.POST)
	public String modifyPOST(ReportBoardVO reportNum, SearchCriteria cri, RedirectAttributes rttr) throws Exception {

		service.update(reportNum);
		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("perPageNum", cri.getPerPageNum());
		rttr.addFlashAttribute("msg", "SUCCESS");
		return "redirect:/reportboard/list";
	}
	// -------------------------------------------------------------------------------------------------

	// 삭제
	// 페이지---------------------------------------------------------------------------------------------
	@RequestMapping(value = "/removePage", method = RequestMethod.POST)
	public String remove(@RequestParam("reportNum") int reportNum, SearchCriteria cri, RedirectAttributes rttr)
			throws Exception {
		service.delete(reportNum);

		rttr.addAttribute("Page", cri.getPage());
		rttr.addAttribute("perPageNum", cri.getPerPageNum());
		rttr.addAttribute("searchType", cri.getSearchType());
		rttr.addAttribute("keyword", cri.getKeyword());

		rttr.addFlashAttribute("msg", "SUCCESS");

		return "redirect:/reportboard/list";

	}
	// -------------------------------------------------------------------------------------------------

	
	// 팝업----------------------------------------------------------------------------------------------------------
    @RequestMapping(value = "/searchPopup", method = RequestMethod.GET)
    public void searchPopup(Model model) throws Exception {
       logger.info("saerchPopup......");
       List<BookVO> bookList = service.bookList();
       model.addAttribute("bookList", bookList);

    }
       
       // 학생 :: 졸업인증신청 관리 - 신청 - 항목 명 검색
    @RequestMapping(value = "/searchBook", method = RequestMethod.GET)
    public void searchBook(@RequestParam("bookTitle") String bookTitle, Model model) throws Exception {

       List<BookVO> searchBookList = service.searchBook(bookTitle);

       logger.info("searchBook : " + searchBookList.toString());
       model.addAttribute("searchBookList", searchBookList);

    }
	// 팝업
	// 여기까지----------------------------------------------------------------------------------------------------------

}
