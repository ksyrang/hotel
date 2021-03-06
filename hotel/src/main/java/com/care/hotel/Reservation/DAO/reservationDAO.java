package com.care.hotel.Reservation.DAO;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.care.hotel.Reservation.DTO.reservationHotelDTO;

@Repository
public interface reservationDAO {
	ArrayList<reservationHotelDTO> reservationList(@Param("b")int begin, @Param("e")int end, 
			@Param("select")String select, @Param("startDt")String startDt, 
			@Param("endDt")String endDt, @Param("memberId")String memberId);
	
	int reservationCount(@Param("select")String select,  @Param("startDt")String startDt, 
			@Param("endDt")String endDt, @Param("memberId")String memberId);
	
	void reservationCancel(@Param("resvNo")String reservationNo, @Param("cancelDt")String cancelDate);
	
	
}
