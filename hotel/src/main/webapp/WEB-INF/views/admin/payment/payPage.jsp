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
	var req;
	
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
			req.open('POST', 'getCreditInfo');
			req.send('${memberDTO.memberId }');
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
	
	function printInfo() {
		var cardCompany = document.getElementById('cardCompany');
		var cardNo1 = document.getElementById('cardNo1');
		var cardNo2 = document.getElementById('cardNo2');
		var cardNo3 = document.getElementById('cardNo3');
		var cardNo4 = document.getElementById('cardNo4');
		var validityMm = document.getElementById('validityMm');
		var validityYy = document.getElementById('validityYy');
		var csv = document.getElementById('csv');
		if(req.readyState == 4 && req.status == 200){
			var result = JSON.parse(req.responseText);
			if(result.cardDTONull != "cardDTONull") {
				cardCompany.value = result.cardCompany;
				cardNo1.value = result.cardNo1;
				cardNo2.value = result.cardNo2;
				cardNo3.value = result.cardNo3;
				cardNo4.value = result.cardNo4;
				validityMm.value = result.validityMm;
				validityYy.value = result.validityYy;
				csv.value = result.csv;
			}else {
				alert("고객의 카드 정보가 없습니다.");
			}
		}
	}
	
	function submitCheck() {
		var paymentType = document.getElementById('paymentType');
		var cardCompany = document.getElementById('cardCompany');
		var cardNo1 = document.getElementById('cardNo1');
		var cardNo2 = document.getElementById('cardNo2');
		var cardNo3 = document.getElementById('cardNo3');
		var cardNo4 = document.getElementById('cardNo4');
		var validityMm = document.getElementById('validityMm');
		var validityYy = document.getElementById('validityYy');
		var csv = document.getElementById('csv');
		if(paymentType.value == '1'){
			if(cardCompany.value == "" || cardNo1.value == "" || cardNo2.value == "" || cardNo3.value == ""
					|| cardNo4.value == "" || validityMm.value == "" || validityYy == "" || csv == ""){
				alert("신용/체크카드 정보를 입력해주세요.");
				return;
			}
			if(cardNo1.value.length != 4 || cardNo2.value.length != 4 || cardNo3.value.length != 4 || cardNo4.value.length != 4){
				alert("카드 번호를 정확히 입력해주세요.");
				return;
			}
			if(validityMm.value.length != 2 || validityYy.value.length != 2) {
				alert("유효기간을 정확히 입력해주세요.");
				return;
			}
			validityMmNum = validityMm.value * 1;
			validityYyNum = validityYy.value * 1;
			if(validityMmNum < 0 || validityMmNum >= 13 || validityYyNum < 22) {
				alert("유효기간을 정확히 입력해주세요.");
				return;
			}
			if(csv.value.length != 3) {
				alert("csv를 정확히 입력해주세요.");
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

<form action="PaymentProc" method="post" id='f'>

<input type="hidden" name="paymentNo" value="${paymentNo }">
<input type="hidden" name="reservationNo" value="${resDTO.reservationNo }">
<input type="hidden" name="memberId" id="memberId" value="${memberDTO.memberId }">
<input type="hidden" name="paymentDate" value="${paymentDate }">
<input type="hidden" name="paymentAmount" value="${resDTO.baseAmount }">

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
			<option value="" <c:if test="${cardCompany != null }">selected</c:if>>카드사</option>	
			<option value="국민은행" <c:if test="${cardCompany == '국민은행' }">selected</c:if>>국민은행</option>	
			<option value="우리은행" <c:if test="${cardCompany == '우리은행' }">selected</c:if>>우리은행</option>	
			<option value="신한은행" <c:if test="${cardCompany == '신한은행' }">selected</c:if>>신한은행</option>	
			<option value="농협은행" <c:if test="${cardCompany == '농협은행' }">selected</c:if>>농협은행</option>	
			<option value="카카오뱅크" <c:if test="${cardCompany == '카카오뱅크' }">selected</c:if>>카카오뱅크</option>	
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
	<input type="button" value="결제" class="payPayBtn" onclick="submitCheck()">
</div>
</form>
</div>
</body>
