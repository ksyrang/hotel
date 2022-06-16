package com.care.hotel.memRoom.service;

import com.care.hotel.Reservation.DTO.reservationAllDTO;
import com.care.hotel.Reservation.DTO.reservationDTO;
import com.care.hotel.member.DTO.memberCardDTO;
import com.care.hotel.member.DTO.memberDTO;
import com.care.hotel.resourceDTO.roomDTO;

public interface ImemRoomSvc {

	/* member 쪽 roomList(예약페이지) */
	public void memRoomList(int currentPage, String hotelSelect, String startDate, String endDate, Integer availablePerson);

	public String getHotelName(String hotelId);
	
	public String insertReservation(reservationAllDTO resAllDTO, memberCardDTO cardDTO,
			memberDTO memberDTO, roomDTO roomDTO);

	public reservationDTO getReservationDTO(String reservationNo);
	   
}
