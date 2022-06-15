package com.care.hotel.statistics.DTO;

public class chartRowDTO {
	private String valueName;
	private int Value;
	
	public chartRowDTO() {
		// TODO Auto-generated constructor stub
	}
	public chartRowDTO(String valueName, int Value) {
		this.valueName = valueName;
		this.Value = Value;
	}
	
	public String getValueName() {
		return valueName;
	}
	public void setValueName(String valueName) {
		this.valueName = valueName;
	}
	public int getValue() {
		return Value;
	}
	public void setValue(int value) {
		Value = value;
	}
	
}
