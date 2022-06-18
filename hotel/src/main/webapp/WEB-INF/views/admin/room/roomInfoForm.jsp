<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:url var="root" value="/" />
<link href="${pageContext.request.contextPath}/resources/css/admin/amdin_hotelList.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/css/admin/amdin_memberList.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/css/admin/admin_memberInfo.css" rel="stylesheet" type="text/css">


<c:if test="${not empty msg }">
	<script>alert("${msg}");</script>
</c:if>

<center>

<div class="admin_main">
	<div class="admin_memberInfoTopLeft">객실정보</div>
	
	<div class="admin_memberInfoTopRight">
		<input type="button" value="목록" class="listBtn" onclick="location.href='${root }roomlistProc'">
		<input type="button" value="수정" class="listBtn" onclick="location.href='${root }preroomModifyProc?roomId=${roomInfo.roomId}'">
		<input type="button" value="삭제" class="listBtn" onclick="location.href='${root }roomdeleteProc?roomId=${roomInfo.roomId}'">
	</div>
	
	<form>
		<table class="admin_memberInfoTable">
			<tr>
				<th>방 번호</th><td>${roomInfo.roomIdVO }</td>
			</tr>
	
			<tr>
				<th>호텔 아이디</th><td>${roomInfo.hotelId }</td>
			</tr>
			<tr>
				<th>방 형태</th>
					<td>
						<c:choose>
							<c:when test="${roomInfo.roomType eq 'T'}">Standard Room</c:when>
							<c:when test="${roomInfo.roomType eq 'D'}">Deluxe Room</c:when>
							<c:when test="${roomInfo.roomType eq 'S'}">Suite Room</c:when>
						</c:choose>			
					</td>
			</tr>
			<tr>
				<th>침대 형태</th>
					<td>
					<c:choose>
						<c:when test="${roomInfo.bedType eq 'S'}">Single Bed</c:when>
						<c:when test="${roomInfo.bedType eq 'D'}">Double Bed</c:when>
						<c:when test="${roomInfo.bedType eq 'T'}">Twin Bed</c:when>
						<c:when test="${roomInfo.bedType eq 'F'}">Family Bed</c:when>
					</c:choose>
					</td>
			</tr>
			<tr>
				<th>허용 인원</th><td>${roomInfo.availablePerson } 명</td>
			</tr>
			<tr>
				<th>기본 요금</th><td>${roomInfo.basicCharge } 원</td>
			</tr>
			
		</table>
	</form>
</div>
</center>