package com.care.hotel.common;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Calendar;
import java.util.Date;

public class DateService {
	
	public static String getTodayDate() {
		DateTimeFormatter format = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		LocalDateTime now = LocalDateTime.now();
		String today = now.format(format);
		return today;
	}
	
	public static String getTomorrowDate() {
		Calendar cal = Calendar.getInstance();
		cal.setTime(new Date());
		cal.add(Calendar.DATE, 1); // 하루 더하기
		
		// 특정 형태의 날짜로 값을 뽑기 
		DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		String tomorrow = df.format(cal.getTime());
		
		return tomorrow;
	}
	
	public static String getTodayDateTime() {
		DateTimeFormatter format = DateTimeFormatter.ofPattern("yyyyMMdd");
		LocalDateTime now = LocalDateTime.now();
		String today = now.format(format);
		return today;
	}

}
