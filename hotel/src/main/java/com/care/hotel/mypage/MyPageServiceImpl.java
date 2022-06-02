package com.care.hotel.mypage;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.care.hotel.common.PageService;
import com.care.hotel.Reservation.DAO.reservationDAO;
import com.care.hotel.Reservation.DTO.reservationDTO;
import com.care.hotel.Reservation.DTO.reservationAllDTO;

@Service
public class MyPageServiceImpl implements IMyPageService{
	@Autowired reservationDAO reservationDAO;
	@Autowired HttpSession session;

	@Override
	public void memListResv(int currentPage, String searchDateType, String startDate, String endDate, String memberId) {
		int pageBlock = 5; // 한 화면에 보여줄 데이터 수
		int totalCount = reservationDAO.reservationCount(searchDateType, startDate, endDate, memberId); // 총 데이터의 수 
		int end = currentPage * pageBlock; // 데이터의 끝 번호
		int begin = end+1 - pageBlock; // 데이터의 시작 번호
		
		ArrayList<reservationAllDTO> list = reservationDAO.reservationList(begin, end, searchDateType, startDate, endDate, memberId);
		session.setAttribute("reservationList", list);
		String url = "/hotel/mypage/reservationListProc?currentPage=";
		session.setAttribute("page", PageService.getNavi(currentPage, pageBlock, totalCount, url));
		session.setAttribute("reservationCount", totalCount);
	}

}
