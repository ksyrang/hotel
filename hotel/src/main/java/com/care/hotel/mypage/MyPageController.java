package com.care.hotel.mypage;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.care.hotel.member.DTO.AllMemberDTO;
import com.care.hotel.member.DTO.memberPwChngDTO;
import com.care.hotel.member.service.MailService;

@Controller
public class MyPageController {
	@Autowired private MailService mailService;
	@Autowired IMyPageService myPageService;
	@Autowired HttpSession session;

	
	private static final Logger logger = LoggerFactory.getLogger(MyPageController.class);
	
	@RequestMapping(value="myPage")
	public String mypage_index(Model model) {
		logger.info("mypage_index");
		model.addAttribute("formpath", "memListResvProc");
		return "mypage_index";
	}
	
	@RequestMapping(value="mypage_index")
	public void mypage_index(String formpath, String sessionMemberId,Model model, HttpSession session) {
		logger.info("mypage_index?formpath="+formpath);
		model.addAttribute("formpath", formpath);
	}
	
	@RequestMapping(value = "memListResvProc")
	public String memListResvProc(Model model, 
			@RequestParam(value = "currentPage", required = false, defaultValue = "1") int currentPage,
			String select, String startDt, String endDt) {
		logger.info("memListResvProc");
		String memberId = (String)session.getAttribute("userId");
		
		if(memberId != null && memberId != "") {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			Calendar calendar = Calendar.getInstance();
			Date dt = calendar.getTime();
			if(endDt == "" || endDt == null) endDt = sdf.format(dt);
			if(startDt == "" || startDt == null) {
				calendar.add(Calendar.MONTH, -3);
				startDt = sdf.format(calendar.getTime());
			}
			if(select == "" || select == null) select = "?????????";
	//		startDt = startDt.replaceAll("[^0-9]", "");
	//		endDt = endDt.replaceAll("[^0-9]", "");
			model.addAttribute("select", select);
			model.addAttribute("startDt", startDt);
			model.addAttribute("endDt", endDt);
			System.out.println(currentPage + "/" + select + "/" + startDt + "/ " + endDt + "/ " + memberId);
			myPageService.memListResv(currentPage, select, startDt, endDt, memberId);//????????? ???????????? session??? ???????????? ????????????
			return "forward:/mypage_index?formpath=memListResv";
		}else {
//			session.setAttribute("reservationList", null);
			session.setAttribute("reservationCount", 0);
			return "forward:/mypage_index?formpath=home2";
		}
	}
	
	@RequestMapping(value = "memPageResvProc")
	public String memPageResvProc(Model model, 
			@RequestParam(value = "currentPage", required = false, defaultValue = "1") int currentPage,
			String select, String startDt, String endDt) {
		logger.info("memPageResvProc");
		String memberId = (String)session.getAttribute("userId");
		select = (String)session.getAttribute("select");
		startDt = (String)session.getAttribute("startDt");
		endDt = (String)session.getAttribute("endDt");
		
		System.out.println(currentPage + "/" + select + "/" + startDt + "/ " + endDt + "/ " + memberId);
		myPageService.memListResv(currentPage, select, startDt, endDt, memberId);//????????? ???????????? session??? ???????????? ????????????
		
		return "forward:/memListResv";
	}
	@RequestMapping(value="memListResv")
	public String memListResv() {
		logger.info("memListResv");
		return "mypage/memListResv";
	}
	
	@RequestMapping(value="memCnclResvProc")
	public String memCnclResvProc(String memberId, String reservationNo, String msg, Model model) {
		logger.info("memCnclResvProc");
		System.out.println("memberId: " + memberId + " reservationNo : " + reservationNo);
		model.addAttribute("memberId", memberId);
		model.addAttribute("reservationNo", reservationNo);
		
		return "forward:/mypage_index?formpath=memCnclResv?reservationNo=" + reservationNo;
	}
	
	@RequestMapping("memCnclResv")
	public String resvCancel() {
		return "mypage/memCnclResv";
	}
	
