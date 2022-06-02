package com.care.hotel.resource.service;

import com.care.hotel.resourceDTO.hotelDTO;

public interface IhotelresourceSvc {
	
	public void hotelList(int currentPage, String select, String search);
	public void roomList(int currentPage, String select, String search);
	public void memberList(int currentPage, String select, String search);
	public void hotelInfo(String hotelId);
	public int hotelModify(hotelDTO hotelInfo);
}
