<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url var="root" value="/" />
<c:url var="mypage" value="/mypage/" />
<link href="${pageContext.request.contextPath}/resources/css/mem/title_ko.css" rel="stylesheet" type="text/css">
<style>
.lnbAreaMypage .lnbMenu .m2 .sMenu li.s1 a{ background-position:0 0;}
.lnbAreaMypage .lnbMenu .m2 .sMenu li.s2 a{ background-position:0 -22px;}
.lnbAreaMypage .lnbMenu .m2 .sMenu li.s3 a{ background-position:0 -44px;}
.lnbAreaMypage .lnbMenu .m2 .sMenu li.s4 a{ background-position:0 -66px;}
</style>	
<div class="contain">
	<div class="container">
		<div class="lnbArea lnbAreaMypage">
			<div class="lnbMenu">
				<h2 class="tit">마이페이지</h2>
				<ul class="menu">
					<li class="m1 first">
						<a href="/hotel/memListResvProc"><span>예약 확인/취소</span>	</a>
					</li>
					<li class="m2 last">
						<a><span>내정보</span></a>
						<ul class="sMenu">
							<li class="s1 first">
							<a href="/hotel/memSetPwCnfm" ><span>프로필 수정</span></a>
							</li>
							<li class="s2">
								<a href="/hotel/memSetPwMod"><span>비밀번호 변경</span></a>
							</li>
							<li class="s3">
								<a href="/hotel/memListAsk"><span>문의 내역</span></a>
							</li>
							<li class="s4 last">
								<a href="/hotel/memSetPwDropfm?gubun=t"  class="on"><span>탈회요청</span></a>
							</li>
						</ul>
					</li>
				</ul>
			</div> <!-- lnbMenu -->
		</div> <!-- lnbArea lnbAreaMypage -->
<div class="contents" id="contents">
<h3>
	<font color="red" >${msg} (${dropCheck}/${memberId }) </font>
</h3>
<form action="memSetDropProc" method="post">
	<div class="ctnMypage ctnMemDis">
		<div class="location">
			<p class="list"><span class="crPosit">현재 페이지 위치 : </span> &gt; 마이페이지 &gt; 내정보  &gt; <strong>탈회요청</strong></p>
		</div>
		
		<input type="hidden" id="memberId" name="memberId" value="${memberId}" autocomplete="off">		
		<div class="mySecessionTit">
			<h4 class="tit">탈회 요청</h4>
		</div>
		<br>
		<div class="memoText">
			<p>탈회를 신청하시기 전에 아래의 유의사항을 한 번 더 확인해 주시기 바랍니다.</p>
			<ul>
				<li class="first">- 탈회를 신청하시면 번복이 불가능합니다.</li>
				<li>- 개인정보보호법에 따라 고객님의 호텔 이용기록, 개인정보 기록도 모두 삭제됩니다</li>
				<li class="last">- 탈회 신청이 완료되면 즉시 홈페이지 로그인이 제한됩니다.</li>
			</ul>
		</div>
		<br>
		<c:if test="${dropCheck == '성공'}">
			<div class="breakBox" id="success">
					<strong>${memberId}</strong> 님의 탈회 신청이 완료되었습니다.
			</div>
		</c:if>
		<!-- 
		<c:choose>
			<c:when test="${dropCheck == '성공'}">
				<div class="breakBox" id="success" style="display: none;">
					<strong>${memberId}</strong> 님의 탈회 신청이 완료되었습니다.
				</div>
			</c:when>
		</c:choose>
		 -->
		<c:if test="${dropCheck != '성공'}">
			<div class="btnList">
				<input type="submit" class="btn_application" style="position: absolute; left:45%;"/>
			</div>
		</c:if>
				
	</div> <!-- ctnMypage -->
</form>
		</div> <!-- contents -->
	</div> <!-- container -->
</div> <!-- contain -->
