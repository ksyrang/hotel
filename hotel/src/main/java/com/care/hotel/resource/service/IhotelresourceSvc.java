package com.care.hotel.resource.service;

import java.util.ArrayList;

import com.care.hotel.resourceDTO.hotelDTO;
import com.care.hotel.resourceDTO.roomDTO;

public interface IhotelresourceSvc {
   
   public void memberList(int currentPage, String select, String search);
   
   public void hotelList(int currentPage, String select, String search);
   public void hotelInfo(String hotelId);
   public int hotelModify(hotelDTO hotelInfo);
   public boolean hotelDelte(String hotelId, String adminId, String adminPw);
   
   
   public void roomList(int currentPage, String select, String search);
   public void roomInfo(String roomId);
   
   
   /* 모든 호텔 정보 보기 */
   public ArrayList<hotelDTO> allHotelInfo();

   public int roomModify(roomDTO roomInfo);

   public boolean roomDelete(String roomId, String adminId, String adminPw);
   
}