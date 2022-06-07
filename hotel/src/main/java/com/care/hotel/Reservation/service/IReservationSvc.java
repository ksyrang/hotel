package com.care.hotel.Reservation.service;

public interface IReservationSvc {
	
	public void reservationList(int currentPage, String hotelSelect, String dateBase, 
			String startDate, String endDate,String reservationNoSearch);
}
