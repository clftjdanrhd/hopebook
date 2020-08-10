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

import com.mis.domain.BookstoreVO;
import com.mis.domain.LibraryVO;
import com.mis.domain.PageMaker;
import com.mis.domain.SearchCriteria;
import com.mis.service.ReadingEcosysService;


@Controller
@RequestMapping("/ecosys/*")
public class ReadingEcosysController {
	
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);

	@Inject
	private ReadingEcosysService service;
	

/*독서모임 친구*/
	


	@RequestMapping(value = "/listMeeting", method = RequestMethod.GET)
	public void listMeeting(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		
		logger.info(cri.toString());

	      // model.addAttribute("list", service.listCriteria(cri));
	      model.addAttribute("list", service.meetingListSearchCriteria(cri));

	      PageMaker pageMaker = new PageMaker();

	      pageMaker.setCri(cri);

	      // pageMaker.setTotalCount(service.listCountCriteria(cri));
	      pageMaker.setTotalCount(service.meetingListSearchCount(cri));

	      model.addAttribute("pageMaker", pageMaker);
	}
	
	
	
	   @RequestMapping(value = "/readMeeting", method = RequestMethod.GET)
	   public void read(@RequestParam("metNum") int metNum, @ModelAttribute("cri") SearchCriteria cri, Model model)
	         throws Exception {
	      model.addAttribute(service.readMeeting(metNum));
	   }
	
	
	
	
	@RequestMapping(value = "/removeMeeting", method = RequestMethod.POST)
	public String removeMeeting(@RequestParam("metNum") int metNum, SearchCriteria cri, RedirectAttributes rttr) throws Exception {
		
		service.removeMeeting(metNum);
		
		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("perPageNum", cri.getPerPageNum());
		rttr.addAttribute("searchType", cri.getSearchType());
		rttr.addAttribute("keyword", cri.getKeyword());

		rttr.addFlashAttribute("msg", "SUCCESS");
		
		return "redirect:/ecosys/listMeeting";
	}
	

	/*독서 모임 승인 거절 친구*/
	
	
	@RequestMapping(value = "/listYnMeeting", method = RequestMethod.GET)
	public void listYnMeeting(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		
		logger.info(cri.toString());

	      // model.addAttribute("list", service.listCriteria(cri));
	      model.addAttribute("list", service.meetingYnListSearchCriteria(cri));

	      PageMaker pageMaker = new PageMaker();

	      pageMaker.setCri(cri);

	      // pageMaker.setTotalCount(service.listCountCriteria(cri));
	      pageMaker.setTotalCount(service.meetingYnListSearchCount(cri));

	      model.addAttribute("pageMaker", pageMaker);
	      }
	

	
	   @RequestMapping(value = "/readYnMeeting", method = RequestMethod.GET)
	   public void readYnMeeting(@RequestParam("metNum") int metNum, @ModelAttribute("cri") SearchCriteria cri, Model model)
	         throws Exception {
	      model.addAttribute(service.readYnMeeting(metNum));
	   }
	
	
	
	@RequestMapping(value = "/removeYnMeeting", method = RequestMethod.POST)
	public String removeYnMeeting(@RequestParam("metNum") int metNum, SearchCriteria cri, RedirectAttributes rttr) throws Exception {
		
		service.removeYnMeeting(metNum);
		
		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("perPageNum", cri.getPerPageNum());
		rttr.addAttribute("searchType", cri.getSearchType());
		rttr.addAttribute("keyword", cri.getKeyword());

		rttr.addFlashAttribute("msg", "SUCCESS");
		
		return "redirect:/ecosys/listYnMeeting";
	}
	
	
	
	/*독후감 친구*/
	
	@RequestMapping(value = "/listReport", method = RequestMethod.GET)
	public void listReport(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		
		logger.info(cri.toString());

	      // model.addAttribute("list", service.listCriteria(cri));
	      model.addAttribute("list", service.reportListSearchCriteria(cri));

	      PageMaker pageMaker = new PageMaker();

	      pageMaker.setCri(cri);

	      // pageMaker.setTotalCount(service.listCountCriteria(cri));
	      pageMaker.setTotalCount(service.reportListSearchCount(cri));

	      model.addAttribute("pageMaker", pageMaker);
		  }
	
	@RequestMapping(value = "/deleteReport", method = RequestMethod.POST)
	public String deleteReport(@RequestParam("reportNum") int reportNum, SearchCriteria cri, RedirectAttributes rttr) throws Exception {
		
		service.deleteReport(reportNum);
		
		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("perPageNum", cri.getPerPageNum());
		rttr.addAttribute("searchType", cri.getSearchType());
		rttr.addAttribute("keyword", cri.getKeyword());

		rttr.addFlashAttribute("msg", "SUCCESS");
		
		return "redirect:/ecosys/listReport";
	}
	
	
	
	
	/*책 친구*/
	@RequestMapping(value = "/listBook", method = RequestMethod.GET)
	public void listBook(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		
		logger.info(cri.toString());

	      // model.addAttribute("list", service.listCriteria(cri));
	      model.addAttribute("list", service.bookListSearchCriteria(cri));

	      PageMaker pageMaker = new PageMaker();

	      pageMaker.setCri(cri);

	      // pageMaker.setTotalCount(service.listCountCriteria(cri));
	      pageMaker.setTotalCount(service.bookListSearchCount(cri));

	      model.addAttribute("pageMaker", pageMaker);
		  }
	

	@RequestMapping(value = "/readBook", method = RequestMethod.GET)
	public void readBook(@RequestParam("bookNum") int bookNum, Model model) throws Exception {
		
		System.out.println("ReadingEcosysController  readBook");
		
		
		model.addAttribute(service.readBook(bookNum));
		
		System.out.println(service.readBook(bookNum));
		
		
	}
	
	@RequestMapping(value = "/deleteBook", method = RequestMethod.POST)
	public String deleteBook(@RequestParam("bookNum") int bookNum, SearchCriteria cri, RedirectAttributes rttr) throws Exception {
		
		service.deleteBook(bookNum);
		
		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("perPageNum", cri.getPerPageNum());
		rttr.addAttribute("searchType", cri.getSearchType());
		rttr.addAttribute("keyword", cri.getKeyword());

		rttr.addFlashAttribute("msg", "SUCCESS");
		
		return "redirect:/ecosys/listBook";
	}
	
	
	/*도서관 친구*/
	
	
	@RequestMapping(value = "/registerLibrary", method = RequestMethod.GET)
	public void registLibraryGET() throws Exception {

		logger.info("regist get...................");
	}
	
	@RequestMapping(value = "/registerLibrary", method = RequestMethod.POST)
	public String registLibraryPOST(LibraryVO vo, RedirectAttributes rttr) throws Exception {

		logger.info("regist post...............");
		logger.info(vo.toString());
		
		service.registerLibrary(vo);

		rttr.addFlashAttribute("msg", "SUCCESS");

		return "redirect:/ecosys/listLibrary";

	}
	
	
	@RequestMapping(value = "/listLibrary", method = RequestMethod.GET)
	public void listLibrary(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		
		logger.info(cri.toString());

	      // model.addAttribute("list", service.listCriteria(cri));
	      model.addAttribute("list", service.libraryListSearchCriteria(cri));

	      PageMaker pageMaker = new PageMaker();

	      pageMaker.setCri(cri);

	      // pageMaker.setTotalCount(service.listCountCriteria(cri));
	      pageMaker.setTotalCount(service.libraryListSearchCount(cri));

	      model.addAttribute("pageMaker", pageMaker);
		
		
	}
	
