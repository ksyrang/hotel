package com.care.hotel.statistics;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
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
	
//	@ResponseBody
//	@PostMapping("chartUpdate")
//	public String chartUpdate(@ResponseBody (required = false)String searchTitle) {
//		
//		return null;
//	}
}