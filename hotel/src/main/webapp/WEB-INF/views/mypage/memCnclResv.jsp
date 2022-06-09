<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url var="root" value="/" />
<c:url var="mypage" value="/mypage/" />
<link href="${pageContext.request.contextPath}/resources/css/mem/title_ko.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/css/admin/amdin_memberList.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/css/admin/admin_memberDelete.css" rel="stylesheet" type="text/css">
<style>
.lnbAreaMypage .lnbMenu .m2 .sMenu li.s1 a{ background-position:0 0;}
.lnbAreaMypage .lnbMenu .m2 .sMenu li.s2 a{ background-position:0 -22px;}
.lnbAreaMypage .lnbMenu .m2 .sMenu li.s3 a{ background-position:0 -44px;}
.lnbAreaMypage .lnbMenu .m2 .sMenu li.s4 a{ background-position:0 -66px;}
.mypageWrap .boxRoomPack .hTit .titCncl{ background:url(../../ko/common/mypage/myRsvTit2.gif) no-repeat; width:200px; height:30px; line-height:100px; overflow:hidden;}
</style>
<script>
	function check() {
		adminId = document.getElementById('memberId');
		adminPw = document.getElementById('memberPw');
		
		if(memberId.value == "" || memberPw.value == "") {
			alert('# 아이디 혹은 비밀번호를 확인해주세요.');
			return;
		}
		
		document.getElementById('f').submit();
	}
</script>
<div class="contain">
	<div class="container">
		<div class="lnbArea lnbAreaMypage">
			<div class="lnbMenu">
				<h2 class="tit">마이페이지</h2>
				<ul class="menu">
					<li class="m1 first">
						<!-- 선택시 a태그에 class="on" -->
					<a href="/hotel/mypage/memListResv"><span>예약 확인/취소</span>	</a>
				</li>
				<li class="m2 last">
					<a><span>내정보</span></a>
					<ul class="sMenu">
						<li class="s1 first">
							<a href="/hotel/mypage/memSetPwCnfm"><span>프로필 수정</span></a>
						</li>
						<li class="s2">
							<a href="/hotel/mypage/memSetPwMod"><span>비밀번호 변경</span></a>
						</li>
						<li class="s3">
							<a href="/hotel/mypage/memListAsk"><span>문의 내역</span></a>
						</li>
						<li class="s4 last">
							<a href="/hotel/mypage/memSetPwDropfm?gubun=t"><span>탈회요청</span></a>
						</li>
					</ul>
				</li>
			</ul>
		</div> <!-- lnbMenu -->
	</div> <!-- lnbArea lnbAreaMypage -->
<div class="contents" id="contents">
		
	<div class="ctnMypage ctnMypageRsv ctnMypageRsvRmPack rewards_N">
		<div class="location">
			<p class="list">
				<span class="crPosit">현재 페이지 위치 : </span> &gt; 마이페이지 &gt; 
				<strong>예약 확인/취소</strong>
			</p>
		</div>

		<div class="myRservationTit">
			<h4 class="tit">예약 확인/취소</h4>
		</div>

		<div class="topMsg">객실 및 패키지, 스파, 다이닝 예약 내역을 확인하실 수 있습니다.</div>

		<div class="mypageWrap">
			<div class="box boxRoomPack">
				<div class="hTit">
					<h5 class="titCncl">Room/Package(객실/패키지)</h5>
				</div>
				<div align="center">${reservationNo } 예약을 정말 취소 하시겠습니까?</div>  
				<div align="center" class="delteTabDiv">
					<form action="memCnclCheckProc" method="post" id="f">
						<table class="adminLoginTable">
							<tr>
								<th>아이디 </th>
								<td><input type="text" id="memberId" name="memberId" placeholder="ID" class="login_input"></td>
							</tr>
							<tr>
								<th>비밀번호</th>
								<td><input type="password" id="memberPw" name="memberPw" placeholder="PASSWORD" class="login_input"></td>
							</tr>
							<tr>
								<td colspan="2">
								<input type="button" value="확인" onclick="check();" class="btnConfirm">
								</td>
							</tr>
						</table>
						<input type="hidden" name="reservationNo" value="${reservationNo }" >
					</form>
				</div>       
			</div> <!-- box boxRoomPack -->
		</div> <!-- mypageWrap -->
	</div> <!-- ctnMypage ctnMypageRsv ctnMypageRsvRmPack rewards_N -->
		</div> <!-- contents -->
	</div> <!-- container -->
</div> <!-- contain -->
