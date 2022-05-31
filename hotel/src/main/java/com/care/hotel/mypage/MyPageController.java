package com.care.hotel.mypage;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MyPageController {
private static final Logger logger = LoggerFactory.getLogger(MyPageController.class);
	
	@RequestMapping(value = "/myPage", method = RequestMethod.GET)
	public String myPage(Locale locale, Model model) {
		logger.info("MyPageController - myPage");
		return "myPage";
	}
	
	@RequestMapping("memListResv")
	public String memListResv() {
		return "memListResv";
	}

	@RequestMapping("memDiningListResv")
	public String memDiningListResv() {
		return "memDiningListResv";
	}
	
	@RequestMapping("memSetPwCnfm")
	public String memSetPwCnfm() {
		return "memSetPwCnfm";
	}
	
	@RequestMapping("memSetMbrInfo")
	public String memSetMbrInfo() {
		return "memSetMbrInfo";
	}
	
	@RequestMapping("memSetPwMod")
	public String memSetPwMod() {
		return "memSetPwMod";
	}
	
	@RequestMapping("memListAsk")
	public String memListAsk() {
		return "memListAsk";
	}
	
	@RequestMapping("memSetPwDropfm")
	public String memSetPwDropfm() {
		return "memSetPwDropfm";
	}
	
	@RequestMapping("memSetMbrDropOut")
	public String memSetMbrDropOut() {
		return "memSetMbrDropOut";
	}
}
