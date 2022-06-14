package com.care.hotel.login.DAO;

import com.care.hotel.login.DTO.LoginDTO;

public interface IloginDAO {
	public LoginDTO loginInfo(String memberId);
	
	void loginInsert(LoginDTO login);
	
	
	
	
}
