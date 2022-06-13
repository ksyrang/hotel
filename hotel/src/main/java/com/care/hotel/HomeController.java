package com.care.hotel;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.care.hotel.member.DTO.memberDTO;
import com.care.hotel.member.DTO.memberExDTO;
import com.care.hotel.resource.service.IhotelresourceSvc;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@Autowired HttpSession session;
	/**
	 * Simply selects the home view to render by returning its name.
	 */
//	@RequestMapping(value = "/", method = RequestMethod.GET)
//	public String home(Locale locale, Model model) {
//		logger.info("Welcome home! The client locale is {}.", locale);
//		
//		Date date = new Date();
//		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
//		
//		String formattedDate = dateFormat.format(date);
//		
//		model.addAttribute("serverTime", formattedDate );
//		
//		return "home";
//	}
	
	/*//member sector//*/
	@RequestMapping(value = "/")
	public String home(Model model) {
		model.addAttribute("formpath","home2");
		return "index";
	}
	
	@RequestMapping(value = "index")
	public void index(String formpath, String sessionMemberId,Model model, HttpSession session) {
		model.addAttribute("formpath",formpath);
	}	
	
	@RequestMapping(value = "login")
	public String login() {
		return "member/memLoginForm";
	}
	
	@RequestMapping(value="memberJoin")
	public String memberJoin(memberDTO member, memberExDTO memberExDto) {
		return "memJoinForm";
	}
	
//	@RequestMapping(value="findID")
//	public String findID(HttpServletResponse response, String email) throws Exception {
//		return "findID";
//	}
	
	@RequestMapping("home2")
	public String home2() {
		return "home2";
	}	
	
	@RequestMapping("main_header")
	public String main_header() {
		return "main_header";
	}
	
	@RequestMapping("main_footer")
	public String main_footer() {
		return "main_footer";
	}
	
	/*//admin sector//*/
	@RequestMapping(value="admin")
	public String admin_index(Model model) {
		logger.info("admin_index");
		model.addAttribute("formpath", "home2");
		return "admin_index";
	}
	
	@RequestMapping(value="admin_index")
	public void admin_index(String formpath, String sessionMemberId,Model model, HttpSession session) {
		logger.info("admin_index?formpath="+formpath);
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
	
	/* 관리자 회원 목록 */
	@RequestMapping(value="memberList")
	public String admin_memberList() {
		logger.info("admin_memberList");
		return "admin/member/admin_memberList";
		//return "forward:/admin_index?formpath=memberList";
	}
	
	/* 관리자 회원 정보 */
	@RequestMapping(value="memberInfo")
	public String admin_memberInfo() {
		return "admin/member/admin_memberInfo";
	}
	
	/* 관리자 회원 수정 */
	@RequestMapping(value="memberModify")
	public String admin_memberModify() {
		return "admin/member/admin_memberModify";
	}
	
	/* 관리자 회원 삭제*/
	@RequestMapping(value="memberDelete")
	public String admin_memberDelete() {
		return "admin/member/admin_memberDelete";
	}
	/* 호텔 관리 */
	@GetMapping("admin_hotelAdd")
	public String admin_hotelAdd () {
		return "admin/hotel/hoteladdForm";
	}
	@GetMapping("admin_hotelList")
	public String admin_hotelList() {
		return "admin/hotel/hotellistForm";
	}
	@GetMapping("admin_hotelInfo")
	public String admin_hotelInfo() {
//		if(session.getAttribute("hotelInfo") == null)
		return "admin/hotel/hotelInfoForm";
	}	
	
	@GetMapping("admin_hotelInfoModify")
	public String admin_hotelInfoModify() {
		
		return "admin/hotel/hotelInfomodifyform";
	}	
	
	@GetMapping("admin_hotelDelete")
	public String admin_hoteldelete(Model model, String hotelId) {
		session.setAttribute("hotelId", hotelId);
		return "admin/hotel/hoteldeleteForm";
	}
 	/* 룸 관리 */
	@GetMapping("admin_roomList")
	public String admin_roomList() {
		
		return "admin/room/roomlistForm";
	}
	
	@GetMapping("admin_roomInfo")
	public String admin_roomInfo() {
//		if(session.getAttribute("roomInfo") == null)
		return "admin/room/roomInfoForm";
	}
 	
	@GetMapping("admin_roomInfoModify")
	public String admin_roomInfoModify() {
		
		return "admin/room/roomInfomodifyform";
	}
	
	@GetMapping("admin_roomDelete")
	public String admin_roomDelete(Model model, String roomId) {
		session.setAttribute("roomId", roomId);
		return "admin/room/roomdeleteForm";
	}
	
	@GetMapping("admin_roomAdd")
	public String admin_roomAdd() {
		
		return "admin/room/roomAddform";
	}
	
	/* 관리자 예약 목록 */
	@RequestMapping(value="admin_reservationList")
	public String admin_reservationList() {
		return "admin/reservation/admin_reservationList";
	}
	/* 관리자 예약 상세 정보*/
	@RequestMapping(value="admin_reservationInfo")
	public String admin_reservationInfo() {
		return "admin/reservation/admin_reservationInfo";
	}
	
	/* 관리자 예약 수정 */
	@RequestMapping(value="admin_reservationModify")
	public String admin_reservationModify() {
		return "admin/reservation/admin_reservationModify";
	}
	
	/* 관리자 예약 삭제 */
	@RequestMapping(value="admin_reservationDelete")
	public String admin_reservationDelete() {
		return "admin/reservation/admin_reservationDelete";
	}
	
	/* 관리자 결제 페이지 */
	@RequestMapping(value="payPage")
	public String payPage() {
		return "admin/payment/payPage";
	}
	
	/* 관리자 체크아웃 추가 결제 페이지 */
	@RequestMapping(value="paymentList")
	public String paymentList() {
		return "admin/payment/paymentList";
	}
	
	/* 관리자 매출 목록 */
	@RequestMapping(value="checkoutPayPage")
	public String checkoutPayPage() {
		return "admin/payment/checkoutPayPage";
	}
	
	/* 관리자 통계 메인 */
	@RequestMapping("admin_statisticsMain")
	public String admin_statisticsMain() {
		return "admin/statistics/statisticsMainForm";
	}

	/*admin end*/

//	@RequestMapping("reservationMain")
	
}
