<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:url var="root" value="/" />

<head>
<meta charset="UTF-8">
<link href="${pageContext.request.contextPath}/resources/css/admin/amdin_memberList.css" rel="stylesheet" type="text/css">
<title>admin_memberList</title>

</head>
<body>

<c:if test="${not empty msg }">
	<script>alert("${msg}");</script>
</c:if>

<div class="admin_main">


<div class="admin_memberCombo">
<form>
	<select name="select" class="admin_memberCombobox">
		<option value="">===선택===</option>
		<option value="memberId">아이디</option>
		<option value="name">이름</option>
		<option value="mobile">전화번호</option>
		<option value="email">이메일</option>
	</select>
	<input type="text" name="search" class="admin_memberSearchTxt">
	<input type="submit" name="memberSearchBtn" value="검색" class="admin_memberSearchBtn">
</form>
</div>

<div>
	<table class="admin_memberTable">
		<thead>
		<tr>
			<th>ID</th>
			<th>NAME</th>
			<th>BIRTH</th>
			<th>MOBILE</th>
			<th>EMAIL</th>
		</tr>
		</thead>
		<c:forEach var="memberdb" items="${sessionScope.memberList }">
		<tr>
			<td><a href="${root }memberInfoProc?memberId=${memberdb.memberId}">${memberdb.memberId }</a></td>
			<td>${memberdb.nameKR }(${memberdb.nameENG })</td>
			<td>${memberdb.birthday }</td>
			<td>${memberdb.mobile }</td>
			<td>${memberdb.email }</td>
			<td style="width:100px;">
			<input type="button" value="수정" class="listBtn" onclick="location.href='${root }memberModifyProc?memberId=${memberdb.memberId}'">
			<input type="button" value="삭제" class="listBtn" onclick="location.href='${root }memberDeleteProc?memberId=${memberdb.memberId}'">
			</td>
		</tr>
		</c:forEach>
		
	</table><br>
	
	<!-- 페이징 -->
	<div align="center">
	${sessionScope.page }
	</div>
	
	<b>총 회원수 : ${sessionScope.memberCount }명</b>
</div>

</div>

</body>
