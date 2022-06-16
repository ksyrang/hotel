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
	@PostMapping(value="chartUpdates", produces = "text/html; charset=UTF-8")//produces = "text/html; charset=UTF-8" 데이터를 리턴해 줄때 한글 깨짐 방지
	public String chartUpdates_S(@RequestBody(required = false) String chartSelect) {

		//전체
		if(chartSelect ==""|| chartSelect == null || chartSelect.isEmpty()) return statisticsSvc.allRevenueChart();
		//금월
		if(chartSelect.equals("curMthSalses")) return statisticsSvc.currentmonthChart();
		//금년
		else if(chartSelect.equals("yearSalses")) return statisticsSvc.yearRevenueChart();
		//전월
		else if(chartSelect.equals("preMthSalses")) return statisticsSvc.earlymonthChart();
		//test 및 null 방지
		else return statisticsSvc.allRevenueChart();
	}
	
}