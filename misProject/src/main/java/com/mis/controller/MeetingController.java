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

import com.mis.domain.PageMaker;
import com.mis.domain.MeetingVO;
import com.mis.domain.SearchCriteria;
import com.mis.service.MeetingService;

@Controller
@RequestMapping("/meeting/*")
public class MeetingController {



		private static final Logger logger = LoggerFactory.getLogger(MeetingController.class);

		@Inject
		private MeetingService service;
		
		
		
		
		@RequestMapping(value = "/list", method = RequestMethod.GET)
		public void listPage(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {

			logger.info(cri.toString());

		      // model.addAttribute("list", service.listCriteria(cri));
		      model.addAttribute("list", service.listSearchCriteria(cri));

		      PageMaker pageMaker = new PageMaker();

		      pageMaker.setCri(cri);

		      // pageMaker.setTotalCount(service.listCountCriteria(cri));
		      pageMaker.setTotalCount(service.listSearchCount(cri));

		      model.addAttribute("pageMaker", pageMaker);

		}

		@RequestMapping(value = "/readPage", method = RequestMethod.GET)
		public void read(@RequestParam("metNum") int metNum, @ModelAttribute("cri") SearchCriteria cri, Model model)
				throws Exception {
			model.addAttribute(service.read(metNum));
		}

		@RequestMapping(value = "/removePage", method = RequestMethod.POST)
		public String remove(@RequestParam("metNum") int metNum, SearchCriteria cri, RedirectAttributes rttr) throws Exception {

			service.remove(metNum);

			rttr.addAttribute("page", cri.getPage());
			rttr.addAttribute("perPageNum", cri.getPerPageNum());
			rttr.addAttribute("searchType", cri.getSearchType());
			rttr.addAttribute("keyword", cri.getKeyword());

			rttr.addFlashAttribute("msg", "SUCCESS");

			return "redirect:/meeting/list";

		}

		@RequestMapping(value = "/modifyPage", method = RequestMethod.GET)
		public void modifyPagingGET(int metNum, @ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
			model.addAttribute(service.read(metNum));
		}

		@RequestMapping(value = "/modifyPage", method = RequestMethod.POST)
		public String modifyPagingPOST(MeetingVO Meeting, SearchCriteria cri, RedirectAttributes rttr) throws Exception {

			logger.info(cri.toString());
			service.modify(Meeting);

			rttr.addAttribute("page", cri.getPage());
			rttr.addAttribute("perPageNum", cri.getPerPageNum());
			rttr.addAttribute("searchType", cri.getSearchType());
			rttr.addAttribute("keyword", cri.getKeyword());

			rttr.addFlashAttribute("msg", "SUCCESS");

			logger.info(rttr.toString());

			return "redirect:/meeting/list";

		}

		@RequestMapping(value = "/register", method = RequestMethod.GET)
		public void registGET() throws Exception {

			logger.info("regist get...................");
		}
		
		@RequestMapping(value = "/register", method = RequestMethod.POST)
		public String registPOST(MeetingVO Meeting, RedirectAttributes rttr) throws Exception {

			logger.info("regist post...............");
			logger.info(Meeting.toString());
			
			service.register(Meeting);

			rttr.addFlashAttribute("msg", "SUCCESS");

			return "redirect:/meeting/list";

		}
		
	}