/*	@RequestMapping(value = "readLibrary", method = RequestMethod.GET)
	public void readLibrary(@RequestParam("libraryNum") int libraryNum, Model model) throws Exception {
		
		System.out.println("ReadingEcosysController  readLibrary");
		
		
		model.addAttribute(service.readLibrary(libraryNum));
		
		System.out.println(service.readLibrary(libraryNum));
		
		
	}*/
	

	@RequestMapping(value = "/readLibrary", method = RequestMethod.GET)
	public void readLibrary(@RequestParam("libraryNum") int libraryNum, @ModelAttribute("cri") SearchCriteria cri, Model model)
			throws Exception {
		System.out.println("ReadingEcosysController  readLibrary");
		
		model.addAttribute(service.readLibrary(libraryNum));
	}
	
	
	@RequestMapping(value = "/removeLibrary", method = RequestMethod.POST)
	public String removeLibrary(@RequestParam("libraryNum") int libraryNum, SearchCriteria cri, RedirectAttributes rttr) throws Exception {
		
		service.removeLibrary(libraryNum);
		
		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("perPageNum", cri.getPerPageNum());
		rttr.addAttribute("searchType", cri.getSearchType());
		rttr.addAttribute("keyword", cri.getKeyword());

		rttr.addFlashAttribute("msg", "SUCCESS");
		
		return "redirect:/ecosys/listLibrary";
	}
	
	 @RequestMapping(value = "/modifyLibrary", method = RequestMethod.GET)
	   public void modifyLibraryGET(int libraryNum, @ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
	      model.addAttribute(service.readLibrary(libraryNum));
	      
	      
	   }

	   @RequestMapping(value = "/modifyLibrary", method = RequestMethod.POST)
	   public String modifyLibraryPOST(LibraryVO vo, SearchCriteria cri, RedirectAttributes rttr) throws Exception {

	      logger.info(cri.toString());
	      service.modifyLibrary(vo);

	      rttr.addAttribute("page", cri.getPage());
	      rttr.addAttribute("perPageNum", cri.getPerPageNum());
	      rttr.addAttribute("searchType", cri.getSearchType());
	      rttr.addAttribute("keyword", cri.getKeyword());

	      rttr.addFlashAttribute("msg", "SUCCESS");

	      logger.info(rttr.toString());

	      return "redirect:/ecosys/listLibrary";

	   }
	
	
	/*책방 친구*/
	   
	   @RequestMapping(value = "/registerBookstore", method = RequestMethod.GET)
		public void registBookstoreGET() throws Exception {

			logger.info("regist get...................");
		}
		
		@RequestMapping(value = "/registerBookstore", method = RequestMethod.POST)
		public String registBookstorePOST(BookstoreVO vo, RedirectAttributes rttr) throws Exception {

			logger.info("regist post...............");
			logger.info(vo.toString());
			
			service.registerBookstore(vo);

			rttr.addFlashAttribute("msg", "SUCCESS");

			return "redirect:/ecosys/listBookstore";

		}
		
		@RequestMapping(value = "/listBookstore", method = RequestMethod.GET)
		public void listBookstore(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
			
			logger.info(cri.toString());

		      // model.addAttribute("list", service.listCriteria(cri));
		      model.addAttribute("list", service.bookstoreListSearchCriteria(cri));

		      PageMaker pageMaker = new PageMaker();

		      pageMaker.setCri(cri);

		      // pageMaker.setTotalCount(service.listCountCriteria(cri));
		      pageMaker.setTotalCount(service.bookstoreListSearchCount(cri));

		      model.addAttribute("pageMaker", pageMaker);
			
			
		}
		
		
		
		
		
		
		
	@RequestMapping(value = "/readBookstore", method = RequestMethod.GET)
	public void readBookstore(@RequestParam("bookstoreNum") int bookstoreNum, @ModelAttribute("cri") SearchCriteria cri, Model model)
			throws Exception {
		System.out.println("ReadingEcosysController  readBookstore");
		
		model.addAttribute(service.readBookstore(bookstoreNum));
	}
	
	

	
	@RequestMapping(value = "/deleteBookstore", method = RequestMethod.POST)
	public String deleteBookstore(@RequestParam("bookstoreNum") int bookstoreNum, SearchCriteria cri, RedirectAttributes rttr) throws Exception {
		
		service.deleteBookstore(bookstoreNum);
		
		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("perPageNum", cri.getPerPageNum());
		rttr.addAttribute("searchType", cri.getSearchType());
		rttr.addAttribute("keyword", cri.getKeyword());

		rttr.addFlashAttribute("msg", "SUCCESS");
		
		return "redirect:/ecosys/listBookstore";
	}
	
	
	 @RequestMapping(value = "/modifyBookstore", method = RequestMethod.GET)
	   public void modifyBookstoreGET(int bookstoreNum, @ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
	      model.addAttribute(service.readBookstore(bookstoreNum));
	      
	      
	   }

	   @RequestMapping(value = "/modifyBookstore", method = RequestMethod.POST)
	   public String modifyBookstorePOST(BookstoreVO vo, SearchCriteria cri, RedirectAttributes rttr) throws Exception {

	      logger.info(cri.toString());
	      service.modifyBookstore(vo);

	      rttr.addAttribute("page", cri.getPage());
	      rttr.addAttribute("perPageNum", cri.getPerPageNum());
	      rttr.addAttribute("searchType", cri.getSearchType());
	      rttr.addAttribute("keyword", cri.getKeyword());

	      rttr.addFlashAttribute("msg", "SUCCESS");

	      logger.info(rttr.toString());

	      return "redirect:/ecosys/listLibrary";

	   }
	
}
