package com.care.hotel.member.service;

import com.care.hotel.login.DTO.LoginDTO;
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
	
	// 아이디 중복 확인
	public String isExistId(String memberId);
	
	// 멤버 회원 가입 
	public String memberJoin(memberDTO member, memberExDTO memberExDTO, LoginDTO login);
	
	// 아이디 찾기
	public String findID(String memberNameENG, String memberEmail);
	
	// 비밀번호 찾기
	public String findPW(String memberId, String memberNameENG, String memberEmail);
}
