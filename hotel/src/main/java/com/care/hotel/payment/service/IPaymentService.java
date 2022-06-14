package com.care.hotel.payment.service;

import com.care.hotel.member.DTO.memberCardDTO;
import com.care.hotel.payment.DTO.paymentDTO;

public interface IPaymentService {
	
	// 결제 목록
	public void paymentList(int currentPage, String hotelSelect, String startDate, String endDate, String typeSelect, String StatusSelect,String memberId);
	// 결제번호 생성
	public String createPaymentNo();
	// 결제일 생성
	public String getPaymentDate();
	// 결제 테이블에 데이터 insert, 예약 상태 변경, 카드 정보 저장
	public String insertPayment(paymentDTO paymentDTO, String reservationStatus, memberCardDTO cardDTO);
	// 결제 테이블 정보
	public paymentDTO paymentInfo(String paymentNo);
	// 결제 취소 update
	public String canclePayment(paymentDTO paymentDTO, String reservationStatus);
	
	
	
}
