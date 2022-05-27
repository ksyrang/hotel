package com.care.hotel.resourceDTO;

public class roomDTO {
	
	private String roomlId;
	private String hotelId;
	private String bedType;
	private int availablePerson;
	
	public String getRoomlId() {
		return roomlId;
	}
	public void setRoomlId(String roomlId) {
		this.roomlId = roomlId;
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
	

}
