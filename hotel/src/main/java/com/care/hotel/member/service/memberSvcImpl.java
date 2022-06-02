package com.care.hotel.member.service;

import org.springframework.beans.factory.annotation.Autowired;
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
		System.out.println("memberSvc userInfo");
		
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
		int memberUpdateResult = memberDAO.memberUpdate(allMemberDto);
		
		memberExDTO memberExDto = new memberExDTO();
		memberExDto.setMemberId(allMemberDto.getMemberId());
		memberExDto.setZipcode(allMemberDto.getZipcode());
		memberExDto.setAddr1(allMemberDto.getAddr1());
		memberExDto.setAddr2(allMemberDto.getAddr2());
		memberExDto.setHomePhone(allMemberDto.getHomePhone());
		
		int memberExUpdateResult = memberDAO.memberExUpdate(memberExDto);
		
		if(memberUpdateResult != 1 || memberExUpdateResult != 1) {
			return "회원정보수정 실패";
		} 
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
		}
		
		return result;
	}

}
