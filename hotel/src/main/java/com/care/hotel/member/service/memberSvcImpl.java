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

}
