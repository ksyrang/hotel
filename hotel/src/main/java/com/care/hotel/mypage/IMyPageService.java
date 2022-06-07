package com.care.hotel.mypage;

public interface IMyPageService {
	//회원 예약 내역 정보
	public void memListResv(int currentPage, String searchDateType, String startDate, String endDate, String memberId);
	public int memResvCncl(String memberId, String memberPw, String reservationNo, String cancelDate);
}
