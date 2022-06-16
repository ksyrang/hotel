package com.care.hotel.kakaoPay;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLDecoder;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.care.hotel.kakaoPay.service.IKakaoPayService;
import com.care.hotel.payment.DTO.paymentDTO;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

@Controller
public class KakaoPayController {
	@Autowired
	IKakaoPayService kakaoSvc;

	@RequestMapping(value = "kakaoPayProc")
	public String kakaoPayProc(paymentDTO paymentDTO, String reservationStatus) {
		return "forward:/admin_index?formpath=kakaoPay";
	}

	// 카카오페이 ajax
	@RequestMapping(value = "kakaoPayReady")
	@ResponseBody
	public String kakaoPayReady(@RequestParam HashMap<String, String> map) {
		System.out.println("카카오페이 ajax 진입");
		System.out.println("파라미터 사용?" + map.get("partner_order_id"));
	
		try {
			URL url = new URL("https://kapi.kakao.com/v1/payment/ready");
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("POST"); //POST방식으로 요청
			conn.setRequestProperty("Authorization", "KakaoAK 391285bea24178610cfb6a2504ab18a8"); //인증
			conn.setRequestProperty("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
			conn.setDoInput(true);
			conn.setDoOutput(true);
			
			Map<String, String> parameter = new HashMap<String, String>();
			parameter.put("cid", "TC0ONETIME");
			parameter.put("partner_order_id", map.get("partner_order_id"));
			parameter.put("partner_user_id",  map.get("partner_user_id"));
			parameter.put("item_name", map.get("item_name"));
			parameter.put("quantity", "1");
			parameter.put("total_amount", map.get("total_amount"));
			parameter.put("tax_free_amount", "0");
			parameter.put("vat_amount", "0");
			parameter.put("approval_url", "http://localhost:8085/hotel/kakaoApprovalProc");
			parameter.put("cancel_url", "http://localhost:8085/hotel/kakaoCancelProc");
			parameter.put("fail_url", "http://localhost:8085/hotel/kakaoFailProc");
			
			String string_params = new String();
			for(Map.Entry<String, String> elem : parameter.entrySet()) {
				string_params += (elem.getKey() + "=" + elem.getValue() + "&");
			}
			
			/*
			conn.getOutputStream().write(string_params.getBytes()); // 바이트 형태로 파라미터 전달
			BufferedReader in = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			
			//카카오는 json형태로 응답
			JsonParser parser = new JsonParser();
			JsonObject obj = (JsonObject)parser.parse(in);
			 */
			
			OutputStream output = conn.getOutputStream(); // 데이터 보내는 곳
			DataOutputStream dataOutput = new DataOutputStream(output);
			
			//String parameterD = URLDecoder.decode(parameter, "utf-8");// url 디코딩
			//System.out.println("파라미터 디코딩 : " + parameterD);
			
			
			System.out.println("string_params : " + string_params);
			dataOutput.writeBytes(string_params); // 바이트로 형변환(input,outputStream은 바이트 형식으로 데이터를 주고받음
			dataOutput.close(); // 서버에 전송
			
			int result = conn.getResponseCode(); // 전송이 잘됐는지 확인하기
			
			InputStream input; // 데이터 받는 곳
			if(result == 200) {
				// 성공
				input = conn.getInputStream();
			}else {
				// 실패
				input = conn.getErrorStream();
			}
			InputStreamReader reader = new InputStreamReader(input); // 받아온 데이터 읽기
			BufferedReader buffer = new BufferedReader(reader); // 형변환
			
			return buffer.readLine();
			
		} catch (MalformedURLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
		 
		return map.get("quantity");
	}

	/* 카카오페이 성공 페이지 */
	@RequestMapping(value = "kakaoApprovalProc")
	public String kakaoApprovalProc() {
		return "forward:/admin_index?formpath=kakaoApproval";
	}

	/* 카카오페이 취소 페이지 */
	@RequestMapping(value = "kakaoCancelProc")
	public String kakaoCancelProc() {
		return "forward:/admin_index?formpath=kakaoCancel";
	}

	/* 카카오페이 실패 페이지 */
	@RequestMapping(value = "kakaoFailProc")
	public String kakaoFailProc() {
		return "forward:/admin_index?formpath=kakaoFail";
	}

}
