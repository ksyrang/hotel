<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:url var="root" value="/" />

<head>
<meta charset="UTF-8">
<link href="${pageContext.request.contextPath}/resources/css/admin/admin_commonCss.css" rel="stylesheet" type="text/css">
<title>roomReservation_complete</title>
</head>
<body>

<c:if test="${not empty msg }">
	<script>alert("${msg}");</script>
</c:if>

<c:if test="${sessionScope.userId == null }">
	<script>
	alert("로그인 후 다시 이용해주세요.");
	location.href="${root }index?formpath=login";
	</script>
</c:if>

<div class="admin_mainDiv">
	<div align="center" style="margin-top : 50px;">
	<label class="fontL">예약번호</label><br>
	<label class="fontLR">${resDTO.reservationNo }</label><br>
	<label class="fontL">예약이 완료되었습니다.</label><br>
	<label class="fontM">예약 완료 이메일을 전송했습니다.</label>
	</div>

<table class="resTable">
	<tr>
		<td>예약번호</td>
		<th>${resDTO.reservationNo }</th>
	</tr>
	<tr>
		<td>예약일자</td>
		<th>${resDTO.reservationDate }</th>
	</tr>
	<tr>
		<td>체크인 ~ 체크아웃</td>
		<th> ${resDTO.checkinDate } ~ ${resDTO.checkoutDate }</th>
	</tr>
	<tr>
		<td>금액</td>
		<th>${resDTO.baseAmount }</th>
	</tr>
	
</table>
<div align="center">
	<input type="button" value="홈으로" class="homeBtn" onclick="location.href='${root }'">
</div>
</div>
</body>
