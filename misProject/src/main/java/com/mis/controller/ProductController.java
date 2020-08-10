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
import com.mis.domain.ProductVO;
import com.mis.domain.SearchCriteria;
import com.mis.service.ProductService;

@Controller
@RequestMapping("/product/*")
public class ProductController {



		private static final Logger logger = LoggerFactory.getLogger(ProductController.class);

		@Inject
		private ProductService service;
		
		
		
		
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
		public void read(@RequestParam("pno") int pno, @ModelAttribute("cri") SearchCriteria cri, Model model)
				throws Exception {
			model.addAttribute(service.read(pno));
		}

		@RequestMapping(value = "/removePage", method = RequestMethod.POST)
		public String remove(@RequestParam("pno") int pno, SearchCriteria cri, RedirectAttributes rttr) throws Exception {

			service.remove(pno);

			rttr.addAttribute("page", cri.getPage());
			rttr.addAttribute("perPageNum", cri.getPerPageNum());
			rttr.addAttribute("searchType", cri.getSearchType());
			rttr.addAttribute("keyword", cri.getKeyword());

			rttr.addFlashAttribute("msg", "SUCCESS");

			return "redirect:/product/list";

		}

		@RequestMapping(value = "/modifyPage", method = RequestMethod.GET)
		public void modifyPagingGET(int pno, @ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
			model.addAttribute(service.read(pno));
		}

		@RequestMapping(value = "/modifyPage", method = RequestMethod.POST)
		public String modifyPagingPOST(ProductVO Product, SearchCriteria cri, RedirectAttributes rttr) throws Exception {

			logger.info(cri.toString());
			service.modify(Product);

			rttr.addAttribute("page", cri.getPage());
			rttr.addAttribute("perPageNum", cri.getPerPageNum());
			rttr.addAttribute("searchType", cri.getSearchType());
			rttr.addAttribute("keyword", cri.getKeyword());

			rttr.addFlashAttribute("msg", "SUCCESS");

			logger.info(rttr.toString());

			return "redirect:/product/list";

		}

		@RequestMapping(value = "/register", method = RequestMethod.GET)
		public void registGET() throws Exception {

			logger.info("regist get...................");
		}
		
		@RequestMapping(value = "/register", method = RequestMethod.POST)
		public String registPOST(ProductVO Product, RedirectAttributes rttr) throws Exception {

			logger.info("regist post...............");
			logger.info(Product.toString());
			
			service.register(Product);

			rttr.addFlashAttribute("msg", "SUCCESS");

			return "redirect:/product/list";

		}
		
	}
