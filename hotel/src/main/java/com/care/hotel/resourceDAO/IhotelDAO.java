package com.care.hotel.resourceDAO;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import com.care.hotel.resourceDTO.hotelDTO;

public interface IhotelDAO {
	
	ArrayList<hotelDTO> hotelList(@Param("b")int begin, @Param("e")int end, 
			@Param("sel")String select, @Param("search")String search);
	
	int hotelCount();
}
