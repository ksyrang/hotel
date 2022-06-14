<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url var="root" value="/" />

<head>
<meta charset="UTF-8">
<link href="${pageContext.request.contextPath}/resources/css/admin/admin_commonCss.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/css/admin/admin_payPage.css" rel="stylesheet" type="text/css">
<title>payCanclePage</title>
<script>
	window.onload=selectPayType;
	
	// 결제수단이 신용/체크카드 일 경우 카드 정보를 뿌려준다.
	function selectPayType(){
		paymentType = document.getElementById('paymentType');
		const row = document.getElementById('creditInfo');
		if(paymentType.value == 1) {
			row.style.display='';
		} else {
			row.style.display = 'none';
		}
	}
	
	function submitCheck(){
		var reservationStatus = document.getElementById('reservationStatus');
		if(reservationStatus.value == '1'){
			if(confirm("체크인한 고객입니다. 결제를 취소하면 예약이 취소됩니다.") == false){
				return;
			}
		}else if(reservationStatus.value == '2'){
			if(confirm("체크아웃한 고객입니다. 결제 취소를 진행할까요?") == false){
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

<div class="admin_mainDiv">

<form action="payCancleProc" method="post" id="f">

<input type="hidden" name="paymentNo" value="${paymentNo }">
<input type="hidden" name="reservationNo" value="${resDTO.reservationNo }">
<input type="hidden" name="hotelId" value="${resDTO.hotelId }">
<input type="hidden" name="memberId" id="memberId" value="${memberDTO.memberId }">
<input type="hidden" name="paymentDate" value="${paymentDate }">
<input type="hidden" id="paymentType" name="paymentType" value="${oldPaymentDTO.paymentType }">
<input type="hidden" name="cardId" value="${cardId }">
<input type="hidden" name="paymentAmount" value="${oldPaymentDTO.paymentAmount }">
<input type="hidden" name="referencePaymentNo" value="${oldPaymentDTO.paymentNo }">
<input type="hidden" id="reservationStatus" name="reservationStatus" value="${resDTO.reservationStatus }">

<table class="payTable">
	<tr><th>결제번호</th><td>${paymentNo }</td></tr>
	<tr><th>예약번호</th><td>${resDTO.reservationNo }</td></tr>
	<tr><th>성명</th><td>${memberDTO.memberNameKR }(${memberDTO.memberNameENG })</td></tr>
	<tr><th>결제일자</th><td>${paymentDate }</td></tr>
	<tr><th>결제수단</th><td>
		<c:choose>
			<c:when test="${oldPaymentDTO.paymentType eq '1' }">신용/체크카드</c:when>
			<c:when test="${oldPaymentDTO.paymentType eq '2' }">무통장입금</c:when>
			<c:when test="${oldPaymentDTO.paymentType eq '3' }">휴대폰결제</c:when>
			<c:when test="${oldPaymentDTO.paymentType eq '4' }">카카오페이</c:when>
			<c:when test="${oldPaymentDTO.paymentType eq '5' }">네이버페이</c:when>
			<c:when test="${oldPaymentDTO.paymentType eq '6' }">토스</c:when>
		</c:choose>
	</td></tr>
	<!-- 결제 타입에 따라 부가정보 입력 가능 -->
	<tr id="creditInfo"><th>신용/체크카드 정보</th><td>
		카드사 : ${cardCompany }<br/>
		카드번호 : ${cardNo1 } ${cardNo2 } ${cardNo3 } ${cardNo4 }<br/>
		유효기간 : ${validityMm } / ${validityYy }<br/>
		CSV : ${CSV }
	</td></tr>
	<tr><th>결제취소금액</th><td>${oldPaymentDTO.paymentAmount }원</td></tr>
</table>
<div class="payDiv">
	<input type="button" value="취소" class="payCancleBtn" onclick="javascript:history.back();">
	<input type="button" value="결제취소" class="payPayBtn" onclick="submitCheck()">
</div>
</form>
</div>
</body>
