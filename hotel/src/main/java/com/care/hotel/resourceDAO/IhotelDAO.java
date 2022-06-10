package com.care.hotel.resourceDAO;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.care.hotel.resourceDTO.hotelDTO;

@Repository
public interface IhotelDAO {
   
   public ArrayList<hotelDTO> hotelList(@Param("b")int begin, @Param("e")int end, 
         @Param("sel")String select, @Param("search")String search);
   
   public int hotelCount(@Param("sel")String select,  @Param("search")String search);

   public hotelDTO hotelInfo(String hotelId);

   public int hotelUpdate(hotelDTO hotelInfo);
   
   /* 모든 호텔 정보 불러오기 */
   public ArrayList<hotelDTO> allHotelInfo();

   public void hotelDelete(String hotelId);

   public ArrayList<hotelDTO> allhotelidList();
   
}