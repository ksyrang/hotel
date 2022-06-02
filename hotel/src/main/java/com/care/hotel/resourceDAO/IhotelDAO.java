package com.care.hotel.resourceDAO;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import com.care.hotel.resourceDTO.hotelDTO;
import com.care.hotel.resourceDTO.roomDTO;

public interface IhotelDAO {
	
	ArrayList<hotelDTO> hotelList(@Param("b")int begin, @Param("e")int end, 
			@Param("sel")String select, @Param("search")String search);
	
	int hotelCount(@Param("sel")String select,  @Param("search")String search);
	int roomCount();
	public hotelDTO hotelInfo(String hotelId);
	ArrayList<roomDTO> roomList(int begin, int end, String select, String search);

	void updateHotel(hotelDTO hotelInfo);
}
