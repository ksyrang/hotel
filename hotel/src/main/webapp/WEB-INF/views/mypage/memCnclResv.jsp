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
#loading { width: 100%; height: 100%; top: 0; left: 0; position: fixed; display: block; opacity: 0.8; background: white; z-index: 99; text-align: center; }
#loading > img { position: absolute; top: 50%; left: 50%; z-index: 100; }
</style>
<style>
/* Start by LYH : 2022-06-18 20:25)*/
#loading { width: 100%; height: 100%; top: 0; left: 0; position: fixed; display: block; opacity: 0.6; background: #e4e4e4; z-index: 99; text-align: center; }
#loading > img { position: absolute; top: 50%; left: 50%; z-index: 100; }
#loading > p { position: absolute; top: 57%; left: 43%; z-index: 101; }
</style>
<!--항상 최신버전의 제이쿼리를 사용한다-->
<script src="http://code.jquery.com/jquery-latest.min.js"></script>	
<script>
	$(document).ready(function() {
		$('#loading').hide();
		$('#f').submit(function(){
		    $('#loading').show();
		    return true;
		});
	});
</script>
<!--로딩바-->
<div id="loading" style="margin-left: 0px;">
	<img src="${pageContext.request.contextPath}/resources/images/ko/common/loadingAnimation1.gif" alt="loading">
    <p>처리중입니다..잠시기다려주세요.</p>
</div>
<!-- End by LYH : 2022-06-18 20:25) --> 

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
								<a href="/hotel/memSetPwCnfm"><span>프로필 수정</span></a>
							</li>
							<li class="s2">
								<a href="/hotel/memSetPwMod"><span>비밀번호 변경</span></a>
							</li>
							<li class="s3">
								<a href="/hotel/memListAsk"><span>문의 내역</span></a>
							</li>
							<li class="s4 last">
								<a href="/hotel/memSetPwDropfm?gubun=t"><span>탈회요청</span></a>
							</li>
						</ul>
					</li>
				</ul>
			</div> <!-- lnbMenu -->
		</div> <!-- lnbArea lnbAreaMypage -->
<div class="contents" id="contents">
<!-- 
<div id="loading"><img src="${pageContext.request.contextPath}/resources/images/ko/common/loadingAnimation.gif" alt="loading"></div>
 -->
<!-- 
<h3>
	<font color="red" >${msg } </font>
</h3>
 -->
<form action="memCnclCheckProc" method="post" id="f">
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

		<div style="height: 30px;">
			<h2>
				<font size="2" color="#874A4A" face="돋음">[ ${userId} ] 님의 [ ${reservationNo} ] 예약을 취소 하시겠습니까?</font>
			</h2>
		</div>
		<input type="hidden" name="reservationNo" value="${reservationNo}" >
		<input type="hidden" name="memberId" id="memberId" value="${userId}" >
		<table class="tableTypeA tableUserInfo1" summary="아이디,비밀번호로 구성된 테이블">
			<caption>예약 확인/취소</caption>
			<colgroup>
				<col width="17%" class="col1">
				<col width="20%" class="col2">
				<col class="col3">
			</colgroup>
			<tbody>
				<tr class="first">
					<th scope="row" class="first"><label>아이디</label></th>
					<td class="first">
						${userId}
					</td>
				</tr>
				<tr class="last">
					<th scope="row" class="last"><label for="memberPw" class="pw">비밀번호</label></th>
					<td class="last">
						<input type="password" class="pw uiform password" id="memberPw" name="memberPw" placeholder="PASSWORD" maxlength="60" >
					</td>
					<td>
							<h3><font color="red" >${msg } </font></h3>
					</td>
				</tr>
			</tbody>
		</table>
		<div class="btnList">
			<input type="submit" value="확인" class="btnConfirm">
	<!-- 
	 		<input type="button" value="확인" onclick="check();" class="btnConfirm">
	 -->
		</div>
	</div> <!-- ctnMypage ctnMypageRsv ctnMypageRsvRmPack rewards_N -->
</form>
</div> <!-- contents -->
	</div> <!-- container -->
</div> <!-- contain -->
