package com.care.hotel.admin;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.care.hotel.Reservation.DTO.reservationAllDTO;
import com.care.hotel.Reservation.service.IReservationSvc;
import com.care.hotel.member.DTO.AllMemberDTO;
import com.care.hotel.member.service.ImemberSvc;
import com.care.hotel.resource.service.IhotelresourceSvc;

@Controller
public class AdminResevationController {
	@Autowired IhotelresourceSvc hotelresourceSvc;
	@Autowired IReservationSvc reservationSvc;
	@Autowired ImemberSvc memberSvc;
	
	private static final Logger logger = LoggerFactory.getLogger(AdminResevationController.class);
	
	/* 예약 목록 */
	@RequestMapping(value="admin_reservationListProc", method = RequestMethod.GET)
	public String admin_reservationListProc(Model model, 
			@RequestParam(value = "currentPage", required = false, defaultValue = "1") int currentPage,
			String hotelSelect, String dateBase, String startDate, String endDate,String reservationNoSearch) {
		logger.info("admin_reservationListProc");
		model.addAttribute("allHotelInfo", hotelresourceSvc.allHotelInfo());
		reservationSvc.reservationList(currentPage, hotelSelect, dateBase, startDate, endDate, reservationNoSearch);
		return "forward:/admin_index?formpath=admin_reservationList";
	}
	
	/* 관리자 예약 상세 정보*/
	@RequestMapping(value="admin_reservationInfoProc")
	public String admin_reservationInfoProc(String reservationNo, Model model) throws ParseException {
		logger.info("admin_reservationInfoProc");
		/* 예약정보, 고객정보는 모델에 담아서 전달 */
		reservationAllDTO resAll = reservationSvc.reservationInfo(reservationNo);
		AllMemberDTO memberAll = memberSvc.userInfo(resAll.getMemberId());
		model.addAttribute("resInfo", resAll);
		model.addAttribute("memberInfo",memberAll);
		/* 호텔 정보는 세션에 담아서 전달*/
		hotelresourceSvc.hotelInfo(resAll.getHotelId());
		/* 체크아웃 - 체크인*/
		Date checkout = new SimpleDateFormat("yyyy-MM-dd").parse(resAll.getCheckoutDate());
		Date checkin = new SimpleDateFormat("yyyy-MM-dd").parse(resAll.getCheckinDate());
		long diffSec = (checkout.getTime() - checkin.getTime()) / 1000; //초차이
		long period = diffSec / (24*60*60); //일수차이
		model.addAttribute("period", period);
		return "forward:/admin_index?formpath=admin_reservationInfo";
	}
}
