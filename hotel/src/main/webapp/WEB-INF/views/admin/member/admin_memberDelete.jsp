<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url var="root" value="/" />

<head>
<meta charset="UTF-8">
<link href="${pageContext.request.contextPath}/resources/css/admin/amdin_memberList.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/css/admin/admin_memberDelete.css" rel="stylesheet" type="text/css">
<title>admin_memberDelete</title>
</head>
<body>
<div class="admin_main">
<div class="top_info">
	회원삭제
</div>
<div align="center">
${memberId } 회원을 정말 삭제하시겠습니까?
</div>

<div align="center" class="delteTabDiv">

<form action="memberDeleteCheckProc" method=post>
<table class="adminLoginTable">
	<tr>
	<th>아이디</th>
	<td><input type="text" name="adminId" placeholder="ID" class="login_input"></td>
	</tr>
	<tr>
	<th>비밀번호</th>
	<td><input type="password" name="adminPw" placeholder="PASSWORD" class="login_input"></td>
	</tr>
	<tr>
	<td colspan="2"><input type="submit" value="확인" class="okBtn"></td>
	</tr>
</table>
<input type="text" name="memberId" value="${memberId }">
</form>
</div>
</div>
</body>
