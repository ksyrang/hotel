<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:url var="root" value="/" />

<head>
<meta charset="UTF-8">
<link href="${pageContext.request.contextPath}/resources/css/admin/amdin_memberList.css" rel="stylesheet" type="text/css">
<title>admin_memberList</title>
<script>
	function searchCheck() {
		var select = document.getElementById('select');
		var search = document.getElementById('search');
		
		if(select.value != "") {
			if(search.value == "" || search.value == null) {
				alert("검색어를 입력해주세요.");
				return;
			}
		}
		
		if(search.value == "" || search.value != null){
			if(select.value == ""){
				alert("검색 기준을 선택해주세요.");
				return;
			}
		}
		
		document.getElementById('f').submit();
	}
</script>
</head>
<body>

<c:if test="${not empty msg }">
	<script>alert("${msg}");</script>
</c:if>

<div class="admin_main">


<div class="admin_memberCombo">
<form id='f'>
	<select name="select" id="select" class="admin_memberCombobox">
		<option value="">검색기준</option>
		<option value="memberId">아이디</option>
		<option value="name">이름</option>
		<option value="mobile">전화번호</option>
		<option value="email">이메일</option>
	</select>
	<input type="text" name="search" id="search" class="admin_memberSearchTxt">
	<input type="button" name="memberSearchBtn" value="검색" class="admin_memberSearchBtn" onclick="searchCheck()">
</form>
<div align="left" style="margin-top:10px; color:#80715c;">
	<c:if test="${Sselect != null and Sselect != '' }">
		<c:if test="${Sselect eq 'memberId'}">아이디 : </c:if>
		<c:if test="${Sselect eq 'name'}">이름 : </c:if>
		<c:if test="${Sselect eq 'mobile'}">전화번호 : </c:if>
		<c:if test="${Sselect eq 'email'}">이메일 : </c:if>
		<c:if test="${Ssearch != null and Ssearch !='' }">${Ssearch }</c:if>
	</c:if>
</div>
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
			<th>수정/삭제</th>
		</tr>
		</thead>
		<c:forEach var="memberdb" items="${sessionScope.memberList }">
		<tr>
			<td><a href="${root }memberInfoProc?memberId=${memberdb.memberId}">${memberdb.memberId }</a></td>
			<td>${memberdb.memberNameKR }(${memberdb.memberNameENG })</td>
			<td>${memberdb.memberBirth }</td>
			<td>${memberdb.memberMobile }</td>
			<td>${memberdb.memberEmail }</td>
			<td style="width:100px;">
			<input type="button" value="수정" class="listBtn" onclick="location.href='${root }memberModifyProc?memberId=${memberdb.memberId}'">
			<input type="button" value="삭제" class="listBtn" onclick="location.href='${root }memberDeleteProc?memberId=${memberdb.memberId}'">
			</td>
		</tr>
		</c:forEach>
		
	</table><br>
	<b>총 회원수 : ${sessionScope.memberCount }명</b><br>
	<!-- 페이징 -->
	<div align="center">
	${sessionScope.page }
	</div>
	
	
</div>

</div>

</body>
