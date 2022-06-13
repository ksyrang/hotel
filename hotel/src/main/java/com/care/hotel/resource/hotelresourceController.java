package com.care.hotel.resource;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.care.hotel.resource.service.IhotelresourceSvc;
import com.care.hotel.resourceDTO.hotelDTO;
import com.care.hotel.resourceDTO.roomDTO;

@Controller
public class hotelresourceController {
	
	@Autowired IhotelresourceSvc hotelresSVC;
	@Autowired HttpSession session;
	
	@RequestMapping("hotellistProc")
	public String hotellistProc(Model model, 
			@RequestParam(value = "currentPage", required = false, defaultValue = "1") int currentPage,
			String select, String search) {
		hotelresSVC.hotelList(currentPage, select, search);//서비스 내부에서 session에 데이터를 업로드함
		return "forward:/admin_index?formpath=admin_hotelList";
	}
	@RequestMapping("hotelInfoProc")
	public String hotelInfoProc(String hotelId, Model model) {
		if(hotelId ==""||hotelId == null) return "redirect:hotellistProc";
		hotelresSVC.hotelInfo(hotelId);
		return "forward:/admin_index?formpath=admin_hotelInfo";
	}	
	@RequestMapping("prehotelModifyProc")
	public String prehotelModifyProc(String hotelId, Model model) {
		if(session.getAttribute("hotelInfo") == null) hotelresSVC.hotelInfo(hotelId);
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
		int result = hotelresSVC.hotelModify(hotelInfo);
		System.out.println("업데이트 결과"+result);		
//		if(result == 1) {
//			return "forward:/admin_index?formpath=admin_hotelList";
//		}
		String hotelId = hotelInfo.getHotelId();
		return "redirect:/hotelInfoProc?hotelId="+hotelId;
	}	
	@RequestMapping("hoteldeleteProc")
	public String hoteldeleteProc(String adminId, String adminPw) {
		String hotelId = (String)session.getAttribute("hotelId");
		boolean result = hotelresSVC.hotelDelte(hotelId, adminId, adminPw);
		
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
		
		hotelresSVC.roomList(currentPage, select, search);//서비스 내부에서 session에 데이터를 업로드함
		return "forward:/admin_index?formpath=admin_roomList";
	}
	
	@RequestMapping("roomInfoProc")
	public String roomInfoProc(String roomId, Model model) {
		if(roomId ==""||roomId == null) return "redirect:roomlistProc";
		hotelresSVC.roomInfo(roomId);
		return "forward:/admin_index?formpath=admin_roomInfo";
	}
	
	@RequestMapping("preroomModifyProc")
	public String preroomModifyProc(String roomId, Model model) {
		if(roomId ==""||roomId == null) return "redirect:roomlistProc";
		hotelresSVC.roomInfo(roomId);
		return "forward:/admin_index?formpath=admin_roomInfoModify";
	}
	
	@RequestMapping("roomModifyProc")
	public String roomModifyProc(roomDTO roomInfo, Model model) {
	
		hotelresSVC.roomModify(roomInfo);
		String roomId = roomInfo.getRoomId();
		return "redirect:/roomInfoProc?roomId="+roomId;
	}
	
	@RequestMapping("roomdeleteProc")
	public String roomdeleteProc(String adminId, String adminPw) {
		String roomId = (String)session.getAttribute("roomId");
		System.out.println("roomId : "+roomId);
		boolean result = hotelresSVC.roomDelete(roomId, adminId, adminPw);
		if(result) {
			session.removeAttribute("roomId");
			return "redirect:roomlistProc"; //성공
		}
		else return "redirect:/admin_index?formpath=admin_roomdelete"; // 실패
	}
	
	@RequestMapping("preroomaddProc")
	public String preroomaddProc(Model model) {
		hotelresSVC.allhotelList();
		return "redirect:/admin_index?formpath=admin_roomAdd";
	}
	
	@RequestMapping("roomAddProc")
	public String roomAddProc(roomDTO roomInfo, String hotelSel) {
		roomInfo.setHotelId(hotelSel);
		session.setAttribute("addroomInfo", roomInfo);
		int check = hotelresSVC.roomcheck(roomInfo.getRoomId());		
		System.out.println("check num: "+check);
		if(check > 0) {
			return "forward:/preroomaddProc";
		}
		hotelresSVC.roomAdd(roomInfo);
		session.removeAttribute("addroomInfo");
//		if(result == 1) return "forward:/roomlistProc"; //이상 발생
		
		return "redirect:/roomlistProc";//성공
		
	}
	@RequestMapping("hoteladdProc")
	public String hoteladdProc(hotelDTO hotelInfo, String hotelPwC) {
		session.setAttribute("hotelAdd", hotelInfo);
		if(hotelInfo.getHotelId() == null|| hotelInfo.getHotelId() == "")return "redirect:/admin_index?formpath=admin_hotelAdd";			
		if(!hotelInfo.getHotelPw().equals(hotelPwC)) return "redirect:/admin_index?formpath=admin_hotelAdd";			
		//확인 사항 : hotelId, hotelName
		hotelDTO check = hotelresSVC.hotelCheck(hotelInfo.getHotelId());
		if(check == null) {//check.getHotelId()==null || check.getHotelId()=="" || check.getHotelName()==null || check.getHotelName()!=""
			session.removeAttribute("hotelAdd");
			hotelresSVC.hotelAdd(hotelInfo);
		}else return "redirect:/admin_index?formpath=admin_hotelAdd";
		//유일성 비교 완료			
		return "redirect:/hotellistProc";
	}

	
}
