package com.care.hotel.admin;

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
		model.addAttribute("user", memberSvc.userInfo(memberId));
		return "forward:/admin_index?formpath=memberInfo?memberId="+memberId;
				
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
	@RequestMapping(value="memberModifySaveProc", method = RequestMethod.POST)
	public String memberModifySaveProc(AllMemberDTO allMemberDto, Model model) {
		System.out.println(allMemberDto.getMemberId());
		String result = memberSvc.memberModify(allMemberDto);
		if(result.equals("회원정보수정 실패")) {
			return "redirect:memberListProc";
		}
		return "forward:/admin_index?formpath=memberInfo?memberId="+allMemberDto.getMemberId();
	}
	
	/* 회원 삭제 관리자 비밀번호 확인 */
	@RequestMapping(value="memberDeleteProc", method = RequestMethod.GET)
	public String memberDeleteProc(String memberId, Model model) {
		logger.info("memberDeleteProc");
		System.out.println(memberId);
		model.addAttribute("memberId", memberId);
		return "forward:/admin_index?formpath=memberDelete?memberId=" + memberId;
	}
	
	@RequestMapping(value="memberDeleteCheckProc")
	public String memberDeleteCheckProc(String adminId, String adminPw, String memberId, Model model) {
		logger.info("memberDeleteCheckProc");
		System.out.println(adminId);
		System.out.println(adminPw);
		System.out.println(memberId);
		
		String result = "[" + memberId + "]회원을 삭제했습니다.";
		
		if(adminId == null || adminId == "" || adminPw == null || adminPw == "") 
			result = "아이디 혹은 비밀번호를 확인해주세요.";
		
		if(!(adminId.equals("admin"))) 
			result = "아이디 혹은 비밀번호를 확인해주세요.";
		
		if(!(adminPw.equals("1234"))) 
			result = "아이디 혹은 비밀번호를 확인해주세요.";
		
		result = memberSvc.adminCheck(adminId, adminPw, memberId);
		
		if(result.equals("아이디 혹은 비밀번호를 확인해주세요."))
			return "forward:/admin_index?formpath=memberDelete?memberId=" + memberId;
		
		return "redirect:memberListProc";
	}

}
