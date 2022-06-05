package com.care.hotel.mypage;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MyPageController {
	@Autowired IMyPageService myPageService;
	
	private static final Logger logger = LoggerFactory.getLogger(MyPageController.class);
	
	/*//mypage sector//*/
	@RequestMapping(value="myPage")
	public String mypage_index(Model model) {
		logger.info("mypage_index");
		model.addAttribute("formpath", "mypage/memListResv");
		return "mypage_index";
	}
	
	@RequestMapping(value="mypage_index")
	public void mypage_index(String formpath, String sessionMemberId,Model model, HttpSession session) {
		logger.info("mypage_index?formpath="+formpath);
		model.addAttribute("formpath", formpath);
		
		// 수정 혹은 삭제 시 아이디 세션
		/*
		 * System.out.println("세션에 담기 전 sessionMemberId : " + sessionMemberId);
		 * if(sessionMemberId != null) { String sessionId =
		 * (String)session.getAttribute("sessionMemberId");
		 * System.out.println("세션에 저장되어 있는 sessionId : " + sessionId);
		 */
		 //if(formpath.equals("memberDelete")) { if(sessionId == null ||sessionId.equals(sessionMemberId) == false) {
			/*
			 * session.setAttribute("sessionMemberId", sessionMemberId);
			 * System.out.println("세션에 담은 후 sessionMemberId : " + sessionMemberId);
			 */
		// } 
		//}
	}
	
	@RequestMapping(value = "/mypage/memListResv")
	public String memListResv(Model model, 
			@RequestParam(value = "currentPage", required = false, defaultValue = "1") int currentPage,
			String select, String startDt, String endDt, String memberId) {
		logger.info("MyPageController-memListResv");
		if(memberId == null) memberId ="whiteyhl";
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Calendar calendar = Calendar.getInstance();
		Date dateObj = calendar.getTime();
		if(startDt == null) 
			startDt = "2000-01-01";
		if(endDt == null) 
			endDt = sdf.format(dateObj);
		if(select == null) select = "예약일";
		startDt = startDt.replaceAll("[^0-9]", "");
		endDt = endDt.replaceAll("[^0-9]", "");
		System.out.println(currentPage + "/" + select + "/" + startDt + "/ " + endDt + "/ " + memberId);
		myPageService.memListResv(currentPage, select, startDt, endDt, memberId);//서비스 내부에서 session에 데이터를 업로드함
		return "mypage/memListResv";
//		return "forward:/page_index?formpath=mypage/memListResv?memberId=" + memberId;
	}
	
	/* 회원 삭제 관리자 비밀번호 확인 */
	@RequestMapping(value="/mypage/memCnclResvProc")
	public String memCnclResvProc(String memberId, String reservationNo, Model model) {
		logger.info("memCnclResvProc");
		System.out.println("memberId: " + memberId + "reservationNo : " + reservationNo);
		model.addAttribute("memberId", memberId);
		model.addAttribute("reservationNo", reservationNo);
		
		return "forward:/mypage_index?formpath=mypage/memCnclResv?reservationNo=" + reservationNo;
	}
	
	@RequestMapping("/mypage/memCnclResv")
	public String resvCancel() {
		return "mypage/memCnclResv";
	}
	
	@RequestMapping("/mypage/memSetPwCnfm")
	public String memSetPwCnfm() {
		return "mypage/memSetPwCnfm";
	}
	
	@RequestMapping("/mypage/memSetMbrInfo")
	public String memSetMbrInfo() {
		return "mypage/memSetMbrInfo";
	}
	
	@RequestMapping("/mypage/memSetPwMod")
	public String memSetPwMod() {
		return "mypage/memSetPwMod";
	}
	
	@RequestMapping("/mypage/memListAsk")
	public String memListAsk() {
		return "mypage/memListAsk";
	}
	
	@RequestMapping("/mypage/memSetPwDropfm")
	public String memSetPwDropfm() {
		return "mypage/memSetPwDropfm";
	}
	
	@RequestMapping("/mypage/memSetMbrDropOut")
	public String memSetMbrDropOut() {
		return "mypage/memSetMbrDropOut";
	}
	
	@RequestMapping("/mypage/memSetStep1")
	public String memSetStep1() {
		return "mypage/memSetStep1";
	}
}
