package com.care.hotel.Reservation.service;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.care.hotel.Reservation.DAO.AD_reservationDAO;
import com.care.hotel.Reservation.DTO.reservationDTO;
import com.care.hotel.common.PageService;

@Service
public class ReservationSvcImpl implements IReservationSvc{
	@Autowired AD_reservationDAO reservationDAO;
	@Autowired HttpSession session;
	
	@Override
	public void reservationList(int currentPage, String hotelSelect, String dateBase, String startDate, String endDate,
			String reservationNoSearch) {
		int pageBlock = 5; // 한 화면에 보여줄 데이터 수
		int totalCount = reservationDAO.reservationCount(hotelSelect, dateBase, startDate, endDate, reservationNoSearch); // 총 데이터의 수 
		int end = currentPage * pageBlock; // 데이터의 끝 번호
		int begin = end+1 - pageBlock; // 데이터의 시작 번호
		

		ArrayList<reservationDTO> resList = reservationDAO.resList(begin, end, hotelSelect, dateBase, startDate, endDate, reservationNoSearch);
		// reservationDate, checkinDate 포맷 변경
		/*
		 * for(int i = 0; i <= resList.size(); i++) { reservationDTO resDto =
		 * resList.get(i); String strArr =
		 * resList.get(i).getReservationDate().substring(0, 9);
		 * resDto.setReservationDate(strArr);
		 * 
		 * resList.set(i, resDto); //int j =
		 * resList.indexOf(resList.get(i).getReservationDate());
		 * //resList.get(i).setReservationDate(format.format(resList.get(i).
		 * getReservationDate())); //resList.set(j, reservationDTO); }
		 */
		
		session.setAttribute("resList", resList);
		String url = "/hotel/admin_reservationListProc?currentPage=";
		session.setAttribute("resPage", PageService.getNavi(currentPage, pageBlock, totalCount, url));
		
	}
}
