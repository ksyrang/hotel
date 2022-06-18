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
	function pwUpdtCheck() {
		var memberPw = document.getElementById('memberPw').value;
		var memberNewPw = document.getElementById('memberNewPw').value;f
		var memberNewPwCnfm = document.getElementById('memberNewPwCnfm').value;
		
		if(memberPw == "" || memberNewPw == "" || memberNewPwCnfm == "") {
			alert('현재 또는 새 비밀번호를 입력해주세요.');
			return;
		}
		if(memberNewPw == memberNewPwCnfm){
			if(memberNewPw.length < 8 || memberNewPwCnfm.length > 20){
				alert('비밀번호 길이는 8~20자리 입니다.');
				document.getElementById('memberNewPw').value = "";
				document.getElementById('memberNewPwCnfm').value = ""; 
				return;
			}
		}else{
			alert('새 비밀번호와 확인번호가 일치하지 않습니다.');
			document.getElementById('memberNewPw').value = "";
			document.getElementById('memberNewPwCnfm').value = ""; 
			memberNewPw.focus();
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
						<a href="/hotel/memListResvProc"><span>예약 확인/취소</span>	</a>
					</li>
					<li class="m2 last">
						<a><span>내정보</span></a>
						<ul class="sMenu">
							<li class="s1 first">
							<a href="/hotel/memSetPwCnfm" ><span>프로필 수정</span></a>
							</li>
							<li class="s2">
								<a href="/hotel/memSetPwMod" class="on"><span>비밀번호 변경</span></a>
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
<form action="memSetPwUpdtProc" id="f" >
	<div class="ctnMypage ctnPwMod">
		<div class="location">
			<p class="list"><span class="crPosit">현재 페이지 위치 : </span> &gt; 마이페이지 &gt; 내정보  &gt; <strong>비밀번호 변경</strong></p>
		</div>
			
		<div class="myPasswordmodifyTit">
			<h4 class="tit">비밀번호 변경</h4>
		</div>
			
		<div class="msg">고객님의 정보를 언제든지 확인, 변경하실 수 있습니다.</div>
		<div class="hTitS">
			<h5 class="tit">비밀번호 변경</h5>
		</div>
		<input type="hidden" id="memberId" name="memberId" value="${userId}" autocomplete="off">
		<table class="tableTypeA tablePwMod" summary="현재 비밀번호,새비밀번호,새비밀번화확인으로 구성된 테이블">
			<caption>비밀번호 변경</caption>
			<colgroup>
				<col width="15%" class="col1">
				<col class="col2">
			</colgroup>
			<tbody>
				<tr class="first">
					<th scope="row" class="first"><label>아이디</label></th>
					<td>${userId}</td>
				</tr>
				<tr>
					<th scope="row"><label for="memberPw" class="memberPw">현재 비밀번호</label></th>
					<td>
						<input type="password" class="memberPw" id="memberPw" name="memberPw" maxlength="60" style="width: 143px;" autocomplete="off">
					</td>
				</tr>
				<tr>
					<th scope="row"><label for="memberNewPw" class="pwNew">새 비밀번호</label></th>
					<td>
						<input type="password" class="memberNewPw" id="memberNewPw" name="memberNewPw" maxlength="60" style="width: 143px;" autocomplete="off">
						<span class="msgCheck">8~20자 이내 영문/숫자 조합(특수문자 입력 가능)</span>
					</td>
				</tr>
				<tr class="last">
					<th scope="row" class="last"><label for="memberNewPwCnfm" class="memberNewPwCnfm">새 비밀번호 확인</label></th>
					<td class="last">
						<input type="password" class="memberNewPwCnfm" id="memberNewPwCnfm" name="memberNewPwCnfm" maxlength="60" style="width: 143px;" autocomplete="off">
					</td>
				</tr>
			</tbody>
		</table>
		<div class="btnList">
<!-- 
			<input type="submit" class="btnChange" />
			<a href="#" class="btnCancel"><span>취소</span></a>
 -->			
			<input type="button" class="btnChange" value='수정' onclick="pwUpdtCheck(); return false;" />
			<input type="reset" class="btnCancel" >
		</div>
	</div> <!-- ctnMypage -->
</form>
		</div>  <!-- contents -->
	</div> <!-- container -->
</div> <!-- contain -->
<%@ include file="../common/main_footer.jsp" %>