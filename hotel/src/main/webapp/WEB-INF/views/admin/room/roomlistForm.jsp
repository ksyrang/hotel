<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:url var="root" value="/" />
<link href="${pageContext.request.contextPath}/resources/css/admin/amdin_hotelList.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/css/admin/amdin_memberList.css" rel="stylesheet" type="text/css">

<c:if test="${not empty msg }">
	<script>alert("${msg}");</script>
</c:if>

<center>
<div class="admin_main">
	<form action="">
<%-- 		<select name="hotelSelect" style="height: 25px;">
			<option value="">호텔명</option>
			<c:forEach var="HList" items="${roomAllList }">
				<option value="${HList.hotelId }">${HList.hotelId }</option>
			</c:forEach>
		</select>
		<select name="roomselect" style="height: 25px;">
			<option value="">방 형태</option>
				<c:forEach var="RList" items="${roomAllList }">
					<c:if test="${RList.roomType eq  'T'}"><option value="T">Standard Room</option></c:if>
					<c:if test="${RList.roomType eq  'D'}"><option value="D">Deluxe Room</option></c:if>
					<c:if test="${RList.roomType eq  'S'}"><option value="S">Suite Room</option></c:if>
				</c:forEach>
		</select>
		<select name="bedselect" style="height: 25px;">
			<option value="">침대 형태</option>
				<c:forEach var="BList" items="${roomAllList }">
					<c:if test="${BList.roomType eq  'S'}"><option value="${BList.roomType}">Single Bed</option></c:if>
					<c:if test="${BList.roomType eq  'D'}"><option value="${BList.roomType}">Double Bed</option></c:if>
					<c:if test="${BList.roomType eq  'T'}"><option value="${BList.roomType}">Twin Bed</option></c:if>
					<c:if test="${BList.roomType eq  'F'}"><option value="${BList.roomType}">Family Bed</option></c:if>
				</c:forEach>
		</select>
		<select name="personselect" style="height: 25px;">
			<option value="">허용 인원</option>
			<c:forEach var="PList" items="${roomAllList }">
				<c:if test="${PList.availablePerson eq  'S'}"><option value="${PList.availablePerson}">${PList.availablePerson} 명</option></c:if>
					<c:if test="${PList.availablePerson eq  'D'}"><option value="${PList.availablePerson}">${PList.availablePerson} 명</option></c:if>
					<c:if test="${PList.availablePerson eq  'T'}"><option value="${PList.availablePerson}">${PList.availablePerson} 명</option></c:if>
					<c:if test="${PList.availablePerson eq  'F'}"><option value="${PList.availablePerson}">${PList.availablePerson} 명</option></c:if>
			</c:forEach>
		</select> --%>
		<select name="select" class="select" style="height: 25px;">
			<option value="">전체</option>
			<option value="hotelId">호텔 아이디</option>
			<option value="roomId">방 아이디</option>
			<option value="roomType">방 형태</option>
			<option value="bedType">침대 형태</option>			
			<option value="person">허용 인원</option>
			<option value="charge">기준 금액</option>
		</select>
		<input type="text" name="search" class="search">
		<input type="submit" name="SearchBtn" value="검색" class="Btn">
		<input type="button" name="addBtn" value="객실 추가" onclick="location.href='${root }roomAddProc'" class = "Btn">
	</form>
		
	<div style="height: 20px;"></div>
		<table class="admin_memberTable">
			<thead>
				<tr><!-- <th style="width: 150px; height: 20px;" align="center"> -->
					<th>호텔 아이디</th>
					<th>방 아이디</th>
					<th>방 형태</th>
					<th>침대 형태</th>
					<th>허용 인원(명)</th>
					<th>수정 / 삭제</th>
				</tr>
			</thead>
			<!-- <tr><td colspan=6><hr/></td></tr> -->
			<c:forEach var="roomdb" items="${sessionScope.roomList }">
				<tr>
					<td style="width: 250px; height: 20px;" align="center">${roomdb.hotelId }</td>
					<td style="width: 150px; height: 20px;" align="center">
						<a href="roomInfoProc?roomId=${roomdb.roomId }">${roomdb.roomId }</a>
					</td>
					<td style="width: 150px; height: 20px;" align="center">
						<c:choose>
							<c:when test="${roomdb.roomType eq 'T'}">Standard Room</c:when>
							<c:when test="${roomdb.roomType eq 'D'}">Deluxe Room</c:when>
							<c:when test="${roomdb.roomType eq 'S'}">Suite Room</c:when>
						</c:choose>
					</td>
					<td style="width: 200px; height: 20px;" align="center">
						<c:choose>
							<c:when test="${roomdb.bedType eq 'S'}">Single Bed</c:when>
							<c:when test="${roomdb.bedType eq 'D'}">Double Bed</c:when>
							<c:when test="${roomdb.bedType eq 'T'}">Twin Bed</c:when>
							<c:when test="${roomdb.bedType eq 'F'}">Family Bed</c:when>
						</c:choose>
					</td>
					<td style="width: 200px; height: 20px;" align="center">${roomdb.availablePerson }</td>
					<td style="width: 100px; height: 20px;" align="center">
						<input type="button" class="Btn" value="수정" onclick="location.href='${root }preroomModifyProc?roomId=${roomdb.roomId}'"> <b>/</b> 
						<input type="button" class="Btn" value="삭제" onclick="location.href='${root }roomdeleteProc?roomId=${roomdb.roomId}'">
					</td>
				</tr>
			</c:forEach>
			<!-- <tr><td colspan=6><hr/></td></tr> -->
		</table>
	${sessionScope.roomPage }
</div>
</center>