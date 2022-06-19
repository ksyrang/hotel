package com.care.hotel.Reservation.DAO;

import java.util.ArrayList;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.care.hotel.Reservation.DTO.reservationDTO;
import com.care.hotel.Reservation.DTO.reservationExDTO;

@Repository
public interface AD_reservationDAO {
	

	int reservationCount(@Param("hotelId")String hotelSelect, @Param("dateBase")String dateBase, @Param("startDate")String startDate, @Param("endDate")String endDate
			, @Param("reservationStatus")String resStatus, @Param("reservationNo")String reservationNoSearch);

	ArrayList<reservationDTO> resList(@Param("b")int begin, @Param("e")int end, @Param("hotelId")String hotelSelect, @Param("dateBase")String dateBase, 
			@Param("startDate")String startDate, @Param("endDate")String endDate, @Param("reservationStatus")String resStatus, @Param("reservationNo")String reservationNoSearch);

	reservationDTO reservationInfo(String reservationNo);

	reservationExDTO reservationExInfo(String reservationNo);

	void reservationUpdate(reservationDTO resDTO);
	
	// 예약 상태- 취소로 변경
	void reservationDelete(reservationDTO resDTO);
	
	// 예약 상태 변경
	void resStatusCheckin(reservationDTO resDTO);

	// 예약 번호 중복 확인
	String isExistResNo(String resNo);

	void insertRes(reservationDTO resDTO);

	void insertResEx(reservationExDTO resExDTO);

	// 예약 날짜 체크
	//int periodCount(@Param("roomId")String roomId, @Param("checkinDate")String checkinDate);
	ArrayList<reservationDTO> periodCount(Map<String, Object> data);

}
