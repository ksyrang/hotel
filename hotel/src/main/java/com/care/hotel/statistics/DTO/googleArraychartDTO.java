package com.care.hotel.statistics.DTO;

import java.util.ArrayList;
import java.util.List;

public class googleArraychartDTO {
	
	private ArrayList<ArrayList<String>> result;
	
	private ArrayList<String> cols;
	private ArrayList<String> rows;
	private String cell;
	
	
	public googleArraychartDTO() {
		this.result = new ArrayList<ArrayList<String>>();
		this.cols = new ArrayList<String>();
		this.rows = new ArrayList<String>();
	}
	
	public void setcolumnGroup(String GroupName) {
		cols.set(0, GroupName);
	}
	public void addcolumn(String column) {
		cols.add(column);
	}
	public void createrows(int count) {//큰row안에 표시될 row의 개수
		
		
	}
	public void addrow() {
		
	}
	
	
	

}
/*		 계열그룹명,  계열1   , 계열2      , 계열3    
          ['Year', 'Sales', 'Expenses', 'Profit'], -> 큰row안에 정의될 개별 row 명칭
          항목묶음명  항목1  항목2 항목3 ...... 
          ['2014', 1000, 400, 200], -> 하나의 큰 rows[] 안에 표시되어야 할 계열별 row 데이터
          

*/