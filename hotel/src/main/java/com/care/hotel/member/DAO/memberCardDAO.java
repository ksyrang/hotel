package com.care.hotel.member.DAO;

import org.springframework.stereotype.Repository;

import com.care.hotel.member.DTO.memberCardDTO;

@Repository
public interface memberCardDAO {

	memberCardDTO cardInfo(String memberId);

}
