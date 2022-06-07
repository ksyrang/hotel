package com.care.hotel.admin;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.care.hotel.Reservation.service.IReservationSvc;
import com.care.hotel.resource.service.IhotelresourceSvc;

@Controller
public class AdminResevationController {
	@Autowired IhotelresourceSvc hotelresourceSvc;
	@Autowired IReservationSvc reservationSvc;
	private static final Logger logger = LoggerFactory.getLogger(AdminResevationController.class);
	
	/* 예약 목록 */
	@RequestMapping(value="admin_reservationListProc", method = RequestMethod.GET)
	public String admin_reservationListProc(Model model, 
			@RequestParam(value = "currentPage", required = false, defaultValue = "1") int currentPage,
			String hotelSelect, String dateBase, String startDate, String endDate,String reservationNoSearch) {
		logger.info("admin_reservationListProc");
		model.addAttribute("allHotelInfo", hotelresourceSvc.allHotelInfo());
		System.out.println("hotelSelect : " + hotelSelect);
		System.out.println("startDate : " + startDate);
		System.out.println("endDate : " + endDate);
		reservationSvc.reservationList(currentPage, hotelSelect, dateBase, startDate, endDate, reservationNoSearch);
		//hotellistSVC.memberList(currentPage, select, search);//서비스 내부에서 session에 데이터를 업로드함
		return "forward:/admin_index?formpath=admin_reservationList";
	}
}
