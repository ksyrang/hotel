package com.care.hotel.payment.service;

public interface IPaymentService {
	// 결제번호 생성
	public String createPaymentNo();
	// 결제일 생성
	public String getPaymentDate();
}
