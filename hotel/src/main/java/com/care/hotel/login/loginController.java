package com.care.hotel.login;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.care.hotel.login.DTO.LoginDTO;
import com.care.hotel.login.service.IloginService;

@Controller
public class loginController {
	
	private static final Logger logger = LoggerFactory.getLogger(loginController.class);
	@Autowired private IloginService loginSVC;
	
	@RequestMapping(value = "/memLoginForm", method = RequestMethod.GET)
	public String memLoginForm(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "memLoginForm";
	}
	
	@RequestMapping(value = "/findID", method = RequestMethod.POST)
	public String findID() throws Exception{
		return "findID";
	}
	
	
	@PostMapping("loginProc")
	public String loginProc(LoginDTO member) {
		int result =loginSVC.loginProc(member);
		if(result == 0) return "forward:/index?formpath=login";
		
		
		return "forward:index?formpath=home";
	}
}	