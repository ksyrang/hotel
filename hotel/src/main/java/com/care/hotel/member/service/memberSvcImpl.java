package com.care.hotel.member.service;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import com.care.hotel.member.DAO.memberDAO;
import com.care.hotel.member.DTO.AllMemberDTO;
import com.care.hotel.member.DTO.memberDTO;
import com.care.hotel.member.DTO.memberExDTO;
import com.care.hotel.login.DAO.IloginDAO;
import com.care.hotel.login.DTO.LoginDTO;

@Service
public class memberSvcImpl implements ImemberSvc{
	@Autowired memberDAO memberDAO;
	@Autowired IloginDAO loginDAO;
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
	public String isExistId(String memberId) {
		if (memberId == null)
			return "아이디를 입력 후 다시 시도하세요.";
		int count = memberDAO.isExistId(memberId);
		if (count == 1)
			return "중복 아이디 입니다.";

		return "사용 가능한 아이디입니다.";
	}
	
	@Override
	public String memberJoin(memberDTO member, memberExDTO memberExDto, LoginDTO login) {
		String id = member.getMemberId();
		String nameKR = member.getMemberNameKR();
		String nameENG = member.getMemberNameENG();
		String birth = member.getMemberBirth();
		String mobile = member.getMemberMobile();
		String email = member.getMemberEmail();
		String pw = member.getMemberPw();
		String gender = member.getMemberGender();
		
		
		
		if(!(id.isEmpty() || nameKR.isEmpty() || nameENG.isEmpty() || birth.isEmpty() || mobile.isEmpty() || email.isEmpty() || pw.isEmpty() || gender.isEmpty())) {
			if (memberDAO.isExistId(login.getMemberId()) > 0)
				return "중복 아이디 입니다.";
			memberDAO.memberInsert(member);
		}else {
			return "필수 입력 정보 입니다.";
		}
		
		if (!("".equals(memberExDto.getMemberZipcode()) || "".equals(memberExDto.getMemberAddr1()) || "".equals(memberExDto.getMemberAddr2()) || "".equals(memberExDto.getMemberHomePhone()))) {
			memberDAO.memberExInsert(memberExDto);
		
		}else {
			return "입력 정보가 없습니다";
		}
		if(!(id.isEmpty() || pw.isEmpty())) {
			loginDAO.loginInsert(login);
			
		}else {
			return "필수 입력 정보 입니다.";
		}
		return "가입 완료";
		
	}
			
		
	@Override
	public String findID(String memberNameENG, String memberEmail){
	
		String result = "다시 입력해주세요.";

		// 이름, 이메일이 빈 값이 아닐 때
		if(memberNameENG != null || memberEmail != null) {
		   memberDTO member = memberDAO.memberIdFind(memberNameENG, memberEmail);
		 //  System.out.println("member.getMemberId() : " + member.getMemberId());
		   System.out.println("memberNameENG : " + memberNameENG);
		   session.setAttribute("findMemberNameENG", memberNameENG);
		   // 해당 값인 memberDTO가 있을 때
		   if(member != null) {
		      result="가입된 아이디는 [ " + member.getMemberId() + "]입니다.";
		      session.setAttribute("findMemberID", member.getMemberId());
		   }else {
			   result="다시 입력해주세요.";
		   }
		}else {
		// 이름, 이메일이 빈 값일 때
		   result="다시 입력해주세요.";
		}
		
		return result;
		
		
	}

	@Override
	public String findPW(String memberId, String memberNameENG, String memberEmail) {
		String result = "다시 입력해주세요.";

		// 이름, 이메일이 빈 값이 아닐 때
		if(memberId != null || memberNameENG != null || memberEmail != null) {
		   memberDTO member = memberDAO.memberPwFind(memberId, memberNameENG, memberEmail);
		//   System.out.println("member.getMemberPw() : " + member.getMemberPw());
		   session.setAttribute("findMemberNameENG", memberNameENG);
		   // 해당 값인 memberDTO가 있을 때
		   if(member != null) {
		      result="회원의 비밀번호는 [ " + member.getMemberPw() + "]입니다.";
		      session.setAttribute("findMemberPw", member.getMemberPw());
		   }else {
			   result="다시 입력해주세요.";
		   }
		}else {
		// 이름, 이메일이 빈 값일 때
		   result="다시 입력해주세요.";
		}
		
		return result;
	}


		
		

}
	