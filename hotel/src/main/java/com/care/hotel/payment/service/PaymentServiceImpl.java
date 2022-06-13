package com.care.hotel.payment.service;


import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.care.hotel.Reservation.DAO.AD_reservationDAO;
import com.care.hotel.Reservation.DTO.reservationDTO;
import com.care.hotel.payment.DAO.paymentDAO;
import com.care.hotel.payment.DTO.paymentDTO;

@Service
public class PaymentServiceImpl implements IPaymentService{
	@Autowired paymentDAO paymentDAO;
	@Autowired AD_reservationDAO resDAO;

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

	// 결제 테이블에 데이터 insert, 예약 상태 변경(1)
	@Override
	public String insertPayment(paymentDTO paymentDTO) {
		paymentDTO.setPaymentStatus("0");
		paymentDAO.insertPayment(paymentDTO);
		resDAO.resStatusCheckin(paymentDTO.getReservationNo());
		return "예약번호 " + paymentDTO.getReservationNo() + " 결제가 완료되었습니다.";
	}
	
}
