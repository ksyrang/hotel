package com.care.hotel.Reservation;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.care.hotel.Reservation.DTO.reservationAllDTO;
import com.care.hotel.Reservation.DTO.reservationDTO;
import com.care.hotel.common.DateService;
import com.care.hotel.memRoom.service.ImemRoomSvc;
import com.care.hotel.memRoom.service.memRoomSvcImpl;
import com.care.hotel.member.DTO.memberCardDTO;
import com.care.hotel.member.DTO.memberDTO;
import com.care.hotel.member.service.IMemberCardSvc;
import com.care.hotel.member.service.ImemberSvc;
import com.care.hotel.resource.service.IhotelresourceSvc;
import com.care.hotel.resourceDTO.roomDTO;

@Controller
public class reservationController {
	@Autowired IhotelresourceSvc hotelSvc;
	@Autowired ImemRoomSvc memRoomSvc;
	@Autowired ImemberSvc memberSvc;
	@Autowired IMemberCardSvc cardSvc;
	
	@RequestMapping(value="reservationMainProc", method = RequestMethod.GET)
	public String reservationMainProc(Model model, 
			@RequestParam(value = "currentPage", required = false, defaultValue = "1") int currentPage,
			String hotelSelect, String startDate, String endDate, Integer availablePerson) {
		   
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
	
	@RequestMapping(value="roomReservation_step1Proc")
	public String roomReservation_step1Proc(String roomId, HttpSession session, Model model, RedirectAttributes ra) {
		String memberId = (String) session.getAttribute("userId");
		if(memberId == null) {
			model.addAttribute("msg", "????????? ??? ??????????????? ??????????????????.");
			return "forward:/index?formpath=login";
		}else if(roomId == null) {
			//model.addAttribute("msg", "?????? ??????.");
			return "forward:/reservationMainProc";
		}else if(session.getAttribute("wantCheckin") == null || 
				session.getAttribute("wantCheckout") == null || session.getAttribute("wantavPerson") == null) {
			ra.addFlashAttribute("msg", "???????????? ?????? ??? ??????????????????.");
			return "redirect:/reservationMainProc";
		}else if(memRoomSvc.chekcPeriod(roomId, (String)session.getAttribute("wantCheckin"), (String)session.getAttribute("wantCheckout")) == false){
			// ?????? ?????? ??????
			model.addAttribute("msg", "?????? ????????? ?????? ??????????????????.");
			ra.addFlashAttribute("msg", "?????? ????????? ?????? ??????????????????.");
			return "forward:/reservationMainProc";
			//return "forward:/reservationMainProc?hotelSelect="+ session.getAttribute("wantHotel") 
			//+ "&startDate=" + session.getAttribute("wantCheckin") + "&endDate=" + session.getAttribute("wantCheckout")
			//+ "&availablePerson=" + session.getAttribute("wantavPerson");
		} else {
			roomDTO roomDTO = hotelSvc.roomInfoDTO(roomId);
			// ?????????
			model.addAttribute("hotelName", memRoomSvc.getHotelName(roomDTO.getHotelId()));
			// ???????????? ?????? ?????? ??????
			int charge = roomDTO.getBasicCharge();
			int period = (int)((long) session.getAttribute("resPeriod"));
			roomDTO.setBasicCharge(charge * period);
			// ?????? ??????
			model.addAttribute("roomDTO", roomDTO);
			// ?????? ??????
			model.addAttribute("userInfo", memberSvc.userInfo(memberId));
			// ?????? ??????
			memberCardDTO cardDTO = cardSvc.cardInfo(memberId);
			if(cardDTO != null) {
				//????????? ??? ????????????
				model.addAttribute("cardId", cardDTO.getCardId());
				model.addAttribute("cardCompany", cardDTO.getCardCompany());
				model.addAttribute("cardNo1", cardDTO.getCardNo().substring(0, 4));
				model.addAttribute("cardNo2", cardDTO.getCardNo().substring(4, 8));
				model.addAttribute("cardNo3", cardDTO.getCardNo().substring(8, 12));
				model.addAttribute("cardNo4", cardDTO.getCardNo().substring(12));
				model.addAttribute("validityMm", cardDTO.getValidityYyMm().substring(2,4));
				model.addAttribute("validityYy",  cardDTO.getValidityYyMm().substring(0,2));
				model.addAttribute("CSV", cardDTO.getCSV());
			}
			return "forward:/index?formpath=roomReservation_step1";
		}
		
	}
	
	// ?????? ??????
	@RequestMapping(value="roomReservation_step1SaveProc", method = RequestMethod.POST)
	public String roomReservation_step1SaveProc(reservationAllDTO resAllDTO, memberCardDTO cardDTO,
			memberDTO memberDTO, roomDTO roomDTO, HttpSession session, Model model, RedirectAttributes ra) {
		if(memberDTO.getMemberId().equals(session.getAttribute("userId")) == false) {
			model.addAttribute("msg", "????????? ??? ??????????????? ??????????????????.");
			return "forward:/index?formpath=login";
		}
		
		String resNo = memRoomSvc.insertReservation(resAllDTO, cardDTO, memberDTO, roomDTO);
		ra.addFlashAttribute("msg", resNo + " ????????? ?????????????????????.");
		return "redirect:/roomReservation_completeProc?reservationNo=" + resNo;
	}
	
	@RequestMapping(value="roomReservation_completeProc")
	public String roomReservation_completeProc(String reservationNo, Model model) {
		System.out.println("roomReservation_completeProc");
		model.addAttribute("resDTO",memRoomSvc.getReservationDTO(reservationNo));
		
		return "forward:/index?formpath=roomReservation_complete";
	}
	
	//?????? ????????? ajax
	@PostMapping(value="getStayDate", produces = "application/json; charset=UTF-8")
	@ResponseBody
	public long getStayDate(@RequestBody(required = false) HashMap<String, String> map) {
		Date checkin = null;
		Date checkout = null;
		long period = 0;
		try {
			checkin = new SimpleDateFormat("yyyy-MM-dd").parse(map.get("strDate"));
			checkout = new SimpleDateFormat("yyyy-MM-dd").parse(map.get("eDate"));
			long diffSec = (checkout.getTime() - checkin.getTime()) / 1000; //?????????
			period = diffSec / (24*60*60); //????????????
			
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return period;
	}

}
