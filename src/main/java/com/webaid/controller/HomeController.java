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
	
	// ====================== pc, tablet =========================================
	@RequestMapping(value = "/pcMain", method = RequestMethod.GET)
	public String pcMain() {
		logger.info("mobile Home.");
		
		
		return "main/pcIndex";
	}
	
	@RequestMapping(value = "/intro1", method = RequestMethod.GET)
	public String intro01() {
		logger.info("intro01 Get");
		
		
		return "intro/intro01";
	}
	
	@RequestMapping(value = "/intro2", method = RequestMethod.GET)
	public String intro02() {
		logger.info("intro02 Get");
		
		
		return "intro/intro02";
	}
	
	@RequestMapping(value = "/intro3", method = RequestMethod.GET)
	public String intro03() {
		logger.info("intro03 Get");
		
		
		return "intro/intro03";
	}
	
	@RequestMapping(value = "/intro4", method = RequestMethod.GET)
	public String intro04() {
		logger.info("intro04 Get");
		
		
		return "intro/intro04";
	}
	
	@RequestMapping(value = "/painClinic1", method = RequestMethod.GET)
	public String painClinic01() {
		logger.info("painClinic01 Get");
		
		
		return "painClinic/painClinic01";
	}
	
	@RequestMapping(value = "/painClinic2", method = RequestMethod.GET)
	public String painClinic02() {
		logger.info("painClinic02 Get");
		
		
		return "painClinic/painClinic02";
	}
	
	@RequestMapping(value = "/painClinic3", method = RequestMethod.GET)
	public String painClinic03() {
		logger.info("painClinic03 Get");
		
		
		return "painClinic/painClinic03";
	}
	
	@RequestMapping(value = "/painClinic4", method = RequestMethod.GET)
	public String painClinic04() {
		logger.info("painClinic04 Get");
		
		
		return "painClinic/painClinic04";
	}
	
	@RequestMapping(value = "/painClinic5", method = RequestMethod.GET)
	public String painClinic05() {
		logger.info("painClinic05 Get");
		
		
		return "painClinic/painClinic05";
	}
	
	@RequestMapping(value = "/euksanClinic1", method = RequestMethod.GET)
	public String euksanClinic01() {
		logger.info("euksanClinic01 Get");
		
		return "euksanClinic/euksanClinic01";
	}

	@RequestMapping(value = "/euksanClinic2", method = RequestMethod.GET)
	public String euksanClinic02() {
		logger.info("euksanClinic02 Get");
		
		return "euksanClinic/euksanClinic02";
	}

	@RequestMapping(value = "/euksanClinic3", method = RequestMethod.GET)
	public String euksanClinic03() {
		logger.info("euksanClinic03 Get");
		
		return "euksanClinic/euksanClinic03";
	}

	@RequestMapping(value = "/euksanClinic4", method = RequestMethod.GET)
	public String euksanClinic04() {
		logger.info("euksanClinic04 Get");
		
		return "euksanClinic/euksanClinic04";
	}

	@RequestMapping(value = "/euksanClinic5", method = RequestMethod.GET)
	public String euksanClinic05() {
		logger.info("euksanClinic05 Get");
		
		return "euksanClinic/euksanClinic05";
	}

	@RequestMapping(value = "/euksanClinic6", method = RequestMethod.GET)
	public String euksanClinic06() {
		logger.info("euksanClinic06 Get");
		
		return "euksanClinic/euksanClinic06";
	}

	@RequestMapping(value = "/euksanClinic7", method = RequestMethod.GET)
	public String euksanClinic07() {
		logger.info("euksanClinic07 Get");
		
		return "euksanClinic/euksanClinic07";
	}
	
	@RequestMapping(value = "/accidentClinic1", method = RequestMethod.GET)
	public String accidentClinic01() {
		logger.info("accidentClinic01 Get");
		
		return "clinicAccident/accidentClinic";
	}
	
	@RequestMapping(value = "/euksanCare1", method = RequestMethod.GET)
	public String euksanCare01() {
		logger.info("euksanCare01 Get");
		
		return "euksanCare/euksanCare01";
	}

	@RequestMapping(value = "/euksanCare2", method = RequestMethod.GET)
	public String euksanCare02() {
		logger.info("euksanCare02 Get");
		
		return "euksanCare/euksanCare02";
	}

	@RequestMapping(value = "/euksanCare3", method = RequestMethod.GET)
	public String euksanCare03() {
		logger.info("euksanCare03 Get");
		
		return "euksanCare/euksanCare03";
	}

	@RequestMapping(value = "/euksanCare4", method = RequestMethod.GET)
	public String euksanCare04() {
		logger.info("euksanCare04 Get");
		
		return "euksanCare/euksanCare04";
	}

	@RequestMapping(value = "/euksanCare5", method = RequestMethod.GET)
	public String euksanCare05() {
		logger.info("euksanCare05 Get");
		
		return "euksanCare/euksanCare05";
	}
	
	
	@RequestMapping(value = "/notice", method = RequestMethod.GET)
	public String noticeHome() {
		logger.info("noticeHome GET");
		
		
		return "euksanStory/notice";
	}
	
	// ====================== pc, tablet end ===================================
}
