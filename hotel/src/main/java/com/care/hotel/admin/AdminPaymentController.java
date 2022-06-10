package com.care.hotel.admin;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

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
			String cardNo1 = cardDTO.getCardNo().substring(0, 3);
			//String cardNo2 = cardDTO.getCardNo().substring(4, 3);
			//String cardNo3 = cardDTO.getCardNo().substring(0, 3);
			//String cardNo4 = cardDTO.getCardNo().substring(0, 3);
			
		}
		return "forward:/admin_index?formpath=payPage";
	}
}
