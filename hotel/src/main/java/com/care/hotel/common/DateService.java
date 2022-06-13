package com.care.hotel.common;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public class DateService {
	
	public static String getTodayDate() {
		DateTimeFormatter format = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		LocalDateTime now = LocalDateTime.now();
		String today = now.format(format);
		return today;
	}
	
	public static String getTodayDateTime() {
		DateTimeFormatter format = DateTimeFormatter.ofPattern("yyyyMMdd");
		LocalDateTime now = LocalDateTime.now();
		String today = now.format(format);
		return today;
	}

}
