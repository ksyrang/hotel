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
	function selectPayType(){
		
	}
</script>
</head>
<body>
<div class="admin_mainDiv">

<table class="payTable">
	<tr><th>결제번호</th></tr>
	<tr><td>37215293</td></tr>
	<tr><th>예약번호</th></tr>
	<tr><td>281736</td></tr>
	<tr><th>성명</th></tr>
	<tr><td>신다은</td></tr>
	<tr><th>결제일자</th></tr>
	<tr><td>2022.06.10</td></tr>
	<tr><th>결제타입</th></tr>
	<tr><td>
		<select name="paymentType" onchange="selectPayType()" class="selectPayment">
			<option value="1" selected>신용/체크카드</option>
			<option value="2">휴대폰결제</option>
			<option value="3">카카오페이</option>
		</select>
	</td></tr>
	<!-- 결제 타입에 따라 부가정보 입력 가능 -->
	
	<tr><th>결제금액</th></tr>
	<tr><td>3000000원</td></tr>
</table>

</div>
</body>
