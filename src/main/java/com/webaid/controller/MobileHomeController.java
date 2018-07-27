package com.webaid.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
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
public class MobileHomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(MobileHomeController.class);
	
	@Autowired
	private NoticeService nService;
	
	@Autowired
	private BroadcastingService bService;
	
	@Autowired
	private AdviceService aService;
	
	@Autowired
	private ReplyService rService;
	
	@RequestMapping(value = "/mMain", method = RequestMethod.GET)
	public String mobileMain(Model model) {
		logger.info("mobile Home.");
		
		List<NoticeVO> list = nService.selectAll();
		
		model.addAttribute("list",list);
		
		return "main/mobileIndex";
	}
	
	@RequestMapping(value = "/mIntro1", method = RequestMethod.GET)
	public String mIntro01() {
		logger.info("mIntro01 Home.");
		
		return "intro/mIntro01";
	}
	
	@RequestMapping(value = "/mIntro2", method = RequestMethod.GET)
	public String mIntro02() {
		logger.info("mIntro02 Home.");
		
		return "intro/mIntro02";
	}
	
	@RequestMapping(value = "/mIntro3", method = RequestMethod.GET)
	public String mIntro03() {
		logger.info("mIntro03 Home.");
		
		return "intro/mIntro03";
	}
	
	@RequestMapping(value = "/mIntro4", method = RequestMethod.GET)
	public String mIntro04() {
		logger.info("mIntro04 Home.");
		
		return "intro/mIntro04";
	}
	
	@RequestMapping(value = "/mPainClinic1", method = RequestMethod.GET)
	public String mPainClinic01() {
		logger.info("mPainClinic01 Home.");
		
		return "painClinic/mPainClinic01";
	}
	
	@RequestMapping(value = "/mPainClinic2", method = RequestMethod.GET)
	public String mPainClinic02() {
		logger.info("mPainClinic02 Home.");
		
		return "painClinic/mPainClinic02";
	}
	
	@RequestMapping(value = "/mPainClinic3", method = RequestMethod.GET)
	public String mPainClinic03() {
		logger.info("mPainClinic03 Home.");
		
		return "painClinic/mPainClinic03";
	}
	
	@RequestMapping(value = "/mPainClinic4", method = RequestMethod.GET)
	public String mPainClinic04() {
		logger.info("mPainClinic04 Home.");
		
		return "painClinic/mPainClinic04";
	}
	
	@RequestMapping(value = "/mPainClinic5", method = RequestMethod.GET)
	public String mPainClinic05() {
		logger.info("mPainClinic05 Home.");
		
		return "painClinic/mPainClinic05";
	}
	
	@RequestMapping(value = "/mEuksanClinic1", method = RequestMethod.GET)
	public String mEuksanClinic01() {
		logger.info("mEuksanClinic01 Home.");
		
		return "euksanClinic/mEuksanClinic01";
	}

	@RequestMapping(value = "/mEuksanClinic2", method = RequestMethod.GET)
	public String mEuksanClinic02() {
		logger.info("mEuksanClinic02 Home.");
		
		return "euksanClinic/mEuksanClinic02";
	}

	@RequestMapping(value = "/mEuksanClinic3", method = RequestMethod.GET)
	public String mEuksanClinic03() {
		logger.info("mEuksanClinic03 Home.");
		
		return "euksanClinic/mEuksanClinic03";
	}

	@RequestMapping(value = "/mEuksanClinic4", method = RequestMethod.GET)
	public String mEuksanClinic04() {
		logger.info("mEuksanClinic04 Home.");
		
		return "euksanClinic/mEuksanClinic04";
	}

	@RequestMapping(value = "/mEuksanClinic5", method = RequestMethod.GET)
	public String mEuksanClinic05() {
		logger.info("mEuksanClinic05 Home.");
		
		return "euksanClinic/mEuksanClinic05";
	}

	@RequestMapping(value = "/mEuksanClinic6", method = RequestMethod.GET)
	public String mEuksanClinic06() {
		logger.info("mEuksanClinic06 Home.");
		
		return "euksanClinic/mEuksanClinic06";
	}

	@RequestMapping(value = "/mEuksanClinic7", method = RequestMethod.GET)
	public String mEuksanClinic07() {
		logger.info("mEuksanClinic07 Home.");
		
		return "euksanClinic/mEuksanClinic07";
	}
	
	@RequestMapping(value = "/mAccidentClinic", method = RequestMethod.GET)
	public String mAccidentClinic() {
		logger.info("mAccidentClinic Home.");
		
		return "clinicAccident/mAccident";
	}
	
	@RequestMapping(value = "/mEuksanCare1", method = RequestMethod.GET)
	public String mEuksanCare01() {
		logger.info("mEuksanCare01 Home.");
		
		return "euksanCare/mEuksanCare01";
	}
	
	@RequestMapping(value = "/mEuksanCare2", method = RequestMethod.GET)
	public String mEuksanCare02() {
		logger.info("mEuksanCare02 Home.");
		
		return "euksanCare/mEuksanCare02";
	}

	@RequestMapping(value = "/mEuksanCare3", method = RequestMethod.GET)
	public String mEuksanCare03() {
		logger.info("mEuksanCare03 Home.");
		
		return "euksanCare/mEuksanCare03";
	}

	@RequestMapping(value = "/mEuksanCare4", method = RequestMethod.GET)
	public String mEuksanCare04() {
		logger.info("mEuksanCare04 Home.");
		
		return "euksanCare/mEuksanCare04";
	}

	@RequestMapping(value = "/mEuksanCare5", method = RequestMethod.GET)
	public String mEuksanCare05() {
		logger.info("mEuksanCare05 Home.");
		
		return "euksanCare/mEuksanCare05";
	}
	
	@RequestMapping(value = "/mNotice", method = RequestMethod.GET)
	public String mNoticeHome(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		logger.info("mobileNoticeHome GET");
		
		List<NoticeVO> list = nService.listSearch(cri);

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(nService.listSearchCount(cri));

		model.addAttribute("list", list);
		model.addAttribute("pageMaker", pageMaker);
		
		return "euksanStory/mNotice";
	}
	
	@RequestMapping(value = "/mNoticeRead", method = RequestMethod.GET)
	public String mNoticeRead(int bno, @ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		logger.info("mNoticeRead GET");
		
		NoticeVO vo=nService.selectOne(bno);
		nService.updateCnt(bno);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(nService.listSearchCount(cri));

		model.addAttribute("item", vo);
		model.addAttribute("pageMaker", pageMaker);
		
		return "euksanStory/mNoticeRead";
	}

	@RequestMapping(value = "/mBroadcasting")
	public String mBroadcasting(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {

		logger.info("mBroadcasting get");

		List<BroadcastingVO> list = bService.listSearch(cri);

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(bService.listSearchCount(cri));

		model.addAttribute("list", list);
		model.addAttribute("pageMaker", pageMaker);

		return "euksanStory/mBroadcasting";
	}

	@RequestMapping(value = "/mBroadcastingRead", method = RequestMethod.GET)
	public String mReadBroadcasting(int bno, @ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		logger.info("mBroadcastingRead Get");

		BroadcastingVO vo = bService.selectOne(bno);
		bService.updateCnt(bno);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(bService.listSearchCount(cri));
		
		model.addAttribute("item", vo);
		model.addAttribute("pageMaker", pageMaker);
		return "euksanStory/mBroadcastingRead";
	}
	
	@RequestMapping(value = "/mAdvice", method=RequestMethod.GET)
	public String mAdvice(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		logger.info("mAdvice get");
		/*String keyword=cri.getKeyword()+"";
		logger.info(keyword);
		
		if(!keyword.equals("null")){
			logger.info("키워드가 있다");
			String decodeResult=URLDecoder.decode(keyword, "UTF-8");
			String encodeResult=URLEncoder.encode(keyword, "UTF-8");
			cri.setKeyword(encodeResult);
		}*/
		
		List<AdviceVO> list = aService.listSearch(cri);
		logger.info(cri.getKeyword());
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(aService.listSearchCount(cri));
		 
		model.addAttribute("list", list);
		model.addAttribute("pageMaker", pageMaker);
		
		return "euksanStory/mAdvice";
	}
	
	@RequestMapping(value = "/mAdviceRegister", method = RequestMethod.GET)
	public String mAdviceRegisterGet(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		logger.info("mAdviceRegister Get");
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(aService.listSearchCount(cri));
		
		model.addAttribute("pageMaker", pageMaker);
		
		return "euksanStory/mAdviceRegister";
	}
	
	@RequestMapping(value = "mAdviceRegister", method = RequestMethod.POST)
	public String mAdviceRegisterPost(AdviceVO vo) {
		logger.info("mAdviceRegister post");
		aService.insert(vo);
		
		return "redirect:/mAdvice";
	}
	
	@RequestMapping(value = "/mAdvicePwType", method = RequestMethod.GET)
	public String advicePWcheck(int bno, @ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		logger.info("mAdvicePwType Get");
		
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
			
			return "euksanStory/mAdviceRead";
		}
		
		return "euksanStory/mAdvicePwCheck";
	}
	
	@RequestMapping(value = "mAdvicePWcheck2", method = RequestMethod.POST)
	public ResponseEntity<String> mAdvicePWCheckPost(@RequestBody AdviceVO voo) {
		logger.info("mAdvicePWcheck post");
		
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
	
	@RequestMapping(value="/mAdviceRead")
	public String mAdviceRead(int bno, @ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		logger.info("mAdviceRead GET");
		
		AdviceVO vo=aService.selectOne(bno);
		ReplyVO rvo=rService.select(bno);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(aService.listSearchCount(cri));
		
		model.addAttribute("pageMaker", pageMaker);
		
		
		model.addAttribute("item",vo);
		model.addAttribute("reply", rvo);
		
		return "euksanStory/mAdviceRead";
	}
	
	@RequestMapping(value="/mAdviceUpdate", method=RequestMethod.GET)
	public String mAdviceUpdateGet(int bno, @ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		logger.info("mAdviceUpdate");
		
		AdviceVO vo=aService.selectOne(bno);
		
		PageMaker pageMaker = new PageMaker();
		
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(aService.listSearchCount(cri));
		
		
		model.addAttribute("item",vo);
		model.addAttribute("pageMaker", pageMaker);
		
		return "euksanStory/mAdviceUpdate";
	}
	
	@RequestMapping(value="/mAdviceUpdate", method=RequestMethod.POST)
	public String mAdviceUpdatePost(AdviceVO vo, @ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception{
		logger.info("mAdviceUpdate Post");
		
		aService.update(vo);
		
		PageMaker pageMaker = new PageMaker();
		
		pageMaker.setCri(cri);
		
		return "redirect:/mAdviceRead"+pageMaker.makeSearch(cri.getPage())+"&bno="+vo.getBno();
	}
	
	@RequestMapping(value="/mAdviceDelete")
	public String mAdviceDelete(int bno, @ModelAttribute("cri") SearchCriteria cri) throws Exception{
		logger.info("mAdviceDelete");
		aService.delete(bno);
		
		PageMaker pageMaker = new PageMaker();
		
		pageMaker.setCri(cri);
		
		return "redirect:/mAdvice"+pageMaker.makeSearch(cri.getPage());
	}
	
}
