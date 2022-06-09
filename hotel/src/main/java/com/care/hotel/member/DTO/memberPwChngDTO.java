package com.care.hotel.member.DTO;

public class memberPwChngDTO {
	
	private String memberId;
	private String memberPw;
	private String memberNewPw;
	private String memberNewPwCnfm;
	
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getMemberPw() {
		return memberPw;
	}
	public void setMemberPw(String memberPw) {
		this.memberPw = memberPw;
	}
	public String getMemberNewPw() {
		return memberNewPw;
	}
	public void setMemberNewPw(String memberNewPw) {
		this.memberNewPw = memberNewPw;
	}
	public String getMemberNewPwCnfm() {
		return memberNewPwCnfm;
	}
	public void setMemberNewPwCnfm(String memberNewPwCnfm) {
		this.memberNewPwCnfm = memberNewPwCnfm;
	}
	
}
