package com.care.hotel.statistics.DTO;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class GoogleChartDTO {
	
	private HashMap<String, Object> result;
	private List<HashMap<String, Object>> cols; //google 차트에서 {} 담당
	private List<HashMap<String, Object>> rows; 
	
	public GoogleChartDTO(){
		this.result = new HashMap<String, Object>();
		this.cols = new ArrayList<HashMap<String, Object>>();//google 차트에서 [] 담당
		this.rows = new ArrayList<HashMap<String, Object>>();
		
		//오브젝트 구분을 위함
		this.result.put("cols", this.cols);
		this.result.put("rows", this.rows);
	}
	
	
	public void addColumn(String label, String type){//컴럼 생성
		addColumn("", label, "", type);
	}
	
	public void addColumn(String id, String label, String type){
		
		HashMap<String, Object> col = new HashMap<String, Object>();
		
		col.put("id", id);
		col.put("label", label);
		col.put("type", type);
		
		this.cols.add(col);
	}
	
	public void addColumn(String id, String label, String pattern, String type){
		
		HashMap<String, Object> col = new HashMap<String, Object>();
		
		col.put("id", id);
		col.put("label", label);
		col.put("pattern", pattern);
		col.put("type", type);
		
		this.cols.add(col);
	}
	
	public void addRow(String name, Object value){
		addRow(name, value, null);
	}
	
	public void addRow(String name, Object value, String format){
		
		HashMap<String, Object> row = new HashMap<String, Object>();
		List<HashMap<String, Object>> cells = new ArrayList<HashMap<String,Object>>();
		
		HashMap<String, Object> cell1 = new HashMap<String, Object>();
		cell1.put("v", name);
		
		HashMap<String, Object> cell2 = new HashMap<String, Object>();
		cell2.put("v", value);
		cell2.put("f", format);
		
		cells.add(cell1);
		cells.add(cell2);
		
		row.put("c", cells);
		this.rows.add(row);
	}
	
	public void createRows(int count){
		HashMap<String, Object> row = null;
		List<HashMap<String, Object>> cells = null;
		for(int i=0;i<count;i++){
			row = new HashMap<String, Object>();
			cells = new ArrayList<HashMap<String,Object>>();
			row.put("c", cells);
			this.rows.add(row);
		}
	}
	
	public void addCell(int rowCount, Object value){
		addCell(rowCount, value, null);
	}
	
	public void addCell(int rowCount, Object value, String format){
		
		HashMap<String, Object> row = this.rows.get(rowCount);
		List<HashMap<String, Object>> cells = (List<HashMap<String, Object>>)row.get("c");
		
		HashMap<String, Object> cell = new HashMap<String, Object>();
		cell.put("v", value);
		cell.put("f", format);
		
		cells.add(cell);
	}
	
	public HashMap<String, Object> getResult(){
		return this.result;
	}

}