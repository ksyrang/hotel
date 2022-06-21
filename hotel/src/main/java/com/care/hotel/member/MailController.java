package com.care.hotel.member;

import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.care.hotel.member.service.MailService;
import com.care.hotel.member.service.memberSvcImpl;

@Controller
public class MailController {
	@Autowired private MailService mailService;
	@Autowired private HttpSession session;
	@Autowired private memberSvcImpl memberService;
	
	private static final Logger logger = LoggerFactory.getLogger(MemJoinController.class);
	
	@ResponseBody
	@PostMapping(value = "isExistEmail", produces = "application/json; charset=UTF-8")
	public String isExistEmail(@RequestBody(required = false) String memberEmail) {
		logger.info("userIdCheck 진입");
        logger.info("전달받은 id:"+memberEmail);
		String[] checkAt = memberEmail.split("");
		int result = 0;
		for(String tmp : checkAt) {
			if(tmp.equals("@")) {
				result++;
			}
		}
        if(result !=1) {
        	session.setAttribute("emailCheck", 1);
        	return "중복 이메일 입니다.";
        }
                                 
        String msg4 = memberService.isExistEmail(memberEmail);
		if(msg4.equals("중복 이메일 입니다.")) {
			session.setAttribute("emailCheck", 1); // 1 == 중복된 이메일
		}else {
			session.removeAttribute("emailCheck");
		}
		logger.info("확인 결과:"+msg4);
		return msg4;
		
	}
	
	@ResponseBody
	@PostMapping(value="sendAuth", produces = "application/json; charset=UTF-8")
	public String sendAuth(@RequestBody(required = false) String memberEmail) {
		if(session.getAttribute("emailCheck") != null && (int)session.getAttribute("emailCheck") == 1) {
			return "중복된 이메일 입니다.";
		}else {
			if(memberEmail != null) {
				Random r = new Random();
				String number = String.format("%06d", r.nextInt(1000000)); 
				String content1 = "회원님이 받으신 이메일 인증번호는 " + number + " 입니다.";
				System.out.println("인증 번호 : " + number);
				mailService.sendMail(memberEmail, "[신난다호텔 회원가입 이메일 인증번호]", content1);
				session.setAttribute("authNumber", number);
				return "인증 번호 전송";
			}else {
			return "이메일 형식을 입력하세요.";
			}
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
