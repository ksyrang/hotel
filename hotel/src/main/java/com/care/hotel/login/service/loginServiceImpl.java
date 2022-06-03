package com.care.hotel.login.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.care.hotel.login.DAO.LoginDAO;
import com.care.hotel.login.DTO.LoginDTO;

@Service
public class loginServiceImpl implements IloginService {
	
	@Autowired LoginDAO loginDAO;
	
	public int loginProc(LoginDTO mem) {
		//DB에서 데이터 가져오기
		LoginDTO DBmem =  loginDAO.loginInfo(mem.getMemberId());
		//null 여부 확인
		if(DBmem == null) return 0;//없는 아이디(회원)
		//데이터 비교(암호화 시 암호화 비교 필요)
//		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
//		if(!encoder.matches(mem.getMemberPw(), DBmem.getMemberPw())) return 1;//비밀번호 불일치
		if(!mem.getMemberPw().equals(DBmem.getMemberPw())) return 1;//비밀번호 불일치
		
		return 2;//로그인 성공
	}

}
