package com.care.hotel.payment.service;

import com.care.hotel.payment.DTO.paymentDTO;

public interface IPaymentService {
	// 결제번호 생성
	public String createPaymentNo();
	// 결제일 생성
	public String getPaymentDate();
	// 결제 테이블에 데이터 insert, 예약 상태 변경(1)
	public String insertPayment(paymentDTO paymentDTO);
}
