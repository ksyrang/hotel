package com.care.hotel.member.service;

import com.care.hotel.member.DTO.AllMemberDTO;

public interface ImemberSvc {
	//회원 정보
	public AllMemberDTO userInfo(String memberId);
}
