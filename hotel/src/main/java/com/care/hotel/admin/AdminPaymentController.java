package com.care.hotel.admin;

import java.util.ArrayList;
import java.util.HashMap;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.care.hotel.Reservation.DTO.reservationDTO;
import com.care.hotel.Reservation.service.IReservationSvc;
import com.care.hotel.member.DAO.memberCardDAO;
import com.care.hotel.member.DTO.memberCardDTO;
import com.care.hotel.member.DTO.memberDTO;
import com.care.hotel.member.service.IMemberCardSvc;
import com.care.hotel.member.service.ImemberSvc;
import com.care.hotel.payment.service.IPaymentService;

@Controller
public class AdminPaymentController {
	@Autowired IPaymentService paymentSvc;
	@Autowired IReservationSvc reservationSvc;
	@Autowired ImemberSvc memberSvc;
	@Autowired IMemberCardSvc cardSvc;
	private static final Logger logger = LoggerFactory.getLogger(AdminResevationController.class);
	
	@RequestMapping(value="payPageProc")
	public String payPageProc(String reservationNo, Model model) {
		logger.info("payPageProc");
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
			model.addAttribute("cardDTO", cardDTO);
			// 카드 번호
			String cardNo1 = cardDTO.getCardNo().substring(0, 4);
			String cardNo2 = cardDTO.getCardNo().substring(4, 8);
			String cardNo3 = cardDTO.getCardNo().substring(8, 12);
			//String cardNo4 = cardDTO.getCardNo().substring(12, 15);
			
			// 유효기간
			String validityYy = cardDTO.getValidityYyMm().substring(0,2);
			String validityMm = cardDTO.getValidityYyMm().substring(2,4);
			
			//모델에 값 넣어주기
			model.addAttribute("cardCompany", cardDTO.getCardCompany());
			model.addAttribute("cardNo1", cardNo1);
			model.addAttribute("cardNo2", cardNo2);
			model.addAttribute("cardNo3", cardNo3);
			//model.addAttribute("cardNo4", cardNo4);
			model.addAttribute("validityMm", validityMm);
			model.addAttribute("validityYy", validityYy);
			model.addAttribute("csv", cardDTO.getCSV());
		}
		return "forward:/admin_index?formpath=payPage";
	}
	
	/*
	 * @PostMapping(value="getCreditInfo", produces =
	 * "application/json;charset=UTF-8") public HashMap<String, String>
	 * getCreditInfo(String memberId) { System.out.println("getCreditInfo" +
	 * memberId); memberCardDTO cardDTO = cardSvc.cardInfo(memberId);
	 * HashMap<String, String> cardInfo = new HashMap<String, String>();
	 * cardInfo.put("cardCompany", cardDTO.getCardCompany());
	 * cardInfo.put("cardNo1", cardDTO.getCardNo().substring(0,3));
	 * cardInfo.put("cardNo2", cardDTO.getCardNo().substring(4,7)); return cardInfo;
	 * }
	 */
	
	@RequestMapping(value="getCreditInfo", method = RequestMethod.POST)
	public String getCreditInfo(String memberId, Model model) {
		System.out.println("getCreditInfo : " + memberId);
		memberCardDTO cardDTO = cardSvc.cardInfo(memberId);
		String result ="";
		
		if(cardDTO != null) {
			String cardNo1 = cardDTO.getCardNo().substring(0, 4);
			String cardNo2 = cardDTO.getCardNo().substring(4, 8);
			String cardNo3 = cardDTO.getCardNo().substring(8, 12);
			
			model.addAttribute("cardNo1", cardNo1);
			model.addAttribute("cardNo2", cardNo2);
			model.addAttribute("cardNo3", cardNo3);
			
			result = "고객의 카드 정보를 입력했습니다.";
		}else {
			result = "카드 정보가 없는 고객입니다.";
		}
		System.out.println(result);
		return result;
	}
}
