package com.care.hotel.statistics.service;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.care.hotel.payment.DAO.paymentDAO;
import com.care.hotel.resourceDAO.IhotelDAO;
import com.care.hotel.resourceDTO.hotelDTO;
import com.care.hotel.statistics.DTO.GoogleChartDTO;
import com.care.hotel.statistics.DTO.chartRowDTO;
import com.google.gson.Gson;



@Service
public class statisticsSvcImple implements IstatisticsSvc {
	
	@Autowired IhotelDAO hotelDAO;
	@Autowired paymentDAO paymentDAO;
	@Autowired HttpSession session;

	@Override
	public ArrayList<hotelDTO> allhotelList() {
		return hotelDAO.allhotelidList();
	}
	
	@Override
	public String amountAllChart() {
		
		return null;
	}
	@Override
	public String yearRevenueChart() {
		System.out.println("yearRevenueChart 진입" );
		ArrayList<hotelDTO> hotelList = hotelDAO.allhotelidList();//호텔 리스트 생성
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy"); //금년도 생성
		String targetYaer = sdf.format(new java.util.Date());// sql에서 받을수 있게 변환
		
		GoogleChartDTO charttest = new GoogleChartDTO();//차트DTO 생성
		charttest.addColumn("등록된 호텔", "string"); //가로축 명칭 정의 컬럼
		
		for(hotelDTO hotel: hotelList) {
			long yearRevenue = paymentDAO.getyearRevenue(hotel.getHotelId(), targetYaer);
			//호텔 별 매출 가져오기
			
			charttest.addColumn("금년매출", hotel.getHotelName(), "number");
			charttest.addRow(hotel.getHotelName(), yearRevenue);
			
		}
		
		
		Gson gson = new Gson();
		String jSon = gson.toJson(charttest.getResult());
		
		return jSon;
	}
	
	
	
	@Override
	public String chartTest() {
		GoogleChartDTO charttest = new GoogleChartDTO();
//		charttest.addColumn("오브젝트의 타이틀(id)", "오브젝트의 자료형(string, number 등)");//최소 두개의 컬럼 필요
//		charttest.addColumn("타이틀(id)", "가로축 명칭", "string");
		charttest.addColumn("호텔 명", "string"); //가로축 명칭 정의 컬럼
		charttest.addColumn("testvalue", "월 매출", "number");
		charttest.createRows(2);
		
//		charttest.addCell(row 순서,"가로축에 표시될 오브젝트 이름","오브젝트 안 정보에서 표시될 이름");
		charttest.addCell(0,"호텔Id","호텔이름");//첫번째 row에 호텔 id로 구분, 바에 커서가 있을경우 호텔명이 표시)
		charttest.addCell(0,10); //row번호별로 생성된 컬럼의 갯수에 따라 addcell이 생성되어야 함
		charttest.addCell(0,20);
		
		charttest.addCell(1,"호텔명2");
		charttest.addCell(1,20);
		
		Gson gson = new Gson();
		String jSon = gson.toJson(charttest.getResult());
		return jSon;
	}
	@Override
	public String chartTest2() {
		GoogleChartDTO charttest = new GoogleChartDTO();
//		charttest.addColumn("오브젝트의 타이틀(id)", "오브젝트의 자료형(string, number 등)");//최소 두개의 컬럼 필요
//		charttest.addColumn("타이틀(id)", "가로축 명칭", "string");
		charttest.addColumn("호텔 명", "string"); //가로축 명칭 정의 컬럼
		charttest.addColumn("testvalue", "월 매출", "number");
		charttest.createRows(2);
		
//		charttest.addCell(row 순서,"가로축에 표시될 오브젝트 이름","오브젝트 안 정보에서 표시될 이름");
		charttest.addCell(0,"호텔Id","호텔이름");//첫번째 row에 호텔 id로 구분, 바에 커서가 있을경우 호텔명이 표시)
		charttest.addCell(0,20); //row번호별로 생성된 컬럼의 갯수에 따라 addcell이 생성되어야 함
		
		charttest.addCell(1,"호텔명2");
		charttest.addCell(1,10);
		
		Gson gson = new Gson();
		String jSon = gson.toJson(charttest.getResult());
		return jSon;
	}
	@Override
	public String chartTest3() {
		GoogleChartDTO charttest = new GoogleChartDTO();
//		charttest.addColumn("오브젝트의 타이틀(id)", "오브젝트의 자료형(string, number 등)");//최소 두개의 컬럼 필요
//		charttest.addColumn("타이틀(id)", "가로축 명칭", "string");
		charttest.addColumn("호텔 명", "string"); //가로축 명칭 정의 컬럼
		charttest.addColumn("testvalue", "월 매출", "number");
		charttest.createRows(2);
		
//		charttest.addCell(row 순서,"가로축에 표시될 오브젝트 이름","오브젝트 안 정보에서 표시될 이름");
		charttest.addCell(0,"호텔Id","호텔이름");//첫번째 row에 호텔 id로 구분, 바에 커서가 있을경우 호텔명이 표시)
		charttest.addCell(0,30); //row번호별로 생성된 컬럼의 갯수에 따라 addcell이 생성되어야 함
		
		charttest.addCell(1,"호텔명2");
		charttest.addCell(1,30);
		
		Gson gson = new Gson();
		String jSon = gson.toJson(charttest.getResult());
		return jSon;
	}	
	
}
