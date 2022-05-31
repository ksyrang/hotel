<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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
	<input type="button" value="수정" class="listBtn" onclick="location.href='admin_index?formpath=memberModify'">
	<input type="button" value="삭제" class="listBtn">
</div>

<div class="admin_memberInfoTableDiv">
<table class="admin_memberInfoTable">
<tr>
	<th>아이디</th><td>dauen1</td>
	<th>이름(국문)</th><td>신다은</td>
	<th>이름(영문)</th><td>Shin DaEun</td>
</tr>
<tr>
	<th>생년월일</th><td>1999.07.06</td>
	<th>전화번호</th><td>010-5620-1321</td>
	<th>자택번호</th><td></td>
</tr>
<tr>
	<th>이메일</th><td>dauen1@naver.com</td>
	<th>성별</th><td>여</td>
</tr>
<tr>
	<th>주소</th><td>서울특별시 동작구 상도로 346-1</td>
	<th>우편번호</th><td>39485</td>
</tr>
<tr>
	<th>상세주소</th><td>110동 103호</td>
</tr>
</table>
</div>
</div>

</body>
