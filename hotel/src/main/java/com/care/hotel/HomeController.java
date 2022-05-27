package com.care.hotel;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	
	@RequestMapping("main_header")
	public String main_header() {
		return "main_header";
	}
	
	@RequestMapping("main_footer")
	public String main_footer() {
		return "main_footer";
	}
	
	/* admin start*/
	@RequestMapping(value="admin")
	public String admin_index(Model model) {
		logger.info("admin_index");
		model.addAttribute("formpath", "admin_index");
		return "admin/admin_index";
	}
	
	@RequestMapping(value="admin_index")
	public void admin_index(String formpath, Model model) {
		logger.info("admin_index?formpath="+formpath);
		model.addAttribute("formpath", formpath);
	}
	
	/* 회원 목록 */
	@RequestMapping(value="userList", method = RequestMethod.GET)
	public String admin_userList() {
		logger.info("admin_userList");
		return "admin/admin_userList";
	}
	
	/* 회원 정보 */
	@RequestMapping(value="userInfo", method = RequestMethod.GET)
	public String admin_userInfo() {
		logger.info("admin_userInfo");
		return "admin/admin_userInfo";
	}
	
	/*admin end*/
	
}
