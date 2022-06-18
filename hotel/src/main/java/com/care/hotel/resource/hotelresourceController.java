package com.care.hotel.resource;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.care.hotel.resource.service.IhotelresourceSvc;
import com.care.hotel.resourceDTO.hotelDTO;
import com.care.hotel.resourceDTO.roomDTO;
import com.care.hotel.resourceDTO.roomVO;

@Controller
public class hotelresourceController {
	
	@Autowired IhotelresourceSvc hotelresSVC;
	@Autowired HttpSession session;
	@Value("${ADMIN:admin}")private String ADMINID;
	@Value("${ADMPW:admin}")private String ADMINPW;
	
	
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
		hotelresSVC.hotelInfo(hotelId);
		return "forward:/admin_index?formpath=admin_hotelInfoModify";
	}
	
	@PostMapping("hotelModifyProc")
	public String hotelModifyProc(hotelDTO hotelInfo, String hotelPw, String hotelPwC, Model model) {

		if((hotelPw == null || hotelPw.isEmpty()) && (hotelPwC == null || hotelPwC.isEmpty())) {//null일 경우 기존의 PW를 입력
			hotelInfo.setHotelPw(((hotelDTO)session.getAttribute("hotelInfo")).getHotelPw());
		}
		else if(!hotelPw.equals(hotelPwC)) {
			model.addAttribute("msg", "비밀번호 불일치");
			return "forward:/admin_index?formpath=admin_hotelInfoModify";
		}
		int result = hotelresSVC.hotelModify(hotelInfo);

		String hotelId = hotelInfo.getHotelId();
		return "redirect:/hotelInfoProc?hotelId="+hotelId;
	}	
	@RequestMapping("hoteldeleteProc")
	public String hoteldeleteProc(String adminId, String adminPw) {
		String hotelId = (String)session.getAttribute("hotelId");
		boolean result = hotelresSVC.hotelDelte(hotelId, adminId, adminPw);
		
		if(result) {
			session.removeAttribute("hotelId");
			String userId = (String)session.getAttribute("userId");
			if(userId.equals("admin")) return "redirect:hotellistProc"; //성공
			else return "redirect:/admin";
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
		if(roomId ==""||roomId == null|| roomId.isEmpty()) return "redirect:roomlistProc";
		roomDTO roomInfo = hotelresSVC.roomInfo(roomId);
		roomInfo = hotelresSVC.roomIdProc(roomInfo);
		roomVO roomvo = hotelresSVC.roomIdProc(roomInfo);
		model.addAttribute("roomInfo", roomvo);
		return "forward:/admin_index?formpath=admin_roomInfo";
	}
	
	@RequestMapping("preroomModifyProc")
	public String preroomModifyProc(String roomId, Model model) {
		if(roomId ==""||roomId == null) {
			return "redirect:/roomlistProc";
		}
		roomDTO roomInfo = hotelresSVC.roomInfo(roomId);
		roomVO roomvo = hotelresSVC.roomIdProc(roomInfo);
		model.addAttribute("roomInfo", roomvo);
		return "forward:/admin_index?formpath=admin_roomModify";
	}
	
	@RequestMapping("roomModifyProc")
	public String roomModifyProc(roomDTO roomInfo, Model model) {

		hotelresSVC.roomModify(roomInfo);
		return "redirect:/roomlistProc";
	}
	
	@RequestMapping("roomdeleteProc")
	public String roomdeleteProc(Model model, String roomId, String msg) {
//		System.out.println("getproc roomId:"+roomId);
		model.addAttribute("roomId", roomId);
		return "forward:/admin_index?formpath=admin_roomDelete";
	}
	
	@PostMapping("roomdeletecheckProc")
	public String roomdeleteProc(String roomId, String adminId, String adminPw, Model model) {

		if(!(ADMINID.equals(adminId)&&ADMINPW.equals(adminPw))) {
			model.addAttribute("msg","입력정보 오류 입니다.");
			model.addAttribute("roomId",roomId);
			return "forward:/roomdeleteProc";
		}

		int result = hotelresSVC.roomDelete(roomId);
		if(result < 0) {//실패
			model.addAttribute("msg","삭제 중 이상 발생 관리자에게 문의해주세요.");
			return "forward:/roomdeleteProc";
		}
		//성공
		model.addAttribute("msg",roomId+"의 삭제가 완료 되었습니다.");
		return "redirect:roomlistProc";
	}
	
	@RequestMapping("roomAddProc")
	public String preroomaddProc(Model model) {
		String userId = (String)session.getAttribute("userId");
		if(userId == null|| userId==""|| userId.isEmpty()) {
			model.addAttribute("msg","로그인 세션이 만료되었습니다. 로그인 페이지로 이동합니다.");
			return "forward:/index?formpath=login";
		}
		if(userId.equals(ADMINID)) {//관리자로 진입
			hotelresSVC.allhotelList();
			return "forward:/admin_index?formpath=admin_roomAdd";
		}
		else {
			return "forward:/admin_index?formpath=admin_roomAdd";
		}
	}
	
	@PostMapping("roomAddCheckProc")
	public String roomAddProc(roomVO roomInfo, Model model) {

		model.addAttribute("addroomInfo", roomInfo);
		
		hotelDTO tmp = hotelresSVC.hotelInfo(roomInfo.getHotelId());
		model.addAttribute("hotelName",tmp.getHotelName());
		
		int check = hotelresSVC.roomcheck(roomInfo.getHotelId()+"-"+roomInfo.getRoomIdVO());		
		if(check > 0) {
			model.addAttribute("msg", "등록되어 있는 방 아이디 입니다.");
			return "forward:/roomAddProc";
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
