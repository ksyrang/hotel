package com.care.hotel.mypage;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.care.hotel.common.PageService;
import com.care.hotel.Reservation.DAO.reservationDAO;
import com.care.hotel.Reservation.DTO.reservationAllDTO;
import com.care.hotel.member.DAO.memberDAO;
import com.care.hotel.member.DTO.memberDTO;

@Service
public class MyPageServiceImpl implements IMyPageService{
	@Autowired reservationDAO reservationDAO;
	@Autowired memberDAO memberDAO;
	@Autowired HttpSession session;

	@Override
	public void memListResv(int currentPage, String select, String startDt, String endDt, String memberId) {
		int pageBlock = 5; // 한 화면에 보여줄 데이터 수
		int totalCount = reservationDAO.reservationCount(select, startDt, endDt, memberId); // 총 데이터의 수 
		int end = currentPage * pageBlock; // 데이터의 끝 번호
		int begin = end+1 - pageBlock; // 데이터의 시작 번호
		
		ArrayList<reservationAllDTO> list = reservationDAO.reservationList(begin, end, select, startDt, endDt, memberId);
		session.setAttribute("reservationList", list);
		session.setAttribute("select", select);
		session.setAttribute("startDt", startDt);
		session.setAttribute("endDt", endDt);
		String url = "memListResvProc?currentPage=";
		session.setAttribute("page", PageService.getNavi(currentPage, pageBlock, totalCount, url));
		session.setAttribute("reservationCount", totalCount);
	}

	@Override
	public int memResvCncl(String memberId, String memberPw, String reservationNo, String cancelDate) {
		
		if(memberId == null || memberId  == "" || memberPw == null || memberPw == "") { 
			return 0; // 아이디 혹은 비밀번호를 확인해주세요
		} 
		memberDTO memberDto = memberDAO.memberInfo(memberId);
		if(memberDto.getMemberId().equals(memberId) && memberDto.getMemberPw().equals(memberPw)) {
			reservationDAO.reservationCancel(reservationNo, cancelDate);
			return 2; // "[" + reservationNo + "] 예약을 취소 했습니다.";
			
		} else {
			return 1; // "아이디 혹은 비밀번호를 확인해주세요.";
		}
	}
}
