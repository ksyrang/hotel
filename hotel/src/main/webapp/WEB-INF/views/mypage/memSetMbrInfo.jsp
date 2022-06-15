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
<script>
	function check() {
		memberId = document.getElementById('memberId');
		memberPw = document.getElementById('memberPw');
		memberNameKR = document.getElementById('memberNameKR');
		memberNameENG = document.getElementById('memberNameENG');
		memberBirth = document.getElementById('memberBirth');
		memberMobile = document.getElementById('memberMobile');
		memberGender = document.getElementById('memberGender');
		
		if(memberPw.value == "") { alert('# 비밀번호를 입력하세요.'); return; }
		if(memberBirth.value == "") { alert('# 생년월일을 입력하세요.'); return; }
		if(memberEmail.value == "") { alert('# 이메일을 입력하세요.'); return; }
		if(memberMobile.value == "") { alert('# 휴대전화를 입력하세요.'); return; }
		
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
						<a href="/hotel/memListResvProc"><span>예약 확인/취소</span>	</a>
					</li>
					<li class="m2 last">
						<a><span>내정보</span></a>
						<ul class="sMenu">
							<li class="s1 first">
							<a href="/hotel/memSetPwCnfm" class="on"><span>프로필 수정</span></a>
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
<h3>
	<font color="red" >${msg } </font>
</h3>
<form action="memSetUpdtProc" id="f">
	<div class="ctnMypage ctnUserInfo2">
		<div class="location">
			<p class="list"><span class="crPosit">현재 페이지 위치 : </span> &gt; 마이페이지 &gt; 내정보 &gt; <strong>프로필 수정</strong></p>
		</div>
		
		<div class="myProfilemodifyTit">
			<h4 class="tit">프로필 수정</h4>
		</div>
		
		<div class="msg">고객님의 정보를 언제든지 확인, 변경하실 수 있습니다.
			<c:choose>
				<c:when test="${msg eq '' || msg eq null}">
					<strong style="color: gray">고객님의 정보를 언제든지 확인, 변경하실 수 있습니다.</strong>
				</c:when>
				<c:otherwise>
					<strong style="color: red">${msg }</strong>
				</c:otherwise>
			</c:choose>
		</div>
				
		<!-- <c:set var="member" value="${sessionScope.member}"/> -->
		<input type="hidden" id="memberId" name="memberId" value="${member.memberId}" autocomplete="off">
		<input type="hidden" id="memberGender" name="memberGender" value="${member.memberGender}" autocomplete="off"> 
		<input type="hidden" id="memberPw" name="memberPw" value="${member.memberPw}" autocomplete="off"> 
		<input type="hidden" id="memberEmail" name="memberEmail" value="${member.memberEmail}" autocomplete="off"> 
		<table class="tableTypeA tableJoinForm tableUserInfo2" summary="회원" border="1">
			<caption>프로필 수정</caption>
			<colgroup>
				<col width="13%" class="col1">
				<col class="col2">
			</colgroup>
		
			<tbody>
				<tr class="first">
					<th scope="row">성명(국문)</th>
					<td>
						<input type="text" style="width: 120px;" id="memberNameKR" name="memberNameKR" value="${member.memberNameKR}" maxlength="15">
				<!-- 
				 	</td>
					<td class="name">${member.memberNameKR} /
				 -->	
						<c:choose>
							<c:when test="${member.memberGender eq 'm'}">
								<strong style="color: blue"> Mr.</strong>
							</c:when>
							<c:when test="${member.memberGender eq 'w'}">
								<strong style="color: blue"> Miss.</strong>
							</c:when>
							<c:otherwise>
								<strong style="color: blue"> 미지정.</strong>
							</c:otherwise>
						</c:choose>
					</td>
				</tr>
		
				<tr>
					<th scope="row">성명(영문)</th>
					<td>
						<input type="text" style="width: 140px;" id="memberNameENG" name="memberNameENG" value="${member.memberNameENG}" maxlength="30">
				 	</td>
				</tr>
		
				<tr>
					<th scope="row">아이디</th>
					<td>${member.memberId}</td>
				</tr>
				<tr>
					<th scope="row">비밀번호</th>
					<td>${member.memberPw}</td>
				</tr>
				<tr>
					<th scope="row">생년월일</th>
					<td>
						<input type="text" style="width: 100px;" id="memberBirth" name="memberBirth" maxlength="8" value="${member.memberBirth}" onkeyup="this.value=this.value.replace(/[^\d\ ]/g, '')" autocomplete="off">
					</td>
				</tr>
				<tr>
					<th scope="row">이메일 </th>
					<td>${member.memberEmail}</td>
				</tr>
				<tr>
					<th scope="row" class="last">휴대전화 </th>
					<td>
						<input type="text" class="uiform phoneNum3 text" style="width: 100px;" id="memberMobile" name="memberMobile" maxlength="11" value="${member.memberMobile}" onkeyup="this.value=this.value.replace(/[^\d\ ]/g, '')" autocomplete="off">
					</td>
				</tr>
			</tbody>
		</table>
				
		<div class="btnList">
	<!-- 
			<input type="button" value="수정" onclick="check();" class="btnChange">
			<input type="button" class="btnCancel" onclick="location.herf='mypage/memSetPwCnfm'" />
	 -->
			<input type="submit" class="btnChange" />
			<a href="/hotel/memSetPwCnfm" class="btnCancel"><span>취소</span></a>
		</div>
	</div> <!-- ctnMypage ctnUserInfo2 -->
</form>
		</div> <!-- contents -->
	</div> <!-- container -->
</div> <!-- contain -->