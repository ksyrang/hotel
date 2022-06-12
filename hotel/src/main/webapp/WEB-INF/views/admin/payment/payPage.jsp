<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url var="root" value="/" />

<head>
<meta charset="UTF-8">
<link href="${pageContext.request.contextPath}/resources/css/admin/admin_commonCss.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/css/admin/admin_payPage.css" rel="stylesheet" type="text/css">
<title>payPage</title>
<script>
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
	
	var req;
	// 카드정보 가져오기 checkbox를 누르면 고객의 카드 정보를 불러온다.
	function getCreditInfo(checked) {
		var cardCompany = document.getElementById('cardCompany');
		var cardNo1 = document.getElementById('cardNo1');
		var cardNo2 = document.getElementById('cardNo2');
		var cardNo3 = document.getElementById('cardNo3');
		var cardNo4 = document.getElementById('cardNo4');
		var validityMm = document.getElementById('validityMm');
		var validityYy = document.getElementById('validityYy');
		var csv = document.getElementById('csv');
		
		if(checked.checked == true) {
			req = new XMLHttpRequest();
			req.onreadystatechange = printInfo;
			req.open('post', 'getCreditInfo');
			req.send(${memberDTO.memberId});
		}else {
			cardCompany.value = "";
			cardNo1.value = "";
			cardNo2.value = "";
			cardNo3.value = "";
			cardNo4.value = "";
			validityMm.value = "";
			validityYy.value = "";
			csv.value = "";
		}
	}
	
	// 체크박스 선택 시
	function printInfo() {
		if(req.readyState == 4 && req.status == 200){
			//alert(req.responseText);
		}
	}
</script>
</head>
<body>
<div class="admin_mainDiv">
<input type="hidden" id="memberId" value="${memberDTO.memberId }">
<table class="payTable">
	<tr><th>결제번호</th><td>${paymentNo }</td></tr>
	<tr><th>예약번호</th><td>${resDTO.reservationNo }</td></tr>
	<tr><th>성명</th><td>${memberDTO.memberNameKR }(${memberDTO.memberNameENG })</td></tr>
	<tr><th>결제일자</th><td>${paymentDate }</td></tr>
	<tr><th>결제수단</th><td>
		<select name="paymentType" id="paymentType" onchange="selectPayType()" class="selectPayment">
			<option value="1" selected>신용/체크카드</option>
			<option value="">무통장입금</option>
			<option value="2">휴대폰결제</option>
			<option value="3">카카오페이</option>
			<option value="">네이버페이</option>
			<option value="">토스</option>
		</select>
	</td></tr>
	<!-- 결제 타입에 따라 부가정보 입력 가능 -->
	<tr id="creditInfo"><th>신용/체크카드 정보</th><td>
		<input type="checkbox" id="checkCredit" onchange="getCreditInfo(this)" checked>고객 카드정보 가져오기<br/>
		카드사 : <select name="cardCompany" id="cardCompany" class="selectCompany">
			<option value="">카드사</option>	
			<option value="국민은행" selected>국민은행</option>	
			<option value="우리은행">우리은행</option>	
			<option value="신한은행">신한은행</option>	
			<option value="농협은행">농협은행</option>	
			<option value="카카오뱅크">카카오뱅크</option>	
		</select><br/>
		카드번호 : <input type="text" name="cardNo1" id="cardNo1" value="${cardNo1 }" class="input_cardNo"> 
		<input type="password" name="cardNo2" id="cardNo2" value="${cardNo2 }"  class="input_cardNo">
		<input type="password" name="cardNo3" id="cardNo3" value="${cardNo3 }"  class="input_cardNo"> 
		<input type="text" name="cardNo4" id="cardNo4" value="${cardNo4 }"  class="input_cardNo"><br/>
		유효기간 : <input type="text" name="validityMm" id="validityMm" value="${validityMm }" class="input_validity">/
		<input type="text" name="validityYy" id="validityYy" value="${validityYy }" class="input_validity"><br/>
		CSV : <input type="text" name="csv" id="csv" value="${csv }" class="input_csv"><br/>
	</td></tr>
	<tr><th>결제금액</th><td>${resDTO.baseAmount }원</td></tr>
</table>
<div class="payDiv">
	<input type="button" value="취소" class="payCancleBtn" onclick="javascript:history.back();">
	<input type="button" value="결제" class="payPayBtn">
</div>
</div>
</body>
