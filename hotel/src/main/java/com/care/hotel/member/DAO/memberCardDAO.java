package com.care.hotel.member.DAO;

import org.springframework.stereotype.Repository;

import com.care.hotel.member.DTO.memberCardDTO;

@Repository
public interface memberCardDAO {
	
	void cardInsert(memberCardDTO cardDTO);

	memberCardDTO cardInfo(String memberId);

	void cardUpdate(memberCardDTO cardDTO);

	Integer getMaxCardId();

}
