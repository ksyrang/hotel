package com.care.hotel.Reservation.service;

import com.care.hotel.Reservation.DTO.reservationAllDTO;
import com.care.hotel.Reservation.DTO.reservationDTO;

public interface IReservationSvc {
	
	public void reservationList(int currentPage, String hotelSelect, String dateBase, 
			String startDate, String endDate,String reservationNoSearch);
	
	public reservationAllDTO reservationInfo(String reservationNo);
	
	public String reservationModify(reservationDTO resDTO);
}
