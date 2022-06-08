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
	<input type="button" value="예약수정" class="admin_commonBtn">
	<input type="button" value="예약취소" class="admin_commonBtn">
	<input type="button" value="결제" class="admin_commonBtnB">
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
		<tr class="table_hotel"> <td>서울신라호텔</td> </tr>
		<tr><td>서울특별시 종로구 상보로 71</td></tr>
		<tr><td>(우: 03152)</td></tr>
		<tr><td>Tel. 02-3712-1927</td></tr>
		<tr><td>Email. aisnd@hotel.com</td></tr>
	</table>
</div>
<!-- 예약상세정보 div -->
<div class="reservationInfoDiv">
	<table class="admin_reservationTable">
		<tr class="table_reservation">
			<td>예약번호</td><td>923746</td>
		</tr>
		<tr>
			<td>예약일</td><td>2022-06-10</td>
		</tr>
		<tr>
			<td>체크인/체크아웃</td><td>2022-07-10 ~ 2022-07-12(2박)</td>
		</tr>
		<tr>
			<td>객실</td><td>standard/Family</td>
		</tr>
		<tr>
			<td>투숙인원</td><td>2명</td>
		</tr>
		<tr>
			<td>조식</td><td>Y</td>
		</tr>
		<tr>
			<td>요청사항</td><td>수건 세개 주세요.</td>
		</tr>
	</table>
</div>

<!-- 고객정보 div -->
<div class="memberInfoDiv">
	<table class="admin_memberTable">
		<tr class="table_member">
			<td>고객명</td><td>신다은(Shin DaEun)</td>
		</tr>
		<tr>
			<td>연락처</td><td>010-5620-1321</td>
		</tr>
		<tr>
			<td>이메일</td><td>dauen1@naver.com</td>
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
			<td class="payTableLeft">서울신라호텔/standard/Family</td>
			<td class="payTableRight">30000000원</td>
		</tr>
		<tr>
			<td class="payTable_th1">요금합계(부가가치세 포함)</td>
			<td class="payTable_th2">30000000원</td>
		</tr>
	</table>
</div>

</div>

</body>
