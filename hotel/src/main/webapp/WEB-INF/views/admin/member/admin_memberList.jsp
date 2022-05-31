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
			<th>아이디</th>
			<th>이름</th>
			<th>생년월일</th>
			<th>전화번호</th>
			<th>이메일</th>
		</tr>
		</thead>
		<c:forEach var="memberdb" items=${memberList }>
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
		<tr>
			<td>isddke22</td>
			<td>김은영(Kim EunYoung)</td>
			<td>1983.10.24</td>
			<td>010-8372-1475</td>
			<td>isddke22@gmail.com</td>
			<td>
			<input type="button" value="수정" class="listBtn">
			<input type="button" value="삭제" class="listBtn">
			</td>
		</tr>
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
