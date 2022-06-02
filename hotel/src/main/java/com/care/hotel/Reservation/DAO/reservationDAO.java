package com.care.hotel.Reservation.DAO;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.care.hotel.Reservation.DTO.reservationAllDTO;
import com.care.hotel.Reservation.DTO.reservationDTO;
import com.care.hotel.Reservation.DTO.reservationExDTO;

@Repository
public interface reservationDAO {
	ArrayList<reservationAllDTO> reservationList(@Param("b")int begin, @Param("e")int end, 
			@Param("sel")String searchDateType, @Param("startDt")String startDate, 
			@Param("endDt")String endDate, @Param("memberId")String memberId);
	
	int reservationCount(@Param("sel")String searchDateType,  @Param("startDt")String startDate, 
			@Param("endDt")String endDate, @Param("memberId")String memberId);
	
	reservationDTO reservationInfo(String memberId);
	
	reservationExDTO reservationExInfo(String memberId);
	
}
