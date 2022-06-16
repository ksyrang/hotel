package com.care.hotel.Reservation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.care.hotel.common.DateService;
import com.care.hotel.memRoom.service.ImemRoomSvc;
import com.care.hotel.memRoom.service.memRoomSvcImpl;
import com.care.hotel.resource.service.IhotelresourceSvc;

@Controller
public class reservationController {
	@Autowired IhotelresourceSvc hotelSvc;
	@Autowired ImemRoomSvc memRoomSvc;
	
	@RequestMapping(value="reservationMainProc", method = RequestMethod.GET)
	public String reservationMainProc(Model model, 
			@RequestParam(value = "currentPage", required = false, defaultValue = "1") int currentPage,
			String hotelSelect, String startDate, String endDate, String availablePerson) {
		   
		model.addAttribute("allHotelInfo", hotelSvc.allHotelInfo());
		
		model.addAttribute("ShotelSelect", hotelSelect);
		
		model.addAttribute("today", DateService.getTodayDate());
		model.addAttribute("tomorrow", DateService.getTomorrowDate());
		
		if(startDate == null || startDate == "")
			startDate = DateService.getTodayDate();
		model.addAttribute("SstartDate", startDate);
		
		if(endDate == null || endDate == "")
			endDate = DateService.getTomorrowDate();
		model.addAttribute("SendDate", endDate);
		model.addAttribute("SavailablePerson", availablePerson);
		
		memRoomSvc.memRoomList(currentPage, hotelSelect, startDate, endDate, availablePerson);
		return "forward:/index?formpath=reservationMain";
	}

}
