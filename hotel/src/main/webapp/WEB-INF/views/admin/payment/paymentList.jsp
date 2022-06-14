<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:url var="root" value="/" />

<head>
<meta charset="UTF-8">
<link href="${pageContext.request.contextPath}/resources/css/admin/admin_commonCss.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/css/admin/admin_reservationList.css" rel="stylesheet" type="text/css">
<title>paymentList</title>
<script>
	function searchCheck() {
		var startDate = document.getElementById('startDate');
		var endDate = document.getElementById('endDate');
		
		if(startDate.value != "") {
			if(endDate.value == "" || endDate.value == null) {
				alert("검색 종료일자를 입력해주세요.");
				return;
			}
		}
		
		if(endDate.value != "") {
			if(startDate.value == "" || startDate.value == null) {
				alert("검색 시작일자를 입력해주세요.");
				return;
			}
		}
		
		if(startDate.value != "" && startDate.value != null && endDate.value != "" && endDate.value != null){
			if(startDate.value > endDate.value) {
				alert("검색 일자를 다시 입력해주세요.");
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
		<!-- 결제 타입 필터링 -->
		<select name="typeSelect" id="typeSelect" class="admin_dateSelete">
			<option value="">결제타입</option>
			<option value="1">신용/체크카드</option>
			<option value="2">무통장입금</option>
			<option value="3">휴대폰결제</option>
			<option value="4">카카오페이</option>
			<option value="5">네이버페이</option>
			<option value="6">토스</option>
		</select>
		<!-- 결제상태 필터링 -->
		<select name="StatusSelect" id="StatusSelect" class="admin_dateSelete">
			<option value="">결제상태</option>
			<option value="0">결제완료</option>
			<option value="1">결제취소</option>
			<option value="2">환불</option>
		</select>
		<!-- 회원아이디 검색 -->
		<input type="text" name="memberId" id="memberId" placeholder="회원 아이디" class="admin_reservationNoSearch">
		<input type="button" name="reservationSearchBtn" value="검색" class="admin_commonBtn" onclick="searchCheck()" >
	</form>
	<div align="left" style="margin-top:5px; color:#80715c;">
		<c:if test="${ShotelSelect != null and ShotelSelect != ''}">
		<c:forEach var="hotelInfoList" items="${allHotelInfo }">
			<c:if test="${hotelInfoList.hotelId eq ShotelSelect }">
				호텔명 : ${hotelInfoList.hotelName }&nbsp;&nbsp;
			</c:if>
		</c:forEach>
		</c:if>
		<c:if test="${SstartDate != null and SstartDate != '' and SendDate != null and SendDate != ''}">결제일자 : ${SstartDate } ~ ${SendDate }&nbsp;&nbsp;</c:if>
		<c:if test="${StypeSelect != null and StypeSelect != '' }">결제타입 : 
		<c:choose>
			<c:when test="${StypeSelect eq '1'}">신용/체크카드</c:when>
			<c:when test="${StypeSelect eq '2'}">무통장입금</c:when>
			<c:when test="${StypeSelect eq '3'}">휴대폰결제</c:when>
			<c:when test="${StypeSelect eq '4'}">카카오페이</c:when>
			<c:when test="${StypeSelect eq '5'}">네이버페이</c:when>
			<c:when test="${StypeSelect eq '6'}">토스</c:when>
		</c:choose>
		&nbsp;&nbsp;
		</c:if>
		<c:if test="${SstatusSelect != null and SstatusSelect != '' }">결제상태 : 
		<c:choose>
			<c:when test="${SstatusSelect eq '0' }">결제완료</c:when>
			<c:when test="${SstatusSelect eq '1' }">결제취소</c:when>
			<c:when test="${SstatusSelect eq '2' }">환불</c:when>
		</c:choose>
		&nbsp;&nbsp;
		</c:if>
		<c:if test="${SmemberId != null and SmemberId != '' }">회원아이디 : ${SmemberId }</c:if>
		<!-- 결제취소 if문 
		<c:if test="${SstatusSelect eq '1' }">-</c:if>-->
		<br><br>검색 결과 매출액 / 총 매출액  : <b style="color: #80715c;">${sessionScope.filterAmount }원 /  ${sessionScope.totalAmount }원</b>
	</div>
	<!-- 결제 목록 테이블 -->
	<div>
		<table class="admin_reservationListTable">
		<thead>
			<tr>
				<th>결제번호</th>
				<th>예약번호</th>
				<th>회원ID</th>
				<th>호텔명</th>
				<th>결제일자</th>
				<th>결제타입</th>
				<th>결제금액</th>
				<th>결제상태</th>
				<th>결제취소</th>
			</tr>
			</thead>
			<!-- forEach문 -->
			<c:forEach var="paymentList" items="${sessionScope.paymentList }">
			<tr>
				<td>${paymentList.paymentNo }</td>
				<td>${paymentList.reservationNo }</td>
				<td>${paymentList.memberId }</td>
				
				<c:forEach var="hotelInfoList" items="${allHotelInfo }">
					<c:if test="${hotelInfoList.hotelId eq paymentList.hotelId }">
						<td>${hotelInfoList.hotelName }</td>
					</c:if>
				</c:forEach>
				
				<td>${paymentList.paymentDate }</td>
				
				<td>
				<c:choose>
					<c:when test="${paymentList.paymentType eq '1'}">신용/체크카드</c:when>
					<c:when test="${paymentList.paymentType eq '2'}">무통장입금</c:when>
					<c:when test="${paymentList.paymentType eq '3'}">휴대폰결제</c:when>
					<c:when test="${paymentList.paymentType eq '4'}">카카오페이</c:when>
					<c:when test="${paymentList.paymentType eq '5'}">네이버페이</c:when>
					<c:when test="${paymentList.paymentType eq '6'}">토스</c:when>
				</c:choose>
				</td>
				
				
				<td>${paymentList.paymentAmount }원</td>
				
				<td>
				<c:choose>
					<c:when test="${paymentList.paymentStatus eq '0' }"><font style="color:blue">결제완료</font></c:when>
					<c:when test="${paymentList.paymentStatus eq '1' }"><font style="color:red">결제취소</font></c:when>
					<c:when test="${paymentList.paymentStatus eq '2' }"><font style="color:green">환불</font></c:when>
				</c:choose>
				</td>
				
				<td>
				<c:choose>
					<c:when test="${paymentList.paymentStatus eq '0' }">
						<input type="button" value="결제취소" class="admin_commonBtn" onclick="location.href='${root }payCanclePageProc?referencePaymentNo=${paymentList.paymentNo }'">
						</c:when>
					<c:otherwise>
						<input type="button" value="결제취소" class="admin_commonBtnG" disabled>
					</c:otherwise>
				</c:choose>
				
				</td>
			</tr>
			</c:forEach>
		</table><br>
	<b>총 결제 건수 : ${sessionScope.paymentCount }</b><br>
	<div align="center">
		${sessionScope.paymentPage }
	</div>
	
	
	</div>

</div>

</div>

</body>
