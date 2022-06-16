package com.care.hotel.mypage;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.care.hotel.Reservation.DAO.reservationDAO;
import com.care.hotel.Reservation.DTO.reservationHotelDTO;
import com.care.hotel.common.PageService;
import com.care.hotel.member.DAO.memberDAO;
import com.care.hotel.member.DTO.AllMemberDTO;
import com.care.hotel.member.DTO.memberDTO;
import com.care.hotel.member.DTO.memberExDTO;
import com.care.hotel.member.DTO.memberPwChngDTO;
import com.care.hotel.member.service.MailService;

@Service
public class MyPageServiceImpl implements IMyPageService{
	@Autowired private MailService mailService;
	@Autowired reservationDAO reservationDAO;
	@Autowired memberDAO memberDAO;
	@Autowired HttpSession session;

	@Override
	public void memListResv(int currentPage, String select, String startDt, String endDt, String memberId) {
		int pageBlock = 5; // 한 화면에 보여줄 데이터 수
		int totalCount = reservationDAO.reservationCount(select, startDt, endDt, memberId); // 총 데이터의 수 
		int end = currentPage * pageBlock; // 데이터의 끝 번호
		int begin = end+1 - pageBlock; // 데이터의 시작 번호
		
		ArrayList<reservationHotelDTO> list = reservationDAO.reservationList(begin, end, select, startDt, endDt, memberId);
		// reservationDate, checkinDate 포맷 변경
		for(int i = 0; i < list.size(); i++) {
			reservationHotelDTO resDto = list.get(i);
			String reservationDate = list.get(i).getReservationDate().substring(0, 10);
			String checkinDate = list.get(i).getCheckinDate().substring(0, 10);
			String checkoutDate = list.get(i).getCheckoutDate().substring(0, 10);
			String cancelDate = null;
			if(list.get(i).getCancelDate() != null)
				cancelDate = list.get(i).getCancelDate().substring(0, 10);
			resDto.setReservationDate(reservationDate);
			resDto.setCheckinDate(checkinDate);
			resDto.setCheckoutDate(checkoutDate);
			resDto.setCancelDate(cancelDate);
			list.set(i, resDto);
		}
		session.setAttribute("reservationList", list);
		session.setAttribute("select", select);
		session.setAttribute("startDt", startDt);
		session.setAttribute("endDt", endDt);
//		String url = "mypage_index?formpath=memListResv&currentPage=";
		String url = "mypage_index?formpath=memPageResvProc&currentPage=";
		session.setAttribute("page", PageService.getNavi(currentPage, pageBlock, totalCount, url));
		session.setAttribute("reservationCount", totalCount);
	}

	@Override
	public int memResvCncl(String memberId, String memberPw, String reservationNo, String cancelDate) {
		
		if(memberId == null || memberId  == "" || memberPw == null || memberPw == "") { 
			return 0; // 아이디 혹은 비밀번호를 확인해주세요
		} 
		memberDTO memberDto = memberDAO.memberInfo(memberId);
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		if(memberDto.getMemberId().equals(memberId) && 
				(encoder.matches(memberPw, memberDto.getMemberPw()) || memberDto.getMemberPw().equals(memberPw))) {
			reservationDAO.reservationCancel(reservationNo, cancelDate);
			session.setAttribute("email", memberDto.getMemberEmail());
			return 2; // "[" + reservationNo + "] 예약을 취소 했습니다.";
			
		} else {
			return 1; // "아이디 혹은 비밀번호를 확인해주세요.";
		}
	}
	
	@Override
	public int pwCnfm(String memberId, String memberPw) {
		
		if(memberId == null || memberId  == "" || memberPw == null || memberPw == "") { 
			return 0; // 아이디 혹은 비밀번호를 확인해주세요
		} 
		memberDTO memberDto = memberDAO.memberInfo(memberId);
		memberExDTO memberExDto = memberDAO.memberExInfo(memberId);
		AllMemberDTO allMemberDto = new AllMemberDTO();
		if(memberDto == null) {
			return 3; // DB에 존재하지 않음;
		}
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		
		if(memberDto.getMemberId().equals(memberId) && 
				(encoder.matches(memberPw, memberDto.getMemberPw()) || memberDto.getMemberPw().equals(memberPw))) {
			allMemberDto.setMemberId(memberDto.getMemberId());
			allMemberDto.setMemberNameKR(memberDto.getMemberNameKR());
			allMemberDto.setMemberNameENG(memberDto.getMemberNameENG());
			allMemberDto.setMemberBirth(memberDto.getMemberBirth());
			allMemberDto.setMemberMobile(memberDto.getMemberMobile());
			allMemberDto.setMemberEmail(memberDto.getMemberEmail());
			allMemberDto.setMemberPw(memberDto.getMemberPw());
			allMemberDto.setMemberGender(memberDto.getMemberGender());
			if(memberExDto != null) {
				allMemberDto.setMemberZipcode(memberExDto.getMemberZipcode());
				allMemberDto.setMemberAddr1(memberExDto.getMemberAddr1());
				allMemberDto.setMemberAddr2(memberExDto.getMemberAddr2());
				allMemberDto.setMemberHomePhone(memberExDto.getMemberHomePhone());
			}
			session.setAttribute("member", allMemberDto);
			return 2; // "[" + reservationNo + "] 예약을 취소 했습니다.";
		}else {
			return 1; // 비밀번호가 맞지 않음
		}
	}
	
