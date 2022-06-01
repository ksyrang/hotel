<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url var="root" value="/" />
<head>
<meta charset="UTF-8">
<link href="${pageContext.request.contextPath}/resources/css/admin/amdin_memberList.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/css/admin/admin_memberInfo.css" rel="stylesheet" type="text/css">
<title>admin_memberInfo</title>
</head>
<body>
<div class="admin_main">

<div class="admin_memberInfoTopLeft">
	회원정보
</div>
<div class="admin_memberInfoTopRight">
	<input type="button" value="수정" class="listBtn" onclick="location.href='${root }memberModifyProc?memberId=${user.memberId}'">
	<input type="button" value="삭제" class="listBtn" onclick="location.href='${root }memberDeleteProc?memberId=${user.memberId}'">
</div>

<div class="admin_memberInfoTableDiv">
<table class="admin_memberInfoTable">
<tr>
	<th>아이디</th><td>${user.memberId }</td>
	<th>이름(국문)</th><td>${user.nameKR }</td>
	<th>이름(영문)</th><td>${user.nameENG }</td>
</tr>
<tr>
	<th>생년월일</th><td>${user.birthday }</td>
	<th>전화번호</th><td>${user.mobile }</td>
	<th>자택번호</th><td>${user.homePhone }</td>
</tr>
<tr>
	<th>이메일</th><td>${user.email }</td>
	<th>성별</th><td>
		<c:choose>
			<c:when test="${user.gender eq 'm'}">남</c:when>
		</c:choose>
		<c:choose>
			<c:when test="${user.gender eq 'w'}">여</c:when>
		</c:choose>
		<c:choose>
			<c:when test="${user.gender eq 'n'}">선택안함</c:when>
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
</div>

</body>
