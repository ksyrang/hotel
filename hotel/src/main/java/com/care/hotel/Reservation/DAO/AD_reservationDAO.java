package com.care.hotel.Reservation.DAO;

import org.apache.ibatis.annotations.Param;

public interface AD_reservationDAO {

	int reservationCount(@Param("hotelId")String hotelSelect, @Param("dateBase")String dateBase, @Param("startDate")String startDate, @Param("endDate")String endDate,
			@Param("resNo")String reservationNoSearch);

}
