package com.care.hotel.member;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class MemJoinAgreeController {
	
	private static final Logger logger = LoggerFactory.getLogger(MemJoinAgreeController.class);

	
	@RequestMapping(value = "memJoinAgreeForm")
	public String memJoinAgreeForm(Model model) {
		logger.info("약관동의");
		
		return "memJoinAgreeForm";
	}
	
	@RequestMapping(value = "memJoinAgreeProc")
	public String memJoinAgreeProc(Model model) {
		logger.info("약관동의");
		
		return "forward:/index?formpath=memJoinForm";
	}
	
	@RequestMapping(value = "memJoinForm")
	public String memJoinForm(Model model) {
		logger.info("회원정보 입력");
		
		return "memJoinForm";
	}
}	
