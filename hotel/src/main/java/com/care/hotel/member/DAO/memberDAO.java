package com.care.hotel.member.DAO;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import com.care.hotel.member.DTO.memberDTO;
import com.care.hotel.member.DTO.memberExDTO;

public interface memberDAO {
	ArrayList<memberDTO> memberList(@Param("b")int begin, @Param("e")int end, 
			@Param("sel")String select, @Param("search")String search);
	
	int memberCount(@Param("sel")String select,  @Param("search")String search);
	
	int memberExInsert(memberExDTO memberExDto);
	
	int memberInsert(memberDTO member);
	
	memberDTO memberInfo(String memberId);
	
	memberExDTO memberExInfo(String memberId);
	
	int memberUpdate(memberDTO memberDto);
	int memberExUpdate(memberExDTO memberExDto);
	
	int memberDelete(String memeberId);
	
	int isExistId(String id);
	
	int isExistEmail(String email);
}
