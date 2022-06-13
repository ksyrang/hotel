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
import com.care.hotel.payment.DAO.paymentDAO;
import com.care.hotel.payment.DTO.paymentDTO;
import com.care.hotel.resourceDAO.IhotelDAO;
import com.care.hotel.resourceDTO.hotelDTO;

@Service
public class PaymentServiceImpl implements IPaymentService{
	@Autowired paymentDAO paymentDAO;
	@Autowired AD_reservationDAO resDAO;
	@Autowired IhotelDAO hotelDAO;
	@Autowired HttpSession session;
	
	@Override
	public void paymentList(int currentPage, String hotelSelect, String startDate, String endDate, String typeSelect, String StatusSelect, String memberId) {
		int pageBlock = 5; // 한 화면에 보여줄 데이터 수
		int end = currentPage * pageBlock; // 데이터의 끝 번호
		int begin = end+1 - pageBlock; // 데이터의 시작 번호
		
		String userId = (String)session.getAttribute("userId");
		ArrayList<hotelDTO> hotelList = hotelDAO.allHotelInfo();
		
		ArrayList<paymentDTO> paymentList = new ArrayList<paymentDTO>();
		int totalCount = 0;
		
		for(hotelDTO hotelDTO : hotelList) {
			if(hotelDTO.getHotelId().equals(userId)) {
				// session이 매니저일 때
				hotelSelect = hotelDTO.getHotelId();
				totalCount = paymentDAO.paymentCount(hotelSelect, startDate, endDate, typeSelect, StatusSelect, memberId); // 총 데이터의 수 
				paymentList = paymentDAO.paymentList(begin, end, hotelSelect, startDate, endDate, typeSelect, StatusSelect, memberId);
			} else {
				// session이 관리자일 때 
				totalCount = paymentDAO.paymentCount(hotelSelect, startDate, endDate, typeSelect, StatusSelect, memberId); // 총 데이터의 수 
				paymentList = paymentDAO.paymentList(begin, end, hotelSelect, startDate, endDate, typeSelect, StatusSelect, memberId);
			}
		}
		// paymentDate 포맷 변경
		for(int i = 0; i < paymentList.size(); i++) {
			paymentDTO paymentDTO = paymentList.get(i);
			String paymentDate = paymentList.get(i).getPaymentDate().substring(0, 10);
			paymentDTO.setPaymentDate(paymentDate);
			
			paymentList.set(i, paymentDTO);
		}
		
		session.setAttribute("paymentCount", totalCount);
		session.setAttribute("paymentList", paymentList);
		String url = "/hotel/paymentList.jsp?currentPage=";
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
	public String insertPayment(paymentDTO paymentDTO, String reservationStatus) {
		if(paymentDTO.getPaymentAmount() == null || paymentDTO.getPaymentAmount() == "") {
			paymentDTO.setPaymentAmount("0");
		}
		reservationDTO resDTO = resDAO.reservationInfo(paymentDTO.getReservationNo());
		// 결제상태 -> 완료
		paymentDTO.setPaymentStatus("0");
		paymentDAO.insertPayment(paymentDTO);
		
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
