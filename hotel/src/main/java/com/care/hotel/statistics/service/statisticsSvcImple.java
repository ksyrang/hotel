package com.care.hotel.statistics.service;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.care.hotel.resourceDAO.IhotelDAO;
import com.care.hotel.resourceDTO.hotelDTO;

@Service
public class statisticsSvcImple implements IstatisticsSvc {
	
	@Autowired IhotelDAO hotelDAO;
	@Autowired HttpSession session;
	
	
	   @Override
	   public void allhotelList() {
		   ArrayList<hotelDTO> list = hotelDAO.allhotelidList();
		   session.setAttribute("hotelidList", list);
	   }
}
