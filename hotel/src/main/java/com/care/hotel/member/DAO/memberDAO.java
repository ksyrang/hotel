package com.care.hotel.member.DAO;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import com.care.hotel.member.DTO.memberDTO;

public interface memberDAO {
	ArrayList<memberDTO> memberList(@Param("b")int begin, @Param("e")int end, 
			@Param("sel")String select, @Param("search")String search);
	
	int memberCount();
}
