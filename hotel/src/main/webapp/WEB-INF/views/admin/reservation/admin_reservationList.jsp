<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:url var="root" value="/" />

<head>
<meta charset="UTF-8">
<link href="${pageContext.request.contextPath}/resources/css/admin/admin_commonCss.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/css/admin/admin_reservationList.css" rel="stylesheet" type="text/css">
<title>admin_reservationList</title>

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
			</thead>
			<!-- forEach문 -->
			<c:forEach var="resdb" items="${sessionScope.resList }">
			<tr>
				<td><a href="${root }admin_reservationInfoProc?reservationNo=${resdb.reservationNo}">${resdb.reservationNo }</a></td>
				<td>${resdb.memberId }</td>
				
				<c:forEach var="hotelInfoList" items="${allHotelInfo }">
					<c:if test="${hotelInfoList.hotelId eq resdb.hotelId }">
						<td>${hotelInfoList.hotelName }</td>
					</c:if>
				</c:forEach>
				
				<td>${resdb.roomId }호</td>
				<td>${resdb.reservationDate }</td>
				<td>${resdb.checkinDate }</td>
				<td>${resdb.baseAmount }원</td>
				
				<td>
				<c:choose>
					<c:when test="${resdb.reservationStatus eq '0' }">예약</c:when>
					<c:when test="${resdb.reservationStatus eq '1' }">체크인</c:when>
					<c:when test="${resdb.reservationStatus eq '2' }">체크아웃</c:when>
					<c:when test="${resdb.reservationStatus eq '9' }">취소</c:when>
				</c:choose>
				</td>
				
				<td>
				<input type="button" value="수정" class="admin_commonBtn" onclick="location.href='${root }admin_reservationModifyProc?reservationNo=${resdb.reservationNo }'">
				<input type="button" value="삭제" class="admin_commonBtn" onclick="location.href='${root }admin_reservationDeleteProc?reservationNo=${resdb.reservationNo }'">
				<input type="button" value="결제" class="admin_commonBtn" onclick="location.href='${root }payPageProc?reservationNo=${resdb.reservationNo }'">
				</td>
			</tr>
			</c:forEach>
		</table>
	
	</div>

</div>

</div>

</body>
