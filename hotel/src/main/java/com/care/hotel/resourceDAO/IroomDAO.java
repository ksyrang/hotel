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

	public void roomDelete(String sroomId);
	
	public void roomUpdateId(roommodiDTO roomInfo);

}
