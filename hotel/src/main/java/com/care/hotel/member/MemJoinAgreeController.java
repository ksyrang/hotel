package com.care.hotel.member;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MemJoinAgreeController {
	
	private static final Logger logger = LoggerFactory.getLogger(MemJoinAgreeController.class);

	
	@RequestMapping(value = "memJoinAgreeForm")
	public String memJoinAgreeForm(Locale locale, Model model) {
		logger.info("약관동의");
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "memJoinAgreeForm";
	}
	
	@RequestMapping(value = "memJoinAgreeProc", method = RequestMethod.POST)
	public String memJoinAgreeProc() {
		
		
		return "forward:/index?formpath=memJoinForm";
	}
	
	@RequestMapping(value = "memJoinForm")
	public String memJoinForm(Locale locale, Model model) {
		logger.info("회원정보 입력");
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "memJoinForm";
	}
}	
