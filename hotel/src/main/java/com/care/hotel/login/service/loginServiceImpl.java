package com.care.hotel.login.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.care.hotel.login.DAO.IloginDAO;
import com.care.hotel.login.DTO.LoginDTO;
import com.care.hotel.resourceDAO.IhotelDAO;
import com.care.hotel.resourceDTO.hotelDTO;

@Service
public class loginServiceImpl implements IloginService {
	
	@Autowired IloginDAO loginDAO;
	@Autowired IhotelDAO hotelDAO;
	@Autowired HttpSession session;
	
	public int loginProc(String userId, String userPw) {
		//DB에서 데이터 가져오기
		//1~3 맴버용 , 4~6 매니저용,  7,9 관리자, 0,9 공통
		LoginDTO DBmem =  loginDAO.loginInfo(userId);
		if(DBmem != null && DBmem.getMemberPw().equals(DBmem.getMemberPw())) {
			session.setAttribute("userId", userId);
			return 2;//맴버 로그인
		}
		if(DBmem != null && !DBmem.getMemberPw().equals(DBmem.getMemberPw())) return 9;//맴버 비밀번호 오류
		hotelDTO DBhotel = hotelDAO.hotelInfo(userId);
		if(DBhotel != null && DBhotel.getHotelPw().equals(DBhotel.getHotelPw())) {
			session.setAttribute("userId", userId);
			return 4;//매니저 로그인
		}
		if(DBhotel != null && !DBhotel.getHotelPw().equals(DBhotel.getHotelPw())) return 9;//매니저 비밀번호 오류
		//admin 시
		String adminId ="admin";//향수 수정 필요
		String adminPw ="admin";
		if(adminId.equals(userId)&&adminPw.equals(userPw)) {
			session.setAttribute("userId", adminId);
			return 7;
		}if(adminId.equals(userId)&&!adminPw.equals(userPw)) {
			return 9;
		}
		
		return 0;//없는 Id
	}

}
