package com.care.hotel.admin;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.care.hotel.member.DTO.AllMemberDTO;
import com.care.hotel.member.DTO.memberDTO;
import com.care.hotel.member.DTO.memberExDTO;
import com.care.hotel.member.service.ImemberSvc;
import com.care.hotel.resource.service.IhotelresourceSvc;

@Controller
public class AdminController {
	@Autowired IhotelresourceSvc hotellistSVC;
	@Autowired ImemberSvc memberSvc;
	@Autowired HttpSession session;
	
	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
	
	/* 회원 목록 */
	@RequestMapping(value="memberListProc", method = RequestMethod.GET)
	public String memberListProc(Model model, 
			@RequestParam(value = "currentPage", required = false, defaultValue = "1") int currentPage,
			String select, String search) {
		logger.info("adminController-memberListProc");
		hotellistSVC.memberList(currentPage, select, search);//서비스 내부에서 session에 데이터를 업로드함
		return "forward:/admin_index?formpath=memberList";
	}
	
	/* 회원 정보 */
	@RequestMapping(value="memberInfoProc")
	public String memberInfoProc(String memberId, Model model) {
		logger.info("memberInfoProc");
		if(memberId == null || memberId == "") {
			return "redirect:memberListProc";
		}
		/*
		 * String sessionMemberId = (String)session.getAttribute("sessionMemberId");
		 * if(sessionMemberId != null) { model.addAttribute("user",
		 * memberSvc.userInfo(sessionMemberId)); return
		 * "forward:/admin_index?formpath=memberInfo?memberId="+sessionMemberId; }else {
		 */
			model.addAttribute("user", memberSvc.userInfo(memberId));
			return "forward:/admin_index?formpath=memberInfo?memberId="+memberId;
		//}
				
	}
	
	/* 회원 수정 */
	@RequestMapping(value="memberModifyProc")
	public String memberModifyProc(String memberId, Model model) {
		logger.info("memberModifyProc");
		if(memberId == null || memberId == "") {
			return "redirect:memberListProc";
		}
		
		model.addAttribute("user", memberSvc.userInfo(memberId));
		return "forward:/admin_index?formpath=memberModify?memberId="+memberId;
	}
	
	/* 회원 수정 저장 */
	@RequestMapping(value="memberModifyProc", method = RequestMethod.POST)
	public String memberModifySaveProc(AllMemberDTO allMemberDto, Model model) {
		System.out.println("memberModifySaveProc memberId : " + allMemberDto.getMemberId());
		System.out.println("memberModifySaveProc zipcode : " + allMemberDto.getZipcode());
		String result = "회원정보수정 실패";
		
		if(allMemberDto.getMemberId() != null) {
			result = memberSvc.memberModify(allMemberDto);
		}
		
		model.addAttribute("msg", result);
		if(result.equals("회원정보수정 실패")) {
			return "redirect:memberListProc";
		} else {
			//return "forward:/admin_index?formpath=memberInfo&sessionMemberId="+session.getAttribute("sessionMemberId");
			return "forward:/memberInfoProc?memberId="+allMemberDto.getMemberId();
		}
	}
	
	/* 회원 삭제 관리자 비밀번호 확인 */
	@RequestMapping(value="memberDeleteProc", method = RequestMethod.GET)
	public String memberDeleteProc(String memberId, Model model) {
		logger.info("memberDeleteProc");
		System.out.println("memberDeleteProc memberId : " + memberId);
		model.addAttribute("memberId", memberId);
		/*
		 * String sessionMemberId = (String)session.getAttribute("sessionMemberId");
		 * if(memberId == null || sessionMemberId != null) {
		 * model.addAttribute("memberId", sessionMemberId); return
		 * "forward:/admin_index?formpath=memberDelete?memberId=" + sessionMemberId; }
		 */
		return "forward:/admin_index?formpath=memberDelete?memberId=" + memberId;
	}
	
	@RequestMapping(value="memberDeleteProc", method = RequestMethod.POST)
	public String memberDeleteCheckProc(String adminId, String adminPw, String memberId, Model model) {
		logger.info("memberDeleteCheckProc");
		System.out.println(adminId);
		System.out.println(adminPw);
		System.out.println(memberId);
		
		String result = "[" + memberId + "]회원을 삭제했습니다.";
		
		result = memberSvc.adminCheck(adminId, adminPw, memberId);
	
		model.addAttribute("msg", result);
		
		if(result.equals("아이디 혹은 비밀번호를 확인해주세요.")) {
			//return "forward:/admin_index?formpath=memberDelete&sessionMemberId=" + memberId;
			return "forward:/memberDeleteProc?memberId=" + memberId;
		}else {
			return "redirect:memberListProc";
		}
	}

}
