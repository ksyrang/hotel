package com.care.hotel.resourceDAO;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import com.care.hotel.resourceDTO.hotelDTO;
import com.care.hotel.resourceDTO.roomDTO;

public interface IhotelDAO {
	
	public ArrayList<hotelDTO> hotelList(@Param("b")int begin, @Param("e")int end, 
			@Param("sel")String select, @Param("search")String search);
	
	public int hotelCount(@Param("sel")String select,  @Param("search")String search);
	public ArrayList<roomDTO> roomList(@Param("b")int begin, @Param("e")int end, 
			@Param("sel")String select, @Param("search")String search);
	
	public int roomCount(@Param("sel")String select,  @Param("search")String search);
	public hotelDTO hotelInfo(String hotelId);

	public void updateHotel(hotelDTO hotelInfo);
	
	/* 모든 호텔 정보 불러오기 */
	public ArrayList<hotelDTO> allHotelInfo();

	public void hotelDelete(String hotelId);
}
