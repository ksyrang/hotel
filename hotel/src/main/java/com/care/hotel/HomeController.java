package com.care.hotel;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.care.hotel.login.DTO.LoginDTO;
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
	
//	@RequestMapping(value = "loginJoin")
//	public String loginJoin(LoginDTO login) {
//		return "member/memLoginForm";
//	
	@RequestMapping(value="memberJoin")
	public String memberJoin(memberDTO member, memberExDTO memberExDto, LoginDTO login) {
		return "memJoinForm";
	}
	
	@RequestMapping(value="findID")
	public String findID(String memberNameENG, String memberEmail) {
		return "findID";
	}
	
	@RequestMapping(value="findPW")
	public String findPW(String memberId, String memberNameENG, String memberEmail) {
		return "findPW";
	}

	@RequestMapping("home2")
	public String home2() {
		return "home2";
	}	
	
	/* reservation Main ????????? */
	@RequestMapping("reservationMain")
	public String reservationMain() {
		return "reservation/reservationMain";
	}
	
	/* reservation step1 ?????????*/
	@RequestMapping("roomReservation_step1")
	public String roomReservation_step1() {
		return "reservation/roomReservation_step1";
	}
	
	/* reservation complete ?????????*/
	@RequestMapping("roomReservation_complete")
	public String roomReservation_complete() {
		return "reservation/roomReservation_complete";
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
		model.addAttribute("formpath", "admin_reservationList");
		return "admin_index";
	}
	
	@RequestMapping(value="admin_index")
	public void admin_index(String formpath, String sessionMemberId,Model model, HttpSession session) {
		logger.info("admin_index?formpath="+formpath);
		model.addAttribute("formpath", formpath);
		
		// ?????? ?????? ?????? ??? ????????? ??????
		/*
		 * System.out.println("????????? ?????? ??? sessionMemberId : " + sessionMemberId);
		 * if(sessionMemberId != null) { String sessionId =
		 * (String)session.getAttribute("sessionMemberId");
		 * System.out.println("????????? ???????????? ?????? sessionId : " + sessionId);
		 */
		 //if(formpath.equals("memberDelete")) { if(sessionId == null ||sessionId.equals(sessionMemberId) == false) {
			/*
			 * session.setAttribute("sessionMemberId", sessionMemberId);
			 * System.out.println("????????? ?????? ??? sessionMemberId : " + sessionMemberId);
			 */
		// } 
		//}
	}
	
	/* ????????? ?????? ?????? */
	@RequestMapping(value="memberList")
	public String admin_memberList() {
		logger.info("admin_memberList");
		return "admin/member/admin_memberList";
		//return "forward:/admin_index?formpath=memberList";
	}
	
	/* ????????? ?????? ?????? */
	@RequestMapping(value="memberInfo")
	public String admin_memberInfo() {
		return "admin/member/admin_memberInfo";
	}
	
	/* ????????? ?????? ?????? */
	@RequestMapping(value="memberModify")
	public String admin_memberModify() {
		return "admin/member/admin_memberModify";
	}
	
	/* ????????? ?????? ??????*/
	@RequestMapping(value="memberDelete")
	public String admin_memberDelete() {
		return "admin/member/admin_memberDelete";
	}
	/* ?????? ?????? */
	@RequestMapping("admin_hotelAdd")
	public String admin_hotelAdd () {
		return "admin/hotel/hoteladdForm";
	}
	@RequestMapping("admin_hotelList")
	public String admin_hotelList() {
		return "admin/hotel/hotellistForm";
	}
	@RequestMapping("admin_hotelInfo")
	public String admin_hotelInfo() {
//		if(session.getAttribute("hotelInfo") == null)
		return "admin/hotel/hotelInfoForm";
	}	
	
	@RequestMapping("admin_hotelInfoModify")
	public String admin_hotelInfoModify() {
		
		return "admin/hotel/hotelInfomodifyform";
	}	
	
	@RequestMapping("admin_hotelDelete")
	public String admin_hoteldelete(Model model, String hotelId) {
		session.setAttribute("hotelId", hotelId);
		return "admin/hotel/hoteldeleteForm";
	}
 	/* ??? ?????? */
	@RequestMapping("admin_roomList")
	public String admin_roomList() {
		
		return "admin/room/roomlistForm";
	}
	
	@RequestMapping("admin_roomInfo")
	public String admin_roomInfo() {
//		if(session.getAttribute("roomInfo") == null)
		return "admin/room/roomInfoForm";
	}
 	
	@RequestMapping("admin_roomModify")
	public String admin_roomModify() {
		
		return "admin/room/roomModifyform";
	}
	
	@RequestMapping("admin_roomDelete")
	public String admin_roomDelete() {

		return "admin/room/roomdeleteForm";
	}
	
	@RequestMapping("admin_roomAdd")
	public String admin_roomAdd() {
		
		return "admin/room/roomAddform";
	}
	
	/* ????????? ?????? ?????? */
	@RequestMapping(value="admin_reservationList")
	public String admin_reservationList() {
		return "admin/reservation/admin_reservationList";
	}
	/* ????????? ?????? ?????? ??????*/
	@RequestMapping(value="admin_reservationInfo")
	public String admin_reservationInfo() {
		return "admin/reservation/admin_reservationInfo";
	}
	
	/* ????????? ?????? ?????? */
	@RequestMapping(value="admin_reservationModify")
	public String admin_reservationModify() {
		return "admin/reservation/admin_reservationModify";
	}
	
	/* ????????? ?????? ?????? */
	@RequestMapping(value="admin_reservationDelete")
	public String admin_reservationDelete() {
		return "admin/reservation/admin_reservationDelete";
	}
	
	/* ????????? ?????? ????????? */
	@RequestMapping(value="payPage")
	public String payPage() {
		return "admin/payment/payPage";
	}
	
	/* ????????? ???????????? ?????? ?????? ????????? */
	@RequestMapping(value="paymentList")
	public String paymentList() {
		return "admin/payment/paymentList";
	}
	
	/* ????????? ?????? ?????? ????????? */
	@RequestMapping(value="payCanclePage")
	public String payCanclePage() {
		return "admin/payment/payCanclePage";
	}
	
	/* ????????? ?????? ?????? */
	@RequestMapping(value="checkoutPayPage")
	public String checkoutPayPage() {
		return "admin/payment/checkoutPayPage";
	}
	
	/* ????????? ?????? ?????? */
	@RequestMapping("admin_statisticsMain")
	public String admin_statisticsMain() {
		return "admin/statistics/statisticsMainForm";
	}
	
	
	
	/* ??????????????? ????????? */
	@RequestMapping("kakaoPay")
	public String kakaoPay() {
		return "admin/kakaopay/kakaoPay";
	}
	
	/* ??????????????? ?????? ????????? */
	@RequestMapping("kakaoApproval")
	public String kakaoApproval() {
		return "admin/kakaopay/kakaoApproval";
	}
	
	/* ??????????????? ?????? ????????? */
	@RequestMapping("kakaoCancel")
	public String kakaoCancel() {
		return "admin/kakaopay/kakaoCancel";
	}
	
	/* ??????????????? ?????? ????????? */
	@RequestMapping("kakaoFail")
	public String kakaoFail() {
		return "admin/kakaopay/kakaoFail";
	}
	
	/*admin end*/

//	@RequestMapping("reservationMain")
	
}
