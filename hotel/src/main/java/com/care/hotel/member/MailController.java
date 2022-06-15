package com.care.hotel.member;

import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.care.hotel.member.service.MailService;

@Controller
public class MailController {
	@Autowired private MailService mailService;
	@Autowired private HttpSession session;
	
	@ResponseBody
	@PostMapping(value="sendAuth", produces = "application/json; charset=UTF-8")
	public String sendAuth(@RequestBody(required = false) String email) {
		if(email != null) {
			Random r = new Random();
			String number = String.format("%06d", r.nextInt(1000000)); 
			System.out.println("인증 번호 : " + number);
			mailService.sendMail(email, "[인증번호]", number);
			session.setAttribute("authNumber", number);
			return "인증 번호 전송";
		}else {
			return "이메일을 입력하세요.";
		}
	}
	
	@ResponseBody
	@PostMapping(value="checkAuth", produces = "application/json; charset=UTF-8")
	public String checkAuth(@RequestBody(required = false) Map<String, String> map) {
		System.out.println("고객이 입력한 인증 번호 : " + map.get("authNumber"));
		
		// sendAuth 메소드에서 생성한 인증번호와 고객이 입력한 인증번호를 비교
		String sessionAuthNumber = (String)session.getAttribute("authNumber");
		String clientAuthNumber = map.get("authNumber");
		if(sessionAuthNumber == null ) {
			return "인증 번호를 생성하세요.";
		}
		if(clientAuthNumber.isEmpty()) {
			return "인증 번호를 입력하세요.";
		}
		
		session.setAttribute("authStatus", false);
		if(sessionAuthNumber.equals(clientAuthNumber)) {
			session.setAttribute("authStatus", true);
			return "인증 성공";
		}
		
		return "인증 실패";
	}
	
	@ResponseBody
	@PostMapping(value="sendResvCnclMail", produces = "application/json; charset=UTF-8")
	public String sendResvCnclMail(@RequestBody(required = false) String email, String reservationNo) {
		if(email != null) {
			String cnclMsg = "예약번호 ( "+reservationNo+" ) 가 취소 되었습니다.";
			mailService.sendMail(email, "[예약 취소]", cnclMsg);
			return "예약 취소 메일 전송";
		}else {
			return "이메일을 입력하세요.";
		}
	}
	
}
