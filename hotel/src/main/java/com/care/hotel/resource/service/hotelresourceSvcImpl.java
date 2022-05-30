package com.care.hotel.resource.service;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.care.hotel.resourceDAO.IhotelDAO;
import com.care.hotel.resourceDTO.hotelDTO;

@Service
public class hotelresourceSvcImpl implements IhotelresourceSvc{
	
	@Autowired IhotelDAO hotelDAO;
	@Autowired HttpSession session;
	
	@Override
	public void hotelList(int currentPage, String select, String search) {
		int pageBlock = 5; // 한 화면에 보여줄 데이터 수
		int totalCount = hotelDAO.hotelCount(); // 총 데이터의 수 
		int end = currentPage * pageBlock; // 데이터의 끝 번호
		int begin = end+1 - pageBlock; // 데이터의 시작 번호
		
		ArrayList<hotelDTO> list = hotelDAO.hotelList(begin, end, select, search);
		session.setAttribute("hotelList", list);
		String url = "/hotel/hotellistProc?currentPage=";
//		session.setAttribute("page", PageService.getNavi(currentPage, pageBlock, totalCount, url));
	}
	

}
