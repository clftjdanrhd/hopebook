package com.mis.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mis.domain.PageMaker;
import com.mis.domain.SearchCriteria;
import com.mis.service.FeePayMentService;

@Controller
@RequestMapping("/fpm/*")
public class FeePayMentController {
	
	private static final Logger logger = LoggerFactory.getLogger(FeePayMentController.class);
	
	@Inject
	private FeePayMentService service;
	
	@RequestMapping(value ="/list", method = RequestMethod.GET)
	public void listPage(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		
		logger.info(cri.toString());
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		
		pageMaker.setTotalCount(service.listSearchCount(cri));
		
		System.out.println("===============> getTotalCount: "+pageMaker.getTotalCount());
		
		model.addAttribute("pageMaker", pageMaker);
		model.addAttribute("list", service.listSearch(cri));
		 
	}
}
