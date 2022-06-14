package com.care.hotel.statistics;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.care.hotel.statistics.service.IstatisticsSvc;

@Controller
public class statisticsController {
	
	@Autowired IstatisticsSvc statisticsSvc;
	
	
	@RequestMapping("statisticsProc")
	public String statisticsProc() {
		statisticsSvc.allhotelList();
		return "forward:/admin_index?formpath=admin_statisticsMain";
	}
	@GetMapping("chartUpdate")
	public String chartUpdate() {

		return "forward:/admin_index?formpath=admin_statisticsMain";
	}
	
	@ResponseBody
	@PostMapping("jsontest")
	public String jsontest(@RequestBody (required = false)HashMap<String, String> map) {
		String result = statisticsSvc.jsonreturn();
		return result;
	}
}