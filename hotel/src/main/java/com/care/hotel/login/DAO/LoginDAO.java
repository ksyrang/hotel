package com.care.hotel.login.DAO;

import com.care.hotel.login.DTO.LoginDTO;

public interface LoginDAO {
	public LoginDTO loginInfo(String memberId);
}
