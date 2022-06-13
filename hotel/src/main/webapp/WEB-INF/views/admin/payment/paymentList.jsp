<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:url var="root" value="/" />

<head>
<meta charset="UTF-8">
<link href="${pageContext.request.contextPath}/resources/css/admin/admin_commonCss.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/css/admin/admin_reservationList.css" rel="stylesheet" type="text/css">
<title>paymentList</title>

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
		<c:if test="${sessionScope.userId eq 'admin' }">
		<select name="hotelSelect" id="hotelSelect" class="admin_hotelSearch">
				<option value="">호텔명</option>
			<c:forEach var="hotelInfoList" items="${allHotelInfo }">
				<option value="${hotelInfoList.hotelId }">${hotelInfoList.hotelName }</option>
			</c:forEach>
		</select>
		</c:if>
		<!-- 날짜 필터링 -->
		<input type="date" id="startDate" name="startDate" class="admin_reservationDate">~<input type="date" id="endDate" name="endDate" class="admin_reservationDate2">
		<!-- 결제상태 필터링 -->
		<select name="StatusSelect" id="StatusSelect" class="admin_hotelSearch">
			<option value="">결제상태</option>
			<option value="0">결제완료</option>
			<option value="1">결제취소</option>
		</select>
		<!-- 회원아이디 검색 -->
		<input type="text" name="memberId" id="memberId" placeholder="회원 아이디" class="admin_reservationNoSearch">
		<input type="submit" name="reservationSearchBtn" value="검색" class="admin_commonBtn">
	</form>
	<!-- 예약 목록 테이블 -->
	<div>
		<table class="admin_reservationListTable">
		<thead>
			<tr>
				<th>결제번호</th>
				<th>예약번호</th>
				<th>회원ID</th>
				<th>호텔명/객실</th>
				<th>결제일자</th>
				<th>결제타입</th>
				<th>결제금액</th>
				<th>결제상태</th>
				<th>결제취소</th>
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
					<c:when test="${resdb.reservationStatus eq '0' }"><font style="color:#81d742">예약</font></c:when>
					<c:when test="${resdb.reservationStatus eq '1' }">체크인</c:when>
					<c:when test="${resdb.reservationStatus eq '2' }">체크아웃</c:when>
					<c:when test="${resdb.reservationStatus eq '9' }"><font style="color:red">취소</font></c:when>
				</c:choose>
				</td>
				
				<td>
				<c:choose>
					<c:when test="${resdb.reservationStatus eq '0' }">
						<input type="button" value="수정" class="admin_commonBtn" onclick="location.href='${root }admin_reservationModifyProc?reservationNo=${resdb.reservationNo }'">
						<input type="button" value="취소" class="admin_commonBtn" onclick="location.href='${root }admin_reservationDeleteProc?reservationNo=${resdb.reservationNo }'">
						<input type="button" value="결제" class="admin_commonBtn" onclick="location.href='${root }payPageProc?reservationNo=${resdb.reservationNo }&reservationStatus=${resdb.reservationStatus }'">
						</c:when>
					<c:when test="${resdb.reservationStatus eq '1' }">
						<input type="button" value="수정" class="admin_commonBtnG" disabled>
						<input type="button" value="취소" class="admin_commonBtnG" disabled>
						<input type="button" value="결제" class="admin_commonBtn" onclick="location.href='${root }payPageProc?reservationNo=${resdb.reservationNo }&reservationStatus=${resdb.reservationStatus }'">
					</c:when>
					<c:otherwise>
						<input type="button" value="수정" class="admin_commonBtnG" disabled>
						<input type="button" value="취소" class="admin_commonBtnG" disabled>
						<input type="button" value="결제" class="admin_commonBtnG" disabled>
					</c:otherwise>
				</c:choose>
				
				</td>
			</tr>
			</c:forEach>
		</table><br>
	<b>총 예약수 : ${sessionScope.paymentCount }</b><br>
	<div align="center">
		${sessionScope.paymentPage }
	</div>
	
	
	</div>

</div>

</div>

</body>
