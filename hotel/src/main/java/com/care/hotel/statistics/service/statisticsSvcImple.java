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
import com.care.hotel.statistics.DAO.IstatisticsDAO;
import com.care.hotel.statistics.DTO.GoogleChartDTO;
import com.care.hotel.statistics.DTO.chartRowDTO;
import com.google.gson.Gson;



@Service
public class statisticsSvcImple implements IstatisticsSvc {
	
	@Autowired IhotelDAO hotelDAO;
	@Autowired paymentDAO paymentDAO;
	@Autowired IstatisticsDAO statisticsDAO;
	@Autowired HttpSession session;

	@Override
	public ArrayList<hotelDTO> allhotelList() {
		return hotelDAO.allhotelidList();
	}
	

	@Override
	public String yearRevenueChart() {
		ArrayList<hotelDTO> hotelList = hotelDAO.allhotelidList();//호텔 리스트 생성

		SimpleDateFormat sdf = new SimpleDateFormat("yyyy"); //금년도 생성
		String targetYaer = sdf.format(new java.util.Date());// sql에서 받을수 있게 변환

		GoogleChartDTO googleCharDTO = new GoogleChartDTO();//차트DTO 생성
		googleCharDTO.addColumn("", "string"); //가로축 명칭 정의
		googleCharDTO.addColumn("금년매출", "number"); // 컬럼	
		googleCharDTO.createRows(hotelList.size());//갯수만큼 묶음 row 생성	
		int count  = 0;
		for(hotelDTO hotel: hotelList) {
			int currentyearRevenue = 0;
			if(statisticsDAO.getyearRevenue(hotel.getHotelId(), targetYaer) == null) {
				currentyearRevenue = 0;
			}else currentyearRevenue = statisticsDAO.getyearRevenue(hotel.getHotelId(), targetYaer);
			
			googleCharDTO.addCell(count,hotel.getHotelName(),hotel.getHotelName());//묶음 row의 이름 지정
			googleCharDTO.addCell(count++,currentyearRevenue);//묵음row 안에 넣을데이터 입력
		}
		
		Gson gson = new Gson();
		String jSon = gson.toJson(googleCharDTO.getResult());
		return jSon;
	}
	@Override
	public String currentmonthChart() {
		ArrayList<hotelDTO> hotelList = hotelDAO.allhotelidList();//호텔 리스트 생성
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMM"); //연도별 주차 차이에 따른 오류 방지를 위해 yyyyMM으로 사용할 것
		String targetMonth = sdf.format(new java.util.Date());// sql에서 받을수 있게 변환
		
		GoogleChartDTO googleCharDTO = new GoogleChartDTO();//차트DTO 생성
		googleCharDTO.addColumn("", "string"); //가로축 명칭 정의
		googleCharDTO.addColumn("금월 매출", "number"); // 컬럼	
		googleCharDTO.createRows(hotelList.size());//갯수만큼 묶음 row 생성			
		int count  = 0;
		for(hotelDTO hotel: hotelList) {
			int currentmonthRevenue = 0;
			if(statisticsDAO.getMonthRevenue(hotel.getHotelId(), targetMonth) == null) {
				currentmonthRevenue = 0;
			}else currentmonthRevenue = statisticsDAO.getMonthRevenue(hotel.getHotelId(), targetMonth);
			googleCharDTO.addCell(count,hotel.getHotelName(),hotel.getHotelName());//묶음 row의 이름 지정
			googleCharDTO.addCell(count++,currentmonthRevenue);//묵음row 안에 넣을데이터 입력
		}
		
		Gson gson = new Gson();
		String jSon = gson.toJson(googleCharDTO.getResult());		
		return jSon;
	}
	