	@RequestMapping(value="memCnclCheckProc", method = RequestMethod.POST)
	public String memCnclCheckProc(String memberId, String memberPw, String reservationNo, Model model, RedirectAttributes ra) {
		logger.info("memCnclCheckProc");
		System.out.println("memCnclCheckProc memberId : " + memberId);
		System.out.println("memCnclCheckProc memberPw : " + memberPw);
		System.out.println("memCnclCheckProc reservationNo : " + reservationNo);
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		String securePw = encoder.encode(memberPw);
		System.out.println("memCnclCheckProc securePw : " + securePw);
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Calendar calendar = Calendar.getInstance();
		Date dateObj = calendar.getTime();
		String cancelDate = sdf.format(dateObj);
		
		String result = "";
		String email = "";
		
		int check = myPageService.memResvCncl(memberId, memberPw, reservationNo, cancelDate);
		email = (String)session.getAttribute("email");
		System.out.println("memCnclCheckProc check : " + check + " cancelDate : " + cancelDate + " email : " + email);
		session.setAttribute("alertMsg", null);
		if(check == 2) {
			result = "[" + reservationNo + "] ?????? ?????? ????????? ?????????????????????.";
			mailService.sendMail(email, "[??????????????? ?????? ??????]", result);
			model.addAttribute("msg", result);
			model.addAttribute("url","memListResvProc");
//			return "forward:/memListResvProc";
			return "forward:/alertRedirect";
		}else {
			result = "??????????????? ????????? ?????????.";
			ra.addFlashAttribute("msg", result);
			return "redirect:memCnclResvProc?memberId="+memberId+"&reservationNo="+reservationNo;
		}
	}
	
	@RequestMapping(value="pwCnfmProc")
	public String pwCnfmProc(String memberId, String memberPw, String gubun, Model model, RedirectAttributes ra) {
		logger.info("pwCnfmProc");
		System.out.println("pwCnfmProc gubun : " + gubun);
		System.out.println("pwCnfmProc memberId : " + memberId);
		System.out.println("pwCnfmProc memberPw : " + memberPw);
		String lastName = (String)session.getAttribute("lastName");
		String firstName = (String)session.getAttribute("firstName");
		System.out.println("pwCnfmProc lastName : " + lastName);
		System.out.println("pwCnfmProc firstName : " + firstName);
		
		model.addAttribute("memberId", memberId);
		
		String result = "";
		
		int check = myPageService.pwCnfm(memberId, memberPw);
		model.addAttribute("lastName", (String)session.getAttribute("lastName"));
		model.addAttribute("firstName", (String)session.getAttribute("firstName"));
		System.out.println("pwCnfmProc check 2(??????) : " + check);
		
		if(check == 2) {
			if(gubun == "" || gubun == null)
				return "forward:/mypage_index?formpath=memSetMbrInfo";
			else
				return "forward:/mypage_index?formpath=memSetMbrDropOut";
		}else {
			result = "??????????????? ????????? ?????????.";
			model.addAttribute("msg", result);
			if(gubun == "" || gubun == null)
				return "forward:/memSetPwCnfm";
			else
				return "forward:/memSetPwDropfm?gubun=t";
		}
	}
	
	@RequestMapping("memSetPwCnfm")
	public String memSetPwCnfm() {
		return "mypage/memSetPwCnfm";
	}

	@RequestMapping("memSetMbrInfo")
	public String memSetMbrInfo() {
		return "mypage/memSetMbrInfo";
	}
	
	@RequestMapping(value="memSetUpdtProc")
	public String memSetUpdtProc(String firstName, String lastName, AllMemberDTO mem, Model model) {
		logger.info("memSetUpdtProc");
		String memberNameENG = lastName + " " + firstName;
		mem.setMemberNameENG(memberNameENG);
		System.out.println("getMemberId : "+mem.getMemberId());
		System.out.println("getMemberPw : "+mem.getMemberPw());
		System.out.println("getMemberNameKR : " + mem.getMemberNameKR());
		System.out.println("getMemberNameENG : " + mem.getMemberNameENG());
		System.out.println("getMemberZipcode : " + mem.getMemberZipcode());
		System.out.println("getMemberAddr1 : " + mem.getMemberAddr1());
		System.out.println("getMemberAddr2 : " + mem.getMemberAddr2());
		System.out.println("getMemberHomePhone : " + mem.getMemberHomePhone());
		
		String result = "";
		
		int check = myPageService.memSetUpdt(mem);
		System.out.println("memSetUpdtProc check 2 ?????? : " + check);
		
		if(check == 2) {
			result = "[" + mem.getMemberNameKR() + "]??? ????????? ????????? ??????????????????.";
			model.addAttribute("msg", result);
		}else {
			result = "[" + mem.getMemberNameKR() + "]??? ????????? ?????? ????????? ??????????????????.";
			model.addAttribute("msg", result);
		}
		model.addAttribute("url", "memListResvProc");
		return "forward:/alertRedirect";
//		return "forward:/pwCnfmProc";
//		return "forward:/memListResvProc";
	}

