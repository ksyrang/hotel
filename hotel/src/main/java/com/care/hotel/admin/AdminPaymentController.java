package com.care.hotel.admin;

import java.util.HashMap;
import java.util.Map;

import javax.print.attribute.HashPrintJobAttributeSet;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.care.hotel.Reservation.DTO.reservationDTO;
import com.care.hotel.Reservation.service.IReservationSvc;
import com.care.hotel.member.DTO.memberCardDTO;
import com.care.hotel.member.DTO.memberDTO;
import com.care.hotel.member.service.IMemberCardSvc;
import com.care.hotel.member.service.ImemberSvc;
import com.care.hotel.payment.DTO.paymentDTO;
import com.care.hotel.payment.service.IPaymentService;
import com.care.hotel.resource.service.IhotelresourceSvc;

@Controller
public class AdminPaymentController {
	@Autowired IPaymentService paymentSvc;
	@Autowired IReservationSvc reservationSvc;
	@Autowired ImemberSvc memberSvc;
	@Autowired IMemberCardSvc cardSvc;
	@Autowired IhotelresourceSvc hotelresourceSvc;
	
	// 매출 목록
	@RequestMapping(value="paymentListProc", method = RequestMethod.GET)
	public String paymentListProc(Model model, 
			@RequestParam(value = "currentPage", required = false, defaultValue = "1") int currentPage,
			String hotelSelect, String startDate, String endDate, String typeSelect, String StatusSelect,String memberId) {
		model.addAttribute("allHotelInfo", hotelresourceSvc.allHotelInfo());
		paymentSvc.paymentList(currentPage, hotelSelect, startDate, endDate, typeSelect, StatusSelect, memberId);
		return "forward:/admin_index?formpath=paymentList";
	}
	
	@RequestMapping(value="payPageProc")
	public String payPageProc(String reservationNo, String reservationStatus, Model model) {
		// 결제번호, 결제일 구하기
		model.addAttribute("paymentNo", paymentSvc.createPaymentNo());
		model.addAttribute("paymentDate", paymentSvc.getPaymentDate());
		// 예약 테이블 불러오기
		reservationDTO resDTO = reservationSvc.reservationInfo(reservationNo);
		model.addAttribute("resDTO", resDTO);
		// 고객 테이블 불러오기
		memberDTO memberDTO = memberSvc.userInfo(resDTO.getMemberId());
		model.addAttribute("memberDTO", memberDTO);
		// 카드 정보 불러오기
		memberCardDTO cardDTO = cardSvc.cardInfo(resDTO.getMemberId());
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
		
		if(reservationStatus.equals("0")) {
			return "forward:/admin_index?formpath=payPage";
		} else {
			return "forward:/admin_index?formpath=checkoutPayPage";
		}
	}
	
	// 고객 카드 정보 넘기기
	@PostMapping(value = "getCreditInfo", produces = "application/json;charset=UTF-8")
	@ResponseBody
	public Map<String, String> getCreditInfo(@RequestBody(required = false)String memberId, Model model) {
		System.out.println("getCreditInfo : " + memberId);
		Map<String, String> cardInfo = new HashMap<>();
		
		if(memberId != null) {
			memberCardDTO cardDTO = cardSvc.cardInfo(memberId);
			if(cardDTO != null) {
				cardInfo.put("cardId", cardDTO.getCardId());
				cardInfo.put("cardCompany", cardDTO.getCardCompany());
				cardInfo.put("cardNo1", cardDTO.getCardNo().substring(0, 4));
				cardInfo.put("cardNo2", cardDTO.getCardNo().substring(4, 8));
				cardInfo.put("cardNo3", cardDTO.getCardNo().substring(8, 12));
				cardInfo.put("cardNo4", cardDTO.getCardNo().substring(12));
				cardInfo.put("validityMm", cardDTO.getValidityYyMm().substring(2,4));
				cardInfo.put("validityYy",  cardDTO.getValidityYyMm().substring(0,2));
				cardInfo.put("CSV", cardDTO.getCSV());
			}else {
				cardInfo.put("cardDTONull", "cardDTONull");
			}
		} else {
			cardInfo.put("cardDTONull", "cardDTONull");
		}
		return cardInfo;
	}
	 
	// 결제 버튼을 눌렀을 때
	@RequestMapping(value="PaymentProc", method=RequestMethod.POST)
	public String PaymentProc(paymentDTO paymentDTO, String reservationStatus, memberCardDTO cardDTO, RedirectAttributes ra) {
		String result = "";
		result = paymentSvc.insertPayment(paymentDTO, reservationStatus, cardDTO);
		ra.addFlashAttribute("msg", result);
		return "redirect:admin_reservationListProc";
		
	}
	
	// 결제 취소 버튼 눌렀을 때
	@RequestMapping(value="payCanclePageProc")
	public String payCanclePageProc(String paymentNo) {
		return "forward:/admin_index?formpath=payCanclePage";
	}
	
}
