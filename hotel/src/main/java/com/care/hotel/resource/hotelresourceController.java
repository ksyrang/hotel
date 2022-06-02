package com.care.hotel.resource;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.care.hotel.resource.service.IhotelresourceSvc;
import com.care.hotel.resourceDTO.hotelDTO;

@Controller
public class hotelresourceController {
	
	@Autowired IhotelresourceSvc hotellistSVC;
	@Autowired HttpSession session;
	
	@RequestMapping("hotellistProc")
	public String hotellistProc(Model model, 
			@RequestParam(value = "currentPage", required = false, defaultValue = "1") int currentPage,
			String select, String search) {
		
		hotellistSVC.hotelList(currentPage, select, search);//서비스 내부에서 session에 데이터를 업로드함
		return "forward:/admin_index?formpath=admin_hotelList";
	}
	@RequestMapping("roomlistProc")
	public String roomlistProc(Model model, 
			@RequestParam(value = "currentPage", required = false, defaultValue = "1") int currentPage,
			String select, String search) {
		
		hotellistSVC.roomList(currentPage, select, search);//서비스 내부에서 session에 데이터를 업로드함
		return "forward:/admin_index?formpath=admin_roomList";
	}
	
	@RequestMapping("hotelInfoProc")
	public String hotelInfoProc(String hotelId, Model model) {
		if(hotelId ==""||hotelId == null) return "redirect:hotellistProc";
		hotellistSVC.hotelInfo(hotelId);
		return "forward:/admin_index?formpath=admin_hotelInfo";
	}	
	
	@RequestMapping("prehotelModifyProc")
	public String prehotelModifyProc(String hotelId, Model model) {
		if(hotelId ==""||hotelId == null) return "redirect:hotellistProc";
		hotellistSVC.hotelInfo(hotelId);
		return "forward:/admin_index?formpath=admin_hotelInfoModify";
	}	
	
	@RequestMapping("hotelModifyProc")
	public String hotelModifyProc(hotelDTO hotelInfo, Model model) {
		int result = hotellistSVC.hotelModify(hotelInfo);
		if(result == 1) {
			return "forward:/admin_index?formpath=admin_hotelList";
		}
		return "forward:/admin_index?formpath=admin_hotelInfoModify";
	}	

}
