package com.care.hotel.Reservation;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
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
			model.addAttribute("msg", "로그인 후 이용가능한 서비스입니다.");
			return "forward:/index?formpath=login";
		}else if(roomId == null) {
			model.addAttribute("msg", "오류 발생.");
			return "forward:/index?formpath=login";
		}else if(session.getAttribute("wantCheckin") == null || 
				session.getAttribute("wantCheckout") == null || session.getAttribute("wantavPerson") == null) {
			ra.addFlashAttribute("msg", "데이터를 입력 후 이용해주세요.");
			return "redirect:/reservationMainProc";
		}else {
			roomDTO roomDTO = hotelSvc.roomInfoDTO(roomId);
			// 호텔명
			model.addAttribute("hotelName", memRoomSvc.getHotelName(roomDTO.getHotelId()));
			// 객실 정보
			model.addAttribute("roomDTO", roomDTO);
			// 고객 정보
			model.addAttribute("userInfo", memberSvc.userInfo(memberId));
			// 카드 정보
			memberCardDTO cardDTO = cardSvc.cardInfo(memberId);
			if(cardDTO != null) {
				//모델에 값 넣어주기
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
		}
		
		return "forward:/index?formpath=roomReservation_step1";
	}
	
	// 예약 저장
	@RequestMapping(value="roomReservation_step1SaveProc", method = RequestMethod.POST)
	public String roomReservation_step1SaveProc(reservationAllDTO resAllDTO, memberCardDTO cardDTO,
			memberDTO memberDTO, roomDTO roomDTO, HttpSession session, Model model, RedirectAttributes ra) {
		if(memberDTO.getMemberId().equals(session.getAttribute("userId")) == false) {
			model.addAttribute("msg", "로그인 후 사용가능한 서비스입니다.");
			return "forward:/index?formpath=login";
		}
		
		String resNo = memRoomSvc.insertReservation(resAllDTO, cardDTO, memberDTO, roomDTO);
		ra.addFlashAttribute("msg", resNo + " 예약이 완료되었습니다.");
		return "redirect:/roomReservation_completeProc?reservationNo=" + resNo;
	}
	
	@RequestMapping(value="roomReservation_completeProc")
	public String roomReservation_completeProc(String reservationNo, Model model) {
		System.out.println("roomReservation_completeProc");
		model.addAttribute("resDTO",memRoomSvc.getReservationDTO(reservationNo));
		
		return "forward:/index?formpath=roomReservation_complete";
	}

}
