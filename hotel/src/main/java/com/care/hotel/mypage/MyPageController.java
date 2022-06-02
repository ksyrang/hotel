package com.care.hotel.mypage;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MyPageController {
	@Autowired IMyPageService myPageService;
	
	private static final Logger logger = LoggerFactory.getLogger(MyPageController.class);
	
	@RequestMapping(value = "/mypage/memListResv", method = RequestMethod.GET)
	public String memListResv(Model model, 
			@RequestParam(value = "currentPage", required = false, defaultValue = "1") int currentPage,
			String searchDateType, String startDate, String endDate, String memberId) {
		logger.info("MyPageController-memListResv");
		myPageService.memListResv(currentPage, searchDateType, startDate, endDate, memberId);//서비스 내부에서 session에 데이터를 업로드함
		return "mypage/memListResv";
	}
	
	@RequestMapping("/mypage/memSetPwCnfm")
	public String memSetPwCnfm() {
		return "mypage/memSetPwCnfm";
	}
	
	@RequestMapping("/mypage/memSetMbrInfo")
	public String memSetMbrInfo() {
		return "mypage/memSetMbrInfo";
	}
	
	@RequestMapping("/mypage/memSetPwMod")
	public String memSetPwMod() {
		return "mypage/memSetPwMod";
	}
	
	@RequestMapping("/mypage/memListAsk")
	public String memListAsk() {
		return "mypage/memListAsk";
	}
	
	@RequestMapping("/mypage/memSetPwDropfm")
	public String memSetPwDropfm() {
		return "mypage/memSetPwDropfm";
	}
	
	@RequestMapping("/mypage/memSetMbrDropOut")
	public String memSetMbrDropOut() {
		return "mypage/memSetMbrDropOut";
	}
}
