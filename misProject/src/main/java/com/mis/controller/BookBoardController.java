package com.mis.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mis.domain.BookBoardVO;
import com.mis.domain.BookVO;
import com.mis.domain.Paging;
import com.mis.domain.SearchCriteria;
import com.mis.service.BookBoardService;
import com.mis.service.BookService;

@Controller
@RequestMapping("/bookboard/*")
public class BookBoardController {

	private static final Logger logger = LoggerFactory.getLogger(BookBoardController.class);

	@Inject
	private BookBoardService service;

	@Inject
	private BookService bservice;

	// 팝업----------------------------------------------------------------------------------------------------------

	   // 학생 :: 졸업인증신청 관리 - 신청 - 항목 명 검색 팝업 + 졸업인증항목리스트
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

 
/* // 4. 진로 리스트
    @RequestMapping(value = "/uscar", method = RequestMethod.GET)
    public void myScore(HttpServletRequest request, Model model) throws Exception {
       HttpSession session = request.getSession();
       UserVO uVo = (UserVO) session.getAttribute("login");
       int userNo = uVo.getUserNo();

       logger.info("show all list......................");
       model.addAttribute(service.listAll());
       model.addAttribute("listAll", service.listAll());
    }
*/
	// 팝업
	// 여기까지----------------------------------------------------------------------------------------------------------

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public void registerGET(HttpServletRequest request, Model model) throws Exception {

		logger.info("regist get...................");
		logger.info("show all list......................");
		model.addAttribute(bservice.listAll());
		model.addAttribute("listAll", bservice.listAll());
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String registerPOST(BookBoardVO bookboard, RedirectAttributes rttr,Model model) throws Exception {

		logger.info("regist post...............");
		logger.info(bookboard.toString());

		service.insert(bookboard);
		

		rttr.addFlashAttribute("msg", "SUCCESS");

		return "redirect:/bookboard/list";

	}

	@RequestMapping(value = "/modifyPage", method = RequestMethod.GET)
	public void modifyPageGET(int bookBrdNum, @ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		model.addAttribute(service.read(bookBrdNum));

		logger.info("readPage FileVO: " + service.fileList(bookBrdNum).size());

		model.addAttribute("fileVO", service.fileList(bookBrdNum));
	}

	@RequestMapping(value = "/modifyPage", method = RequestMethod.POST)
	public String modifyPagePOST(BookBoardVO board, @RequestParam("bookBrdNum") int bookBrdNum, SearchCriteria cri,
			RedirectAttributes rttr) throws Exception {

		service.deleteFile(bookBrdNum);

		logger.info(cri.toString());
		service.modify(board);

		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("perPageNum", cri.getPerPageNum());
		rttr.addAttribute("criType", cri.getSearchType());
		rttr.addAttribute("keyword", cri.getKeyword());

		rttr.addFlashAttribute("msg", "SUCCESS");

		logger.info(rttr.toString());

		return "redirect:/bookboard/list";

	}

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public void listPage(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {

		logger.info(cri.toString());

		// model.addAttribute("list", service.listCriteria(cri));
		model.addAttribute("list", service.listSearch(cri));

		Paging paging = new Paging();

		paging.setCri(cri);

		// pageMaker.setTotalCount(service.listCountCriteria(cri));
		paging.setTotalCount(service.listSearchCount(cri));

		model.addAttribute("paging", paging);
	}
	
	
	@RequestMapping(value = "/adminList", method = RequestMethod.GET)
	public void adminList(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {

		logger.info(cri.toString());

		// model.addAttribute("list", service.listCriteria(cri));
		model.addAttribute("list", service.listSearch(cri));

		Paging paging = new Paging();

		paging.setCri(cri);

		// pageMaker.setTotalCount(service.listCountCriteria(cri));
		paging.setTotalCount(service.listSearchCount(cri));

		model.addAttribute("paging", paging);
	}

	@RequestMapping(value = "/readPage", method = RequestMethod.GET)
	public void readPage(@RequestParam("bookBrdNum") int bookBrdNum, @ModelAttribute("cri") SearchCriteria cri,
			Model model) throws Exception {

		logger.info("readPage.........");
		model.addAttribute(service.read(bookBrdNum));

		logger.info("readPage.FileVO: " + service.fileList(bookBrdNum).size());
	      model.addAttribute("fileVO", service.fileList(bookBrdNum));
	}
	
	
	

	@RequestMapping(value = "/removePage", method = RequestMethod.POST)
	public String remove(@RequestParam("bookBrdNum") int bookBrdNum, SearchCriteria cri, RedirectAttributes rttr)
			throws Exception {

		service.remove(bookBrdNum);

		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("perPageNum", cri.getPerPageNum());
		rttr.addAttribute("searchType", cri.getSearchType());
		rttr.addAttribute("keyword", cri.getKeyword());

		rttr.addFlashAttribute("msg", "SUCCESS");

		return "redirect:/bookboard/list";

	}

}
