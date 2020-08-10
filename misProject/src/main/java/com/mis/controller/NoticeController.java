package com.mis.controller;

import java.io.File;

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

import com.mis.domain.NoticeVO;
import com.mis.domain.PageMaker;
import com.mis.domain.SearchCriteria;
import com.mis.service.NoticeService;

/*
 * @author 동주
 * 
 * */

@Controller
@RequestMapping("/notice/*")
public class NoticeController {

	private static final Logger logger = LoggerFactory.getLogger(NoticeController.class);

	@Inject
	private NoticeService service;

	/**
	 * register RequestMethod.GET 게시물의 등록페이지를 보여준다
	 */
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public void registerGET() throws Exception {
		logger.info("register get..........");
	}

	/**
	 * 
	 * RequestMethod.POST 게시물을 실제로 등록한다.
	 * 
	 */
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String registPOST(NoticeVO vo, RedirectAttributes rttr) throws Exception {

		logger.info("regist post");
		logger.info(vo.toString());

		service.register(vo);
		rttr.addFlashAttribute("msg", "SUCCESS");

		return "redirect:/notice/list";

	}

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public void list(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {

		logger.info("list로 이동했디");
		logger.info(cri.toString());

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(service.listSearchCount(cri));
		
		model.addAttribute("list", service.listSearchCriteria(cri));
		logger.info("====================" + service.listSearchCriteria(cri));
		model.addAttribute("pageMaker", pageMaker);

	}

	/**
	 * 페이징 정보 유지되는 상세보기
	 * 
	 * @param bno
	 * @param cri
	 * @param model
	 * @throws Exception
	 */
	@RequestMapping(value = "/readPage", method = RequestMethod.GET)
	public void readPage(@RequestParam("noticeNum") int noticeNum, @ModelAttribute("cri") SearchCriteria cri,
			Model model) throws Exception {

		logger.info("read친구 실행기원");

		model.addAttribute(service.read(noticeNum));

		logger.info("readPage.FileVO: " + service.fileList(noticeNum).size());
		model.addAttribute("fileVO", service.fileList(noticeNum));

	}

	/**
	 * 페이지 정보가 유지 되지 않는 삭제 기능
	 * 
	 * @param bno
	 * @param rttr
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/remove", method = RequestMethod.POST)
	public String remove(@RequestParam("noticeNum") int noticeNum, SearchCriteria cri, RedirectAttributes rttr)
			throws Exception {

		service.remove(noticeNum);
		

		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("perPageNum", cri.getPerPageNum());
		rttr.addAttribute("searchType", cri.getSearchType());
		rttr.addAttribute("keyword", cri.getKeyword());

		rttr.addFlashAttribute("msg", "SUCCESS");

		logger.info("removeget친구 실행기원");
		return "redirect:/notice/list";
	}

	@RequestMapping(value = "/modifyPage", method = RequestMethod.GET)
	public void modifyPageMakerGET(@RequestParam("noticeNum") int noticeNum, @ModelAttribute("cri") SearchCriteria cri,
			Model model) throws Exception {

		logger.info("readPage FileVO: " + service.fileList(noticeNum).size());
		logger.info("modify get친구 실행기원");
		
		model.addAttribute("fileVO", service.fileList(noticeNum));
		model.addAttribute(service.read(noticeNum));
	}

	@RequestMapping(value = "/modifyPage", method = RequestMethod.POST)
	public String modifyPageMakerPOST(NoticeVO vo, SearchCriteria cri, RedirectAttributes rttr) throws Exception {

		System.out.println(vo);
		
		service.modify(vo);
		logger.info("modify post친구 실행기원");

		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("perPageNum", cri.getPerPageNum());
		rttr.addFlashAttribute("msg", "SUCCESS");

		return "redirect:/notice/list";

	}

}