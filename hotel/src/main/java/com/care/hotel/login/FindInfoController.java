package com.care.hotel.login;

import java.util.Locale;

import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.care.hotel.member.DTO.memberDTO;
import com.care.hotel.member.service.memberSvcImpl;
import com.care.hotel.member.DAO.memberDAO;


@Controller
public class FindInfoController {
	private static final Logger logger = LoggerFactory.getLogger(FindInfoController.class);
	@Autowired private memberSvcImpl memberService;
	@Autowired memberDAO memberDao;
	
	@RequestMapping(value = "findID")
	public String findID(String memberEmail, String memberNameENG) {
		return "findID";
	}

	@RequestMapping(value = "findIDProc")
	public String findIDProc(HttpServletResponse response, String memberId,  Model model, RedirectAttributes ra) throws Exception{
		logger.info("FindIDProc");
		if(memberId == null || memberId == "") {
			ra.addFlashAttribute("msg", "FindIDProc 오류발생");
			return "redirect:/index?formpath=login";
		}
		model.addAttribute("msg");
		return "forward:/index?formpath=findID";
	}
	
	@RequestMapping(value = "findIDProc", method = RequestMethod.POST)
	public String findIDSaveProc(HttpServletResponse response, String memberId, memberDTO member, Model model, RedirectAttributes ra) throws Exception{
		logger.info("FindIDProc");
		String result = "가입된 아이디는 [" + memberId + "] 입니다.";
		
	//	result = memberService.findID(member);
		
		boolean check = result.equals("다시 입력해주세요.");
		
		if(check == true) {
			model.addAttribute("msg", result);
			return "forward:/index?formpath=findID_Res";
			
		}else {
			ra.addFlashAttribute("msg", result);
			return "redirect:/index?formpath=findID";
		}
	}
	@RequestMapping(value = "findPW")
	public String findPW(String formpath, Locale locale, Model model) {
		logger.info("index?formpath="+formpath);	
		model.addAttribute("formpath", formpath );
		return "findPW";
	}
	
}
