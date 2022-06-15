package com.care.hotel.statistics;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.care.hotel.statistics.DTO.GoogleChartDTO;
import com.care.hotel.statistics.DTO.chartColDTO;
import com.care.hotel.statistics.DTO.chartRowDTO;
import com.care.hotel.statistics.service.IstatisticsSvc;
import com.google.gson.Gson;

@Controller
public class statisticsController {

	@Autowired IstatisticsSvc statisticsSvc;

	@RequestMapping("statisticsProc")
	public String statisticsProc(Model model) {
//		statisticsSvc.allhotelList();
////		HashMap<String, chartRowDTO> data = statisticsSvc.totalMonthlysalses();
//		model.addAttribute("jdata",data);
		return "forward:/admin_index?formpath=admin_statisticsMain";
	}

	/*
	 * @GetMapping("chartUpdate") public String chartUpdate() {
	 * 
	 * return "forward:/admin_index?formpath=admin_statisticsMain"; }
	 */
	
	@ResponseBody
	@PostMapping(value="chartUpdates_S", produces = "text/html; charset=UTF-8")//produces = "text/html; charset=UTF-8" 데이터를 리턴해 줄때 한글 깨짐 방지
	public String chartUpdates_S(@RequestBody(required = false) String chartSelect) {
		/*<option value="curMthSalses">현월 매출</option>
		<option value="preMthSalses">전월 매출</option>
		<option value="yearSalses">금년 매출</option>	*/
		if(chartSelect ==""|| chartSelect == null || chartSelect.isEmpty()) return statisticsSvc.chartTest();
		if(chartSelect.equals("curMthSalses")) return statisticsSvc.chartTest();
		else if(chartSelect.equals("preMthSalses")) return statisticsSvc.chartTest2();
		else return statisticsSvc.chartTest3();
	}
	
}