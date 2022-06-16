package com.care.hotel.memRoom.service;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.care.hotel.common.PageService;
import com.care.hotel.resourceDAO.IroomDAO;
import com.care.hotel.resourceDTO.roomDTO;

@Service
public class memRoomSvcImpl implements ImemRoomSvc{
	@Autowired IroomDAO roomDAO;
	@Autowired HttpSession session;

	@Override
	public void memRoomList(int currentPage, String hotelSelect, String startDate, String endDate,
			Integer availablePerson) {
		int pageBlock = 5; // 한 화면에 보여줄 데이터 수
		int end = currentPage * pageBlock; // 데이터의 끝 번호
		int begin = end+1 - pageBlock; // 데이터의 시작 번호
		
		int IntAvailablePerson;
		//availablePerson 형변환
		if(availablePerson == null) {
			IntAvailablePerson = 0;
		} else {
			IntAvailablePerson = availablePerson;
		}
		
		int totalCount = roomDAO.memRoomCount(hotelSelect, IntAvailablePerson); // 총 데이터의 수 ;
		//int totalCount = roomDAO.roomCount(hotelSelect, startDate, endDate, availablePerson); // 총 데이터의 수 ;
		
		ArrayList<roomDTO> roomList = roomDAO.memRoomList(begin, end, hotelSelect, IntAvailablePerson);
		//ArrayList<roomDTO> roomList = roomDAO.roomList(begin, end, hotelSelect, startDate, endDate, availablePerson);
		
		session.setAttribute("memRoomCount", totalCount);
		session.setAttribute("memRoomList", roomList);
		String url = "/hotel/reservationMainProc?currentPage=";
		session.setAttribute("memRoomPage", PageService.getNavi(currentPage, pageBlock, totalCount, url));
	}

	/*
	 * 
	
	@Override
	public void memRoomList(int currentPage, String hotelSelect, String startDate, String endDate,
			String availablePerson) {
		int pageBlock = 5; // 한 화면에 보여줄 데이터 수
		int end = currentPage * pageBlock; // 데이터의 끝 번호
		int begin = end+1 - pageBlock; // 데이터의 시작 번호
		int totalCount = roomDAO.memRoomCount(hotelSelect, availablePerson); // 총 데이터의 수 ;
		//int totalCount = roomDAO.roomCount(hotelSelect, startDate, endDate, availablePerson); // 총 데이터의 수 ;
		
		ArrayList<roomDTO> roomList = roomDAO.memRoomList(begin, end, hotelSelect, availablePerson);
		//ArrayList<roomDTO> roomList = roomDAO.roomList(begin, end, hotelSelect, startDate, endDate, availablePerson);
		
		session.setAttribute("memRoomCount", totalCount);
		session.setAttribute("memRoomList", roomList);
		String url = "/hotel/reservationMainProc?currentPage=";
		session.setAttribute("memRoomPage", PageService.getNavi(currentPage, pageBlock, totalCount, url));
	}
	 */

}
