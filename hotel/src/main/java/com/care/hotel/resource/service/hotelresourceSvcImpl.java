package com.care.hotel.resource.service;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.care.hotel.common.PageService;
import com.care.hotel.member.DAO.memberDAO;
import com.care.hotel.resourceDAO.IhotelDAO;
import com.care.hotel.resourceDAO.IroomDAO;
import com.care.hotel.resourceDTO.hotelDTO;
import com.care.hotel.resourceDTO.roomDTO;
import com.care.hotel.resourceDTO.roomVO;
import com.care.hotel.resourceDTO.roommodiDTO;

@Service
public class hotelresourceSvcImpl implements IhotelresourceSvc{
   
   @Autowired IhotelDAO hotelDAO;
   @Autowired IroomDAO roomDAO;
   @Autowired memberDAO memberDAO;
   @Autowired HttpSession session;
   @Value("${ADMIN:admin}")private String ADMINID;
	@Value("${ADMPW:admin}")private String ADMINPW;
   
   //호텔 zone
   @Override
   public void hotelList(int currentPage, String select, String search) {
      int pageBlock = 5; // 한 화면에 보여줄 데이터 수
      int totalCount = hotelDAO.hotelCount(select, search); // 총 데이터의 수 
      int end = currentPage * pageBlock; // 데이터의 끝 번호
      int begin = end+1 - pageBlock; // 데이터의 시작 번호
      
      ArrayList<hotelDTO> list = hotelDAO.hotelList(begin, end, select, search);
      session.setAttribute("hotelList", list);
      String url = "/hotel/hotellistProc?currentPage=";
      session.setAttribute("hotelPage", PageService.getNavi(currentPage, pageBlock, totalCount, url));
   }
   
   @Override
   public hotelDTO hotelInfo(String hotelId) {
      hotelDTO hotelInfo = hotelDAO.hotelInfo(hotelId);
      session.setAttribute("hotelInfo", hotelInfo);
      return hotelInfo;
   }
   
   @Override
   public int hotelModify(hotelDTO hotelInfo) {
	  BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
	  String PwEncoder = encoder.encode(hotelInfo.getHotelPw());
	  hotelInfo.setHotelPw(PwEncoder);
      int result = hotelDAO.hotelUpdate(hotelInfo);
      return result;
   }
   
   @Override
   public boolean hotelDelte(String hotelId, String adminId, String adminPw) {
    
	   if(adminId==null || adminPw == null) return false;
      else if(!adminId.equals(ADMINID)) return false;
      else if(!adminPw.equals(ADMINPW)) return false;
      //실패 조건 end
      hotelDAO.hotelDelete(hotelId);
      
      return true;

   }
   
   /* 모든 호텔 정보 보기*/
   @Override
   public ArrayList<hotelDTO> allHotelInfo() {
      ArrayList<hotelDTO> hotelDtoList = hotelDAO.allHotelInfo();
      //session.setAttribute("allHotelInfo", hotelDtoList);
      return hotelDtoList;
   }

   //호텔 zone end
   
   //룸 zone
   @Override
   public void roomList(int currentPage, String select, String search) {
      int pageBlock = 5; // 한 화면에 보여줄 데이터 수
      int totalCount = roomDAO.roomCount(select, search); // 총 데이터의 수 
      int end = currentPage * pageBlock; // 데이터의 끝 번호
      int begin = end+1 - pageBlock; // 데이터의 시작 번호
      
      ArrayList<roomDTO> list = roomDAO.roomList(begin, end, select, search);
      session.setAttribute("roomList", list);
      String url = "/hotel/roomlistProc?currentPage=";
      session.setAttribute("roomPage", PageService.getNavi(currentPage, pageBlock, totalCount, url));
      
   }
   
   @Override
   public roomDTO roomInfo(String roomId) {
      roomDTO roomInfo = roomDAO.roomInfo(roomId);
//      roomInfo.setRoomId(roomIdProc(roomInfo));
//      System.out.println(roomInfo.getRoomId());
//      session.setAttribute("roomInfo", roomInfo);
      return roomInfo;
   }
   
   @Override
   public void roomModify(roomDTO roomInfo) {
	   roomDAO.roomUpdate(roomInfo);
   }
   
   @Override
   public int roomDelete(String roomId) {
     int result = roomDAO.roomDelete(roomId);
     return result;
   }
   
   @Override
   public void allhotelList() {
	   ArrayList<hotelDTO> list = hotelDAO.allhotelidList();
	   session.setAttribute("hotelidList", list);
   }
   
   @Override
	public int roomcheck(String roomId) {
		return roomDAO.checkRoom(roomId);
	}
   
   @Override
	public void roomAdd(roomVO roomInfo) {
	   String tmp = roomInfo.getHotelId()+"-"+roomInfo.getRoomIdVO();
	   roomInfo.setRoomId(tmp);
	   roomDAO.roomAdd(roomInfo);
	}
    
   @Override
	public hotelDTO hotelCheck(String hotelId) {
		return hotelDAO.checkHotel(hotelId);
	}
   
   @Override
	public void hotelAdd(hotelDTO hotelInfo) { 
	  BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
	  String PwEncoder = encoder.encode(hotelInfo.getHotelPw());
	  hotelInfo.setHotelPw(PwEncoder);
	  hotelDAO.hotelAdd(hotelInfo);
	}

	@Override
	public roomDTO roomInfoDTO(String roomId) {
		roomDTO roomInfo = roomDAO.roomInfo(roomId);
		return roomInfo;
	}
	
	@Override
	public roomVO roomIdProc(roomDTO roominfo) {
		roomVO result = new roomVO();
		int hotelidlength = roominfo.getHotelId().length();
		String VOID = roominfo.getRoomId();
		VOID = VOID.substring(hotelidlength+1);
		
		result.setRoomId(roominfo.getRoomId());
		result.setRoomIdVO(VOID);
		result.setHotelId(roominfo.getHotelId());
		result.setRoomType(roominfo.getRoomType());
		result.setBedType(roominfo.getBedType());
		result.setAvailablePerson(roominfo.getAvailablePerson());
		result.setBasicCharge(roominfo.getBasicCharge());		
		return result;
   }
   
}