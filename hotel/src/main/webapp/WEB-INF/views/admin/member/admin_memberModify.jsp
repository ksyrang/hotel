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
</head>
<body>
<div class="admin_main">

<div class="admin_memberInfoTopLeft">
	회원수정
</div>

<form action="memberModifySaveProc" method="post">

<div class="admin_memberInfoTopRight">
	<input type="submit" value="저장" class="listBtn">
	<input type="button" value="취소" class="listBtn" onclick="location.href='${root }memberListProc'">
</div>

<div class="admin_memberInfoTableDiv">
<table class="admin_memberInfoTable">
<tr>
	<th>아이디</th><td><input type="text" name="memberID" value="${user.memberId }" readonly></td>
	<th>이름(국문)</th><td><input type="text" name="nameKR"  value="${user.nameKR }"></td>
	<th>이름(영문)</th><td><input type="text" name="nameENG"  value="${user.nameENG }"></td>
</tr>
<tr>
	<th>비밀번호</th>
	<td><input type="password" name="pw" value="${user.pw }"></td>
</tr>
<tr>
	<th>생년월일</th><td><input type="text" name="birthday"  value="${user.birthday }"></td>
	<th>전화번호</th><td><input type="text" name="mobile"  value="${user.mobile }"></td>
	<th>자택번호</th><td><input type="text" name="homePhone"  value="${user.homePhone }"></td>
</tr>
<tr>
	<th>이메일</th><td><input type="text" name="email"  value="${user.email }" readonly></td>
	<th>성별</th><td>
	<c:choose>
		<c:when test="${user.gender eq 'm'}">
			<input type="radio" name="gender" value="m" checked="checked">남
			<input type="radio" name="gender" value="w">여
			<input type="radio" name="gender" value="n">선택안함
		</c:when>
		<c:when test="${user.gender eq 'w'}">
			<input type="radio" name="gender" value="m">남
			<input type="radio" name="gender" value="w" checked="checked">여
			<input type="radio" name="gender" value="n">선택안함
		</c:when>
		<c:when test="${user.gender eq 'n'}">
			<input type="radio" name="gender" value="m">남
			<input type="radio" name="gender" value="w">여
			<input type="radio" name="gender" value="n" checked="checked">선택안함
		</c:when>
	</c:choose>
	</td>
</tr>
<tr>
	<th>주소</th><td>${user.addr1 }</td>
	<th>우편번호</th><td>${user.zipcode }</td>
</tr>
<tr>
	<th>상세주소</th><td>${user.addr2 }</td>
</tr>
</table>
</div>
</form>

</div>

</body>
