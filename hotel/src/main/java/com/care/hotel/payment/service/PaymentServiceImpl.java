package com.care.hotel.payment.service;


import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import org.springframework.stereotype.Service;

@Service
public class PaymentServiceImpl implements IPaymentService{

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
	
}
