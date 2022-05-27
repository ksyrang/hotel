package com.care.hotel.Reservation.DTO;

public class reservationDTO {
	
	private String reservationNo;
	private String memberId;
	private String reservationDate;
	private String checkinData;
	private String checkoutData;
	private int guestNumber;
	private String hotelId;
	private String roomId;
	private int baseAmount;
	private String breakfastCheck;
	private String reservationStatus;
	private String cancelDate;

	public String getReservationNo() {
		return reservationNo;
	}
	public void setReservationNo(String reservationNo) {
		this.reservationNo = reservationNo;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getReservationDate() {
		return reservationDate;
	}
	public void setReservationDate(String reservationDate) {
		this.reservationDate = reservationDate;
	}
	public String getCheckinData() {
		return checkinData;
	}
	public void setCheckinData(String checkinData) {
		this.checkinData = checkinData;
	}
	public String getCheckoutData() {
		return checkoutData;
	}
	public void setCheckoutData(String checkoutData) {
		this.checkoutData = checkoutData;
	}
	public int getGuestNumber() {
		return guestNumber;
	}
	public void setGuestNumber(int guestNumber) {
		this.guestNumber = guestNumber;
	}
	public String getHotelId() {
		return hotelId;
	}
	public void setHotelId(String hotelId) {
		this.hotelId = hotelId;
	}
	public String getRoomId() {
		return roomId;
	}
	public void setRoomId(String roomId) {
		this.roomId = roomId;
	}
	public int getBaseAmount() {
		return baseAmount;
	}
	public void setBaseAmount(int baseAmount) {
		this.baseAmount = baseAmount;
	}
	public String getBreakfastCheck() {
		return breakfastCheck;
	}
	public void setBreakfastCheck(String breakfastCheck) {
		this.breakfastCheck = breakfastCheck;
	}
	public String getReservationStatus() {
		return reservationStatus;
	}
	public void setReservationStatus(String reservationStatus) {
		this.reservationStatus = reservationStatus;
	}
	public String getCancelDate() {
		return cancelDate;
	}
	public void setCancelDate(String cancelDate) {
		this.cancelDate = cancelDate;
	}
}
