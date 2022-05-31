package com.care.hotel.resource.service;

public interface IhotelresourceSvc {
	
	public void hotelList(int currentPage, String select, String search);
	public void roomList(int currentPage, String select, String search);
	public void memberList(int currentPage, String select, String search);
	public Object hotelInfo(String hotelId);
}
