package com.care.hotel.resourceDTO;

public class roomDTO {
	
	private String roomId;
	private String hotelId;
	private String roomType;
	private String bedType;
	private int availablePerson;
	
	public String getRoomId() {
		return roomId;
	}
	public void setRoomId(String roomId) {
		this.roomId = roomId;
	}
	public String getHotelId() {
		return hotelId;
	}
	public void setHotelId(String hotelId) {
		this.hotelId = hotelId;
	}
	public String getBedType() {
		return bedType;
	}
	public void setBedType(String bedType) {
		this.bedType = bedType;
	}
	public int getAvailablePerson() {
		return availablePerson;
	}
	public void setAvailablePerson(int availablePerson) {
		this.availablePerson = availablePerson;
	}
	public String getRoomType() {
		return roomType;
	}
	public void setRoomType(String roomType) {
		this.roomType = roomType;
	}
	

}
