package com.care.hotel.Reservation.service;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.care.hotel.Reservation.DAO.AD_reservationDAO;
import com.care.hotel.Reservation.DTO.reservationAllDTO;
import com.care.hotel.Reservation.DTO.reservationDTO;
import com.care.hotel.Reservation.DTO.reservationExDTO;
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
		for(int i = 0; i < resList.size(); i++) {
			reservationDTO resDto = resList.get(i);
			String resDate = resList.get(i).getReservationDate().substring(0, 10);
			String checkinDate = resList.get(i).getCheckinDate().substring(0, 10);
			resDto.setReservationDate(resDate);
			resDto.setCheckinDate(checkinDate);
			resList.set(i, resDto);
		}
		session.setAttribute("resList", resList);
		String url = "/hotel/admin_reservationListProc?currentPage=";
		session.setAttribute("resPage", PageService.getNavi(currentPage, pageBlock, totalCount, url));
		
	}

	// 예약 정보
	@Override
	public reservationAllDTO reservationInfo(String reservationNo) {
		reservationDTO reservation = reservationDAO.reservationInfo(reservationNo);
		reservationExDTO reservationEx = reservationDAO.reservationExInfo(reservationNo);
		
		reservationAllDTO resAll = new reservationAllDTO();
		if(reservation != null) {
			resAll.setReservationNo(reservation.getReservationNo());
			resAll.setMemberId(reservation.getMemberId());
			resAll.setHotelId(reservation.getHotelId());
			resAll.setRoomId(reservation.getRoomId());
			resAll.setReservationDate(reservation.getReservationDate().substring(0, 10));
			resAll.setCheckinDate(reservation.getCheckinDate().substring(0, 10));
			resAll.setCheckoutDate(reservation.getCheckoutDate().substring(0, 10));
			resAll.setGuestNumber(reservation.getGuestNumber());
			resAll.setBaseAmount(reservation.getBaseAmount());
			resAll.setBreakfastCheck(reservation.getBreakfastCheck());
			resAll.setReservationStatus(reservation.getReservationStatus());
			resAll.setCancelDate(reservation.getCancelDate());
		}
		if(reservationEx != null) {
			resAll.setRemark(reservationEx.getRemark());
		}
		
		return resAll;
	}

	@Override
	public String reservationModify(reservationDTO resDTO) {
		reservationDTO oldresDTO = reservationInfo(resDTO.getReservationNo());
		if(oldresDTO.getBreakfastCheck().equals(resDTO.getBreakfastCheck()) == false) {
			reservationDAO.reservationUpdate(resDTO);
		}
		return "예약번호 " + resDTO.getReservationNo() + " 예약 수정이 완료되었습니다.";
	}
}
