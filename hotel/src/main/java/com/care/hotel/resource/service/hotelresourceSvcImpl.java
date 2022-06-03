package com.care.hotel.resource.service;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.care.hotel.common.PageService;
import com.care.hotel.member.DAO.memberDAO;
import com.care.hotel.member.DTO.memberDTO;
import com.care.hotel.resourceDAO.IhotelDAO;
import com.care.hotel.resourceDTO.hotelDTO;
import com.care.hotel.resourceDTO.roomDTO;

@Service
public class hotelresourceSvcImpl implements IhotelresourceSvc{
	
	@Autowired IhotelDAO hotelDAO;
	@Autowired memberDAO memberDAO;
	@Autowired HttpSession session;
	
	@Override
	public void hotelList(int currentPage, String select, String search) {
		int pageBlock = 5; // 한 화면에 보여줄 데이터 수
		int totalCount = hotelDAO.hotelCount(select, search); // 총 데이터의 수 
		int end = currentPage * pageBlock; // 데이터의 끝 번호
		int begin = end+1 - pageBlock; // 데이터의 시작 번호
		
		ArrayList<hotelDTO> list = hotelDAO.hotelList(begin, end, select, search);
		session.setAttribute("hotelList", list);
		String url = "/hotel/hotellistProc?currentPage=";
		session.setAttribute("page", PageService.getNavi(currentPage, pageBlock, totalCount, url));
	}
	@Override
	public void roomList(int currentPage, String select, String search) {
		int pageBlock = 5; // 한 화면에 보여줄 데이터 수
		int totalCount = hotelDAO.roomCount(); // 총 데이터의 수 
		int end = currentPage * pageBlock; // 데이터의 끝 번호
		int begin = end+1 - pageBlock; // 데이터의 시작 번호
		
		ArrayList<roomDTO> list = hotelDAO.roomList(begin, end, select, search);
		session.setAttribute("roomList", list);
		String url = "/hotel/roomlistProc?currentPage=";
		session.setAttribute("page", PageService.getNavi(currentPage, pageBlock, totalCount, url));
		
	}
	
	@Override
	public void memberList(int currentPage, String select, String search) {
		int pageBlock = 5; // 한 화면에 보여줄 데이터 수
		int totalCount = memberDAO.memberCount(select, search); // 총 데이터의 수 
		int end = currentPage * pageBlock; // 데이터의 끝 번호
		int begin = end+1 - pageBlock; // 데이터의 시작 번호
		
		ArrayList<memberDTO> list = memberDAO.memberList(begin, end, select, search);
		session.setAttribute("memberList", list);
		String url = "/hotel/memberListProc?currentPage=";
		session.setAttribute("page", PageService.getNavi(currentPage, pageBlock, totalCount, url));
		session.setAttribute("memberCount", totalCount);
	}
	
	@Override
	public void hotelInfo(String hotelId) {
		hotelDTO hotelInfo = hotelDAO.hotelInfo(hotelId);
		session.setAttribute("hotelInfo", hotelInfo);
	}
	
	@Override
	public int hotelModify(hotelDTO hotelInfo) {
		hotelDAO.updateHotel(hotelInfo);
		return 2;
	}


}
