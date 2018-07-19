package com.webaid.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.mobile.device.Device;
import org.springframework.mobile.device.DeviceUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	// device check
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String deviceCheck(HttpServletRequest req, Model model) {
		logger.info("deviceCheck.");
		
		Device device=DeviceUtils.getCurrentDevice(req);
		String deviceType="unknown";
		
		if(device == null){
			deviceType="unknown";
			logger.info(deviceType);
			return "main/pcIndex";
		}
		
		if(device.isMobile()){
			deviceType="mobile";
			logger.info(deviceType);
			return "main/mobileIndex";
		}else{
			deviceType="normal";
			logger.info(deviceType);
			return "main/pcIndex";
		}
	}
	
	//============================== mobile =====================================
	@RequestMapping(value = "/mMain", method = RequestMethod.GET)
	public String mobileMain() {
		logger.info("mobile Home.");
		
		
		return "main/mobileIndex";
	}
	//============================== mobile end =================================
	
	
	// ====================== pc, tablet =========================================
	@RequestMapping(value = "/pcMain", method = RequestMethod.GET)
	public String pcMain() {
		logger.info("mobile Home.");
		
		
		return "main/pcIndex";
	}
	@RequestMapping(value = "/intro1", method = RequestMethod.GET)
	public String intro01() {
		logger.info("euksan Home.");
		
		
		return "intro/intro01";
	}
	
	// ====================== pc, tablet end ===================================
}
