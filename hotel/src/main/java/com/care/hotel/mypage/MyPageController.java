package com.care.hotel.mypage;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.care.hotel.member.DTO.memberDTO;
import com.care.hotel.member.DTO.memberPwChngDTO;

@Controller
public class MyPageController {
	@Autowired IMyPageService myPageService;
	
	private static final Logger logger = LoggerFactory.getLogger(MyPageController.class);
	
	/*//mypage sector//*/
	@RequestMapping(value="myPage")
	public String mypage_index(Model model) {
		logger.info("mypage");
		model.addAttribute("formpath", "memListResvProc");
		return "mypage_index";
	}
	
	@RequestMapping(value="mypage_index")
	public void mypage_index(String formpath, String sessionMemberId,Model model, HttpSession session) {
		logger.info("mypage_index?formpath="+formpath);
		model.addAttribute("formpath", formpath);
		
		// 수정 혹은 삭제 시 아이디 세션
		/*
		 * System.out.println("세션에 담기 전 sessionMemberId : " + sessionMemberId);
		 * if(sessionMemberId != null) { String sessionId =
		 * (String)session.getAttribute("sessionMemberId");
		 * System.out.println("세션에 저장되어 있는 sessionId : " + sessionId);
		 */
		 //if(formpath.equals("memberDelete")) { if(sessionId == null ||sessionId.equals(sessionMemberId) == false) {
			/*
			 * session.setAttribute("sessionMemberId", sessionMemberId);
			 * System.out.println("세션에 담은 후 sessionMemberId : " + sessionMemberId);
			 */
		// } 
		//}
	}
	
	@RequestMapping(value = "memListResvProc")
	public String memListResvProc(Model model, 
			@RequestParam(value = "currentPage", required = false, defaultValue = "1") int currentPage,
			String select, String startDt, String endDt, String memberId) {
		logger.info("memListResvProc GET");
		if(memberId == null) memberId ="whiteyhl";
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Calendar calendar = Calendar.getInstance();
		Date dateObj = calendar.getTime();
		if(startDt == null) 
			startDt = "2000-01-01";
		if(endDt == null) 
			endDt = sdf.format(dateObj);
		if(select == null) select = "예약일";
		startDt = startDt.replaceAll("[^0-9]", "");
		endDt = endDt.replaceAll("[^0-9]", "");
		System.out.println(currentPage + "/" + select + "/" + startDt + "/ " + endDt + "/ " + memberId);
		myPageService.memListResv(currentPage, select, startDt, endDt, memberId);//서비스 내부에서 session에 데이터를 업로드함
		return "mypage/memListResv";
//		return "forward:/mypage_index?formpath=mypage/memListResv";
	}
//	@RequestMapping(value = "memListResvProc")
//	public String memListResv(Model model, 
//			@RequestParam(value = "currentPage", required = false, defaultValue = "1") int currentPage,
//			String select, String startDt, String endDt, String memberId) {
//		logger.info("memListResvProc");
//		if(memberId == null) memberId ="whiteyhl";
//		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
//		Calendar calendar = Calendar.getInstance();
//		Date dateObj = calendar.getTime();
//		if(startDt == null) 
//			startDt = "2000-01-01";
//		if(endDt == null) 
//			endDt = sdf.format(dateObj);
//		if(select == null) select = "예약일";
//		startDt = startDt.replaceAll("[^0-9]", "");
//		endDt = endDt.replaceAll("[^0-9]", "");
//		System.out.println(currentPage + "/" + select + "/" + startDt + "/ " + endDt + "/ " + memberId);
//		myPageService.memListResv(currentPage, select, startDt, endDt, memberId);//서비스 내부에서 session에 데이터를 업로드함
////		return "mypage/memListResv";
//		return "forward:/mypage_index?formpath=mypage/memListResv";
//	}
	
	/* 관리자 회원 목록 */
	@RequestMapping(value="mypage/memListResv")
	public String memListResv() {
		logger.info("memListResv");
		return "mypage/memListResv";
	}
	
