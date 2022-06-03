package com.care.hotel.admin;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class AdminResevationController {

	private static final Logger logger = LoggerFactory.getLogger(AdminResevationController.class);
	
	/* 예약 목록 */
	@RequestMapping(value="admin_reservationListProc", method = RequestMethod.GET)
	public String admin_reservationListProc(Model model, 
			@RequestParam(value = "currentPage", required = false, defaultValue = "1") int currentPage,
			String select, String search) {
		logger.info("admin_reservationListProc");
		//hotellistSVC.memberList(currentPage, select, search);//서비스 내부에서 session에 데이터를 업로드함
		return "forward:/admin_index?formpath=admin_reservationList";
	}
}
