package com.care.hotel.memRoom.service;

public interface ImemRoomSvc {

	/* member 쪽 roomList(예약페이지) */
	public void memRoomList(int currentPage, String hotelSelect, String startDate, String endDate, String availablePerson);
	   
}
