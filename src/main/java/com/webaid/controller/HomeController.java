package com.webaid.controller;

import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.mobile.device.Device;
import org.springframework.mobile.device.DeviceUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.webaid.domain.AdviceVO;
import com.webaid.domain.BroadcastingVO;
import com.webaid.domain.NoticeVO;
import com.webaid.domain.PageMaker;
import com.webaid.domain.ReplyVO;
import com.webaid.domain.SearchCriteria;
import com.webaid.service.AdviceService;
import com.webaid.service.BroadcastingService;
import com.webaid.service.NoticeService;
import com.webaid.service.ReplyService;

@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private NoticeService nService;
	
	@Autowired
	private BroadcastingService bService;
	
	@Autowired
	private AdviceService aService;
	
	@Autowired
	private ReplyService rService;
	
	// device check
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String deviceCheck(HttpServletRequest req, Model model) {
		logger.info("deviceCheck.");
		
		List<NoticeVO> list=nService.selectAll();
		
		Device device=DeviceUtils.getCurrentDevice(req);
		String deviceType="unknown";
		
		if(device == null){
			deviceType="unknown";
			logger.info(deviceType);
			model.addAttribute("list", list);
			
			return "main/pcIndex";
		}
		
		if(device.isMobile()){
			deviceType="mobile";
			logger.info(deviceType);
			model.addAttribute("list", list);
			
			return "main/mobileIndex";
		}else{
			deviceType="normal";
			logger.info(deviceType);
			model.addAttribute("list", list);
			
			return "main/pcIndex";
		}
	}	
	
	// ====================== pc, tablet =========================================
	@RequestMapping(value = "/pcMain", method = RequestMethod.GET)
	public String pcMain(Model model) {
		logger.info("pc Home.");
		
		List<NoticeVO> list=nService.selectAll();
		
		model.addAttribute("list",list);
		
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
	public String noticeHome(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		logger.info("noticeHome GET");
		
		List<NoticeVO> list = nService.listSearch(cri);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(nService.listSearchCount(cri));

		model.addAttribute("list", list);
		model.addAttribute("pageMaker", pageMaker);
		
		return "euksanStory/notice";
	}
	
	@RequestMapping(value = "/noticeRead", method = RequestMethod.GET)
	public String noticeRead(int bno, @ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		logger.info("noticeRead GET");
		
		NoticeVO vo=nService.selectOne(bno);
		nService.updateCnt(bno);
		
		/*String keyword=cri.getKeyword()+"";
		logger.info("받은 키워드="+keyword);
		
		if(!keyword.equals("null")){
			logger.info("키워드가 있다");
			String encodeResult=URLEncoder.encode(keyword);
			cri.setKeyword(encodeResult);
			logger.info("인코딩한 키워드="+encodeResult);
		}*/
		 cri.setKeyword(null);
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(nService.listSearchCount(cri));
		
		model.addAttribute("item", vo);
		model.addAttribute("pageMaker", pageMaker);
		
		return "euksanStory/noticeRead";
	}

	@RequestMapping(value = "/broadcasting")
	public String broadcasting(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {

		logger.info("broadcasting get");

		List<BroadcastingVO> list = bService.listSearch(cri);

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(bService.listSearchCount(cri));

		model.addAttribute("list", list);
		model.addAttribute("pageMaker", pageMaker);

		return "euksanStory/broadcasting";
	}

	@RequestMapping(value = "/broadcastingRead", method = RequestMethod.GET)
	public String readBroadcasting(int bno, @ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		logger.info("broadcastingRead Get");

		BroadcastingVO vo = bService.selectOne(bno);
		bService.updateCnt(bno);
		
		cri.setKeyword(null);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(bService.listSearchCount(cri));
		
		model.addAttribute("item", vo);
		model.addAttribute("pageMaker", pageMaker);
		return "euksanStory/broadcastingRead";
	}
	
	@RequestMapping(value = "/advice", method=RequestMethod.GET)
	public String advice(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		logger.info("advice get");
		
		
		List<AdviceVO> list = aService.listSearch(cri);
		logger.info(cri.getKeyword());
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(aService.listSearchCount(cri));
		 
		model.addAttribute("list", list);
		model.addAttribute("pageMaker", pageMaker);
		
		return "euksanStory/advice";
	}
	
	@RequestMapping(value = "/adviceRegister", method = RequestMethod.GET)
	public String adviceRegisterGet(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		logger.info("adviceRegister Get");
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(aService.listSearchCount(cri));
		
		model.addAttribute("pageMaker", pageMaker);
		
		return "euksanStory/adviceRegister";
	}
	
	@RequestMapping(value = "/adviceRegister", method = RequestMethod.POST)
	public String adviceRegisterPost(AdviceVO vo) {
		logger.info("adviceRegister post");
		aService.insert(vo);
		
		return "redirect:/advice";
	}
	
	@RequestMapping(value = "/advicePwType", method = RequestMethod.GET)
	public String advicePWcheck(int bno, @ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		logger.info("advicePWcheck Get");
		
		AdviceVO vo=aService.selectOne(bno);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(aService.listSearchCount(cri));
		
		model.addAttribute("item", vo);
		model.addAttribute("pageMaker", pageMaker);
		
		String pwtype=vo.getPwtype();
		
		if(pwtype.equals("o")){
			logger.info("go Read");
			
			ReplyVO rvo=rService.select(bno);
			
			model.addAttribute("reply", rvo);
			
			return "euksanStory/adviceRead";
		}
		
		return "euksanStory/advicePwCheck";
	}
	
	@RequestMapping(value = "/advicePWcheck2", method = RequestMethod.POST)
	public ResponseEntity<String> advicePWCheckPost(@RequestBody AdviceVO voo) {
		logger.info("advicePWcheck post");
		
		ResponseEntity<String> entity=null;
		try{
			AdviceVO vo=aService.selectOne(voo.getBno());
			String realPW=vo.getPw();
			
			if(realPW.equals(voo.getPw())){
				logger.info("패스워드 맞음");
				entity=new ResponseEntity<String>("ok",HttpStatus.OK);
				return entity;
			}else{
				logger.info("패스워드 틀림");
				entity=new ResponseEntity<String>("no",HttpStatus.OK);
				return entity;
			}
		}catch (Exception e) {
			e.printStackTrace();
			entity=new ResponseEntity<String>("no",HttpStatus.BAD_REQUEST);
			
		}
		
		return entity;
	}
	
	@RequestMapping(value="/adviceRead")
	public String adviceRead(int bno, @ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		logger.info("adviceRead GET");
		
		AdviceVO vo=aService.selectOne(bno);
		ReplyVO rvo=rService.select(bno);
		
		cri.setKeyword(null);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(aService.listSearchCount(cri));
		
		model.addAttribute("pageMaker", pageMaker);
		
		
		model.addAttribute("item",vo);
		model.addAttribute("reply", rvo);
		
		return "euksanStory/adviceRead";
	}
	
	@RequestMapping(value="/adviceUpdate", method=RequestMethod.GET)
	public String adviceUpdateGet(int bno, @ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		logger.info("adviceUpdate");
		
		AdviceVO vo=aService.selectOne(bno);
		
		PageMaker pageMaker = new PageMaker();
		
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(aService.listSearchCount(cri));
		
		
		model.addAttribute("item",vo);
		model.addAttribute("pageMaker", pageMaker);
		
		return "euksanStory/adviceUpdate";
	}
	
	@RequestMapping(value="/adviceUpdate", method=RequestMethod.POST)
	public String adviceUpdatePost(AdviceVO vo, @ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception{
		logger.info("adviceUpdate Post");
		
		aService.update(vo);
		
		PageMaker pageMaker = new PageMaker();
		
		pageMaker.setCri(cri);
		
		return "redirect:/adviceRead"+pageMaker.makeSearch(cri.getPage())+"&bno="+vo.getBno();
	}
	
	@RequestMapping(value="/adviceDelete")
	public String adviceDelete(int bno, @ModelAttribute("cri") SearchCriteria cri) throws Exception{
		logger.info("adviceDelete");
		aService.delete(bno);
		
		PageMaker pageMaker = new PageMaker();
		
		pageMaker.setCri(cri);
		
		return "redirect:/advice"+pageMaker.makeSearch(cri.getPage());
	}
	// ====================== pc, tablet end ===================================
}
