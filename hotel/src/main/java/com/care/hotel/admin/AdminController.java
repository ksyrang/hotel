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

import com.care.hotel.member.service.ImemberSvc;
import com.care.hotel.resource.service.IhotelresourceSvc;

@Controller
public class AdminController {
	@Autowired IhotelresourceSvc hotellistSVC;
	@Autowired ImemberSvc memberSvc;
	
	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
	
	@RequestMapping(value="memberListProc", method = RequestMethod.GET)
	public String memberListProc(Model model, 
			@RequestParam(value = "currentPage", required = false, defaultValue = "1") int currentPage,
			String select, String search) {
		logger.info("adminController-memberListProc");
		hotellistSVC.memberList(currentPage, select, search);//서비스 내부에서 session에 데이터를 업로드함
		return "forward:/admin_index?formpath=memberList";
	}
	
	@RequestMapping(value="memberInfoProc")
	public String memberInfoProc(String memberId, Model model) {
		logger.info("memberInfoProc");
		if(memberId != null || memberId == "") {
			return "redirect:memberListProc";
		}
		model.addAttribute("user", memberSvc.userInfo(memberId));
		return "forward:/admin_index?formpath=memberInfo?memberId="+memberId;
				
	}

}