	@Override
	public int memSetUpdt(AllMemberDTO allMemberDto) {
		if(allMemberDto.getMemberPw() == null || allMemberDto.getMemberPw()  == "") { 
			return 0;
		} 
		session.setAttribute("member", allMemberDto);
		memberDTO memberDto = memberDAO.memberInfo(allMemberDto.getMemberId());
		if(memberDto == null) return 1;
		// 비밀번호 변경시, 새 비밀번호 암호화
		if(!(memberDto.getMemberPw().equals(allMemberDto.getMemberPw()))) {
			BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
			String securePw = encoder.encode(allMemberDto.getMemberPw());
			allMemberDto.setMemberPw(securePw);
		}

		memberDAO.memberUpdate(allMemberDto);
		
		memberExDTO memberExDto = memberDAO.memberExInfo(allMemberDto.getMemberId());
		if(memberExDto != null) {
			memberExDto.setMemberId(allMemberDto.getMemberId());
			memberExDto.setMemberZipcode(allMemberDto.getMemberZipcode());
			memberExDto.setMemberAddr1(allMemberDto.getMemberAddr1());
			memberExDto.setMemberAddr2(allMemberDto.getMemberAddr2());
			memberExDto.setMemberHomePhone(allMemberDto.getMemberHomePhone());
			memberDAO.memberExUpdate(memberExDto);
		} else {
			memberExDTO insertMemberExDto = new memberExDTO();
			insertMemberExDto.setMemberId(allMemberDto.getMemberId());
			insertMemberExDto.setMemberZipcode(allMemberDto.getMemberZipcode());
			insertMemberExDto.setMemberAddr1(allMemberDto.getMemberAddr1());
			insertMemberExDto.setMemberAddr2(allMemberDto.getMemberAddr2());
			insertMemberExDto.setMemberHomePhone(allMemberDto.getMemberHomePhone());
			memberDAO.memberExInsert(insertMemberExDto);
		}
		return 2;

	}
	
	@Override
	public int memSetPwUpdt(memberPwChngDTO memberPwChngDto) {
		
		if(memberPwChngDto.getMemberPw() == null || memberPwChngDto.getMemberPw()  == ""
			|| memberPwChngDto.getMemberNewPw() == null || memberPwChngDto.getMemberNewPw()  == "" 
			|| memberPwChngDto.getMemberNewPwCnfm() == null || memberPwChngDto.getMemberNewPwCnfm()  == "") { 
			return 0;
		} 
		if(!memberPwChngDto.getMemberNewPw().equals(memberPwChngDto.getMemberNewPwCnfm())) { 
			return 1;
		} 
		memberDTO memberDto = memberDAO.memberInfo(memberPwChngDto.getMemberId());
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		if(memberDto.getMemberPw().equals(memberPwChngDto.getMemberPw())
				|| encoder.matches(memberPwChngDto.getMemberPw(), memberDto.getMemberPw())) {
			String securePw = encoder.encode(memberPwChngDto.getMemberNewPw());
			memberDto.setMemberPw(securePw);
			memberDAO.memberUpdate(memberDto);
			return 2;
		}else {
			return 3;
		}
	}
	
	
	@Override
	public int memSetDropOut(String memberId) {
		
		if(memberId == null || memberId == "") { 
			return 0;
		} 
		memberDTO memberDto = memberDAO.memberInfo(memberId);
		if(memberDto != null) {
			session.setAttribute("email", memberDto.getMemberEmail());
			memberDAO.memberDelete(memberId);
			return 2;
		}else {
			return 1;
		}
	}
}
