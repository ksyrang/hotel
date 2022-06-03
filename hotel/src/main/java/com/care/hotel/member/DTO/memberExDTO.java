package com.care.hotel.member.DTO;

public class memberExDTO extends memberDTO{
	
	private String memberZipcode;
	private String memberAddr1;
	private String memberAddr2;
	private String memberHomePhone;
	
	public String getMemberZipcode() {
		return memberZipcode;
	}
	public void setMemberZipcode(String memberZipcode) {
		this.memberZipcode = memberZipcode;
	}
	public String getMemberAddr1() {
		return memberAddr1;
	}
	public void setMemberAddr1(String memberAddr1) {
		this.memberAddr1 = memberAddr1;
	}
	public String getMemberAddr2() {
		return memberAddr2;
	}
	public void setMemberAddr2(String memberAddr2) {
		this.memberAddr2 = memberAddr2;
	}
	public String getMemberHomePhone() {
		return memberHomePhone;
	}
	public void setMemberHomePhone(String memberHomePhone) {
		this.memberHomePhone = memberHomePhone;
	}
	
}
