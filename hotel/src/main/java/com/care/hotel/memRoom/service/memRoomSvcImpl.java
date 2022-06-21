package com.care.hotel.memRoom.service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

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
import com.care.hotel.member.DAO.memberDAO;
import com.care.hotel.member.DTO.memberCardDTO;
import com.care.hotel.member.DTO.memberDTO;
import com.care.hotel.member.service.MailService;
import com.care.hotel.resourceDAO.IhotelDAO;
import com.care.hotel.resourceDAO.IroomDAO;
import com.care.hotel.resourceDTO.hotelDTO;
import com.care.hotel.resourceDTO.roomDTO;

@Service
public class memRoomSvcImpl implements ImemRoomSvc{
	@Autowired private MailService mailService;
	@Autowired IroomDAO roomDAO;
	@Autowired IhotelDAO hotelDAO;
	@Autowired AD_reservationDAO resDAO;
	@Autowired memberCardDAO cardDAO;
	@Autowired memberDAO memberDAO;
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
		
		// 투숙기간에 따른 요금 변경
		Date checkin = null;
		Date checkout = null;
		long period = 0;
		try {
			checkin = new SimpleDateFormat("yyyy-MM-dd").parse(startDate);
			checkout = new SimpleDateFormat("yyyy-MM-dd").parse(endDate);
			long diffSec = (checkout.getTime() - checkin.getTime()) / 1000; //초차이
			period = diffSec / (24*60*60); //일수차이
			
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		for(int i = 0; i < roomList.size(); i++) {
			roomDTO room = roomList.get(i);
			int charge = (int) (roomList.get(i).getBasicCharge() * period);
			room.setBasicCharge(charge);
			roomList.set(i, room);
		}
		
		
		// 세션에 고객이 정한 체크인, 체크아웃, 투숙 인원 저장
		session.setAttribute("wantHotel", hotelSelect);
		session.setAttribute("wantCheckin", startDate);
		session.setAttribute("wantCheckout", endDate);
		session.setAttribute("wantavPerson", availablePerson);
		// 세션에 투숙일 저장
		session.setAttribute("resPeriod", period);
		
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
		System.out.println("예약 완료");
		
		// res_extra 저장
		if(resAllDTO.getRemark() != null || resAllDTO.getRemark() != "") {
			reservationExDTO resExDTO = new reservationExDTO();
			resExDTO.setReservationNo(resAllDTO.getReservationNo());
			resExDTO.setRemark(resAllDTO.getRemark());
			resDAO.insertResEx(resExDTO);
			System.out.println("예약 요청사항 저장 완료");
		}
		
		// 카드 정보 저장
		if(cardDTO != null) {
			memberCardDTO oldCardDTO = cardDAO.cardInfo(resAllDTO.getMemberId());
			if(oldCardDTO == null) {
				Integer cardId = 0;
				if(cardDAO.getMaxCardId() != null) {
					cardId = cardDAO.getMaxCardId() + 1;
				}else {
					cardId = 1;
				}
				String strCardId = Integer.toString(cardId);
				cardDTO.setCardId(strCardId);
				cardDAO.cardInsert(cardDTO);
			} else {
			// 고객의 카드 정보가 db에 있을 경우
				cardDTO.setCardId(oldCardDTO.getCardId());
				cardDAO.cardUpdate(cardDTO);
			}
		}
		
		// 메일 전송하기
		memberDTO memDTO = memberDAO.memberInfo(resAllDTO.getMemberId());
		String content = resNo + " 예약이 완료되었습니다.";
		mailService.sendMail(memDTO.getMemberEmail(),"[신난다호텔 예약이 완료되었습니다.]",content);
		System.out.println(memDTO.getMemberEmail() + "로 예약 이메일 전송 완료");
		
		return resNo;
	}

	@Override
	public reservationDTO getReservationDTO(String reservationNo) {
		reservationDTO resDTO = resDAO.reservationInfo(reservationNo);
		String resDate = resDTO.getReservationDate().substring(0, 10);
		String inDate = resDTO.getCheckinDate().substring(0, 10);
		String outDate = resDTO.getCheckoutDate().substring(0, 10);
		
		resDTO.setReservationDate(resDate);
		resDTO.setCheckinDate(inDate);
		resDTO.setCheckoutDate(outDate);
		
		return resDTO;
	}

	//예약 날짜 확인
	@Override
	public boolean chekcPeriod(String roomId, String checkinDate, String checkoutDate) {
		boolean result = false;
		
		Map<String, Object> data = new HashMap<String, Object>();
		data.put("roomId", roomId);
		data.put("checkinDate", checkinDate);
		data.put("checkoutDate", checkoutDate);
		
		ArrayList<reservationDTO> resList = resDAO.periodCount(data);
		
		if(resList == null || resList.isEmpty()) {
			System.out.println(roomId + "객실 " + checkinDate + " ~ " + checkoutDate + " 예약 가능");
			result = true; // 예약 가능
		}else {
			System.out.println("resList 존재");
	
			for(reservationDTO dto : resList) {
				System.out.println("resList checkinDate : " + dto.getCheckinDate());
				System.out.println("resList checkoutDate : " + dto.getCheckoutDate());
			}
			
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			// String to Date
			try {
				Date inDate = sdf.parse(checkinDate);
				Date outDate = sdf.parse(checkoutDate);

				System.out.println("고객 checkin 날짜 : " + inDate);
				System.out.println("고객 checkout 날짜 : " + outDate);
				
				for (int i = 0; i < resList.size(); i++) {
					try {
						Date dtoOutDate = sdf.parse(resList.get(i).getCheckoutDate());
						
						Date dtoInDate = null;
						if(i < resList.size() - 1) {
							dtoInDate = sdf.parse(resList.get(i + 1).getCheckinDate());
						}
						
						System.out.println("디비 검색 체크아웃 : " + dtoOutDate);
						
						if(dtoInDate != null) {
							System.out.println("디비 검색 체크인 + 1 : " + dtoInDate);
						}

						// && dtoInDate.after(outDate)
						int compare = dtoOutDate.compareTo(inDate);
						//if (dtoOutDate.before(inDate)) {
						if(dtoInDate != null) {
							int compare2 = dtoInDate.compareTo(outDate);
							if(compare <= 0 && compare2 >= 0) {
								System.out.println(roomId + "객실 " + checkinDate + " ~ " + checkoutDate + " 예약 가능");
								result = true; // 예약 가능
								break;
							}else {
								continue;
							}
						}else {
							dtoInDate = sdf.parse(resList.get(i).getCheckinDate());
							int compare2 = dtoInDate.compareTo(outDate);
							if(compare <= 0 || compare2 >= 0) {
								System.out.println(roomId + "객실 " + checkinDate + " ~ " + checkoutDate + " 예약 가능");
								result = true; // 예약 가능
								break;
							} else {
								continue;
							}
						}
					} catch (ParseException e) {
						e.printStackTrace();
					}
				}
			} catch (ParseException e) {
				e.printStackTrace();
			}
		}
		return result;
	}

	
}
