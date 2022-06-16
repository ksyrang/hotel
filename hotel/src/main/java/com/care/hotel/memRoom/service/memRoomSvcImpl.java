package com.care.hotel.memRoom.service;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.care.hotel.Reservation.DAO.AD_reservationDAO;
import com.care.hotel.Reservation.DTO.reservationAllDTO;
import com.care.hotel.Reservation.DTO.reservationDTO;
import com.care.hotel.Reservation.DTO.reservationExDTO;
import com.care.hotel.common.DateService;
import com.care.hotel.common.PageService;
import com.care.hotel.member.DAO.memberCardDAO;
import com.care.hotel.member.DTO.memberCardDTO;
import com.care.hotel.member.DTO.memberDTO;
import com.care.hotel.resourceDAO.IhotelDAO;
import com.care.hotel.resourceDAO.IroomDAO;
import com.care.hotel.resourceDTO.hotelDTO;
import com.care.hotel.resourceDTO.roomDTO;

@Service
public class memRoomSvcImpl implements ImemRoomSvc{
	@Autowired IroomDAO roomDAO;
	@Autowired IhotelDAO hotelDAO;
	@Autowired AD_reservationDAO resDAO;
	@Autowired memberCardDAO cardDAO;
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
		
		// 세션에 고객이 정한 체크인, 체크아웃, 투숙 인원 저장
		session.setAttribute("wantCheckin", startDate);
		session.setAttribute("wantCheckout", endDate);
		session.setAttribute("wantavPerson", availablePerson);
		
		session.setAttribute("memRoomCount", totalCount);
		session.setAttribute("memRoomList", roomList);
		String url = "/hotel/reservationMainProc?currentPage=";
		session.setAttribute("memRoomPage", PageService.getNavi(currentPage, pageBlock, totalCount, url));
	}

	@Override
	public String getHotelName(String hotelId) {
		hotelDTO hotelDTO = hotelDAO.hotelInfo(hotelId);
		return hotelDTO.getHotelName();
	}

	@Override
	public String insertReservation(reservationAllDTO resAllDTO, memberCardDTO cardDTO, memberDTO memberDTO,
			roomDTO roomDTO) {
		String result = "";
		String resNo = "";
		// resNo 생성
		while(true) {
			int IresNo = (int)(Math.random() * 1000000000);
			System.out.println("reservationNo int : " + IresNo);
			resNo = Integer.toString(IresNo);
			System.out.println("reservationNo String : " + resNo);
			String daoResNo = resDAO.isExistResNo(resNo);
			if(daoResNo == null) {
				break;
			}
		}
		
		// 예약 날짜
		String resDate = DateService.getTodayDate();
		// 예약 상태
		String resStatus = "0";
		// 예약 디비 저장
		resAllDTO.setReservationNo(resNo);
		resAllDTO.setReservationDate(resDate);
		resAllDTO.setReservationStatus(resStatus);
		
		reservationDTO resDTO = resAllDTO;
		resDAO.insertRes(resDTO);
		result= resNo + " 예약이 완료되었습니다.";
		
		// res_extra 저장
		if(resAllDTO.getRemark() != null || resAllDTO.getRemark() != "") {
			reservationExDTO resExDTO = new reservationExDTO();
			resExDTO.setReservationNo(resAllDTO.getReservationNo());
			resExDTO.setRemark(resAllDTO.getRemark());
			resDAO.insertResEx(resExDTO);
		}
		
		// 카드 정보 저장
		if(cardDTO != null) {
			memberCardDTO oldCardDTO = cardDAO.cardInfo(resAllDTO.getMemberId());
			if(oldCardDTO == null) {
				Integer cardId = cardDAO.getMaxCardId() + 1;
				String strCardId = Integer.toString(cardId);
				cardDTO.setCardId(strCardId);
				cardDAO.cardInsert(cardDTO);
			} else {
			// 고객의 카드 정보가 db에 있을 경우
				cardDTO.setCardId(oldCardDTO.getCardId());
				cardDAO.cardUpdate(cardDTO);
			}
		}
		
		return result;
	}

	@Override
	public reservationDTO getReservationDTO(String reservationNo) {
		reservationDTO resDTO = resDAO.reservationInfo(reservationNo);
		return resDTO;
	}

	
}
