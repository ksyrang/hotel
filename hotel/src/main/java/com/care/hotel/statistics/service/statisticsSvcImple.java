package com.care.hotel.statistics.service;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.care.hotel.payment.DAO.paymentDAO;
import com.care.hotel.resourceDAO.IhotelDAO;
import com.care.hotel.resourceDTO.hotelDTO;


@Service
public class statisticsSvcImple implements IstatisticsSvc {
	
	@Autowired IhotelDAO hotelDAO;
	@Autowired paymentDAO paymentDAO;
	@Autowired HttpSession session;
	

	@Override
	public void allhotelList() {
		ArrayList<hotelDTO> list = hotelDAO.allhotelidList();
		session.setAttribute("hotelList", list);
	}
	
	@Override
	public String jsonreturn() {
		ArrayList<hotelDTO> hotelInfolist = hotelDAO.allhotelidList();
		ArrayList<Integer> hotelAmountList = new ArrayList<Integer>();
		for(hotelDTO info : hotelInfolist) {
			int result = paymentDAO.getHotelTotalAmount(info.getHotelId());
			hotelAmountList.add(result);
		}
		
		String encData = hotelNameToJason(hotelInfolist, hotelAmountList);
//		return null;
		return encData;
	}
	
	private String hotelNameToJason(ArrayList<hotelDTO> hotelInfolist, ArrayList<Integer> hotelAmountList) {
		String result = "{\"cd\" : [";
		int i = 0;
		for(hotelDTO ajax : hotelInfolist) {
			result += "{ \"hotelId\" : \"";
			result += ajax.getHotelId()+"\",";
			result += " \"hotelName\" : \"";
			result += ajax.getHotelName()+"\" },";
//			result += " \"hotelAmount\" : \"";
//			result += hotelAmountList.get(i++)+"\" },";
		}
		result = result.substring(0,result.length()-1);
		result += "]}";
		return result;	
	}
	
	
	
}
