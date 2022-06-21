<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url var="root" value="/" />

<head>
<meta charset="UTF-8">
<link href="${pageContext.request.contextPath}/resources/css/admin/amdin_memberList.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/css/admin/admin_memberDelete.css" rel="stylesheet" type="text/css">
<title>admin_reservationDelete</title>
<style>
#loading { width: 100%; height: 100%; top: 0; left: 0; position: fixed; display: block; opacity: 0.6; background: #e4e4e4; z-index: 99; text-align: center; }
#loading > img { position: absolute; top: 50%; left: 50%; z-index: 100; }
#loading > p { position: absolute; top: 57%; left: 43%; z-index: 101; }
</style>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>	
<script>
	$(document).ready(function() {
		$('#loading').hide();
		$('#f').submit(function(){
		    $('#loading').show();
		    return true;
		});
	});
	
	function check() {
		id = document.getElementById('id');
		pw = document.getElementById('pw');
		
		if(id.value == "" || pw.value == "") {
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
	예약삭제
</div>
<div align="center">
예약번호 ${reservationNo } 예약을 정말 삭제하시겠습니까?
</div>

<div align="center" class="delteTabDiv">

<div id="loading" style="margin-left: 0px;">
	<img src="${pageContext.request.contextPath}/resources/images/ko/common/loadingAnimation1.gif" alt="loading">
    <p> 처리중입니다... 잠시기다려주세요.</p>
</div>
<form action="admin_reservationDeleteCheckProc" method="post" id="f">
<table class="adminLoginTable">
	<tr>
	<th>아이디</th>
	<td><input type="text" id="id" name="id" placeholder="ID" class="login_input"></td>
	</tr>
	<tr>
	<th>비밀번호</th>
	<td><input type="password" id="pw" name="pw" placeholder="PASSWORD" class="login_input"></td>
	</tr>
	<tr>
	<td colspan="2"><input type="button" value="확인" onclick="check();" class="okBtnB"></td>
	</tr>
</table>
<input type="hidden" name="reservationNo" value="${reservationNo }">
</form>
</div>
</div>
</body>
