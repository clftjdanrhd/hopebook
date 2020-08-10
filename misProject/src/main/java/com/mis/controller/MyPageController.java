package com.mis.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mis.domain.MemberVO;
import com.mis.domain.SearchCriteria;
import com.mis.service.MyPageService;

@Controller
@RequestMapping("/mypage/*")
public class MyPageController {


	private static final Logger logger = LoggerFactory.getLogger(MyPageController.class);


	@Inject
	private MyPageService service;
	
	@RequestMapping(value="/memberUpdateView", method = RequestMethod.GET)
	public String registerUpdateView() throws Exception{
		
		return "mypage/memberUpdateView";
	}

	@RequestMapping(value="/memberUpdate", method = RequestMethod.POST)
	public String registerUpdate(MemberVO vo, HttpSession session) throws Exception{
		
		service.memberUpdate(vo);
		
		System.out.println("coments modify =========> "+ vo);
		
		session.invalidate();
		
		return "redirect:/";
	}
	
//	
//	@RequestMapping(value="/modifyPage", method = RequestMethod.GET)
//	public void modifyPageGET(int memNum, Model model) throws Exception{
//		
//		model.addAttribute(service.read(memNum));
//		
//		
//	}
//	
//	@RequestMapping(value = "/modifyPage", method = RequestMethod.POST)
//	public String modifyPagePOST(MemberVO vo, RedirectAttributes rttr) throws Exception{
//		
//		
//		service.update(vo);
//		
//		return "redirect:/mypage/readPage" ;
//		
//		
//		
//	}
//	

	
	
	@RequestMapping(value = "/removePage", method = RequestMethod.POST)
	public String remove(@RequestParam("memNum") int  memNum, SearchCriteria cri, RedirectAttributes rttr) throws Exception {

		service.delete(memNum);

		rttr.addFlashAttribute("msg", "SUCCESS");

		return "redirect:/";

	}


}
