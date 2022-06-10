package com.care.hotel.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.care.hotel.member.DAO.memberCardDAO;
import com.care.hotel.member.DTO.memberCardDTO;

@Service
public class MemberCardImpl implements IMemberCardSvc{
	@Autowired memberCardDAO cardDAO;

	@Override
	public memberCardDTO cardInfo(String memberId) {
		memberCardDTO cardDTO = cardDAO.cardInfo(memberId);
		return cardDTO;
	}

}
