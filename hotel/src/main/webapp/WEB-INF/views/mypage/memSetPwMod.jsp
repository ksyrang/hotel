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
<div class="contain">
	<div class="container">
		<div class="lnbArea lnbAreaMypage">
			<div class="lnbMenu">
				<h2 class="tit">마이페이지</h2>
				<ul class="menu">
					<li class="m1 first">
						<a href="/hotel/myPage"><span>예약 확인/취소</span>	</a>
					</li>
					<li class="m2 last">
						<a><span>내정보</span></a>
						<ul class="sMenu">
							<li class="s1 first">
							<a href="/hotel/mypage/memSetPwCnfm" ><span>프로필 수정</span></a>
							</li>
							<li class="s2">
								<a href="/hotel/mypage/memSetPwMod" class="on"><span>비밀번호 변경</span></a>
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
<h3>
	<font color="red" >${msg } </font>
</h3>
<form action="memSetPwUpdtProc" method="post">
	<div class="ctnMypage ctnPwMod">
		<div class="location">
			<p class="list"><span class="crPosit">현재 페이지 위치 : </span> &gt; 마이페이지 &gt; 내정보  &gt; <strong>비밀번호 변경</strong></p>
		</div>
			
		<div class="myPasswordmodifyTit">
			<h4 class="tit">비밀번호 변경</h4>
		</div>
			
		<div class="msg">고객님의 정보를 언제든지 확인, 변경하실 수 있습니다.
		</div>
			<div class="hTitS">
				<h5 class="tit">비밀번호 변경</h5>
			</div>
				<table class="tableTypeA tablePwMod" summary="현재 비밀번호,새비밀번호,새비밀번화확인으로 구성된 테이블">
					<caption>비밀번호 변경</caption>
					<colgroup>
						<col width="15%" class="col1">
						<col class="col2">
					</colgroup>
					<tbody>
						<tr class="first">
							<th scope="row" class="first">
								<label for="memberId" class="memberId">아이디</label></th>
							<td class="first">
								<input type="text" class="memberId" id="memberId" name="memberId" maxlength="8" style="width: 100px;" autocomplete="off">
							</td>
						</tr>
						<tr>
							<th scope="row">
								<label for="memberPw" class="memberPw">현재 비밀번호</label></th>
							<td>
								<input type="password" class="memberPw" id="memberPw" name="memberPw" maxlength="20" style="width: 143px;" autocomplete="off">
							</td>
						</tr>
						<tr>
							<th scope="row"><label for="memberNewPw" class="pwNew">새 비밀번호</label></th>
							<td>
								<input type="password" class="memberNewPw" id="memberNewPw" name="memberNewPw" maxlength="20" style="width: 143px;" autocomplete="off">
								<span class="msgCheck">8~20자 이내 영문/숫자 조합(특수문자 입력 가능)</span>
							</td>
						</tr>
						<tr class="last">
							<th scope="row" class="last"><label for="memberNewPwCnfm" class="memberNewPwCnfm">새 비밀번호 확인</label></th>
							<td class="last">
								<input type="password" class="memberNewPwCnfm" id="memberNewPwCnfm" name="memberNewPwCnfm" maxlength="20" style="width: 143px;" autocomplete="off">
							</td>
						</tr>
					</tbody>
				</table>
				<div class="btnList">
					<input type="submit" class="btnChange" />
					<a href="#" class="btnCancel"><span>취소</span></a>
				</div>
	</div> <!-- ctnMypage -->
</form>
		</div>  <!-- contents -->
	</div> <!-- container -->
</div> <!-- contain -->
<%@ include file="../common/main_footer.jsp" %>