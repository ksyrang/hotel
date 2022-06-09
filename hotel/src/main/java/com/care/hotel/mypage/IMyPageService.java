package com.care.hotel.mypage;

import com.care.hotel.member.DTO.memberDTO;
import com.care.hotel.member.DTO.memberPwChngDTO;

public interface IMyPageService {
	//회원 예약 내역 정보
	public void memListResv(int currentPage, String searchDateType, String startDate, String endDate, String memberId);
	public int memResvCncl(String memberId, String memberPw, String reservationNo, String cancelDate);
	public int pwCnfm(String memberId, String memberPw);
	public int memSetUpdt(memberDTO memberDto);
	public int memSetPwUpdt(memberPwChngDTO memberPwChngDto);
}
