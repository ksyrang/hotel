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

<c:if test="${not empty msg }">
	<script>alert("${msg}");</script>
</c:if>

<div class="admin_main">

<div class="admin_memberInfoTopLeft">
	회원정보
</div>
<div class="admin_memberInfoTopRight">
	<input type="button" value="목록" class="listBtn" onclick="location.href='${root }memberListProc'">
	<input type="button" value="수정" class="listBtn" onclick="location.href='${root }memberModifyProc?memberId=${user.memberId}'">
	<input type="button" value="삭제" class="listBtn" onclick="location.href='${root }memberDeleteProc?memberId=${user.memberId}'">
</div>

<div class="admin_memberInfoTableDiv">
<table class="admin_memberInfoTable">
<tr>
	<th>아이디</th><td>${user.memberId }</td>
	<th>비밀번호</th><td>${user.memberPw }</td>
</tr>
<tr>
	<th>성명(국문)</th><td colspan="3">${user.memberNameKR }</td>
</tr>
<tr>
	<th>성명(영문)</th><td colspan="3">${user.memberNameENG }</td>
</tr>
<tr>
	<th>생년월일</th><td>${user.memberBirth }</td>

	<th>성별</th><td>
		<c:choose>
			<c:when test="${user.memberGender eq 'm'}">남</c:when>
		</c:choose>
		<c:choose>
			<c:when test="${user.memberGender eq 'w'}">여</c:when>
		</c:choose>
		<c:choose>
			<c:when test="${user.memberGender eq 'n'}">선택안함</c:when>
		</c:choose>
	</td>
</tr>
<tr>
	<th>이메일</th><td colspan="3">${user.memberEmail }</td>
</tr>
<tr>
	<th>휴대전화</th><td colspan="3">${user.memberMobile }</td>
</tr>
<tr>
	<th>자택번호</th><td colspan="3">${user.memberHomePhone }</td>
</tr>
<tr>
	<th>자택주소</th>
	<td colspan="3">
	${user.memberZipcode }<br>${user.memberAddr1 }<br>${user.memberAddr2 }</td>
</tr>

</table>
</div>
</div>

</body>
