package com.care.hotel.statistics.DAO;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface IstatisticsDAO {
	
	Integer getyearRevenue(@Param("hotelId")String hotelId, @Param("paymentDate")String targetYaer);
	
	Integer getMonthRevenue(@Param("hotelId")String hotelId, @Param("paymentDate")String targetMonth);

}
