<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:url var="root" value="/" />

<head>
<meta charset="UTF-8">
<link href="${pageContext.request.contextPath}/resources/css/admin/admin_commonCss.css" rel="stylesheet" type="text/css">
<title>roomReservation_complete</title>
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

예약번호 : ${resDTO.reservationNo }
회원아이디 : ${resDTO.memberId }
호텔아이디 : ${resDTO.hotelId }
룸아이디 : ${resDTO.roomId }
예약일자 : ${resDTO.reservationDate }
체크인일자 : ${resDTO.checkinDate }
체크아웃일자 : ${resDTO.checkoutDate }
투숙인원 : ${resDTO.guestNumber }
기본요금 : ${resDTO.baseAmount }
조식여부 : ${resDTO.breakfastCheck }
예약상태 : ${resDTO.reservationStatus }

</body>
