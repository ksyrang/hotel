package com.care.hotel.member;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.care.hotel.member.DTO.memberDTO;
import com.care.hotel.member.DTO.memberExDTO;
import com.care.hotel.member.service.memberSvcImpl;

@Controller
public class MemJoinController {
	@Autowired private memberSvcImpl memberService;
	private static final Logger logger = LoggerFactory.getLogger(MemJoinController.class);

	
	
//	@RequestMapping(value = "memJoinForm", method = RequestMethod.GET)
//	public String memJoinFormGET() {
//		logger.info("회원가입 페이지 진입");
//		return "memJoinForm";
//	}
//	
	@RequestMapping(value = "memberJoinProc")
	public String memberJoinProc(String memberId, memberDTO member, memberExDTO memberExDto, Model model, RedirectAttributes ra){
		
		logger.info("memberJoinProc");
		//회원가입 서비스 진행
		
		if(memberId == null || memberId == "") {
			ra.addFlashAttribute("msg", "memberJoinProc 오류발생");
			return "redirect:/index?formpath=memJoinAgreeForm";
		}
		model.addAttribute("msg");
		return "forward:/index?formpath=memJoinForm";
		
	}
	
	@RequestMapping(value = "memberJoinProc", method = RequestMethod.POST)
	public String memberJoinSaveProc(memberDTO member, memberExDTO memberExDto, Model model, RedirectAttributes ra){
		
		String msg = memberService.memberJoin(member, memberExDto);
		System.out.println("msg : " + msg);
		if(!(msg.equals("가입 완료"))) {
			ra.addFlashAttribute("msg", msg);
			return "redirect:/index?formpath=memJoinAgreeForm";
		}else {
			model.addAttribute("msg", msg);
			return "forward:/index?formpath=memberInsert";
		}
		
	}
	
	@RequestMapping(value = "memberInsert")
	public String memJoinForm(Locale locale, Model model) {
		logger.info("회원가입 완료");
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "memberInsert";
	}
	
	@PostMapping(value = "isExistId", produces = "application/json; charset=UTF-8")
	@ResponseBody
	public memberDTO isExistId(@RequestBody(required = false) String memberId) {
		memberDTO member = memberService.isExistId(memberId);
		return member;
	}
}	