	@RequestMapping(value="memSetPwUpdtProc")
	public String memSetPwUpdtProc(memberPwChngDTO mem, Model model) {
		logger.info("memSetPwUpdtProc");
		System.out.println("Id : "+mem.getMemberId());
		System.out.println("Pw : "+mem.getMemberPw());
		System.out.println("NewPw : "+mem.getMemberNewPw());
		System.out.println("NewPwCnfm : "+mem.getMemberNewPwCnfm());
		
		String result = "";
		
		int check = myPageService.memSetPwUpdt(mem);
		System.out.println("memSetPwUpdtProc check 2 ?????? : " + check);
		
		if(check == 2) {
			result = "[" + mem.getMemberId() + "]??? ??????????????? ?????? ???????????????.";
			model.addAttribute("msg", result);
			model.addAttribute("url", "memListResvProc");
//			return "forward:/memListResvProc";
			return "forward:/alertRedirect";
		}else if(check == 0) {
			result = "[" + mem.getMemberId() + "]??? ?????? ???????????? / ??? ??????????????? ???????????????.";
		}else if(check == 1) {
			result = "[" + mem.getMemberId() + "]??? ??? ??????????????? ?????? ??????????????? ???????????? ????????????.";
		}else {
			result = "[" + mem.getMemberId() + "]??? ?????? ??????????????? ??????????????? ?????? ?????? ????????????.";
		}
		model.addAttribute("msg", result);
		model.addAttribute("url", "memSetPwMod");
//		return "forward:/memSetPwMod";
		return "forward:/alertRedirect";
	}
	
	@RequestMapping("alertRedirect")
	public String alertRedirect() {
		return "common/alertRedirect";
	}
	
	@RequestMapping("memSetPwMod")
	public String memSetPwMod() {
		return "mypage/memSetPwMod";
	}
	
	@RequestMapping(value="memSetDropProc")
	public String memSetDropProc(String memberId, Model model) {
		logger.info("memSetDropProc");
		System.out.println("Id : "+memberId);
		
		String result = "";
		String email = "";
		String dropCheck = "";
		
		int check = myPageService.memSetDropOut(memberId);
		email = (String)session.getAttribute("email");
		System.out.println("memSetDropProc check 2 ?????? : " + check + " email : " + email);
		
		if(check == 2) {
			result = "[" + memberId + "]??? ??????????????? ???????????? ????????? ?????????????????????.";
			mailService.sendMail(email, "[??????????????? ?????? ??????]", result);
			dropCheck = "??????";
			model.addAttribute("dropCheck", dropCheck);
			session.setAttribute("userId", "");
			model.addAttribute("msg", result);
			model.addAttribute("url", "memListResvProc");
			return "forward:/alertRedirect";
		}else {
			result = "[" + memberId + "]??? ???????????? ????????? ??????????????????.";
			dropCheck = "??????";
			model.addAttribute("dropCheck", dropCheck);
			model.addAttribute("msg", result);
			return "forward:/mypage_index?formpath=memSetMbrDropOut";
		}
	}
	
	@RequestMapping("memListAsk")
	public String memListAsk() {
		return "mypage/memListAsk";
	}
	
	@RequestMapping("memSetPwDropfm")
	public String memSetPwDropfm(String gubun, Model model) {
		model.addAttribute("gubun", 't');
		return "mypage/memSetPwDropfm";
	}
	
	@RequestMapping("memSetMbrDropOut")
	public String memSetMbrDropOut(String memberId, Model model) {
		model.addAttribute("memberId", memberId);
		return "mypage/memSetMbrDropOut";
	}
	
	@RequestMapping("memSetStep1")
	public String memSetStep1() {
		return "mypage/memSetStep1";
	}
}
