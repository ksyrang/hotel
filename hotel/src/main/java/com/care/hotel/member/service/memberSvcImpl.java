package com.care.hotel.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.care.hotel.member.DAO.memberDAO;
import com.care.hotel.member.DTO.AllMemberDTO;
import com.care.hotel.member.DTO.memberDTO;
import com.care.hotel.member.DTO.memberExDTO;

@Service
public class memberSvcImpl implements ImemberSvc{
	@Autowired memberDAO memberDAO;
	
	@Override
	public AllMemberDTO userInfo(String memberId) {
		System.out.println("memberSvc_userInfo");
		
		memberDTO member = memberDAO.memberInfo(memberId);
		memberExDTO memberEx = memberDAO.memberExInfo(memberId);
		
		AllMemberDTO user = new AllMemberDTO();
		if(member != null) {
			user.setMemberId(member.getMemberId());
			user.setNameKR(member.getNameKR());
			user.setNameENG(member.getNameENG());
			user.setBirthday(member.getBirthday());
			user.setMobile(member.getMobile());
			user.setEmail(member.getEmail());
			user.setPw(member.getPw());
			user.setGender(member.getGender());
		}
		if(memberEx != null) {
			user.setZipcode(memberEx.getZipcode());
			user.setAddr1(memberEx.getAddr1());
			user.setAddr2(memberEx.getAddr2());
			user.setHomePhone(memberEx.getHomePhone());
		}
		
		System.out.println(user.getMemberId());
		
		return user;
	}

	@Override
	public String memberModify(AllMemberDTO allMemberDto) {
		memberDTO memberDto = memberDAO.memberInfo(allMemberDto.getMemberId());
		// 비밀번호 변경시, 새 비밀번호 암호화
		if(!(memberDto.getPw().equals(allMemberDto.getPw()))) {
			BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
			String securePw = encoder.encode(allMemberDto.getPw());
			allMemberDto.setPw(securePw);
		}
		memberDAO.memberUpdate(allMemberDto);
		// int memberExUpdateResult = memberDAO.memberExUpdate(allMemberDto);
		
		memberExDTO memberExDto = memberDAO.memberExInfo(allMemberDto.getMemberId());
		if(memberExDto != null) {
			memberExDto.setMemberId(allMemberDto.getMemberId());
			memberExDto.setZipcode(allMemberDto.getZipcode());
			memberExDto.setAddr1(allMemberDto.getAddr1());
			memberExDto.setAddr2(allMemberDto.getAddr2());
			memberExDto.setHomePhone(allMemberDto.getHomePhone());
			
			memberDAO.memberExUpdate(memberExDto);
		} else {
			memberExDTO insertMemberExDto = new memberExDTO();
			insertMemberExDto.setMemberId(allMemberDto.getMemberId());
			insertMemberExDto.setZipcode(allMemberDto.getZipcode());
			insertMemberExDto.setAddr1(allMemberDto.getAddr1());
			insertMemberExDto.setAddr2(allMemberDto.getAddr2());
			insertMemberExDto.setHomePhone(allMemberDto.getHomePhone());
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

}
