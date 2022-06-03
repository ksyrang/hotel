package com.care.hotel.member.DTO;

public class memberCardDTO{
	
	private String cardId;
	private String cardNo;
	private String validityYyMm;//유효기간
	private String CSV;
	private String cardCompany;
	
	public String getCardNo() {
		return cardNo;
	}
	public void setCardNo(String cardNo) {
		this.cardNo = cardNo;
	}
	public String getValidityYyMm() {
		return validityYyMm;
	}
	public void setValidityYyMm(String validityYyMm) {
		this.validityYyMm = validityYyMm;
	}
	public String getCSV() {
		return CSV;
	}
	public void setCSV(String cSV) {
		CSV = cSV;
	}
	public String getCardCompany() {
		return cardCompany;
	}
	public void setCardCompany(String cardCompany) {
		this.cardCompany = cardCompany;
	}
	public String getCardId() {
		return cardId;
	}
	public void setCardId(String cardId) {
		this.cardId = cardId;
	}
}
