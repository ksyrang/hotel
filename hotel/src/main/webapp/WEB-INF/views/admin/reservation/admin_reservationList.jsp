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
	function dateComparison() {
		startDate = document.getElementById("startDate").value;
		endDate = document.getElementById("endDate").value;
		if(startDate == "") {
			alert("시작날짜를 설정해주세요.");
			
		}
		if(endDate < startDate) {
			alert("날짜를 다시 선택해주세요.");
			endDate.remove();
		}
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
	<form>
		<!-- 호텔 필터링 -->
		<select name="hotelSelect" class="admin_hotelSearch">
				<option value="">호텔명</option>
			<c:forEach var="hotelInfoList" items="${allHotelInfo }">
				<option value="${hotelInfoList.hotelId }">${hotelInfoList.hotelName }</option>
			</c:forEach>
		</select>
		<!-- 날짜 필터링 -->
		<select name="dateBase" class="admin_dateSelete">
			<option value="">날짜 기준</option>
			<option value="reservationDate">예약일 기준</option>
			<option value="checkinDate">체크인 기준</option>
		</select>
		<input type="date" name="startDate" class="admin_reservationDate">~<input type="date" name="endDate" class="admin_reservationDate2">
		<!-- 예약번호 검색 -->
		<input type="text" name="reservationNoSearch" placeholder="예약번호" class="admin_reservationNoSearch">
		<input type="submit" name="reservationSearchBtn" value="검색" class="admin_commonBtn">
	</form>
	<!-- 예약 목록 테이블 -->
	<div>
		<table class="admin_reservationListTable">
		<thead>
			<tr>
				<th>예약번호</th>
				<th>회원ID</th>
				<th>호텔명</th>
				<th>객실</th>
				<th>예약날짜</th>
				<th>체크인</th>
				<th>금액</th>
				<th>예약상태</th>
				<th>수정/삭제/결제</th>
			</tr>
			
			<!-- forEach문 -->
			<tr>
				<td><a href="">8174720</a></td>
				<td>dauen1</td>
				<td>제주신라호텔</td>
				<td>2003호</td>
				<td>2022.06.03</td>
				<td>2022.07.11</td>
				<td>400,000원</td>
				<td>예약</td>
				<td>
				<input type="button" value="수정" class="admin_commonBtn">
				<input type="button" value="삭제" class="admin_commonBtn">
				<input type="button" value="결제" class="admin_commonBtn">
				</td>
			</tr>
		</thead>
		
		</table>
	
	</div>

</div>

</div>

</body>
