package com.webaid.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.webaid.domain.AdviceVO;
import com.webaid.domain.BroadcastingVO;
import com.webaid.domain.NoticeVO;
import com.webaid.domain.PageMaker;
import com.webaid.domain.ReplyVO;
import com.webaid.domain.SearchCriteria;
import com.webaid.domain.StatisticsVO;
import com.webaid.service.AdviceService;
import com.webaid.service.BroadcastingService;
import com.webaid.service.NoticeService;
import com.webaid.service.ReplyService;
import com.webaid.service.StatisticsService;

@Controller
@RequestMapping("/admin/*")
public class AdminController {

	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);

	@Autowired
	private NoticeService nService;

	@Autowired
	private BroadcastingService bService;

	@Autowired
	private AdviceService aService;

	@Autowired
	private ReplyService rService;
	
	@Autowired
	private StatisticsService sService;

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String adminLogin() throws Exception {
		logger.info("adminLogin");

		return "admin/adminLogin";
	}

	@RequestMapping(value = "/loginCheck/{id}/{pw}")
	public ResponseEntity<String> loginCheck(@PathVariable("id") String id, @PathVariable("pw") String pw,
			HttpServletRequest req) throws Exception {
		logger.info("admin Login Check");
		ResponseEntity<String> entity = null;

		HttpSession session = req.getSession();

		if (id.equals("admin") && pw.equals("euksan5853399")) {
			entity = new ResponseEntity<String>("ok", HttpStatus.OK);
			session.setAttribute("id", id);
			System.out.println("session 아이디" + session.getAttribute("id"));
		} else {
			entity = new ResponseEntity<String>("no", HttpStatus.OK);
		}

		return entity;
	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpServletRequest req) {
		HttpSession session = req.getSession(false);
		
		if (session.getAttribute("id") == null) {
			logger.info("아이디는 null 입니다.");
			return "admin/adminLogin";
		}
		
		session.invalidate();

		return "redirect:/";
	}

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String adminHome(@ModelAttribute("cri") SearchCriteria cri, Model model, HttpServletRequest req)
			throws Exception {
		logger.info("adminHome/adminNotice GET");
		HttpSession session = req.getSession(false);
		if (session.getAttribute("id") == null) {
			logger.info("아이디는 null 입니다.");
			return "admin/adminLogin";
		}

		List<NoticeVO> list = nService.listSearch(cri);

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(nService.listSearchCount(cri));

		model.addAttribute("list", list);
		model.addAttribute("pageMaker", pageMaker);

		return "admin/adminNotice";
	}

	@RequestMapping(value = "/adminNotice")
	public String adminNotice(@ModelAttribute("cri") SearchCriteria cri, Model model, HttpServletRequest req)
			throws Exception {
		logger.info("adminNotice GET");

		HttpSession session = req.getSession(false);

		if (session.getAttribute("id") == null) {
			logger.info("아이디는 null 입니다.");
			return "admin/adminLogin";
		}

		List<NoticeVO> list = nService.listSearch(cri);
		
		cri.setKeyword(null);
		cri.setSearchType("n");
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(nService.listSearchCount(cri));

		model.addAttribute("list", list);
		model.addAttribute("pageMaker", pageMaker);

		return "admin/adminNotice";
	}

	@RequestMapping(value = "/adminNoticeRead", method = RequestMethod.GET)
	public String adminNoticeRead(int bno, @ModelAttribute("cri") SearchCriteria cri, Model model,
			HttpServletRequest req) throws Exception {
		logger.info("adminNoticeRead Get");

		HttpSession session = req.getSession(false);

		if (session.getAttribute("id") == null) {
			logger.info("아이디는 null 입니다.");
			return "admin/adminLogin";
		}

		NoticeVO vo = nService.selectOne(bno);
		nService.updateCnt(bno);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(nService.listSearchCount(cri));

		model.addAttribute("item", vo);
		model.addAttribute("pageMaker", pageMaker);
		return "admin/adminNoticeRead";
	}

	@RequestMapping(value = "/adminNoticeRegister", method = RequestMethod.GET)
	public String adminNoticeRegisterGet(HttpServletRequest req) {
		logger.info("adminNoticeRegister Get");

		HttpSession session = req.getSession(false);

		if (session.getAttribute("id") == null) {
			logger.info("아이디는 null 입니다.");
			return "admin/adminLogin";
		}

		return "admin/adminNoticeRegister";
	}

	@RequestMapping(value = "/adminNoticeRegister", method = RequestMethod.POST)
	public String adminNoticeRegisterPost(NoticeVO vo, HttpServletRequest req) {
		logger.info("adminNoticeRegister post");

		HttpSession session = req.getSession(false);

		if (session.getAttribute("id") == null) {
			logger.info("아이디는 null 입니다.");
			return "admin/adminLogin";
		}

		nService.insert(vo);

		return "redirect:/admin/adminNotice";
	}

	@RequestMapping(value = "/adminNoticeUpdate", method = RequestMethod.GET)
	public String adminNoticeUpdateGet(int bno, @ModelAttribute("cri") SearchCriteria cri, Model model,
			HttpServletRequest req) throws Exception {
		logger.info("adminNoticeUpdate get");

		HttpSession session = req.getSession(false);

		if (session.getAttribute("id") == null) {
			logger.info("아이디는 null 입니다.");
			return "admin/adminLogin";
		}

		NoticeVO vo = nService.selectOne(bno);

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(nService.listSearchCount(cri));

		model.addAttribute("item", vo);
		model.addAttribute("pageMaker", pageMaker);

		return "admin/adminNoticeUpdate";
	}

	@RequestMapping(value = "/adminNoticeUpdate", method = RequestMethod.POST)
	public String modifyPost(NoticeVO vo, int page, @ModelAttribute("cri") SearchCriteria cri, RedirectAttributes rtts,
			Model model, HttpServletRequest req) throws Exception {
		logger.info("adminNoticeUpdate post");

		HttpSession session = req.getSession(false);

		if (session.getAttribute("id") == null) {
			logger.info("아이디는 null 입니다.");
			return "admin/adminLogin";
		}

		nService.update(vo);

		rtts.addAttribute("bno", vo.getBno());

		PageMaker pageMaker = new PageMaker();

		pageMaker.setCri(cri);
		pageMaker.makeSearch(page);

		pageMaker.setTotalCount(nService.listSearchCount(cri));

		rtts.addAttribute("page", page);

		return "redirect:/admin/adminNoticeRead";
	}

	@RequestMapping(value = "/adminNoticeDelete", method = RequestMethod.GET)
	public String adminNoticeDelete(int bno, SearchCriteria cri, RedirectAttributes rtts, HttpServletRequest req)
			throws Exception {
		logger.info("delete");

		HttpSession session = req.getSession(false);

		if (session.getAttribute("id") == null) {
			logger.info("아이디는 null 입니다.");
			return "admin/adminLogin";
		}

		nService.delete(bno);// 게시글, 파일 삭제
		rtts.addAttribute("perPageNum", cri.getPerPageNum());
		rtts.addAttribute("page", cri.getPage());

		return "redirect:/admin/adminNotice";
	}

	@RequestMapping(value = "/adminBroadcasting")
	public String broadcasting(@ModelAttribute("cri") SearchCriteria cri, Model model, HttpServletRequest req)
			throws Exception {
		logger.info("adminBroadcasting get");

		HttpSession session = req.getSession(false);

		if (session.getAttribute("id") == null) {
			logger.info("아이디는 null 입니다.");
			return "admin/adminLogin";
		}

		List<BroadcastingVO> list = bService.listSearch(cri);

		cri.setKeyword(null);
		cri.setSearchType("n");
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(bService.listSearchCount(cri));

		model.addAttribute("list", list);
		model.addAttribute("pageMaker", pageMaker);

		return "admin/adminBroadcasting";
	}

	@RequestMapping(value = "/adminBroadcastingRead", method = RequestMethod.GET)
	public String readBroadcasting(int bno, @ModelAttribute("cri") SearchCriteria cri, Model model,
			HttpServletRequest req) throws Exception {
		logger.info("adminBroadcastingRead Get");

		HttpSession session = req.getSession(false);

		if (session.getAttribute("id") == null) {
			logger.info("아이디는 null 입니다.");
			return "admin/adminLogin";
		}

		BroadcastingVO vo = bService.selectOne(bno);
		bService.updateCnt(bno);

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(bService.listSearchCount(cri));

		model.addAttribute("item", vo);
		model.addAttribute("pageMaker", pageMaker);
		return "admin/adminBroadcastingRead";
	}

	@RequestMapping(value = "/adminBroadcastingRegister", method = RequestMethod.GET)
	public String adminBroadcastingeRegisterGet(HttpServletRequest req) {
		logger.info("adminBroadcastingRegister Get");

		HttpSession session = req.getSession(false);

		if (session.getAttribute("id") == null) {
			logger.info("아이디는 null 입니다.");
			return "admin/adminLogin";
		}

		return "admin/adminBroadcastingRegister";
	}

	@RequestMapping(value = "/adminBroadcastingRegister", method = RequestMethod.POST)
	public String adminBroadcastingRegisterPost(BroadcastingVO vo, HttpServletRequest req) {
		logger.info("adminBroadcastingRegister post");

		HttpSession session = req.getSession(false);

		if (session.getAttribute("id") == null) {
			logger.info("아이디는 null 입니다.");
			return "admin/adminLogin";
		}

		bService.insert(vo);

		return "redirect:/admin/adminBroadcasting";
	}

	@RequestMapping(value = "/adminBroadcastingUpdate", method = RequestMethod.GET)
	public String adminBroadcastingUpdateGet(int bno, @ModelAttribute("cri") SearchCriteria cri, Model model,
			HttpServletRequest req) throws Exception {
		logger.info("adminBroadcastingUpdate get");

		HttpSession session = req.getSession(false);

		if (session.getAttribute("id") == null) {
			logger.info("아이디는 null 입니다.");
			return "admin/adminLogin";
		}

		BroadcastingVO vo = bService.selectOne(bno);

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(bService.listSearchCount(cri));

		model.addAttribute("item", vo);
		model.addAttribute("pageMaker", pageMaker);

		return "admin/adminBroadcastingUpdate";
	}

	@RequestMapping(value = "/adminBroadcastingUpdate", method = RequestMethod.POST)
	public String modifyPost(BroadcastingVO vo, int page, @ModelAttribute("cri") SearchCriteria cri,
			RedirectAttributes rtts, Model model, HttpServletRequest req) throws Exception {
		logger.info("adminBroadcastingUpdate post");

		logger.info("page: " + page);

		HttpSession session = req.getSession(false);

		if (session.getAttribute("id") == null) {
			logger.info("아이디는 null 입니다.");
			return "admin/adminLogin";
		}

		bService.update(vo);

		rtts.addAttribute("bno", vo.getBno());

		PageMaker pageMaker = new PageMaker();

		pageMaker.setCri(cri);
		pageMaker.makeSearch(page);

		pageMaker.setTotalCount(bService.listSearchCount(cri));

		rtts.addAttribute("page", page);

		return "redirect:/admin/adminBroadcastingRead";
	}

	@RequestMapping(value = "/adminBroadcastingDelete", method = RequestMethod.GET)
	public String adminBroadcastingDelete(int bno, SearchCriteria cri, RedirectAttributes rtts, HttpServletRequest req)
			throws Exception {
		logger.info("adminBroadcastingDelete");

		HttpSession session = req.getSession(false);

		if (session.getAttribute("id") == null) {
			logger.info("아이디는 null 입니다.");
			return "admin/adminLogin";
		}

		bService.delete(bno);// 게시글, 파일 삭제
		rtts.addAttribute("perPageNum", cri.getPerPageNum());
		rtts.addAttribute("page", cri.getPage());

		return "redirect:/admin/adminBroadcasting";
	}

	@RequestMapping(value = "/adminAdvice", method = RequestMethod.GET)
	public String advice(@ModelAttribute("cri") SearchCriteria cri, Model model, HttpServletRequest req)
			throws Exception {
		logger.info("advice get");

		HttpSession session = req.getSession(false);

		if (session.getAttribute("id") == null) {
			logger.info("아이디는 null 입니다.");
			return "admin/adminLogin";
		}

		List<AdviceVO> list = aService.listSearch(cri);

		cri.setKeyword(null);
		cri.setSearchType("n");
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(aService.listSearchCount(cri));

		model.addAttribute("list", list);
		model.addAttribute("pageMaker", pageMaker);

		return "admin/adminAdvice";
	}

	@RequestMapping(value = "/adminAdviceRead", method = RequestMethod.GET)
	public String adminAdviceRead(int bno, @ModelAttribute("cri") SearchCriteria cri, Model model,
			HttpServletRequest req) throws Exception {
		logger.info("adminAdviceRead Get");

		HttpSession session = req.getSession(false);

		if (session.getAttribute("id") == null) {
			logger.info("아이디는 null 입니다.");
			return "admin/adminLogin";
		}

		AdviceVO vo = aService.selectOne(bno);
		ReplyVO rvo = rService.select(bno);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(aService.listSearchCount(cri));

		model.addAttribute("item", vo);
		model.addAttribute("reply", rvo);
		model.addAttribute("pageMaker", pageMaker);
		return "admin/adminAdviceRead";
	}

	@RequestMapping(value = "/adminAdviceAddReply", method = RequestMethod.POST)
	public String adminAdviceAddReply(ReplyVO vo, HttpServletRequest req) throws Exception {
		logger.info("adminAdviceAddReply POSt");

		HttpSession session = req.getSession(false);

		if (session.getAttribute("id") == null) {
			logger.info("아이디는 null 입니다.");
			return "admin/adminLogin";
		}

		rService.insert(vo);

		return "redirect:/admin/adminAdvice";
	}

	@RequestMapping(value = "/adminAdviceUpdate", method = RequestMethod.GET)
	public String adminAdviceUpdateGet(int bno, @ModelAttribute("cri") SearchCriteria cri, Model model,
			HttpServletRequest req) throws Exception {
		logger.info("adminAdviceUpdate Get");

		HttpSession session = req.getSession(false);

		if (session.getAttribute("id") == null) {
			logger.info("아이디는 null 입니다.");
			return "admin/adminLogin";
		}

		AdviceVO vo = aService.selectOne(bno);

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(aService.listSearchCount(cri));

		model.addAttribute("item", vo);
		model.addAttribute("pageMaker", pageMaker);

		return "admin/adminAdviceUpdate";
	}

	@RequestMapping(value = "/adminAdviceUpdate", method = RequestMethod.POST)
	public String adminAdviceUpdatePost(AdviceVO vo, @ModelAttribute("cri") SearchCriteria cri, Model model,
			HttpServletRequest req) throws Exception {
		logger.info("adminAdvicePost");

		HttpSession session = req.getSession(false);

		if (session.getAttribute("id") == null) {
			logger.info("아이디는 null 입니다.");
			return "admin/adminLogin";
		}

		aService.update(vo);

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);

		return "redirect:/admin/adminAdviceRead" + pageMaker.makeSearch(cri.getPage()) + "&bno=" + vo.getBno();
	}

	@RequestMapping(value = "/adminAdviceDelete")
	public String adminAdviceDelete(int bno, @ModelAttribute("cri") SearchCriteria cri, Model model,
			HttpServletRequest req) throws Exception {
		logger.info("adminAdviceDelete");

		HttpSession session = req.getSession(false);

		if (session.getAttribute("id") == null) {
			logger.info("아이디는 null 입니다.");
			return "admin/adminLogin";
		}

		aService.delete(bno);
		rService.delete(bno);

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);

		return "redirect:/admin/adminAdvice" + pageMaker.makeSearch(cri.getPage());
	}

	@RequestMapping(value = "/adminAdviceReplyUpdate", method = RequestMethod.GET)
	public String adminAdviceReplyUpdateGet(int bno, @ModelAttribute("cri") SearchCriteria cri, Model model,
			HttpServletRequest req) throws Exception {
		logger.info("adminAdviceReplyUpdate Get");

		HttpSession session = req.getSession(false);

		if (session.getAttribute("id") == null) {
			logger.info("아이디는 null 입니다.");
			return "admin/adminLogin";
		}

		ReplyVO rvo = rService.select(bno);

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(aService.listSearchCount(cri));

		model.addAttribute("reply", rvo);
		model.addAttribute("pageMaker", pageMaker);

		return "admin/adminAdviceReplyUpdate";
	}

	@RequestMapping(value = "/adminAdviceReplyUpdate", method = RequestMethod.POST)
	public String adminAdviceReplyUpdatePost(ReplyVO vo, @ModelAttribute("cri") SearchCriteria cri, Model model,
			HttpServletRequest req) throws Exception {
		logger.info("adminAdviceReplyUpdate Post");

		HttpSession session = req.getSession(false);

		if (session.getAttribute("id") == null) {
			logger.info("아이디는 null 입니다.");
			return "admin/adminLogin";
		}

		rService.update(vo);

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);

		return "redirect:/admin/adminAdviceRead" + pageMaker.makeSearch(cri.getPage()) + "&bno=" + vo.getBno();
	}

	@RequestMapping(value = "/adminAdviceReplyDelete")
	public String adminAdviceReplyDelete(int bno, @ModelAttribute("cri") SearchCriteria cri, Model model,
			HttpServletRequest req) throws Exception {
		logger.info("adminAdviceReplyDelete");

		HttpSession session = req.getSession(false);

		if (session.getAttribute("id") == null) {
			logger.info("아이디는 null 입니다.");
			return "admin/adminLogin";
		}

		rService.delete(bno);
		aService.updateStateWait(bno);

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);

		return "redirect:/admin/adminAdviceRead" + pageMaker.makeSearch(cri.getPage()) + "&bno=" + bno;
	}

	@ResponseBody
	@RequestMapping("/imgUpload")
	public Map<String, Object> imgaeUpload(HttpServletRequest req, @RequestParam MultipartFile upload, Model model)
			throws Exception {
		logger.info("image upload!!!!!");

		// http body
		OutputStream out = null;

		Map<String, Object> map = new HashMap<String, Object>();

		// 오리지날 파일명
		String originalName = upload.getOriginalFilename();

		// 랜덤이름 생성(중복 방지용)
		UUID uid = UUID.randomUUID();
		String savedName = uid.toString() + "_" + originalName;

		// 업로드한 파일 이름
		String fileName = savedName;

		// 바이트 배열로 변환
		byte[] bytes = upload.getBytes();

		// 이미지를 업로드할 디렉토리(배포경로로 설정)
		String innerUploadPath = "resources/upload/";
		String uploadPath = (req.getSession().getServletContext().getRealPath("/")) + innerUploadPath;
		logger.info(uploadPath);

		out = new FileOutputStream(new File(uploadPath + fileName));// 서버에 파일 저장
		// 서버에 저장됨
		out.write(bytes);

		String fileUrl = "/" + innerUploadPath + fileName;

		System.out.println(fileUrl);

		map.put("uploaded", 1);
		map.put("fileName", fileName);
		map.put("url", fileUrl);

		return map;
	}

	@RequestMapping(value = "/statistics")
	public String statistics(HttpServletRequest req, Model model, @ModelAttribute("cri") SearchCriteria cri) {
		logger.info("admin statistics Main");

		HttpSession session = req.getSession(false);

		if (session.getAttribute("id") == null) {
			logger.info("아이디는 null 입니다.");
			return "admin/adminLogin";
		}

		String uri = req.getRequestURI();
		model.addAttribute("uri", uri);

		model.addAttribute("total", sService.total());

		Date today = new Date();
		model.addAttribute("today", today);

		makePage(model, cri);
		List<StatisticsVO> list = sService.selectByDate(cri);
		model.addAttribute("list", list);
		model.addAttribute("keyword", cri.getKeyword());
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		cri.setKeyword(sdf.format(today));
		model.addAttribute("todayCount", sService.selectCount(cri.getKeyword()));

		return "/admin/adminStatistics";
	}

	@RequestMapping(value = "statisticsBrowser")
	public String statisticsBrowser(String keyword, Model model, HttpServletRequest req) {
		logger.info("admin browser statistics");

		HttpSession session = req.getSession(false);

		if (session.getAttribute("id") == null) {
			logger.info("아이디는 null 입니다.");
			return "admin/adminLogin";
		}

		Date today = new Date();
		model.addAttribute("today", today);

		model.addAttribute("total", sService.total());
		model.addAttribute("keyword", keyword);
		model.addAttribute("keyCount", sService.selectCount(keyword));

		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

		model.addAttribute("todayCount", sService.selectCount(sdf.format(today)));

		model.addAttribute("chrome", sService.selectByBrowser(keyword, "Chrome"));
		model.addAttribute("ex", sService.selectByBrowser(keyword, "Explorer"));
		model.addAttribute("safari", sService.selectByBrowser(keyword, "Safari"));
		model.addAttribute("sambrowser", sService.selectByBrowser(keyword, "SamsungBrowser"));
		model.addAttribute("naver", sService.selectByBrowser(keyword, "Naver App"));
		model.addAttribute("opera", sService.selectByBrowser(keyword, "Opera"));
		model.addAttribute("etc", sService.selectByBrowser(keyword, "etc"));

		return "/admin/adminStatisticsBrowser";
	}

	@RequestMapping(value = "statisticsOs")
	public String statisticsOs(String keyword, Model model, HttpServletRequest req) {

		HttpSession session = req.getSession(false);

		if (session.getAttribute("id") == null) {
			logger.info("아이디는 null 입니다.");
			return "admin/adminLogin";
		}

		Date today = new Date();
		model.addAttribute("today", today);

		model.addAttribute("total", sService.total());
		model.addAttribute("keyword", keyword);
		model.addAttribute("keyCount", sService.selectCount(keyword));

		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		model.addAttribute("todayCount", sService.selectCount(sdf.format(today)));

		model.addAttribute("pc", sService.selectByDevice(keyword, "PC"));
		model.addAttribute("mobile", sService.selectByDevice(keyword, "Mobile"));
		model.addAttribute("tablet", sService.selectByDevice(keyword, "Tablet Pc"));
		model.addAttribute("etc", sService.selectByDevice(keyword, "etc"));

		return "/admin/adminStatisticsOs";

	}

	@ResponseBody
	@RequestMapping(value = "statisticsYear", method = RequestMethod.POST)
	private ResponseEntity<List<HashMap<String, Object>>> statisticsYear(String year) {
		logger.info("statisticsYear");

		ResponseEntity<List<HashMap<String, Object>>> entity = null;
		HashMap<String, Object> map = new HashMap<>();
		String key = "";
		for (int i = 1; i < 13; i++) {

			if (i < 10) {
				key = year + "-0" + i;
			} else {
				key = year + "-" + i;
			}
			map.put(key, sService.selectCount(key));
		}
		map.put("total", sService.selectCount(year));
		try {
			List<HashMap<String, Object>> list = new ArrayList<>();
			list.add(map);
			entity = new ResponseEntity<List<HashMap<String, Object>>>(list, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<List<HashMap<String, Object>>>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}

	private void makePage(Model model, SearchCriteria cri) {
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		int totalcount = sService.selectCount(cri.getKeyword());
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(totalcount);
		model.addAttribute("pageMaker", pageMaker);
	}

}
