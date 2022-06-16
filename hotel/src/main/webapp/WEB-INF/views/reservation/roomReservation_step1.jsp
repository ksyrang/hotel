<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:url var="root" value="/" />

<head>
<meta charset="UTF-8">
<link href="${pageContext.request.contextPath}/resources/css/admin/admin_commonCss.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/css/memberRes.css" rel="stylesheet" type="text/css">
<title>roomReservation_step1</title>
<script>
	function radio1NClick() {
		alert("필수적인 개인정보의 수집ㆍ이용에 관한 사항을 동의하지 않으면 이용에 제약이 걸릴 수 있습니다.");
	}
	
	function radio2NClick() {
		alert("개인정보 제3자 제공에 대한 동의를 하지 않으면 이용에 제약이 걸릴 수 있습니다.");
	}
	
	function numberCheck(num){
		const regExp = /[0-9]/g;
		if(!regExp.test(num.value)){
			alert("숫자만 입력가능 합니다.");
			num.value = "";
			return;
		}
	}

	function submitCheck() {
		const breakfastCheckY = document.getElementById('breakfastCheckY');
		const breakfastCheckN = document.getElementById('breakfastCheckN');
		
		const precautionCheck = document.getElementById('precautionCheck');
		
		const radio1Y = document.getElementById('radio1Y');
		const radio1N = document.getElementById('radio1N');
		
		const radio2Y = document.getElementById('radio2Y');
		const radio2N = document.getElementById('radio2N');
		
		if(breakfastCheckY.checked == false && breakfastCheckN.checked == false){
			alert("조식 여부를 선택해주세요.");
			breakfastCheckY.focus();
			return;
		}
		
		if(precautionCheck.checked == false) {
			alert("유의사항, 취소 및 환불 규정을 모두 확인해주세요.");
			precautionCheck.focus();
			return;
		}
		
		if(radio1Y.checked == false && radio1N.checked == false) {
			alert("필수적인 개인정보의 수집ㆍ이용에 관한 사항을 선택해주세요.");
			radio1Y.focus();
			return;
		}
		
		if(radio2Y.checked == false && radio2N.checked == false) {
			alert("개인정보 제3자 제공에 대한 동의를 선택해주세요.");
			radio2Y.focus();
			return;
		}
		
		var cardCompany = document.getElementById('cardCompany');
		var cardNo1 = document.getElementById('cardNo1');
		var cardNo2 = document.getElementById('cardNo2');
		var cardNo3 = document.getElementById('cardNo3');
		var cardNo4 = document.getElementById('cardNo4');
		var validityMm = document.getElementById('validityMm');
		var validityYy = document.getElementById('validityYy');
		var CSV = document.getElementById('CSV');
		// 카드 정보 저장
		var cardNo = document.getElementById('cardNo');
		var validityYyMm = document.getElementById('validityYyMm');
		cardNo.value = cardNo1.value + cardNo2.value + cardNo3.value + cardNo4.value;
		validityYyMm.value = validityYy.value + validityMm.value;
		
		if(cardCompany.value == "" || cardNo1.value == "" || cardNo2.value == "" || cardNo3.value == ""
			|| cardNo4.value == "" || validityMm.value == "" || validityYy == "" || CSV == ""){
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
		if(CSV.value.length != 3) {
			alert("CSV를 정확히 입력해주세요.");
			return;
		}
		
		if(confirm("${hotelName }/${roomDTO.roomId } 예약을 하시겠습니까?") == true){
			document.getElementById('f').submit();
		}else {
			return;
		}
		
	}
</script>
</head>
<body>
<c:if test="${not empty msg }">
	<script>alert("${msg}");</script>
</c:if>

<c:if test="${sessionScope.userId == null }">
	<script>
	alert("로그인 후 다시 이용해주세요.");
	location.href="${root }index?formpath=login";
	</script>
</c:if>

<div class="resMainDiv">

<form action="roomReservation_step1SaveProc" method="post" id="f">

<!-- 기본정보 저장 -->
<input type="hidden" id="hotelId" name="hotelId" value="${roomDTO.hotelId }">
<input type="hidden" id="roomId" name="roomId" value="${roomDTO.roomId }">
<input type="hidden" id="memberId" name="memberId" value="${userInfo.memberId }">
<input type="hidden" id="checkinDate" name="checkinDate" value="${sessionScope.wantCheckin }">
<input type="hidden" id="checkoutDate" name="checkoutDate" value="${sessionScope.wantCheckout }">
<input type="hidden" id="guestNumber" name="guestNumber" value="${sessionScope.wantavPerson }">
<!-- 카드 정보 저장 -->
<input type="hidden" id="cardId" name="cardId" value="${cardId }">
<input type="hidden" id="cardNo" name="cardNo">
<input type="hidden" id="validityYyMm" name="validityYyMm">
<!-- baseAmount 저장 -->
<input type="hidden" id="baseAmount" name="baseAmount" value="${roomDTO.basicCharge }">

<table class="optionTable">
	<tr>
		<th colspan="2" class="fontUp">${hotelName }/${roomDTO.roomId }</th>
	</tr>
	<tr>
		<th class="fontUp"> 옵션사항 </th>
		<th class="fontUp"> 추가 요청사항</th>
	</tr>
	<tr>
		<td>
		조식<br> 
		<input type="radio" name="breakfastCheck" id="breakfastCheckY" value="Y">신청
		<input type="radio" name="breakfastCheck" id="breakfastCheckN" value="N">미신청
		</td>
		
		<td><textarea name="remark" placeholder="공항 교통편 문의 또는 호텔 이용 시 문의하실 사항이 있으시면 입력해 주십시오." class="optionArea"></textarea></td>
	</tr>
	<tr>
		<td>※ 조식은 추가요금이 없습니다.</td>
		<td>※ 전망은 체크인 당일 사정에 따라 달라질 수 있습니다.<br>※ 전 객실은 금연실로 운영중입니다.</td>
	</tr>

</table>

<table class="memberInfoTable">
	<tr>
		<th colspan="4" class="fontUp">
			정보 입력
		</th>
	</tr>
	<tr>
		<th colspan="2" class="fontUp">고객정보</th>
		<th colspan="2" class="fontUp">신용카드 정보</th>
	</tr>
	<tr>
		<td>성명(국문)</td><td>${userInfo.memberNameKR }</td>
		
		<td>카드종류</td>
		<td><select name="cardCompany" id="cardCompany" class="selectCompany">
			<option value="" <c:if test="${cardCompany != null }">selected</c:if>>카드사</option>	
			<option value="국민은행" <c:if test="${cardCompany == '국민은행' }">selected</c:if>>국민은행</option>	
			<option value="우리은행" <c:if test="${cardCompany == '우리은행' }">selected</c:if>>우리은행</option>	
			<option value="신한은행" <c:if test="${cardCompany == '신한은행' }">selected</c:if>>신한은행</option>	
			<option value="농협은행" <c:if test="${cardCompany == '농협은행' }">selected</c:if>>농협은행</option>	
			<option value="카카오뱅크" <c:if test="${cardCompany == '카카오뱅크' }">selected</c:if>>카카오뱅크</option>	
		</select>
		</td>
	</tr>
	<tr>
		<td>성명(영문)</td><td>${userInfo.memberNameENG }</td>
		<td>카드번호</td>
		<td>
		<input type="text" name="cardNo1" id="cardNo1" value="${cardNo1 }" class="input_cardNo" onkeyup="numberCheck(this)"> 
		<input type="password" name="cardNo2" id="cardNo2" value="${cardNo2 }"  class="input_cardNo" onkeyup="numberCheck(this)">
		<input type="password" name="cardNo3" id="cardNo3" value="${cardNo3 }"  class="input_cardNo" onkeyup="numberCheck(this)"> 
		<input type="text" name="cardNo4" id="cardNo4" value="${cardNo4 }"  class="input_cardNo" onkeyup="numberCheck(this)">
		</td>
	</tr>
	<tr>
		<td>이메일</td><td>${userInfo.memberEmail }</td>
		<td>유효기간</td>
		<td>
		<input type="text" name="validityMm" id="validityMm" value="${validityMm }" class="input_validity" onkeyup="numberCheck(this)">/
		<input type="text" name="validityYy" id="validityYy" value="${validityYy }" class="input_validity" onkeyup="numberCheck(this)">
		</td>
	</tr>
	<tr>
		<td>연락처</td><td>${userInfo.memberMobile }</td>
		<td>CSV</td><td><input type="text" name="CSV" id="CSV" value="${CSV }" class="input_csv" onkeyup="numberCheck(this)"></td>
	</tr>
	<tr>
		<td colspan="4">
		* 신용카드 정보는 고객님의 투숙을 개런티하기 위한 용도 외에는 어떤 목적으로도 사용되지 않으며, 체크카드 및 일부 신용 카드의 경우 사용이 제한 될 수 있습니다.<br>
		* 온라인 예약 시 직접 결제가 이루어지지 않으며, 최종 결제는 프론트 데스크에서 해주시기 바랍니다.
		</td>
	</tr>
</table>

<table class="precautionTable">
	<tr>
		<th class="fontUp">유의사항</th>
	</tr>
	<tr>
		<td>
		<b>호텔 이용 안내</b><br>
		● 요금에는 10% 부가가치세가 부과됩니다.<br>
		● 2인 1실 기준<br>
		● 체크인 시 등록카드 작성 및 투숙객 본인 확인을 위해 본인 사진이 포함된 신분증을 반드시 제시해 주시기 바랍니다.<br>
		● 13세 이하 어린이는 객실 인원 추가 요금을 받지 않습니다.<br>
		● 37개월 미만 유아는 조식이 무료입니다.<br>
		● 안내견을 제외한 애완견 등 동물 입장은 불가합니다.<br>
		● 부모를 동반하지 않은 만 19세 미만 미성년자는 투숙할 수 없습니다. (청소년 보호법 30조/58조)<br>
		● 상기 요금은 할인 요금이며, 중복 할인은 적용되지 않습니다.<br>
		● 자세한 객실안내는 02-2230-0700로 문의 바랍니다.<br>
		● 객실 이용 시 1박당 5,000원의 주차 요금이 부과됩니다. (객실당 1대, 추가 차량 이용 불가, 체크아웃 당일 오후 1시까지)<br>
		 * 호텔 주차장 만차 시 외부 지정 유료 주차장 이용 (1박당 5,000원)<br>
		 * 호텔 내/외부 주차장 이용 시 중간 출차 불가 (중간 출차 시 매회 5,000원 추가 부과)<br>
		</td>
	</tr>
	<tr>
		<th class="fontUp">취소 및 환불 규정</th>
	</tr>
	<tr>
		<td>
		숙박예정일 1일전 18시까지는 위약금 없이 취소 가능<br>
		위 기간 이후 취소 또는 변경 시 (No Show 포함)<br>
		- 성수기 (4, 5, 6, 10, 11월, 12월 24일, 12월 31일) : 최초 1박 요금의 80% 부과<br>
		- 비수기 (성수기 외 기간) : 최초 1박 요금의 10% 부과<br>
		</td>
	</tr>
	<tr>
		<td><input type="checkbox" id="precautionCheck" value="Y"> 유의사항, 취소 및 환불 규정을 모두 확인해주세요.</td>
	</tr>
</table>

<table class="informationTable">
	<tr>
		<th class="fontUp">필수적인 개인정보 수집이용에 동의하십니까?</th>
	</tr>
	<tr>
		<td>
		<b>필수적인 개인정보의 수집ㆍ이용에 관한 사항</b>
		<textarea rows="400" cols="10" class="personalInformation_textArea" 
		placeholder="신라호텔 객실예약과 관련하여 귀사가 아래와 같이 본인의 개인정보를 수집 및 이용하는데 동의합니다.
		
① 수집 이용 항목 | 성명(국문·영문), 지역(여권기준), 이메일, 연락처(휴대전화·자택전화), 예약정보, 결제정보(카드종류, 카드번호, 유효기간)
② 수집 이용 목적 | 호텔 예약 및 고객 응대
③ 보유 이용 기간 | 예약일 후 1년

※위 사항에 대한 동의를 거부할 수 있으나, 이에 대한 동의가 없을 경우 예약 서비스 제공과 관련된 제반 절차 진행이 불가능 할 수 있음을 알려드립니다."></textarea>
		<br><input type="radio" name="radio1" id="radio1Y">동의함
		<input type="radio" name="radio1" id="radio1N" onclick="radio1NClick()">동의하지 않음<br><br><br>
		
		<b>개인정보 제3자 제공에 대한 동의</b>
		<textarea rows="400" cols="10" class="personalInformation_textArea" 
		placeholder="① 제공받는 자 | (주)신라스테이
② 제공 목적 | 호텔 예약 및 고객 응대
③ 제공하는 항목 | 성명(국문·영문), 지역(여권기준), 이메일, 연락처(휴대전화·자택전화), 예약정보, 결제정보(카드종류, 카드번호, 유효기간)
④ 제공 기간 | 예약일 후 1년간

※위 사항에 대한 동의를 거부할 수 있으나, 이에 대한 동의가 없을 경우 신라 리워즈 회원가입 및 서비스 제공이 불가능함을 알려드립니다."></textarea>
		<br><input type="radio" name="radio2" id="radio2Y">동의함
		<input type="radio" name="radio2" id="radio2N" onclick="radio2NClick()">동의하지 않음<br>
		</td>
	</tr>
	
</table>

<table>
	<tr>
		<td class="previous">
			<input type="button" value ="이전" class="btnLB" onclick="javascript:history.back();">
		</td>
		<td class="amountR">
			요금합계<br>부가가치세 포함
		</td>
		<td class="amountL">
			${roomDTO.basicCharge }원
		</td>
		<td class="resbtn">
			<input type="button" value="예약하기" class="btnDB" onclick="submitCheck()">
		</td>
	</tr>
</table>

</form>

</div>

</body>
