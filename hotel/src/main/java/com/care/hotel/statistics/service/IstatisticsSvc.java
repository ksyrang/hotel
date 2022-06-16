package com.care.hotel.statistics.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.care.hotel.resourceDTO.hotelDTO;
import com.care.hotel.statistics.DTO.chartRowDTO;

public interface IstatisticsSvc {

	public ArrayList<hotelDTO> allhotelList();

	
	public String chartTest();
	public String chartTest2();
	public String chartTest3();

	public String amountAllChart();

	public String yearRevenueChart();

}
