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
import com.care.hotel.resourceDTO.roomDTO;

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
	public String hotelModifyProc(hotelDTO hotelInfo, String hotelPw, String hotelPwC, Model model) {
		if((hotelPw == null || hotelPw.isEmpty()) && (hotelPwC == null || hotelPwC.isEmpty())) {//null일 경우 기존의 PW를 입력
			hotelInfo.setHotelPw(((hotelDTO)session.getAttribute("hotelInfo")).getHotelPw());
		}
		else if(!hotelPw.equals(hotelPwC)) {
			return "forward:/admin_index?formpath=admin_hotelInfoModify";
		}
		System.out.println("pw : "+hotelInfo.getHotelPw());
		int result = hotellistSVC.hotelModify(hotelInfo);
		System.out.println("업데이트 결과"+result);		
//		if(result == 1) {
//			return "forward:/admin_index?formpath=admin_hotelList";
//		}
		String hotelId = hotelInfo.getHotelId();
		return "redirect:hotelInfoProc?hotelId="+hotelId;
	}	
	@RequestMapping("hoteldeleteProc")
	public String hoteldeleteProc(String adminId, String adminPw) {
		String hotelId = (String)session.getAttribute("hotelId");
		boolean result = hotellistSVC.hotelDelte(hotelId, adminId, adminPw);
		
		if(result) {
			session.removeAttribute("hotelId");
			return "redirect:hotellistProc"; //성공
		}
		else return "redirect:/admin_index?formpath=admin_hoteldelete"; // 실패
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
		if(roomId ==""||roomId == null) return "redirect:roomlistProc";
		hotellistSVC.roomInfo(roomId);
		return "forward:/admin_index?formpath=admin_roomInfo";
	}
	
	@RequestMapping("preroomModifyProc")
	public String preroomModifyProc(String roomId, Model model) {
		if(roomId ==""||roomId == null) return "redirect:roomlistProc";
		hotellistSVC.roomInfo(roomId);
		return "forward:/admin_index?formpath=admin_roomInfoModify";
	}
	
	@RequestMapping("roomModifyProc")
	public String roomModifyProc(roomDTO roomInfo, Model model) {
		int result = hotellistSVC.roomModify(roomInfo);
//		if(result == 1) {
//			return "forward:/admin_index?formpath=admin_hotelList";
//		}
		String roomId = roomInfo.getRoomId();
		return "redirect:roomInfoProc?roomId="+roomId;
	}
	
	@RequestMapping("roomdeleteProc")
	public String roomdeleteProc(String adminId, String adminPw) {
		String roomId = (String)session.getAttribute("roomId");
		System.out.println("roomId : "+roomId);
		boolean result = hotellistSVC.roomDelete(roomId, adminId, adminPw);
		if(result) {
			session.removeAttribute("roomId");
			return "redirect:roomlistProc"; //성공
		}
		else return "redirect:/admin_index?formpath=admin_roomdelete"; // 실패
	}
	
}
