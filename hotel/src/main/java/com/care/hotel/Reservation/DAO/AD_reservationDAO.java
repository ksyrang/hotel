package com.care.hotel.Reservation.DAO;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import com.care.hotel.Reservation.DTO.reservationDTO;

public interface AD_reservationDAO {

	int reservationCount(@Param("hotelId")String hotelSelect, @Param("dateBase")String dateBase, @Param("startDate")String startDate, @Param("endDate")String endDate,
			@Param("reservationNo")String reservationNoSearch);

	ArrayList<reservationDTO> resList(@Param("b")int begin, @Param("e")int end, @Param("hotelId")String hotelSelect, @Param("dateBase")String dateBase, 
			@Param("startDate")String startDate, @Param("endDate")String endDate, @Param("reservationNo")String reservationNoSearch);

}
