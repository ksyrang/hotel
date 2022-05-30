package com.care.hotel.resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.care.hotel.resource.service.IhotelresourceSvc;

@Controller
public class hotelresourceController {
	
	@Autowired IhotelresourceSvc hotellistSVC;
	
	

	@RequestMapping("hotellistProc")
	public String hotelList(Model model, 
			@RequestParam(value = "currentPage", required = false, defaultValue = "1") int currentPage,
			String select, String search) {
		
		hotellistSVC.hotelList(currentPage, select, search);//서비스 내부에서 session에 데이터를 업로드함
//		hotellistSVC.listtest();
		return "forward:/admin_index?formpath=admin_hotelList";
	}
	
	

}
