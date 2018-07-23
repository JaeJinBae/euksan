package com.webaid.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MobileHomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(MobileHomeController.class);
	
	@RequestMapping(value = "/mMain", method = RequestMethod.GET)
	public String mobileMain() {
		logger.info("mobile Home.");
		
		
		return "main/mobileIndex";
	}
	
	@RequestMapping(value = "/mIntro1", method = RequestMethod.GET)
	public String mIntro01() {
		logger.info("euksan Home.");
		
		
		return "intro/mIntro01";
	}
	
	
}
