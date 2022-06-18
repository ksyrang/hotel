package com.care.hotel.resource.service;

import java.util.ArrayList;

import com.care.hotel.resourceDTO.hotelDTO;
import com.care.hotel.resourceDTO.roomDTO;

public interface IhotelresourceSvc {
   
   public void hotelList(int currentPage, String select, String search);
   public hotelDTO hotelInfo(String hotelId);
   public int hotelModify(hotelDTO hotelInfo);
   public boolean hotelDelte(String hotelId, String adminId, String adminPw);
   
   public void roomList(int currentPage, String select, String search);
   public void roomInfo(String roomId);
   public int roomcheck(String roomId);
   
   public roomDTO roomInfoDTO(String roomId);
   
   /* 모든 호텔 정보 보기 */
   public ArrayList<hotelDTO> allHotelInfo();
   
   public void allhotelList();

   public void roomModify(roomDTO roomInfo);

   public int roomDelete(String roomId);

   public void roomAdd(roomDTO roomInfo);

   public hotelDTO hotelCheck(String hotelId);

   public void hotelAdd(hotelDTO hotelInfo);

   
}