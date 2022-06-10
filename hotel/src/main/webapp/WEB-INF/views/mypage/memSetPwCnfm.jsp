<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="../common/main_header.jsp" %>
<c:url var="root" value="/" />
<c:url var="mypage" value="/mypage/" />
<link href="${pageContext.request.contextPath}/resources/css/mem/title_ko.css" rel="stylesheet" type="text/css">
<style>
.lnbAreaMypage .lnbMenu .m2 .sMenu li.s1 a{ background-position:0 0;}
.lnbAreaMypage .lnbMenu .m2 .sMenu li.s2 a{ background-position:0 -22px;}
.lnbAreaMypage .lnbMenu .m2 .sMenu li.s3 a{ background-position:0 -44px;}
.lnbAreaMypage .lnbMenu .m2 .sMenu li.s4 a{ background-position:0 -66px;}
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
						<a href="/hotel/myPage"><span>예약 확인/취소</span></a>
					</li>
					<li class="m2 last">
						<a><span>내정보</span></a>
						<ul class="sMenu">
							<li class="s1 first">
								<a href="/hotel/mypage/memSetPwCnfm" class="on"><span>프로필 수정</span></a>
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
			</div>  <!-- lnbMenu -->
		</div> <!-- lnbArea lnbAreaMypage -->
<div class="contents" id="contents">
<h3>
	<font color="red" >${msg } </font>
</h3>
<!-- <form name="pwCnfmForm" id="pwCnfmForm" method="post" action="">  -->
<form action="pwCnfmProc" method="post" id="f">
	<div class="ctnMypage ctnUserInfo1">
		<div class="location">
			<p class="list">
				<span class="crPosit">현재 페이지 위치 : </span> &gt; 마이페이지 &gt; 내정보  &gt; 
				<strong>프로필 수정</strong>
			</p>
		</div>
		
		<div class="myProfilemodifyTit">
			<h4 class="tit">프로필 수정</h4>
		</div>
		
		<div class="msgBox">프로필 정보를 안전하게 보호하기 위해 비밀번호를 다시 한번 확인합니다.</div>
		<input type="hidden" id="gubun" name="gubun" value="${gubun}" autocomplete="off">
		<table class="tableTypeA tableUserInfo1" summary="아이디,비밀번호로 구성된 테이블">
			<caption>프로필 수정</caption>
			<colgroup>
				<col width="17%" class="col1">
				<col class="col2">
			</colgroup>
			<tbody>
				<tr class="first">
					<th scope="row" class="first"><label for="memberId" class="id">아이디</label></th>
					<td class="first">
						<input type="text" class="login_input" id="memberId" name="memberId" placeholder="ID" maxlength="20">
					</td>
				</tr>
				<tr class="last">
					<th scope="row" class="last"><label for="memberPw" class="pw">비밀번호</label></th>
					<td class="last">
						<input type="password" class="pw uiform password" id="memberPw" name="memberPw" placeholder="PASSWORD" maxlength="20" >
					</td>
				</tr>
			</tbody>
		</table>
		<div class="btnList">
			<input type="button" value="확인" onclick="check();" class="btnConfirm">
		</div>
	</div> <!-- "ctnMypage ctnUserInfo1" -->
</form>
</div> <!-- contents -->
	</div> <!-- container -->
</div> <!-- contain -->
<%@ include file="../common/main_footer.jsp" %>