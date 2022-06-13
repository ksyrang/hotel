package com.care.hotel.member.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.annotations.Param;


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
	public memberDTO isExistId(String memberId);
	
	// 멤버 회원 가입 
	public String memberJoin(memberDTO member, memberExDTO memberExDTO);
	
	// 아이디 찾기
	public String findID(String memberNameENG, String memberEmail);
	
	// 비밀번호 찾기
	public String findPW(String memberId, String memberNameENG, String memberEmail);
}
