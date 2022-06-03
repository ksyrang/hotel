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

<form action="memberModifyProc" method="post">

<div class="admin_memberInfoTopRight">
	<input type="submit" value="저장" class="listBtn">
	<input type="button" value="취소" class="listBtn" onclick="location.href='${root }memberListProc'">
</div>

<div class="admin_memberInfoTableDiv">
<table class="admin_memberInfoTable">
<tr>
	<th>아이디</th><td><input type="text" name="memberId" value="${user.memberId }" readonly></td>
	<th>이름(국문)</th><td><input type="text" name="memberNameKR"  value="${user.memberNameKR }"></td>
	<th>이름(영문)</th><td><input type="text" name="memberNameENG"  value="${user.memberNameENG }"></td>
</tr>
<tr>
	<th>비밀번호</th>
	<td><input type="password" name="memberPw" value="${user.memberPw }"></td>
</tr>
<tr>
	<th>생년월일</th><td><input type="text" name="memberBirth"  value="${user.memberBirth }"></td>
	<th>전화번호</th><td><input type="text" name="memberMobile"  value="${user.memberMobile }"></td>
	<th>자택번호</th><td><input type="text" name="memberHomePhone"  value="${user.memberHomePhone }"></td>
</tr>
<tr>
	<th>이메일</th><td><input type="text" name="memberEmail"  value="${user.memberEmail }" readonly></td>
	<th>성별</th><td>
	<c:choose>
		<c:when test="${user.memberGender eq 'm'}">
			<input type="radio" name="memberGender" value="m" checked="checked">남
			<input type="radio" name="memberGender" value="w">여
			<input type="radio" name="memberGender" value="n">선택안함
		</c:when>
		<c:when test="${user.memberGender eq 'w'}">
			<input type="radio" name="memberGender" value="m">남
			<input type="radio" name="memberGender" value="w" checked="checked">여
			<input type="radio" name="memberGender" value="n">선택안함
		</c:when>
		<c:when test="${user.memberGender eq 'n'}">
			<input type="radio" name="memberGender" value="m">남
			<input type="radio" name="memberGender" value="w">여
			<input type="radio" name="memberGender" value="n" checked="checked">선택안함
		</c:when>
		<c:otherwise>
			<input type="radio" name="memberGender" value="m">남
			<input type="radio" name="memberGender" value="w">여
			<input type="radio" name="memberGender" value="n" checked="checked">선택안함
		</c:otherwise>
	</c:choose>
	</td>
</tr>
<tr>
	<th>주소</th><td><input type="text" id="addr1" name="memberAddr1"  value="${user.memberAddr1 }"></td>
	<th>우편번호</th><td><input type="text" id="zipcode" name="memberZipcode"  value="${user.memberZipcode }"></td>
</tr>
<tr>
	<th>상세주소</th><td><input type="text" id="addr2" name="memberAddr2"  value="${user.memberAddr2 }"></td>
	<th></th><td><input type="button" value="우편번호 검색" onclick="daumPost()"></td>
</tr>
</table>
</div>
</form>

</div>

</body>
