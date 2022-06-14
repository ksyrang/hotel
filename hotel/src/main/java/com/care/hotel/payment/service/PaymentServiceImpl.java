package com.care.hotel.payment.service;


import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.care.hotel.Reservation.DAO.AD_reservationDAO;
import com.care.hotel.Reservation.DTO.reservationDTO;
import com.care.hotel.common.PageService;
import com.care.hotel.member.DAO.memberCardDAO;
import com.care.hotel.member.DTO.memberCardDTO;
import com.care.hotel.payment.DAO.paymentDAO;
import com.care.hotel.payment.DTO.paymentDTO;
import com.care.hotel.resourceDAO.IhotelDAO;
import com.care.hotel.resourceDTO.hotelDTO;

@Service
public class PaymentServiceImpl implements IPaymentService{
	@Autowired paymentDAO paymentDAO;
	@Autowired AD_reservationDAO resDAO;
	@Autowired IhotelDAO hotelDAO;
	@Autowired memberCardDAO cardDAO;
	@Autowired HttpSession session;
	
	@Override
	public void paymentList(int currentPage, String hotelSelect, String startDate, String endDate, String typeSelect, String StatusSelect, String memberId) {
		int pageBlock = 5; // 한 화면에 보여줄 데이터 수
		int end = currentPage * pageBlock; // 데이터의 끝 번호
		int begin = end+1 - pageBlock; // 데이터의 시작 번호
		
		String userId = (String)session.getAttribute("userId");
		ArrayList<hotelDTO> hotelList = hotelDAO.allHotelInfo();
		
		ArrayList<paymentDTO> paymentList = new ArrayList<paymentDTO>();
		Integer totalCount = 0;
		Integer totalAmount = 0; //총매출금액
		Integer filterAmount = 0; // 필터링된 금액
		
		int check = 1; // session이 관리자면 1, 호텔이면 2
		
		for(hotelDTO hotelDTO : hotelList) {
			if(hotelDTO.getHotelId().equals(userId)) {
				// session이 매니저일 때
				hotelSelect = hotelDTO.getHotelId();
				check = 2;
			}
		}
		
		if(check == 2) {
			// session이 매니저일 때
			totalCount = paymentDAO.paymentCount(hotelSelect, startDate, endDate, typeSelect, StatusSelect, memberId); // 총 데이터의 수 
			paymentList = paymentDAO.paymentList(begin, end, hotelSelect, startDate, endDate, typeSelect, StatusSelect, memberId);
			totalAmount = paymentDAO.getHotelTotalAmount(hotelSelect);
			filterAmount = paymentDAO.getfilterAmount(hotelSelect, startDate, endDate, typeSelect, StatusSelect, memberId);
			
		} else {
			// session이 관리자일 때 
			totalCount = paymentDAO.paymentCount(hotelSelect, startDate, endDate, typeSelect, StatusSelect, memberId); // 총 데이터의 수 
			paymentList = paymentDAO.paymentList(begin, end, hotelSelect, startDate, endDate, typeSelect, StatusSelect, memberId);
			totalAmount = paymentDAO.getTotalAmount();
			filterAmount = paymentDAO.getfilterAmount(hotelSelect, startDate, endDate, typeSelect, StatusSelect, memberId);
		}
		
		// paymentDate 포맷 변경
		for(int i = 0; i < paymentList.size(); i++) {
			paymentDTO paymentDTO = paymentList.get(i);
			String paymentDate = paymentList.get(i).getPaymentDate().substring(0, 10);
			paymentDTO.setPaymentDate(paymentDate);
			
			paymentList.set(i, paymentDTO);
		}
		
		// totalAmount가 세션에 저장
		session.setAttribute("totalAmount", totalAmount);
		// filterAmount 세션에 저장
		session.setAttribute("filterAmount", filterAmount);
		
		session.setAttribute("paymentCount", totalCount);
		session.setAttribute("paymentList", paymentList);
		String url = "/hotel/paymentListProc?currentPage=";
		session.setAttribute("paymentPage", PageService.getNavi(currentPage, pageBlock, totalCount, url));
	}
	
	// paymentNo 구하기
	@Override
	public String createPaymentNo() {
		DateTimeFormatter format = DateTimeFormatter.ofPattern("yyyyMMddHHmmss");
		LocalDateTime now = LocalDateTime.now();
		String paymentNo = now.format(format);
		return paymentNo;
	}

	// paymentDate 구하기
	@Override
	public String getPaymentDate() {
		DateTimeFormatter format = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		LocalDateTime now = LocalDateTime.now();
		String paymentDate = now.format(format);
		return paymentDate;
	}

	// 결제 테이블에 데이터 insert, 예약 상태 변경
	@Override
	public String insertPayment(paymentDTO paymentDTO, String reservationStatus, memberCardDTO cardDTO) {
		if(paymentDTO.getPaymentAmount() == null || paymentDTO.getPaymentAmount() == "") {
			paymentDTO.setPaymentAmount("0");
		}
		
		// 신용/체크 카드 일 시
		if(paymentDTO.getPaymentType().equals("1")) {
			memberCardDTO oldCardDTO = cardDAO.cardInfo(paymentDTO.getMemberId());
			// 카드 정보 자동저장
			if(cardDTO != null) {
				// 고객의 카드 정보가 db에 없을 경우
				if(oldCardDTO == null) {
					Integer cardId = cardDAO.getMaxCardId() + 1;
					String strCardId = Integer.toString(cardId);
					cardDTO.setCardId(strCardId);
					cardDAO.cardInsert(cardDTO);
					System.out.println("credit-card insert 완료 : " + cardDTO.getCardId());
				} else {
				// 고객의 카드 정보가 db에 있을 경우
					cardDTO.setCardId(oldCardDTO.getCardId());
					cardDAO.cardUpdate(cardDTO);
					System.out.println("credit-card update 완료 : " + cardDTO.getCardId());
				}
			}
		}
		// 결제상태 -> 완료
		paymentDTO.setPaymentStatus("0");
		paymentDAO.insertPayment(paymentDTO);
		
		reservationDTO resDTO = resDAO.reservationInfo(paymentDTO.getReservationNo());
		// 예약 상태 : 예약 -> 체크인
		if(reservationStatus.equals("0")) {
			// 예약 상태 : 0 -> 1
			resDTO.setReservationStatus("1");
			resDAO.resStatusCheckin(resDTO);
			return "예약번호 " + paymentDTO.getReservationNo() + " 체크인이 완료되었습니다.";
		} else {
		// 예약 상태 : 체크인 -> 체크아웃
			// 예약상태 1 -> 2
			resDTO.setReservationStatus("2");
			resDAO.resStatusCheckin(resDTO);
			return "예약번호 " + paymentDTO.getReservationNo() + " 체크아웃이 완료되었습니다.";
		}
		
	}

	
	
}
