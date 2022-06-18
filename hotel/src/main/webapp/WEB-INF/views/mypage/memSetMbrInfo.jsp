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
.zipcode {height: 30px; width: 90px; background: transparent;}
.address {height: 30px; width: 500px; background: transparent;}
.zipcodeSearchBtn {height: 30px; border:0; outline:0; background-color: #f1e3c4;}
</style>
<script>
	function buttonCheck() {
		memberNameKR = document.getElementById('memberNameKR');
		firstName = document.getElementById('firstName');
		lastName = document.getElementById('lastName');
		memberBirth = document.getElementById('memberBirth');
		memberMobile = document.getElementById('memberMobile');
		memberGender = document.getElementById('memberGender');
		memberHomePhone = document.getElementById('memberHomePhone');
		
		if(memberNameKR.value == "" || firstName.value == "" || lastName.value == "" || memberBirth.value == "" || memberMobile.value == "") {
			alert('필수 정보를 입력해주세요.');
			return;
		}
		if(memberBirth.value.length != 8){
			alert('생년월일을 정확히 입력해주세요.');
			memberBirth.focus();
			return;
		}
		if(memberMobile.value.length != 11){
			alert('휴대전화를 정확히 입력해주세요.');
			memberMobile.focus();
			return;
		}
		if(memberHomePhone.value != null && memberHomePhone.value != ""){
			if(memberHomePhone.value.length < 9 || memberHomePhone.value.length > 11){
				alert('자택전화를 정확히 입력해주세요.');
				memberHomePhone.focus();
				return;
			}
		}
		document.getElementById('f').submit();
	}
</script>
<script type="text/javascript" src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
	function daumPost() {
	    new daum.Postcode({
	        oncomplete: function(data) {
	        	var addr = "";
	        	// R == 도로명 주소, J == 지번 주소
	        	if(data.userSelectedType == "R")
	        		addr = data.roadAddress;
	        	else
	        		addr = data.jibunAddress;
	        	
	        	//우편 번호
	        	document.getElementById('zipcode').value = data.zonecode;
	        	document.getElementById('addr1').value = addr;
	        	document.getElementById('addr2').focus();
	        	
	        }
	    }).open();
	}
	
	function checkKr() {
		$("#memberNameKR").keyup(function() {
        	// 입력값에 숫자, 영문, 특수문자가 올 경우 경고창 표시 후 ""으로 치환
			var regexp = /[a-z0-9]|[ \[\]{}()<>?|`~!@#$%^&*-_+=,.;:\"'\\]/g;
			v = $(this).val();
			if (regexp.test(v)) {
                $(this).val(v.replace(regexp, ""));
            }
		});
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
<form action="memSetUpdtProc" id="f">
	<div class="ctnMypage ctnUserInfo2">
		<div class="location">
			<p class="list"><span class="crPosit">현재 페이지 위치 : </span> &gt; 마이페이지 &gt; 내정보 &gt; <strong>프로필 수정</strong></p>
		</div>
		
		<div class="myProfilemodifyTit">
			<h4 class="tit">프로필 수정</h4>
		</div>
<!-- 
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
 -->
				
		<!-- <c:set var="member" value="${sessionScope.member}"/> -->
		<input type="hidden" id="memberId" name="memberId" value="${member.memberId}" autocomplete="off">
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
					<th scope="row" class="first">성명(국문)</th>
					<td class="first">
						<c:choose>
							<c:when test="${member.memberGender eq 'm'}">
								<select name="memberGender">
									<option value="n">선택안함</option>
									<option value="m" selected>Mr.</option>
									<option value="w">Miss.</option>
								</select>
							</c:when>
							<c:when test="${member.memberGender eq 'w'}">
								<select name="memberGender">
									<option value="n">선택안함</option>
									<option value="m">Mr.</option>
									<option value="w"selected>Miss.</option>
								</select>
							</c:when>
							<c:when test="${member.memberGender eq 'n'}">
								<select name="memberGender"">
									<option value="n" selected>선택안함</option>
									<option value="m">Mr.</option>
									<option value="w">Miss.</option>
								</select>
							</c:when>
							<c:otherwise>
								<select name="memberGender">
									<option value="n" selected>선택안함</option>
									<option value="m">Mr.</option>
									<option value="w">Miss.</option>
								</select>
							</c:otherwise>
						</c:choose>
						<input type="text" style="width: 120px;" id="memberNameKR" name="memberNameKR" value="${member.memberNameKR}" maxlength="15" onkeyup="checkKr()"/>
					</td>
				</tr>
		
				<tr>
					<th scope="row">성명(영문)</th>
					<td>
						<div class="inputForm2">
							<div class="Fname">
								<label for="firstName">First Name(이름)</label>
								<input type="text" class="firstName" id="firstName" name="firstName" value="${firstName }" placeholder="First name(이름)" style=" width:130px; " onkeyup="this.value=this.value.replace(/[^A-Z]/gi,'');">
							</div>
							<!-- text-transform: uppercase; -->
							<div class="Lname">
								<label for="lastName">Last Name(성)</label>
								<input type="text" class="lastName" id="lastName" name="lastName" value="${lastName }" placeholder="Last name(성)" style="width:100px; " onkeyup="this.value=this.value.replace(/[^A-Z]/gi,'');">
							</div>
						</div>
				 	</td>
				</tr>
		
				<tr>
					<th scope="row">아이디</th>
					<td>${member.memberId}</td>
				</tr>
				<tr>
					<th scope="row">생년월일</th>
					<td>
						<input type="text" id="memberBirth" name="memberBirth" onkeyup="this.value=this.value.replace(/[^0-9]/gi,'');" value="${member.memberBirth}" maxlength="8" autocomplete="off" />
					</td>
				</tr>
				<tr>
					<th scope="row">이메일 </th>
					<td>${member.memberEmail}</td>
				</tr>
				<tr>
					<th scope="row">휴대전화 </th>
					<td>
						<input type="text" placeholder='- 빼고 작성' id="memberMobile" name="memberMobile" value="${member.memberMobile}" maxlength="11" onkeyup="this.value=this.value.replace(/[^\d\ ]/gi, '')" autocomplete="off">	
					</td>
				</tr>
				<tr>
					<th scope="row">자택전화 </th>
					<td>
						<input type="text" placeholder='- 빼고 작성' id="memberHomePhone" name="memberHomePhone" maxlength="11" value="${member.memberHomePhone}" onkeyup="this.value=this.value.replace(/[^\d\ ]/gi, '')" autocomplete="off">
					</td>
				</tr>
				<tr>
					<th scope="row" class="last">자택주소 </th>
					<td>
						<input type="text" id="zipcode" name="memberZipcode"  value="${member.memberZipcode }" style="width:50;">
						<input type="button" value="우편번호 검색" onclick="daumPost()" class="zipcodeSearchBtn"><br>
						<input type="text" id="addr1" name="memberAddr1" value="${member.memberAddr1 }" style="width:400px; " class="input_address"><br>
						<input type="text" id="addr2" name="memberAddr2" value="${member.memberAddr2 }" style="width:400px; " class="input_address">
					</td>
				</tr>
			</tbody>
		</table>
				
		<div class="btnList">
	<!-- 
			<input type="button" value="수정" onclick="check();" class="btnChange">
			<input type="button" class="btnCancel" onclick="location.herf='mypage/memSetPwCnfm'" />
	 		<input type="button" class="btnCancel" value="취소" onclick="location.herf='/hotel/memSetPwCnfm'"/>
	 -->
	 		<input type="button" class="btnChange" value='수정' onclick="buttonCheck()" />
			<a href="/hotel/memSetPwCnfm" class="btnCancel"><span>취소</span></a>
		</div>
	</div> <!-- ctnMypage ctnUserInfo2 -->
</form>
		</div> <!-- contents -->
	</div> <!-- container -->
</div> <!-- contain -->