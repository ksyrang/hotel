package com.care.hotel.Reservation.service;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.care.hotel.Reservation.DAO.AD_reservationDAO;
import com.care.hotel.Reservation.DTO.reservationAllDTO;
import com.care.hotel.Reservation.DTO.reservationDTO;
import com.care.hotel.Reservation.DTO.reservationExDTO;
import com.care.hotel.common.DateService;
import com.care.hotel.common.PageService;
import com.care.hotel.member.DAO.memberDAO;
import com.care.hotel.member.DTO.memberDTO;
import com.care.hotel.member.service.MailService;
import com.care.hotel.resourceDAO.IhotelDAO;
import com.care.hotel.resourceDTO.hotelDTO;

@Service
public class ReservationSvcImpl implements IReservationSvc{
   @Autowired AD_reservationDAO reservationDAO;
   @Autowired IhotelDAO hotelDAO;
   @Autowired memberDAO memberDAO;
   @Autowired MailService mailService;
   @Autowired HttpSession session;
   
   @Value("${ADMIN:admin}")private String ADMINID;
   @Value("${ADMPW:admin}")private String ADMINPW;
   
   @Override
   public void reservationList(int currentPage, String hotelSelect, String dateBase, String startDate, String endDate
		   , String resStatus, String reservationNoSearch) {
      int pageBlock = 10; // 한 화면에 보여줄 데이터 수
      int end = currentPage * pageBlock; // 데이터의 끝 번호
      int begin = end+1 - pageBlock; // 데이터의 시작 번호
      
      String userId = (String)session.getAttribute("userId");
      ArrayList<hotelDTO> hotelList = hotelDAO.allHotelInfo();
      
      ArrayList<reservationDTO> resList = new ArrayList<reservationDTO>();
      int totalCount = 0;
      
      int check = 1; // session이 관리자면 1, 호텔이면 2
      
      for(hotelDTO hotelDTO : hotelList) {
         if(hotelDTO.getHotelId().equals(userId)) {
            // session이 매니저일 때
            hotelSelect = hotelDTO.getHotelId();
            check =2;
         }
      }
      
      if(check == 2) {
         totalCount = reservationDAO.reservationCount(hotelSelect, dateBase, startDate, endDate, resStatus, reservationNoSearch); // 총 데이터의 수 
         resList = reservationDAO.resList(begin, end, hotelSelect, dateBase, startDate, endDate, resStatus, reservationNoSearch);
      } else {
         // session이 관리자일 때 
         totalCount = reservationDAO.reservationCount(hotelSelect, dateBase, startDate, endDate, resStatus, reservationNoSearch); // 총 데이터의 수 
         resList = reservationDAO.resList(begin, end, hotelSelect, dateBase, startDate, endDate, resStatus, reservationNoSearch);
      }
      
      // reservationDate, checkinDate 포맷 변경
      for(int i = 0; i < resList.size(); i++) {
         reservationDTO resDto = resList.get(i);
         String resDate = resList.get(i).getReservationDate().substring(0, 10);
         String checkinDate = resList.get(i).getCheckinDate().substring(0, 10);
         resDto.setReservationDate(resDate);
         resDto.setCheckinDate(checkinDate);
         resList.set(i, resDto);
      }
      
      session.setAttribute("resCount", totalCount);
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

   @Override
   public String reservationDelete(String reservationNo, String id, String pw) {
      String result = "예약번호 " + reservationNo + "예약을 취소했습니다.";
      
      // 아이디 혹은 비밀번호 미입력시
      if(id == null || id == "" || pw == null || pw == "") {
         result = "아이디 혹은 비밀번호를 확인해주세요.";
      }
      
      // 호텔 id, pw 불러오기
      hotelDTO hotelInfo = hotelDAO.hotelInfo(id);
      //취소일자 생성
      String cancelDate = DateService.getTodayDateTime();
      reservationDTO resDTO = reservationDAO.reservationInfo(reservationNo);
      resDTO.setReservationNo(reservationNo);
      resDTO.setReservationStatus("9");
      resDTO.setCancelDate(cancelDate);
      
      // 메일을 보내기 위해 고객 id 불러옴
      memberDTO memberDTO = memberDAO.memberInfo(resDTO.getMemberId());
      
      // 호텔 비밀번호 복화화
      BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
      
      // hotelInfo에 데이터가 있을 시
      if(hotelInfo != null) {
         if(id.equals(session.getAttribute("userId")) && encoder.matches(pw, hotelInfo.getHotelPw())) {
        	mailService.sendMail(memberDTO.getMemberEmail(),"[신난다호텔 예약이 취소되었습니다.]",result);
            reservationDAO.reservationDelete(resDTO);
         }else {
            result = "아이디 혹은 비밀번호를 확인해주세요.";
         }
      }else {
         // 관리자 id, pw가 맞을 시
         if(id.equals(ADMINID) && pw.equals(ADMINPW)) {
        	mailService.sendMail(memberDTO.getMemberEmail(),"[신난다호텔 예약이 취소되었습니다.]",result);
            reservationDAO.reservationDelete(resDTO);
         }else {
            result = "아이디 혹은 비밀번호를 확인해주세요.";
         }
      }
      
      return result;
      
   }
}