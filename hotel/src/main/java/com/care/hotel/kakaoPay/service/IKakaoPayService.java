package com.care.hotel.kakaoPay.service;

import com.care.hotel.payment.DTO.paymentDTO;

public interface IKakaoPayService {
	
	public String kakaoPay(paymentDTO paymentDTO);
}
