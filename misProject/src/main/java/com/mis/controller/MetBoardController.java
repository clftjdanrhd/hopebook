package com.mis.controller;

/*import java.util.List;*/

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
/*import org.springframework.web.bind.annotation.PathVariable;*/
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
/*import org.springframework.web.bind.annotation.ResponseBody;*/
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mis.domain.MetBoardVO;
import com.mis.domain.PageMaker;
import com.mis.domain.SearchCriteria;
import com.mis.service.MetBoardService;

/**
 * @author 김지훈
 */

@Controller
@RequestMapping("/metboard/*")
public class MetBoardController {

	private static final Logger logger = LoggerFactory.getLogger(MetBoardController.class);
	
	@Inject
	private MetBoardService mbservice;
	
	
	/**
	 * register RequestMethod.GET 게시물의 등록페이지를 보여준다
	 */
	@RequestMapping(value ="/register", method = RequestMethod.GET)
	public void registerGET() throws Exception {
		logger.info("register get..........");
	}
	
	
	/**
	 * 
	 * RequestMethod.POST 게시물을 실제로 등록한다.
	 * 
	 */
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String registerPOST(MetBoardVO mcvo, RedirectAttributes rttr) throws Exception {

		logger.info("register post..........");
		logger.info(mcvo.toString());

		mbservice.register(mcvo);
		rttr.addFlashAttribute("msg", "SUCCESS");
		
		logger.info(rttr.toString());
		
		return "redirect:/metboard/metbrdreadlist";
	}
	
	 @RequestMapping(value = "/list", method = RequestMethod.GET)
	   public void listPage(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {

	      logger.info(cri.toString());

	      // model.addAttribute("list", service.listCriteria(cri));
	      model.addAttribute("list", mbservice.listSearchCriteria(cri));

	      PageMaker pageMaker = new PageMaker();

	      pageMaker.setCri(cri);

	      // pageMaker.setTotalCount(service.listCountCriteria(cri));
	      pageMaker.setTotalCount(mbservice.listSearchCount(cri));

	      model.addAttribute("pageMaker", pageMaker);

	   }
	
	@RequestMapping(value = "/readPage", method = RequestMethod.GET)
	public void read(@RequestParam("metBrdNum") int metBrdNum, 
		@ModelAttribute("cri")SearchCriteria cri, Model model) throws Exception {
		
		model.addAttribute(mbservice.read(metBrdNum));
		
		logger.info("readPage.FileVO: " + mbservice.fileList(metBrdNum).size());
		model.addAttribute("fileVO", mbservice.fileList(metBrdNum));
	    }
	
	@RequestMapping(value = "/removePage", method = RequestMethod.POST)
	public String remove(@RequestParam("metBrdNum")int metBrdNum, SearchCriteria cri, RedirectAttributes rttr)throws Exception{
		
		
		//게시글에 있는 댓글 삭제 후 게시글 삭제 진행
		mbservice.remove(metBrdNum);
		
		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("perPageNum", cri.getPerPageNum());
		rttr.addAttribute("searchType", cri.getSearchType());
		rttr.addAttribute("keyword", cri.getKeyword());
		
		rttr.addFlashAttribute("msg", "SUCCESS");
		
		return "redirect:/metboard/list";
	}
	
	@RequestMapping(value = "/modifyPage", method = RequestMethod.GET)
	public void modifyPagingGET(@RequestParam("metBrdNum")int metBrdNum, @ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		logger.info("readPage FileVO: " + mbservice.fileList(metBrdNum).size());
		logger.info("modify get친구 실행기원");
		
		model.addAttribute("fileVO", mbservice.fileList(metBrdNum));
		model.addAttribute(mbservice.read(metBrdNum));
	}
	
	@RequestMapping(value = "/modifyPage", method = RequestMethod.POST)
	public String modifyPagingPOST(MetBoardVO metbrd, SearchCriteria cri, RedirectAttributes rttr) throws Exception {
		
		logger.info(cri.toString());
		mbservice.modify(metbrd);
		
		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("perPageNum", cri.getPerPageNum());
				
		rttr.addFlashAttribute("msg", "SUCCESS");
		logger.info(rttr.toString());
		return "redirect:/metboard/list";
	}
	
	
	@RequestMapping(value ="/metbrdreadlist", method = RequestMethod.GET)
	public void metbrdreadlist(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		
		logger.info(cri.toString());
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		
		pageMaker.setTotalCount(mbservice.listSearchCount(cri));
		
		System.out.println("===============> getTotalCount: "+pageMaker.getTotalCount());
		
		model.addAttribute("pageMaker", pageMaker);
		model.addAttribute("list", mbservice.listSearchCriteria(cri));
		 
	}
	
	@RequestMapping(value ="/metadminlist", method = RequestMethod.GET)
	public void metadminlist(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		
		logger.info(cri.toString());
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		
		pageMaker.setTotalCount(mbservice.listSearchCount(cri));
		
		System.out.println("===============> getTotalCount: "+pageMaker.getTotalCount());
		
		model.addAttribute("pageMaker", pageMaker);
		model.addAttribute("list", mbservice.listSearchCriteria(cri));
		 
	}
	
	@RequestMapping(value ="/metmodify", method = RequestMethod.GET)
	public void metmodify(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		
		logger.info(cri.toString());
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		
		pageMaker.setTotalCount(mbservice.listSearchCount(cri));
		
		System.out.println("===============> getTotalCount: "+pageMaker.getTotalCount());
		
		model.addAttribute("pageMaker", pageMaker);
		model.addAttribute("list", mbservice.listSearchCriteria(cri));
		 
	}
	
	@RequestMapping(value ="/metbrdmember", method = RequestMethod.GET)
	public void metbrdmember(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		
		logger.info(cri.toString());
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		
		pageMaker.setTotalCount(mbservice.listSearchCount(cri));
		
		System.out.println("===============> getTotalCount: "+pageMaker.getTotalCount());
		
		model.addAttribute("pageMaker", pageMaker);
		model.addAttribute("list", mbservice.listSearchCriteria(cri));
		 
	}
	
}

