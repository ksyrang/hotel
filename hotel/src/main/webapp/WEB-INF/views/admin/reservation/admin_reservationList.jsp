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
		var dateBase = document.getElementById('dateBase');
		var startDate = document.getElementById('startDate');
		var endDate = document.getElementById('endDate');
		
		if(dateBase.value != "") {
			if(startDate.value == "" || startDate.value == null || endDate.value == "" || endDate.value == null) {
				alert("날짜를 입력해주세요.");
				return;
			}
		}
		
		if(startDate.value != "" && startDate.value != null && endDate.value != "" && endDate.value != null){
			if(dateBase.value == ""){
				alert("날짜 기준을 선택해주세요.");
				return;
			}
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
		<select name="hotelSelect" class="admin_hotelSearch">
				<option value="">호텔명</option>
			<c:forEach var="hotelInfoList" items="${allHotelInfo }">
				<option value="${hotelInfoList.hotelId }">${hotelInfoList.hotelName }</option>
			</c:forEach>
		</select>
		</c:if>
		<!-- 날짜 필터링 -->
		<select name="dateBase" id="dateBase" class="admin_dateSelete">
			<option value="">날짜 기준</option>
			<option value="reservationDate">예약일 기준</option>
			<option value="checkinDate">체크인 기준</option>
		</select>
		<input type="date" id="startDate" name="startDate" class="admin_reservationDate">~<input type="date" id="endDate" name="endDate" class="admin_reservationDate2">
		<!-- 예약상태 필터링 -->
		<select name="resStatus" id="resStatus" class="admin_dateSelete">
			<option value="">예약상태</option>
			<option value="0">예약</option>
			<option value="1">체크인</option>
			<option value="2">체크아웃</option>
			<option value="9">예약취소</option>
		</select>
		<!-- 예약번호 검색 -->
		<input type="text" name="reservationNoSearch" placeholder="예약번호" class="admin_reservationNoSearch">
		<input type="button" name="reservationSearchBtn" value="검색" class="admin_commonBtn" onclick="searchCheck()">
	</form>
	
	<div align="left" style="margin-top:10px; color:#80715c;">
		<c:if test="${ShotelSelect != null and ShotelSelect != ''}">
		<c:forEach var="hotelInfoList" items="${allHotelInfo }">
			<c:if test="${hotelInfoList.hotelId eq ShotelSelect }">
				호텔명 : ${hotelInfoList.hotelName }&nbsp;&nbsp;
			</c:if>
		</c:forEach>
		</c:if>
		<c:if test="${SdateBase != null and SdateBase != '' }">
			<c:if test="${SdateBase == 'reservationDate' }">예약일 기준 : </c:if>
			<c:if test="${SdateBase == 'checkinDate' }">체크인 기준 : </c:if>
			<c:if test="${SstartDate != null and SstartDate != '' and SendDate != null and SendDate != ''}">${SstartDate } ~ ${SendDate }</c:if>
			&nbsp;&nbsp;
		</c:if>
		<c:if test="${SresStatus != null and SresStatus != '' }">예약상태 : 
			<c:choose>
				<c:when test="${SresStatus eq '0' }">예약</c:when>
				<c:when test="${SresStatus eq '1' }">체크인</c:when>
				<c:when test="${SresStatus eq '2' }">체크아웃</c:when>
				<c:when test="${SresStatus eq '9' }">예약취소</c:when>
			</c:choose>
		</c:if>
		<c:if test="${SreservationNoSearch != null and SreservationNoSearch != '' }">예약번호 : ${SreservationNoSearch }</c:if>
	</div>
	
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
				<th>수정/취소/결제</th>
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
					<c:when test="${resdb.reservationStatus eq '0' }"><font style="color:#5ea540">예약</font></c:when>
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
	<b>총 예약수 : ${sessionScope.resCount }</b><br>
	<div align="center">
		${sessionScope.resPage }
	</div>
	
	
	</div>

</div>

</div>

</body>
