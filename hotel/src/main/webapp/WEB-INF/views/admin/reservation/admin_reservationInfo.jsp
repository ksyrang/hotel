<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:url var="root" value="/" />

<head>
<meta charset="UTF-8">
<link href="${pageContext.request.contextPath}/resources/css/admin/admin_commonCss.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/css/admin/admin_reservationInfo.css" rel="stylesheet" type="text/css">
<title>admin_reservationInfo</title>
</head>
<body>
<c:if test="${not empty msg }">
	<script>alert("${msg}");</script>
</c:if>
<!-- common div -->
<div class="admin_mainDiv">
<!-- top -->
<div class="admin_reservationInfoTopLeft">
	예약정보
</div>
<div class="admin_reservationInfoTopRight">
	<input type="button" value="목록" class="admin_commonBtn" onclick="location.href='${root }admin_reservationListProc'">
	<c:choose>
		<c:when test="${resInfo.reservationStatus eq '0' }">
			<input type="button" value="수정" class="admin_commonBtn" onclick="location.href='${root }admin_reservationModifyProc?reservationNo=${resInfo.reservationNo }'">
			<input type="button" value="취소" class="admin_commonBtn" onclick="location.href='${root }admin_reservationDeleteProc?reservationNo=${resInfo.reservationNo }'">
			<input type="button" value="결제" class="admin_commonBtn" onclick="location.href='${root }payPageProc?reservationNo=${resInfo.reservationNo }'">
			</c:when>
		<c:when test="${resInfo.reservationStatus eq '1' }">
			<input type="button" value="수정" class="admin_commonBtnG" disabled>
			<input type="button" value="취소" class="admin_commonBtnG" disabled>
			<input type="button" value="결제" class="admin_commonBtn" onclick="location.href='${root }checkoutPayPageProc?reservationNo=${resInfo.reservationNo }'">
		</c:when>
		<c:otherwise>
			<input type="button" value="수정" class="admin_commonBtnG" disabled>
			<input type="button" value="취소" class="admin_commonBtnG" disabled>
			<input type="button" value="결제" class="admin_commonBtnG" disabled>
		</c:otherwise>
	</c:choose>
</div>
<!-- table -->
<div class="admin_reservationTableDiv">
<table class="admin_TableHeader">
	<tr>
		<th class="table_hotel">호텔정보</th>
		<th class="table_reservation" colspan="2">예약 상세 정보</th>
		<th class="table_member" colspan="2">고객 정보</th>
	</tr>
</table>
</div>
<!-- 호텔정보 div -->
<div class="hotelInfoDiv">
	<table class="admin_hotelTable">
		<tr class="table_hotel"> <td>${sessionScope.hotelInfo.hotelName }</td> </tr>
		<tr><td>${sessionScope.hotelInfo.hotelAddr1}</td></tr>
		<tr><td>${sessionScope.hotelInfo.hotelAddr2 }</td></tr>
		<tr><td>(우: ${sessionScope.hotelInfo.hotelZipcode })</td></tr>
		<tr><td>Tel. ${sessionScope.hotelInfo.hotelPhoneNumber }</td></tr>
		<tr><td>Email. ${sessionScope.hotelInfo.hotelEmail }</td></tr>
	</table>
</div>
<!-- 예약상세정보 div -->
<div class="reservationInfoDiv">
	<table class="admin_reservationTable">
		<tr class="table_reservation">
			<td>예약번호</td><td>${resInfo.reservationNo }</td>
		</tr>
		<tr>
			<td>예약일</td><td>${resInfo.reservationDate }</td>
		</tr>
		<tr>
			<td>체크인/체크아웃</td><td>${resInfo.checkinDate } ~ ${resInfo.checkoutDate } (${period }박)</td>
		</tr>
		<tr>
			<td>객실</td><td>${resInfo.roomId }호</td>
		</tr>
		<tr>
			<td>투숙인원</td><td>${resInfo.guestNumber }명</td>
		</tr>
		<tr>
			<td>조식</td><td>${resInfo.breakfastCheck }</td>
		</tr>
		<tr>
			<td>요청사항</td><td>${resInfo.remark }</td>
		</tr>
	</table>
</div>

<!-- 고객정보 div -->
<div class="memberInfoDiv">
	<table class="admin_memberTable">
		<tr class="table_member">
			<td>고객명</td><td>${memberInfo.memberNameKR }(${memberInfo.memberNameENG })</td>
		</tr>
		<tr>
			<td>연락처</td><td>${memberInfo.memberMobile }</td>
		</tr>
		<tr>
			<td>이메일</td><td>${memberInfo.memberEmail }</td>
		</tr>
	</table>
</div>
<!-- 요금상세 div -->
<div class="paymentDiv">
	<table class="admin_payTable">
		<tr>
			<th colspan="2">요금상세</th>
		</tr>
		<tr>
			<td class="payTableLeft">${sessionScope.hotelInfo.hotelName }/${resInfo.roomId }호</td>
			<td class="payTableRight">${resInfo.baseAmount }원</td>
		</tr>
		<tr>
			<td class="payTable_th1">요금합계(부가가치세 포함)</td>
			<td class="payTable_th2">${resInfo.baseAmount }원</td>
		</tr>
	</table>
</div>

</div>

</body>
