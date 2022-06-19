<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:url var="root" value="/" />

<head>
<meta charset="UTF-8">
<link href="${pageContext.request.contextPath}/resources/css/admin/admin_commonCss.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/css/admin/admin_reservationList.css" rel="stylesheet" type="text/css">
<title>reservationMain</title>
<script>

	//박수 구하는 ajax
	var req;
	function getStay(){
		var startDate = document.getElementById('startDate').value;
		var endDate = document.getElementById('endDate').value;
		
		req = new XMLHttpRequest();
		req.onreadystatechange = textChange;
		req.open('post', 'getStayDate');
		
		var startDate = document.getElementById('startDate').value;
		var endDate = document.getElementById('endDate').value;
		
		var sendData = {strDate : startDate, eDate : endDate};
		sendData = JSON.stringify(sendData);
		req.setRequestHeader('Content-Type', "application/json; charset=UTF-8");
		req.send(sendData);
	}
	
	function textChange() {
		var period = document.getElementById('period');
		if(req.readyState == 4 && req.status == 200){
			period.innerHTML = req.responseText;
		}
	}
	
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
	/*
	function resCheck() {
		var hotelSelect = document.getElementById('hotelSelect');
		var startDate = document.getElementById('startDate');
		var endDate = document.getElementById('endDate');
		var availablePerson = document.getElementById('availablePerson');
		
		if(hotelSelect.value == '' || startDate.value == '' || endDate.value == '' || availablePerson == ''){
			alert("검색 후 이용해주세요.");
			return;
		}else {
			location.href='${root }roomReservation_step1Proc?roomId=${roomList.roomId }'
		}
	}
	*/
</script>
</head>
<body>

<c:if test="${not empty msg }">
	<script>alert("${msg}");</script>
</c:if>

<!-- 전체 div -->
<div class="admin_Div">
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
		체크인 <input type="date" id="startDate" name="startDate" class="admin_reservationDate" min="${today }" value = "${SstartDate }" onchange="getStay()">
		&nbsp;<span id = "period">1</span>박&nbsp;
		체크아웃 <input type="date" id="endDate" name="endDate" class="admin_reservationDate2" min="${tomorrow }" value = "${SendDate }" onchange="getStay()">
		<!-- 예약번호 검색 -->
		<input type="text" name="availablePerson" id="availablePerson" placeholder="투숙인원" value = "${SavailablePerson }" class="admin_reservationNoSearch" onkeyup="this.value=this.value.replace(/[^0-9]/gi,'');">
		<input type="button" name="reservationSearchBtn" value="검색" class="admin_commonBtn" onclick="searchCheck()">
	</form>
	
	<!-- 예약 목록 테이블 -->
	<div>
		<table class="admin_reservationListTable">
			<!-- forEach문 -->
			<c:forEach var="roomList" items="${sessionScope.memRoomList }">
			<tr>
				<td>
				<c:choose>
					<c:when test="${roomList.roomType eq 'T'}"><img src="${pageContext.request.contextPath}/images/roomImages/standardRoom.jpg" alt="Standard" class="room_img"></c:when>
					<c:when test="${roomList.roomType eq 'D'}"><img src="${pageContext.request.contextPath}/images/roomImages/DerulxRoom.jpg" alt="Deluxe" class="room_img"></c:when>
					<c:when test="${roomList.roomType eq 'S'}"><img src="${pageContext.request.contextPath}/images/roomImages/suiteRoom.jpg" alt="Suite" class="room_img"></c:when>
				</c:choose>
				</td>
				
				<td>
				<c:forEach var="hotelInfoList" items="${allHotelInfo }">
				<c:if test="${roomList.hotelId eq  hotelInfoList.hotelId}">${hotelInfoList.hotelName }</c:if>
				</c:forEach>
				 / ${roomList.roomId } <br><br>
				 <c:choose>
					<c:when test="${roomList.roomType eq 'T'}">Standard Room</c:when>
					<c:when test="${roomList.roomType eq 'D'}">Deluxe Room</c:when>
					<c:when test="${roomList.roomType eq 'S'}">Suite Room</c:when>
				</c:choose> /
				<c:choose>
					<c:when test="${roomList.bedType eq 'S'}">Single Bed</c:when>
					<c:when test="${roomList.bedType eq 'D'}">Double Bed</c:when>
					<c:when test="${roomList.bedType eq 'T'}">Twin Bed</c:when>
					<c:when test="${roomList.bedType eq 'F'}">Family Bed</c:when>
				</c:choose>
				</td>
				
				<td>최대 투숙 인원 : ${roomList.availablePerson }명</td>
				<td style="font-size: 15px; font-weight: bold;">${roomList.basicCharge }원</td>
				<td><input type="button" value="예약하기" class="resBtn" onclick="location.href='${root }roomReservation_step1Proc?roomId=${roomList.roomId }'"></td>
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
