package com.care.hotel.member.service;

import com.care.hotel.member.DTO.memberCardDTO;

public interface IMemberCardSvc {
	public memberCardDTO cardInfo(String memberId);
}
