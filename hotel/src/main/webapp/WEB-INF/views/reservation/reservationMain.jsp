<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:url var="root" value="/" />

<head>
<meta charset="UTF-8">
<link href="${pageContext.request.contextPath}/resources/css/admin/admin_commonCss.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/css/admin/admin_reservationList.css" rel="stylesheet" type="text/css">
<title>admin_reservationList</title>
<script>
	function searchCheck() {
		var hotelSelect = document.getElementById('hotelSelect');
		var startDate = document.getElementById('startDate');
		var endDate = document.getElementById('endDate');
		var availablePerson = document.getElementById('availablePerson');
		// 투숙인원 정규식
		const regExp = /[0-9]/g;
		
		if(hotelSelect.value == ''){
			alert("호텔을 선택해주세요.");
			return;
		}
	
		if(startDate.value > endDate.value) {
			alert("검색 일자를 다시 입력해주세요.");
			return;
		}
		
		if(availablePerson.value != null || availablePerson.value != '') {
			if(!regExp.test(availablePerson.value)){
				alert("투숙인원을 다시 입력해주세요.");
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

<!-- 전체 div -->
<div class="admin_mainDiv">
<!-- 필터 div -->
<div class="admin_searchFilterDiv">
	<form id='f'>
		<!-- 호텔 필터링 -->
		<select name="hotelSelect" id="hotelSelect" class="admin_hotelSearch">
				<option value="">호텔명</option>
			<c:forEach var="hotelInfoList" items="${allHotelInfo }">
				<option value="${hotelInfoList.hotelId }" <c:if test="${hotelInfoList.hotelId eq  ShotelSelect}">selected</c:if>>${hotelInfoList.hotelName }</option>
			</c:forEach>
		</select>
		<!-- 날짜 필터링 -->
		체크인 <input type="date" id="startDate" name="startDate" class="admin_reservationDate" min="${today }" value = "${SstartDate }">
		<span>&nbsp;1박&nbsp;</span>
		체크아웃 <input type="date" id="endDate" name="endDate" class="admin_reservationDate2" min="${tomorrow }" value = "${SendDate }">
		<!-- 예약번호 검색 -->
		<input type="text" name="availablePerson" id="availablePerson" placeholder="투숙인원" value = "${SavailablePerson }" class="admin_reservationNoSearch">
		<input type="button" name="reservationSearchBtn" value="검색" class="admin_commonBtn" onclick="searchCheck()">
	</form>
	
	<!-- 예약 목록 테이블 -->
	<div>
		<table class="admin_reservationListTable">
			<!-- forEach문 -->
			<c:forEach var="roomList" items="${sessionScope.memRoomList }">
			<tr>
				<td>${roomList.hotelId }</td>
				<td>${roomList.roomId }</td>
				<td>${roomList.roomType }</td>
				<td>${roomList.bedType }</td>
				<td>${roomList.roomId }</td>
				<td>${roomList.availablePerson }</td>
				<td><input type="button" value="예약하기" class="admin_commonBtn" onclick="location.href='${root }admin_reservationModifyProc?reservationNo=${resdb.reservationNo }'"></td>
			</tr>
			</c:forEach>
		</table><br>
	<b>검색 결과 : ${sessionScope.memRoomCount }</b><br>
	<div align="center">
		${sessionScope.memRoomPage }
	</div>
	
	
	</div>

</div>

</div>

</body>