	@Override
	public String earlymonthChart() {
		ArrayList<hotelDTO> hotelList = hotelDAO.allhotelidList();//호텔 리스트 생성
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMM"); //연도별 주차 차이에 따른 오류 방지를 위해 yyyyMM으로 사용할 것
		int dataprocessing = Integer.parseInt(sdf.format(new java.util.Date()))-1; //현재 월에서 -1해주기
		String targetMonth = Integer.toString(dataprocessing);// sql에서 받을수 있게 변환
		
		GoogleChartDTO googleCharDTO = new GoogleChartDTO();//차트DTO 생성
		googleCharDTO.addColumn("", "string"); //가로축 명칭 정의
		googleCharDTO.addColumn("전월 매출", "number"); // 컬럼
		googleCharDTO.createRows(hotelList.size());//갯수만큼 묶음 row 생성			
		int count  = 0;
		for(hotelDTO hotel: hotelList) {
			int earlymonthRevenue = 0;
			if(statisticsDAO.getMonthRevenue(hotel.getHotelId(), targetMonth) == null) { //null 회신 제어
				earlymonthRevenue = 0;
			}else earlymonthRevenue = statisticsDAO.getMonthRevenue(hotel.getHotelId(), targetMonth);

			googleCharDTO.addCell(count,hotel.getHotelName(),hotel.getHotelName());//묶음 row의 이름 지정
			googleCharDTO.addCell(count++,earlymonthRevenue);//묵음row 안에 넣을데이터 입력
		}
		
		Gson gson = new Gson();
		String jSon = gson.toJson(googleCharDTO.getResult());		
		return jSon;
	}
	
	
	@Override
	public String allRevenueChart() {
		ArrayList<hotelDTO> hotelList = hotelDAO.allhotelidList();//호텔 리스트 생성
		
		java.util.Date date = new java.util.Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMM"); //연도별 주차 차이에 따른 오류 방지를 위해 yyyyMM으로 사용할 것
		int dataprocessing = Integer.parseInt(sdf.format(date))-1; //현재 월에서 -1해주기
		String currentTargetYear = sdf.format(date).substring(0, sdf.format(date).length()-2);//연도만 남기기
		System.out.println("currentTargetYear : "+currentTargetYear);
		String currentTargetMonth = sdf.format(date);
		String earlyTargetMonth = Integer.toString(dataprocessing);// sql에서 받을수 있게 변환
		
			
		
		GoogleChartDTO googleCharDTO = new GoogleChartDTO();//차트DTO 생성
		googleCharDTO.addColumn("호텔 별 매출 지표", "string"); //가로축 명칭 정의
		googleCharDTO.addColumn(currentTargetYear+"년 누적 매출", "number"); // 컬럼	
		googleCharDTO.addColumn(currentTargetMonth+"월 매출", "number"); // 컬럼
		googleCharDTO.addColumn(earlyTargetMonth+"월 매출", "number"); // 컬럼
		
		googleCharDTO.createRows(hotelList.size());//갯수만큼 묶음 row 생성		
		
		int count  = 0;
		for(hotelDTO hotel: hotelList) {
			
			//금월 데이터 뽑기
			int currentyearRevenue = 0;
			if(statisticsDAO.getyearRevenue(hotel.getHotelId(), currentTargetYear) == null) {
				currentyearRevenue = 0;
			}else currentyearRevenue = statisticsDAO.getyearRevenue(hotel.getHotelId(), currentTargetYear);
			//금월 데이터 뽑기 end
			
			//금월 데이터 뽑기
			int currentmonthRevenue = 0;
			if(statisticsDAO.getMonthRevenue(hotel.getHotelId(), currentTargetMonth) == null) {
				currentmonthRevenue = 0;
			}else currentmonthRevenue = statisticsDAO.getMonthRevenue(hotel.getHotelId(), currentTargetMonth);
			//금월 데이터 뽑기 end
			//금월 데이터 뽑기
			int earlymonthRevenue = 0;
			if(statisticsDAO.getMonthRevenue(hotel.getHotelId(), earlyTargetMonth) == null) {
				earlymonthRevenue = 0;
			}else earlymonthRevenue = statisticsDAO.getMonthRevenue(hotel.getHotelId(), earlyTargetMonth);
			//금월 데이터 뽑기 end
			//호텔 별 묶음에 데이터 넣기
			googleCharDTO.addCell(count,hotel.getHotelName(),hotel.getHotelName());//묶음 row의 이름 지정
			googleCharDTO.addCell(count,currentyearRevenue);//금년 
			googleCharDTO.addCell(count,currentmonthRevenue);//금달
			googleCharDTO.addCell(count++,earlymonthRevenue);//전달
			//호텔 별 묶음에 데이터 넣기 end
		}
		
		Gson gson = new Gson();
		String jSon = gson.toJson(googleCharDTO.getResult());		
		return jSon;
	}

	
	/*
	 * @Override public String chartTest() { GoogleChartDTO googleCharDTO = new
	 * GoogleChartDTO(); // googleCharDTO.addColumn("오브젝트의 타이틀(id)",
	 * "오브젝트의 자료형(string, number 등)");//최소 두개의 컬럼 필요 //
	 * googleCharDTO.addColumn("타이틀(id)", "가로축 명칭", "string");
	 * googleCharDTO.addColumn("호텔 명", "string"); //가로축 명칭 정의 컬럼
	 * googleCharDTO.addColumn("testvalue", "월 매출", "number");
	 * googleCharDTO.createRows(2);
	 * 
	 * // googleCharDTO.addCell(row 순서,"가로축에 표시될 오브젝트 이름","오브젝트 안 정보에서 표시될 이름");
	 * googleCharDTO.addCell(0,"호텔Id","호텔이름");//첫번째 row에 호텔 id로 구분, 바에 커서가 있을경우 호텔명이
	 * 표시) googleCharDTO.addCell(0,10); //row번호별로 생성된 컬럼의 갯수에 따라 addcell이 생성되어야 함
	 * googleCharDTO.addCell(0,20);
	 * 
	 * googleCharDTO.addCell(1,"호텔명2"); googleCharDTO.addCell(1,20);
	 * 
	 * Gson gson = new Gson(); String jSon = gson.toJson(googleCharDTO.getResult());
	 * return jSon; }
	 */

}
