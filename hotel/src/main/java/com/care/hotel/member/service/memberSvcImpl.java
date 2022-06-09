package com.care.hotel.member.service;


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
		System.out.println("memberSvc_userInfo");
		
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
		
		System.out.println(user.getMemberId());
		
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
	public String isExistId(String id) {
		if (id == null)
			return "아이디를 입력 후 다시 시도하세요.";
		int count = memberDAO.isExistId(id);
		if (count == 1)
			return "중복 아이디 입니다.";

		return "사용 가능한 아이디입니다.";
	}
	
	@Override
	public String memberJoin(memberDTO member, memberExDTO memberEx) throws Exception {
		
//		if (memberDTO.getMemberId() == null || memberDTO.getMemberId().isEmpty())
//			return "아이디를 입력하세요.";
//
//		if (memberDTO.getMemberPw() == null || memberDTO.getMemberPw().isEmpty())
//			return "비밀번호를 입력하세요.";
//
//		if (memberDAO.isExistId(memberDTO.getMemberId()) > 0)
//			return "중복 아이디 입니다.";
//		
//		Boolean authStatus = (Boolean) session.getAttribute("authStatus");
//		if (authStatus == null || authStatus != true)
//			return "이메일 인증 후 가입 할 수 있습니다.";
//		
//
//		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
//		String securePw = encoder.encode(memberDTO.getMemberPw());
//		memberDTO.setMemberPw(securePw);

		memberDAO.memberInsert(member);
		memberDAO.memberExInsert(memberEx);

		if ("m".equals(member.getMemberGender()) || "w".equals(member.getMemberGender()) || "n".equals(member.getMemberGender()))
			memberDAO.memberInsert(member);

		if (!("".equals(memberEx.getMemberZipcode())))
			memberDAO.memberExInsert(memberEx);
		if (!("".equals(memberEx.getMemberHomePhone())))
			memberDAO.memberExInsert(memberEx);
		return "가입 완료";
	}

}
