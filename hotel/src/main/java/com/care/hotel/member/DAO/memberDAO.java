package com.care.hotel.member.DAO;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;
import org.springframework.web.bind.annotation.RequestParam;

import com.care.hotel.member.DTO.memberDTO;
import com.care.hotel.member.DTO.memberExDTO;

public interface memberDAO {
	ArrayList<memberDTO> memberList(@Param("b")int begin, @Param("e")int end, 
			@Param("sel")String select, @Param("search")String search);
	
	int memberCount(@Param("sel")String select,  @Param("search")String search);
	
	void memberExInsert(memberExDTO memberExDto);
	
	void memberInsert(memberDTO member);
	
	memberDTO memberInfo(String memberId);
	
	memberExDTO memberExInfo(String memberId);
	
	int memberUpdate(memberDTO memberDto);
	int memberExUpdate(memberExDTO memberExDto);
	
	int memberDelete(String memberId);
	
	memberDTO isExistId(String memberId);
	
	int isExistEmail(String memberEmail);
	
	memberDTO memberIdFind(@Param("memberNameENG")String memberNameENG, @Param("memberEmail")String memberEmail);
	
	memberDTO memberPwFind(@Param("memberId")String memberId, @Param("memberNameENG")String memberNameENG, @Param("memberEmail")String memberEmail);
}
