package com.care.hotel.login;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.annotations.Param;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.care.hotel.member.DAO.memberDAO;
import com.care.hotel.member.DTO.memberDTO;
import com.care.hotel.member.service.memberSvcImpl;


@Controller
public class FindInfoController {
	private static final Logger logger = LoggerFactory.getLogger(FindInfoController.class);
	@Autowired private memberSvcImpl memberService;
	@Autowired memberDAO memberDao;
	
	@RequestMapping(value = "findIDProc")
	public String findIDProc( memberDTO member,  Model model, RedirectAttributes ra){
		logger.info("FindIDProc");
		String memberId = member.getMemberId();
		if(memberId == null || memberId == "") {
			ra.addFlashAttribute("msg", "FindIDProc 오류발생");
			return "redirect:/index?formpath=login";
		}
		model.addAttribute("msg");
		
		String memberNameEng = member.getMemberNameENG();
		String[] nameSplit = memberNameEng.split(" ");
		model.addAttribute("lastName", nameSplit[0]);
		model.addAttribute("firstName", nameSplit[1]);
		
		return "forward:/index?formpath=findIDForm";
	}
	
	@RequestMapping(value = "findIDProc", method = RequestMethod.POST)
	public String findIDSaveProc(String memberId, String memberNameENG, String lastName, String firstName, String memberEmail, Model model, RedirectAttributes ra) {
		logger.info("FindIDSaveProc");
		String result = "가입된 아이디는 [" + memberId + "] 입니다.";
		memberNameENG = lastName + " " + firstName;
		
		System.out.println(memberNameENG);
		System.out.println(memberEmail);
		result = memberService.findID(memberNameENG, memberEmail);
		
		if(memberId != null) {
			memberDTO member = new memberDTO();
			member.setMemberNameENG(memberNameENG);
			
		}
		
		if(result.equals("다시 입력해주세요.")) {
			ra.addFlashAttribute("msg", result);
			return "redirect:/index?formpath=login";
		}else {
			model.addAttribute("msg", result);
			return "forward:/index?formpath=findID_Res";
		}
	}
	@RequestMapping(value = "findID_Res")
	public String findID_Res(Locale locale, Model model) {
		logger.info("아이디 확인 완료");
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "findID_Res";
	}
	
	@RequestMapping(value = "findPWProc")
	public String findPWProc( memberDTO member,  Model model, RedirectAttributes ra){
		logger.info("FindPWProc");
		String memberId = member.getMemberId();
		if(memberId == null || memberId == "") {
			ra.addFlashAttribute("msg", "FindPWProc 오류발생");
			return "redirect:/index?formpath=login";
		}
		model.addAttribute("msg");
		
		String memberNameEng = member.getMemberNameENG();
		String[] nameSplit = memberNameEng.split(" ");
		model.addAttribute("lastName", nameSplit[0]);
		model.addAttribute("firstName", nameSplit[1]);
		
		return "forward:/index?formpath=findPWForm";
	}
	
	@RequestMapping(value = "findPWProc", method = RequestMethod.POST)
	public String findPWSaveProc(String memberPw, String memberId, String memberNameENG, String firstName, String lastName, String memberEmail, Model model, RedirectAttributes ra) {
		logger.info("FindPWSaveProc");
		String result = "회원의 비밀번호는 [ " + memberPw + "]입니다.";
		memberNameENG = lastName + " " + firstName;
		result = memberService.findPW(memberId, memberNameENG, memberEmail);
		
		System.out.println(memberId);
		System.out.println(memberNameENG);
		System.out.println(memberEmail);
		
		if(memberId != null) {
			memberDTO member = new memberDTO();
			member.setMemberNameENG(memberNameENG);	
		}
		
		if(result.equals("다시 입력해주세요.")) {
			ra.addFlashAttribute("msg", result);
			return "redirect:/index?formpath=login";
		}else {
			model.addAttribute("msg", result);
			return "forward:/index?formpath=findPW_Res";
		}
	}
	@RequestMapping(value = "findPW_Res")
	public String findPW_Res(Locale locale, Model model) {
		logger.info("비밀번호 확인 완료");
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "findPW_Res";
	}
	
}