	/* 회원 목록 */
	@RequestMapping(value="resvListProc", method = RequestMethod.GET)
	public String resvListProc(Model model, 
			@RequestParam(value = "currentPage", required = false, defaultValue = "1") int currentPage,
			String select, String startDt, String endDt, String memberId) {
		logger.info("resvListProc");
		myPageService.memListResv(currentPage, select, startDt, endDt, memberId);
		return "mypage/memListResv";
//		return "forward:/mypage_index?formpath=memListResv";
	}
	
	
	/* 회원 삭제 관리자 비밀번호 확인 */
	@RequestMapping(value="/mypage/memCnclResvProc")
	public String memCnclResvProc(String memberId, String reservationNo, String msg, Model model) {
		logger.info("memCnclResvProc");
		System.out.println("memberId: " + memberId + " reservationNo : " + reservationNo);
		model.addAttribute("memberId", memberId);
		model.addAttribute("reservationNo", reservationNo);
		
		return "forward:/mypage_index?formpath=mypage/memCnclResv?reservationNo=" + reservationNo +"&msg=" + msg;
	}
	
	@RequestMapping(value="mypage/memCnclCheckProc", method = RequestMethod.POST)
	public String memCnclCheckProc(String memberId, String memberPw, String reservationNo, Model model, RedirectAttributes ra) {
		logger.info("memCnclCheckProc");
		System.out.println("memCnclCheckProc memberId : " + memberId);
		System.out.println("memCnclCheckProc memberPw : " + memberPw);
		System.out.println("memCnclCheckProc reservationNo : " + reservationNo);
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
		Calendar calendar = Calendar.getInstance();
		Date dateObj = calendar.getTime();
		String cancelDate = sdf.format(dateObj);
		
		String result = "";
		
		int check = myPageService.memResvCncl(memberId, memberPw, reservationNo, cancelDate);
		System.out.println("memCnclCheckProc check : " + check + " cancelDate : " + cancelDate);
		
		if(check == 2) {
			result = "[" + reservationNo + "] 예약을 취소했습니다.";
			model.addAttribute("msg", result);
			return "forward:/mypage_index?formpath=mypage/memListResv";
//			return "forward:/mypage/memListResv";
					//+ "?memberId=" + memberId;
		}else {
			result = "아이디와 비밀번호를 확인해 주세요.";
			ra.addFlashAttribute("msg", result);
			return "redirect:memCnclResvProc?memberId="+memberId+"&reservationNo="+reservationNo+"&msg"+result;
		}
	}
//	, method = RequestMethod.POST
	@PostMapping(value="mypage/pwCnfmProc")
	public String pwCnfmProc(String memberId, String memberPw, String gubun, Model model, RedirectAttributes ra) {
		logger.info("pwCnfmProc");
		System.out.println("pwCnfmProc gubun : " + gubun);
		System.out.println("pwCnfmProc memberId : " + memberId);
		System.out.println("pwCnfmProc memberPw : " + memberPw);
		
		model.addAttribute("memberId", memberId);
		
		String result = "";
		
		int check = myPageService.pwCnfm(memberId, memberPw);
		System.out.println("pwCnfmProc check 2(성공) : " + check);
		
		if(check == 2) {
			if(gubun == "" || gubun == null)
				return "forward:/mypage_index?formpath=mypage/memSetMbrInfo";
			else
				return "forward:/mypage_index?formpath=mypage/memSetMbrDropOut";
		}else {
			result = "아이디와 비밀번호를 확인해 주세요.";
			ra.addFlashAttribute("msg", result);
			return "redirect:pwCnfmProc"+memberId+"&memberPw="+memberPw;
		}
	}
//	, method = RequestMethod.POST
	@PostMapping(value="mypage/memSetUpdtProc")
	public String memSetUpdtProc(String memberPw, String memberId, memberDTO mem, Model model) {
		logger.info("memSetUpdtProc");
		System.out.println("getMemberId : "+mem.getMemberId());
		System.out.println("getMemberPw : "+mem.getMemberPw());
		System.out.println("getMemberNameKR : " + mem.getMemberNameKR());
		System.out.println("getMemberNameENG : " + mem.getMemberNameENG());
		
		String result = "";
		
		int check = myPageService.memSetUpdt(mem);
		System.out.println("memSetUpdtProc check 2 성공 : " + check);
		
		if(check == 2) {
			result = "[" + mem.getMemberNameKR() + "]님 프로필 정보를 수정했습니다.";
			model.addAttribute("msg", result);
			return "forward:/mypage_index?formpath=mypage/memSetMbrInfo";
		}else {
			result = "[" + mem.getMemberNameKR() + "]님 프로필 정보 수정에 실패했습니다.";
			model.addAttribute("msg", result);
			return "forward:/mypage_index?formpath=mypage/memSetPwCnfm";
		}
	}
//	, method = RequestMethod.POST
	@PostMapping(value="mypage/memSetPwUpdtProc")
	public String memSetPwUpdtProc(memberPwChngDTO mem, Model model) {
		logger.info("memSetPwUpdtProc");
		System.out.println("Id : "+mem.getMemberId());
		System.out.println("Pw : "+mem.getMemberPw());
		System.out.println("NewPw : "+mem.getMemberNewPw());
		System.out.println("NewPwCnfm : "+mem.getMemberNewPwCnfm());
		
		String result = "";
		
		int check = myPageService.memSetPwUpdt(mem);
		System.out.println("memSetPwUpdtProc check 2 성공 : " + check);
		
		if(check == 2) {
			result = "[" + mem.getMemberId() + "]님 비밀정보를 수정했습니다.";
			model.addAttribute("msg", result);
			return "forward:/mypage_index?formpath=myPage";
		}else {
			result = "[" + mem.getMemberId() + "]님 비밀정보 수정에 실패했습니다.";
			model.addAttribute("msg", result);
			return "forward:/mypage_index?formpath=mypage/memSetPwMod";
		}
	}
	
//	, method = RequestMethod.POST
	@PostMapping(value="mypage/memSetDropProc")
	public String memSetDropProc(String memberId, Model model) {
		logger.info("memSetDropProc");
		System.out.println("Id : "+memberId);
		
		String result = "";
		
		int check = myPageService.memSetDropOut(memberId);
		System.out.println("memSetDropProc check 2 성공 : " + check);
		
		if(check == 2) {
			result = "[" + memberId + "]님 회원탈회 신청이 완료되었습니다.";
			model.addAttribute("msg", result);
			return "forward:/mypage_index?formpath=myPage";
		}else {
			result = "[" + memberId + "]님 회원탈회 신청이 실패했습니다.";
			model.addAttribute("msg", result);
			return "forward:/mypage_index?formpath=mypage/memSetMbrDropOut";
		}
	}
	@RequestMapping("/mypage/memCnclResv")
	public String resvCancel() {
		return "mypage/memCnclResv";
	}
	
	@RequestMapping("/mypage/memSetPwCnfm")
	public String memSetPwCnfm() {
		return "mypage/memSetPwCnfm";
	}
	
	@RequestMapping("/mypage/memSetMbrInfo")
	public String memSetMbrInfo() {
		return "mypage/memSetMbrInfo";
	}
	
	@RequestMapping("/mypage/memSetPwMod")
	public String memSetPwMod() {
		return "mypage/memSetPwMod";
	}
	
	@RequestMapping("/mypage/memListAsk")
	public String memListAsk() {
		return "mypage/memListAsk";
	}
	
	@RequestMapping("/mypage/memSetPwDropfm")
	public String memSetPwDropfm() {
		return "mypage/memSetPwDropfm";
	}
	
	@RequestMapping("/mypage/memSetMbrDropOut")
	public String memSetMbrDropOut(String memberId, Model model) {
		model.addAttribute("memberId", memberId);
		return "mypage/memSetMbrDropOut";
	}
	
	@RequestMapping("/mypage/memSetStep1")
	public String memSetStep1() {
		return "mypage/memSetStep1";
	}
}
