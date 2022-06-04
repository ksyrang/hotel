package com.care.hotel.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.care.hotel.member.DTO.memberDTO;
import com.care.hotel.member.service.memberSvcImpl;
import com.care.hotel.member.DTO.memberExDTO;

public class memberController {
	@Autowired private memberSvcImpl memberService;
	
	@PostMapping(value = "isExistId", produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String isExistId(@RequestBody(required = false) String id) {
		String msg = memberService.isExistId(id);
		return msg;
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
	
}
