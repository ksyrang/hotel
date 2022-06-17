package com.care.hotel.resourceDAO;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.care.hotel.resourceDTO.roomDTO;
import com.care.hotel.resourceDTO.roommodiDTO;

@Repository
public interface IroomDAO {
	public ArrayList<roomDTO> roomList(@Param("b")int begin, @Param("e")int end, 
			@Param("sel")String select, @Param("search")String search);
	
	public int roomCount(@Param("sel")String select,  @Param("search")String search);

	public roomDTO roomInfo(String roomId);

	public void roomUpdate(roomDTO roomInfo);

	public int roomDelete(String sroomId);
	
	public void roomUpdateId(roommodiDTO roomInfo);

	public int checkRoom(String roomId);

	public void roomAdd(roomDTO roomInfo);
	
	// 멤버쪽 룸 리스트
	public ArrayList<roomDTO> memRoomList(@Param("b")int begin, @Param("e")int end, 
			@Param("hotelId")String hotelSelect, @Param("availablePerson")int availablePerson);
	
	public int memRoomCount(@Param("hotelId")String hotelSelect,  @Param("availablePerson")Integer availablePerson);

}
