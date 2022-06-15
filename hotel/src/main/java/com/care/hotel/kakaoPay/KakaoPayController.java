package com.care.hotel.kakaoPay;

import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.care.hotel.payment.DTO.paymentDTO;

@Controller
public class KakaoPayController {
	
	@RequestMapping(value="kakaoPayProc")
	public String kakaoPayProc() {
		return "forward:/admin_index?formpath=kakaoPay";
	}
	
	@RequestMapping(value="kakaoPayProcPost")
	@ResponseBody
	public String kakaoPayProcPost(paymentDTO paymentDTO, String reservationStatus) {
		try {
			URL url = new URL("https://kapi.kakao.com/v1/payment/ready");
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("POST");
			conn.setRequestProperty("Authorization", "KakaoAK 391285bea24178610cfb6a2504ab18a8");
			conn.setRequestProperty("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
			conn.setDoOutput(true); // 서버로 데이터 전송
			String parameter = "cid=TC0ONETIME&";
		} catch (MalformedURLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return "";
	}
	
	/* 카카오페이 성공 페이지 */
	@RequestMapping(value="kakaoApprovalProc")
	public String kakaoApprovalProc() {
		return "forward:/admin_index?formpath=kakaoApproval";
	}
	
	/* 카카오페이 취소 페이지 */
	@RequestMapping(value="kakaoCancelProc")
	public String kakaoCancelProc() {
		return "forward:/admin_index?formpath=kakaoCancel";
	}
	
	/* 카카오페이 실패 페이지 */
	@RequestMapping(value="kakaoFailProc")
	public String kakaoFailProc() {
		return "forward:/admin_index?formpath=kakaoFail";
	}

}
