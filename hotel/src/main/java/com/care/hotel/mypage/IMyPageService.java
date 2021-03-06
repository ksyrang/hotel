package com.care.hotel.mypage;

import com.care.hotel.member.DTO.AllMemberDTO;
import com.care.hotel.member.DTO.memberPwChngDTO;

public interface IMyPageService {
	//회원 예약 내역 정보
	public void memListResv(int currentPage, String searchDateType, String startDate, String endDate, String memberId);
	public int memResvCncl(String memberId, String memberPw, String reservationNo, String cancelDate);
	public int pwCnfm(String memberId, String memberPw);
	public int memSetUpdt(AllMemberDTO allMemberDto);
	public int memSetPwUpdt(memberPwChngDTO memberPwChngDto);
	public int memSetDropOut(String memberId);
}
