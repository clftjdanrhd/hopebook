package com.mis.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/intro/*")
public class IntroController {
	
	private static final Logger logger = LoggerFactory.getLogger(IntroController.class);

	@RequestMapping(value = "/hire", method = RequestMethod.GET)
	public void registerGET() throws Exception {

		logger.info("regist get...................");
	}
	
	
	@RequestMapping(value = "/intro", method = RequestMethod.GET)
	public void introGET() throws Exception {

		logger.info("regist get...................");
	}
	
	
	@RequestMapping(value = "/generation", method = RequestMethod.GET)
	public void generationGET() throws Exception {

		logger.info("regist get...................");
	}
	
	
	@RequestMapping(value = "/map", method = RequestMethod.GET)
	public void mapGET() throws Exception {

		logger.info("regist get...................");
	}
	
	
}
