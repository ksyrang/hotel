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

	
	
	@RequestMapping(value = "/memJoinForm", method = RequestMethod.GET)
	public String memJoinFormGET() throws Exception{
		
		return "memJoinForm";
	}
	
	@RequestMapping(value = "/memJoinForm", method = RequestMethod.POST)
	public String memJoinFormPOST(memberDTO memberDTO, memberExDTO memberExDTO, RedirectAttributes ra) {
		
		String hashedPw = BCrypt.hashpw(memberDTO.getMemberPw(), BCrypt.gensalt());
		memberDTO.setMemberPw(hashedPw);
		memberService.memberInsert(memberDTO, memberExDTO);
		ra.addFlashAttribute("msg", "REGISTERED");

		
		return "redirect:/index?formpath=memberInsert";
	}
	
	@RequestMapping(value = "memberInsert")
	public String memberInsert(memberDTO memberDTO, memberExDTO memberExDTO, Model model, RedirectAttributes ra) {
		String msg = memberService.memberInsert(memberDTO, memberExDTO);
	
		if(msg.equals("가입 완료")) {
			ra.addFlashAttribute("msg", msg);
			return "redirect:/index?formpath=memberInsert";
		}else {
			model.addAttribute("msg", msg);
			return "forward:/index?formpath=memJoinForm";
		}	
	}
	
	@PostMapping(value = "isExistId", produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String isExistId(@RequestBody(required = false) String id) {
		String msg = memberService.isExistId(id);
		return msg;
	}
}	
