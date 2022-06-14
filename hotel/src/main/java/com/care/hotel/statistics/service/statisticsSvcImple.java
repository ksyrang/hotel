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
		session.setAttribute("hotelList", list);
	}
	
	@Override
	public String jsonreturn() {
		ArrayList<hotelDTO> list = hotelDAO.allhotelidList();
		String encData = hotelNameToJason(list);
//		return null;
		return encData;
	}
	
	private String hotelNameToJason(ArrayList<hotelDTO> list) {
		String result = "{\"cd\" : [";
		for(hotelDTO ajax : list) {
			result += "{ \"hotelId\" : \"";
			result += ajax.getHotelId()+"\",";
			result += " \"hotelName\" : \"";
			result += ajax.getHotelName()+"\" },";
		}
		result = result.substring(0,result.length()-1);
		result += "]}";
		return result;	
	}
	
	
	
}
