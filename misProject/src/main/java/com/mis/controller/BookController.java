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

import com.mis.domain.BookVO;
import com.mis.domain.PageMaker;
import com.mis.domain.Paging;
import com.mis.domain.SearchCriteria;
import com.mis.service.BookService;

@Controller
@RequestMapping("/book/*")
public class BookController {
	
	private static final Logger logger = LoggerFactory.getLogger(BookController.class);

	@Inject
	private BookService service;
	
	
	
	
	
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public void registerGET() throws Exception {

		logger.info("regist get...................");
	}
	
		@RequestMapping(value = "/register", method = RequestMethod.POST)
		public String registerPOST(BookVO book, RedirectAttributes rttr) throws Exception {
			
			
			logger.info("regist post...............");
			logger.info(book.toString());
			
			service.insert(book);

			rttr.addFlashAttribute("msg", "SUCCESS");
			
			return "redirect:/book/list";
			
		}
		
		
		@RequestMapping(value = "/modifyPage", method = RequestMethod.GET)
		public void modifyPageGET(int bookNum, @ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
			model.addAttribute(service.read(bookNum));
		}
		
		
		@RequestMapping(value = "/modifyPage", method = RequestMethod.POST)
		public String modifyPagePOST(BookVO board, SearchCriteria cri, RedirectAttributes rttr) throws Exception {

			logger.info(cri.toString());
			service.modify(board);

			rttr.addAttribute("page", cri.getPage());
			rttr.addAttribute("perPageNum", cri.getPerPageNum());
			rttr.addAttribute("criType", cri.getSearchType());
			rttr.addAttribute("keyword", cri.getKeyword());

			rttr.addFlashAttribute("msg", "SUCCESS");

			logger.info(rttr.toString());

			return "redirect:/book/list";

		}
		
		
		
		@RequestMapping(value = "/list", method = RequestMethod.GET)
		public void listPage(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {

			logger.info(cri.toString());
			
			// model.addAttribute("list", service.listCriteria(cri));
		model.addAttribute("list", service.listSearch(cri));


			// model.addAttribute("list", service.listCriteria(cri));

			Paging paging = new Paging();

			paging.setCri(cri);

			// pageMaker.setTotalCount(service.listCountCriteria(cri));
			paging.setTotalCount(service.listSearchCount(cri));

			model.addAttribute("paging", paging);
		}
		
		
		@RequestMapping(value = "/readPage", method = RequestMethod.GET)
		public void readPage(@RequestParam("bookNum") int bookNum, @ModelAttribute("cri") SearchCriteria cri, Model model)
				throws Exception {
			model.addAttribute(service.read(bookNum));
		}
		
		
		@RequestMapping(value = "/removePage", method = RequestMethod.POST)
		public String remove(@RequestParam("bookNum") int bookNum, SearchCriteria cri, RedirectAttributes rttr) throws Exception {

			service.remove(bookNum);

			rttr.addAttribute("page", cri.getPage());
			rttr.addAttribute("perPageNum", cri.getPerPageNum());
			rttr.addAttribute("searchType", cri.getSearchType());
			rttr.addAttribute("keyword", cri.getKeyword());

			rttr.addFlashAttribute("msg", "SUCCESS");

			return "redirect:/book/list";

		}

}
