package com.care.hotel.member.service;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.care.hotel.member.DAO.memberDAO;
import com.care.hotel.member.DTO.AllMemberDTO;
import com.care.hotel.member.DTO.memberDTO;
import com.care.hotel.member.DTO.memberExDTO;
import com.care.hotel.login.DTO.LoginDTO;

@Service
public class memberSvcImpl implements ImemberSvc{
	@Autowired memberDAO memberDAO;
	@Autowired private HttpSession session;
	
	
	@Override
	public AllMemberDTO userInfo(String memberId) {
		memberDTO member = memberDAO.memberInfo(memberId);
		memberExDTO memberEx = memberDAO.memberExInfo(memberId);
		
		AllMemberDTO user = new AllMemberDTO();
		if(member != null) {
			user.setMemberId(member.getMemberId());
			user.setMemberNameKR(member.getMemberNameKR());
			user.setMemberNameENG(member.getMemberNameENG());
			user.setMemberBirth(member.getMemberBirth());
			user.setMemberMobile(member.getMemberMobile());
			user.setMemberEmail(member.getMemberEmail());
			user.setMemberPw(member.getMemberPw());
			user.setMemberGender(member.getMemberGender());
		}
		if(memberEx != null) {
			user.setMemberZipcode(memberEx.getMemberZipcode());
			user.setMemberAddr1(memberEx.getMemberAddr1());
			user.setMemberAddr2(memberEx.getMemberAddr2());
			user.setMemberHomePhone(memberEx.getMemberHomePhone());
		}
		
		return user;
	}

	@Override
	public String memberModify(AllMemberDTO allMemberDto) {
		memberDTO memberDto = memberDAO.memberInfo(allMemberDto.getMemberId());
		// 비밀번호 변경시, 새 비밀번호 암호화
		if(!(memberDto.getMemberPw().equals(allMemberDto.getMemberPw()))) {
			BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
			String securePw = encoder.encode(allMemberDto.getMemberPw());
			allMemberDto.setMemberPw(securePw);
		}
		memberDAO.memberUpdate(allMemberDto);
		// int memberExUpdateResult = memberDAO.memberExUpdate(allMemberDto);
		
		memberExDTO memberExDto = memberDAO.memberExInfo(allMemberDto.getMemberId());
		if(memberExDto != null) {
			memberExDto.setMemberId(allMemberDto.getMemberId());
			memberExDto.setMemberZipcode(allMemberDto.getMemberZipcode());
			memberExDto.setMemberAddr1(allMemberDto.getMemberAddr1());
			memberExDto.setMemberAddr2(allMemberDto.getMemberAddr2());
			memberExDto.setMemberHomePhone(allMemberDto.getMemberHomePhone());
			
			memberDAO.memberExUpdate(memberExDto);
		} else {
			memberExDTO insertMemberExDto = new memberExDTO();
			insertMemberExDto.setMemberId(allMemberDto.getMemberId());
			insertMemberExDto.setMemberZipcode(allMemberDto.getMemberZipcode());
			insertMemberExDto.setMemberAddr1(allMemberDto.getMemberAddr1());
			insertMemberExDto.setMemberAddr2(allMemberDto.getMemberAddr2());
			insertMemberExDto.setMemberHomePhone(allMemberDto.getMemberHomePhone());
			memberDAO.memberExInsert(insertMemberExDto);
		}
		
//		if(memberUpdateResult != 1 || memberExUpdateResult != 1) {
//			return "회원정보수정 실패";
//		} 
		return "회원정보수정 완료";
	}

	@Override
	public String adminCheck(String adminId, String adminPw, String memberId) {
		String result = "[" + memberId + "]회원을 삭제했습니다.";
		
		if(adminId == null || adminId  == "" || adminPw == null || adminPw == "") { 
			result = "아이디 혹은 비밀번호를 확인해주세요.";
		} else if(!(adminId.equals("admin"))) {
			result = "아이디 혹은 비밀번호를 확인해주세요.";
		} else if(!(adminPw.equals("1234"))) {
			result = "아이디 혹은 비밀번호를 확인해주세요.";
		} else {
			memberDAO.memberDelete(memberId);
			result = "[" + memberId + "]회원을 삭제했습니다.";
		}
		
		return result;
	}
	
	@Override
	public memberDTO isExistId(String memberId) {
		if (memberId == null)
			System.out.println("아이디를 입력 후 다시 시도하세요.");
			
		memberDTO member = memberDAO.isExistId(memberId);
		if (member != null)
			System.out.println("중복 아이디 입니다.");
		System.out.println("사용 가능한 아이디입니다.");
		return member;
	}
	
	@Override
	public String memberJoin(memberDTO member, memberExDTO memberExDto) {
		String id = member.getMemberId();
		String nameKR = member.getMemberNameKR();
		String nameENG = member.getMemberNameENG();
		String birth = member.getMemberBirth();
		String mobile = member.getMemberMobile();
		String email = member.getMemberEmail();
		String pw = member.getMemberPw();
		String gender = member.getMemberGender();
		
		if(!(id.isEmpty() || nameKR.isEmpty() || nameENG.isEmpty() || birth.isEmpty() || mobile.isEmpty() || email.isEmpty() || pw.isEmpty() || gender.isEmpty())) {
			memberDAO.memberInsert(member);
		}	
		
		if (!("".equals(memberExDto.getMemberZipcode()) || "".equals(memberExDto.getMemberAddr1()) || "".equals(memberExDto.getMemberAddr2()) || "".equals(memberExDto.getMemberHomePhone()))) {
			memberDAO.memberExInsert(memberExDto);
		}
		return "가입 완료";
		
	}
			
		
	@Override
	public String findID(String memberId, String memberNameENG,String memberEmail) throws Exception{
		memberDTO member = new memberDTO();
		String id = null;
		String nameENG = member.getMemberNameENG();
		String email = member.getMemberEmail();
		
		String result = "가입된 아이디는 [" + id + "] 입니다.";
		
		if(nameENG.isEmpty() || email.isEmpty()) {
			result="다시 입력해주세요.";
		}else {
		 member = memberDAO.memberIdFind(id, nameENG, email);
			if(member == null) {
				result="다시 입력해주세요.";
			}else {
				id = member.getMemberId();
				result="가입된 아이디는 [" + id + "] 입니다.";
			}
		}
		return result;
	}


		
		

}
	