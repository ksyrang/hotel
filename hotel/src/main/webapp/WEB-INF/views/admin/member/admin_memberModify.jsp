<!-- 회원쪽 회원가입과 비슷하게 수정할 것 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url var="root" value="/" />

<head>
<meta charset="UTF-8">
<link href="${pageContext.request.contextPath}/resources/css/admin/amdin_memberList.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/css/admin/admin_memberInfo.css" rel="stylesheet" type="text/css">
<title>admin_memberModify</title>
<script>
	function check() {
		memberNameKR = document.getElementById('memberNameKR');
		firstName = document.getElementById('firstName');
		lastName = document.getElementById('lastName');
		memberBirth = document.getElementById('memberBirth');
		memberMobile = document.getElementById('memberMobile');
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
		
		if(memberHomePhone.value != null){
			if(memberHomePhone.value.length != 11){
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
</script>
</head>
<body>
<c:if test="${not empty msg }">
	<script>alert("${msg}");</script>
</c:if>

<div class="admin_main">

<div class="admin_memberInfoTopLeft">
	회원수정
</div>

<form action="memberModifyProc" method="post" id="f">

<div class="admin_memberInfoTopRight">
	<input type="button" value="저장" class="listBtn" onclick="check();">
	<input type="button" value="이전" class="listBtn" onclick="javascript:history.back();">
</div>

<div class="admin_memberInfoTableDiv">
<table class="admin_memberInfoTable">
<tr>
	<th>* 아이디</th><td colspan="3"><input type="text" name="memberId" value="${user.memberId }" class="admin_input_basic" readonly ></td>
</tr>
<tr>
	<th>* 성명(국문)</th>
	<td colspan="3"><input type="text" id="memberNameKR" name="memberNameKR"  value="${user.memberNameKR }" class="admin_input_basic"></td>
</tr>
<tr>
	<th>* 성명(영문)</th>
	<td colspan="3">FirstName(이름) <input type="text" id="firstName" name="firstName"  value="${firstName }" class="admin_input_basic"> 
	LastName(성) <input type="text" id="lastName" name="lastName"  value="${lastName }" class="admin_input_basic"></td>
</tr>
<tr>
	<th>* 생년월일</th><td><input type="text" id="memberBirth" name="memberBirth"  value="${user.memberBirth }" maxlength="8" class="admin_input_basic" onkeyup="this.value=this.value.replace(/[^0-9]/gi,'');"></td>

	<th>* 성별</th><td>
	<c:choose>
		<c:when test="${user.memberGender eq 'm'}">
			<select name="memberGender" class="admin_genderCombo">
				<option value="n">선택안함</option>
				<option value="m" selected>남</option>
				<option value="w">여</option>
			</select>
		</c:when>
		<c:when test="${user.memberGender eq 'w'}">
			<select name="memberGender" class="admin_genderCombo">
				<option value="n">선택안함</option>
				<option value="m">남</option>
				<option value="w"selected>여</option>
			</select>
		</c:when>
		<c:when test="${user.memberGender eq 'n'}">
			<select name="memberGender" class="admin_genderCombo">
				<option value="n" selected>선택안함</option>
				<option value="m">남</option>
				<option value="w">여</option>
			</select>
		</c:when>
		<c:otherwise>
			<select name="memberGender" class="admin_genderCombo">
				<option value="n" selected>선택안함</option>
				<option value="m">남</option>
				<option value="w">여</option>
			</select>
		</c:otherwise>
	</c:choose>
</tr>
<tr>
	<th>* 이메일</th><td colspan="3"><input type="text" name="memberEmail"  value="${user.memberEmail }" class="admin_input_basic" readonly></td>
</tr>
<tr>
	<th>* 휴대전화</th><td colspan="3"><input type="text" id="memberMobile" name="memberMobile"  value="${user.memberMobile }" maxlength="11" class="admin_input_basic" onkeyup="this.value=this.value.replace(/[^0-9]/gi,'');"></td>
	
</tr>
<tr>
<th>자택전화</th><td colspan="3"><input type="text" name="memberHomePhone" id="memberHomePhone"  value="${user.memberHomePhone }" maxlength="11" class="admin_input_basic" onkeyup="this.value=this.value.replace(/[^0-9]/gi,'');"></td>
</tr>
<tr>
	<th>자택주소</th>
	<td colspan="3"><input type="text" id="zipcode" name="memberZipcode"  value="${user.memberZipcode }" class="admin_input_zipcode">
	<input type="button" value="우편번호 검색" onclick="daumPost()" class="admin_zipcodeSearchBtn"><br>
	<input type="text" id="addr1" name="memberAddr1"  value="${user.memberAddr1 }" class="admin_input_address"><br>
	<input type="text" id="addr2" name="memberAddr2"  value="${user.memberAddr2 }" class="admin_input_address"></td>
</tr>
</table>
</div>
</form>

</div>

</body>
