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

<div class="admin_main">


<div class="admin_memberCombo">
	<select name="memberCombo" class="admin_memberCombobox">
		<option value="none">===선택===</option>
		<option value="id">아이디</option>
		<option value="name">이름</option>
		<option value="mobile">전화번호</option>
		<option value="eamil">이메일</option>
	</select>
	<input type="text" name="memberSearch" class="admin_memberSearchTxt">
	<input type="button" name="memberSearchBtn" value="검색" class="admin_memberSearchBtn">
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
		<c:forEach var="memberdb" items="${memberList }">
		<tr>
			<td><a href="admin_index?formpath=memberInfo">${memberdb.memberId }</a></td>
			<td>${memberdb.nameKR }(${memberdb.nameENG })</td>
			<td>${memberdb.birthday }</td>
			<td>${memberdb.mobile }</td>
			<td>${memberdb.email }</td>
			<td style="width:100px;">
			<input type="button" value="수정" class="listBtn" onclick="location.href='admin_index?formpath=memberModify'">
			<input type="button" value="삭제" class="listBtn">
			</td>
		</tr>
		</c:forEach>
		
	</table><br>
	
	<!-- 페이징 -->
	<div align="center">
	<a href="">&lt;</a>
	<a href="">1</a>
	<a href="">2</a>
	<a href="">3</a>
	<a href="">&gt;</a>
	</div>
	
	<b>총 회원수 : 2명</b>
</div>

</div>

</body>
