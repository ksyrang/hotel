<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url var="root" value="/" />

<head>
<meta charset="UTF-8">
<link href="${pageContext.request.contextPath}/resources/css/admin/amdin_memberList.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/css/admin/admin_memberDelete.css" rel="stylesheet" type="text/css">
<title>admin_memberDelete</title>
<script>
	function check() {
		adminId = document.getElementById('adminId');
		adminPw = document.getElementById('adminPw');
		
		if(adminId.value == "" || adminPw.value == "") {
			alert('아이디 혹은 비밀번호를 확인해주세요.');
			return;
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
<div class="top_info">
	회원삭제
</div>
<div align="center">
${memberId } 회원을 정말 삭제하시겠습니까?
</div>

<div align="center" class="delteTabDiv">

<form action="memberDeleteProc" method="post" id="f">
<table class="adminLoginTable">
	<tr>
	<th>아이디</th>
	<td><input type="text" id="adminId" name="adminId" placeholder="ID" class="login_input"></td>
	</tr>
	<tr>
	<th>비밀번호</th>
	<td><input type="password" id="adminPw" name="adminPw" placeholder="PASSWORD" class="login_input"></td>
	</tr>
	<tr>
	<td colspan="2"><input type="button" value="확인" onclick="check();" class="okBtn"></td>
	</tr>
</table>
<input type="text" name="memberId" value="${memberId }">
</form>
</div>
</div>
</body>
