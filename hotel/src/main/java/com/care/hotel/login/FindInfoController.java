package com.care.hotel.login;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
public class FindInfoController {
	private static final Logger logger = LoggerFactory.getLogger(FindInfoController.class);
	
	
	@RequestMapping(value = "findID")
	public String findID(String formpath, Locale locale, Model model) {
		logger.info("index?formpath="+formpath);
		model.addAttribute("formpath", formpath );
		return "findID";
	}
	
	@RequestMapping(value = "findPW")
	public String findPW(String formpath, Locale locale, Model model) {
		logger.info("index?formpath="+formpath);	
		model.addAttribute("formpath", formpath );
		return "findPW";
	}
	
}
