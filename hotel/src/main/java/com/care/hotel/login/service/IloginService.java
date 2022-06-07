package com.care.hotel.login.service;

import com.care.hotel.login.DTO.LoginDTO;

public interface IloginService {
	public int loginProc(String userId, String userPw);
	public void logoutProc();


}
