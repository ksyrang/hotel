package com.care.hotel.login;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

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
	public String findIDProc(memberDTO member,  Model model, RedirectAttributes ra) throws Exception{
		logger.info("FindIDProc");
		String memberId = member.getMemberId();
		if(memberId == null || memberId == "") {
			ra.addFlashAttribute("msg", "FindIDProc 오류발생");
			return "redirect:/index?formpath=login";
		}
		model.addAttribute("msg");
		return "forward:/index?formpath=findID";
	}
	
	@RequestMapping(value = "findIDProc", method = RequestMethod.POST)
	public String findIDSaveProc(HttpServletRequest request, memberDTO member, Model model, RedirectAttributes ra) throws Exception{
		logger.info("FindIDSaveProc");

		String result = memberService.findID(member);
		
		boolean check = result.equals("다시 입력해주세요.");
		System.out.println(request.getParameter("memberId"));
		System.out.println(request.getParameter("memberNameENG"));
		System.out.println(request.getParameter("memberEmail"));
		if(check == true) {
			ra.addFlashAttribute("msg", result);
			return "redirect:/index?formpath=findID";
		}else {
			model.addAttribute("msg", result);
			//model.addAttribute("id", member.getMemberId());
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
	@RequestMapping(value = "findPW")
	public String findPW(String formpath, Locale locale, Model model) {
		logger.info("index?formpath="+formpath);	
		model.addAttribute("formpath", formpath );
		return "findPW";
	}
	
}
