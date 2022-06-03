<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:url var="root" value="/" />

<head>
<meta charset="UTF-8">
<title>admin_reservationList</title>
</head>
<body>

<c:if test="${not empty msg }">
	<script>alert("${msg}");</script>
</c:if>
<!-- 전체 div -->
<div>
<!-- 필터 div -->
<div>
	<form>
		<!-- 호텔 필터링 -->
		<select name="hotelSel">
			<option value="">===선택===</option>
		</select>
		<!-- 예약번호 검색 -->
		<input type="text" name="search">
		<input type="submit" name="reservationSearchBtn" value="검색">
	</form>

</div>

</div>

</body>
