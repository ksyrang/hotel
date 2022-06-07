package com.care.hotel.resource;

import javax.mail.Session;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
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
	@RequestMapping("hotelInfoProc")
	public String hotelInfoProc(String hotelId, Model model) {
		if(hotelId ==""||hotelId == null) return "redirect:hotellistProc";
		hotellistSVC.hotelInfo(hotelId);
		return "forward:/admin_index?formpath=admin_hotelInfo";
	}	
	@RequestMapping("prehotelModifyProc")
	public String prehotelModifyProc(String hotelId, Model model) {
		if(session.getAttribute("hotelInfo") == null) hotellistSVC.hotelInfo(hotelId);
		return "forward:/admin_index?formpath=admin_hotelInfoModify";
	}
	
	@PostMapping("hotelModifyProc")
	public String hotelModifyProc(hotelDTO hotelInfo, Model model) {
		System.out.println("hotelModifyProc 진입");
		int result = hotellistSVC.hotelModify(hotelInfo);
//		if(result == 1) {
//			return "forward:/admin_index?formpath=admin_hotelList";
//		}
		String hotelId = hotelInfo.getHotelId();
		return "redirect:hotelInfoProc?hotelId="+hotelId;
	}	
	@RequestMapping("hoteldeleteProc")
	public String hoteldeleteProc(String hotelId, String adminId, String adminPw) {
		boolean result = hotellistSVC.hotelDelte(adminId, adminPw);
		
		if(result) return "redirect:hotellistProc"; //성공
		else return "redirect:/admin_index?formpath=hoteldelete"; // 실패
	}
	
	@RequestMapping("roomlistProc")
	public String roomlistProc(Model model, 
			@RequestParam(value = "currentPage", required = false, defaultValue = "1") int currentPage,
			String select, String search) {
		
		hotellistSVC.roomList(currentPage, select, search);//서비스 내부에서 session에 데이터를 업로드함
		return "forward:/admin_index?formpath=admin_roomList";
	}
	
	@RequestMapping("roomInfoProc")
	public String roomInfoProc(String roomId, Model model) {
		if(roomId ==""||roomId == null) return "redirect:oomlistProc";
		hotellistSVC.roomInfo(roomId);
		return "forward:/admin_index?formpath=admin_hotelInfo";
	}
	
	@RequestMapping("preroomModifyProc")
	public String preroomModifyProc(String roomId, Model model) {
		if(roomId ==""||roomId == null) return "redirect:roomlistProc";
		hotellistSVC.roomInfo(roomId);
		return "forward:/admin_index?formpath=admin_roomInfoModify";
	}
}
