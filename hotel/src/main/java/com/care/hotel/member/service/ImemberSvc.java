package com.care.hotel.member.service;

import com.care.hotel.member.DTO.AllMemberDTO;
import com.care.hotel.member.DTO.memberDTO;
import com.care.hotel.member.DTO.memberExDTO;

public interface ImemberSvc {
	// 관리자 회원 정보
	public AllMemberDTO userInfo(String memberId);
	
	// 관리자 회원 정보 수정
	public String memberModify(AllMemberDTO allMemberDto);
	
	// 관리자 비밀번호 체크
	public String adminCheck(String adminId, String adminPw, String memberId);
}
