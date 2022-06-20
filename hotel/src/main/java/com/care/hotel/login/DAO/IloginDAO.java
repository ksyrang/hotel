package com.care.hotel.login.DAO;

import com.care.hotel.login.DTO.LoginDTO;

public interface IloginDAO {
	public LoginDTO loginInfo(String memberId);
	
	void loginInsert(LoginDTO login);
	
	int loginUpdate(LoginDTO login);
	
	int loginDelete(String memberId);
	
}
