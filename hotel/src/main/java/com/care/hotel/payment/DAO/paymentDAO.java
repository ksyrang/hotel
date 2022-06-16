package com.care.hotel.payment.DAO;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.care.hotel.payment.DTO.paymentDTO;

@Repository
public interface paymentDAO {

	void insertPayment(paymentDTO paymentDTO);

	int paymentCount(@Param("hotelId")String hotelSelect, @Param("startDate")String startDate,
			@Param("endDate")String endDate, @Param("paymentType")String typeSelect, @Param("paymentStatus")String statusSelect, @Param("memberId")String memberId);

	ArrayList<paymentDTO> paymentList(@Param("b")int begin, @Param("e")int end, @Param("hotelId")String hotelSelect, 
			@Param("startDate")String startDate, @Param("endDate")String endDate, @Param("paymentType")String typeSelect, @Param("paymentStatus")String statusSelect, @Param("memberId")String memberId);

	Integer getTotalAmount();

	Integer getHotelTotalAmount(@Param("hotelId")String hotelSelect);
	
	Integer getfilterAmount(@Param("hotelId")String hotelSelect, @Param("startDate")String startDate, @Param("endDate")String endDate, @Param("paymentType")String typeSelect, 
			@Param("paymentStatus")String statusSelect, @Param("memberId")String memberId);

	paymentDTO paymentInfo(String paymentNo);

	void payStatus(paymentDTO oldPaymentDTO);

	void insertCanclePayment(paymentDTO paymentDTO);
	
	Long getyearRevenue(@Param("hotelId")String hotelId, @Param("paymentDate")String paymentDate);

	

}
