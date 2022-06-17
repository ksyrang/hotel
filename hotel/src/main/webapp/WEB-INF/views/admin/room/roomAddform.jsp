<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:url var="root" value="/" />
<script src="${root}/resources/check.js"></script>
<link href="${pageContext.request.contextPath}/resources/css/admin/amdin_hotelList.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/css/admin/amdin_memberList.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/css/admin/admin_memberInfo.css" rel="stylesheet" type="text/css">

<script>
	function check() {
		roomId = document.getElementById('roomId');
		hotelId = document.getElementById('hotelId');
		roomType = document.getElementById('roomType');
		bedType = document.getElementById('bedType');
		availablePerson = document.getElementById('availablePerson');
		basicCharge = document.getElementById('basicCharge');
		
		if(roomId.value == "" || hotelId.value == "" || roomType.value == "" || bedType.value == "" || availablePerson.value == "" || basicCharge.value == "") {
			alert('필수 정보를 입력해주세요.');
			return;
		}
		
		document.getElementById('f').submit();
	}
</script>

<c:if test="${not empty msg }">
	<script>alert("${msg}");</script>
</c:if>

<center>
<div class="admin_main">
	<div class="admin_memberInfoTopLeft">객실 추가</div>
	
	<form action="roomAddCheckProc" method="post" id="f">
	<div class="admin_memberInfoTopRight">
		<input type="button" value="생성" class="listBtn" onclick="check();"/>
		<input type="button" value="이전" class="listBtn" onclick="javascript:history.back();"/>
	</div>
		<table class="admin_memberInfoTable">
			<tr>
				<th>*방 아이디</th>
				<td><input type="text" id="roomId" name="roomId" placeholder="방 아이디" value="${sessionScope.addroomInfo.roomId }"></td>
			</tr>
			<tr>
				<th>*호텔 아이디</th>
				<td>
					<select id="hotelId" name="hotelSel" class="select" style=" width:152px; height: 25px;">
						<c:choose>
							<c:when test="${sessionScope.userId eq 'admin' }">
								<option value="">호텔선택</option>
								<c:forEach var="List" items="${hotelidList }">
									<c:choose>
										<c:when test="${List.hotelId eq sessionScope.addroomInfo.hotelId}">
											<option value="${List.hotelId }" selected="selected">${List.hotelName }</option>
										</c:when>
										<c:otherwise>
											<option value="${List.hotelId }">${List.hotelName }</option>
										</c:otherwise>
									</c:choose>			
								</c:forEach>								
							</c:when>
							<c:otherwise>
								<option value="${List.hotelId }">${List.hotelName }</option>							
							</c:otherwise>
						</c:choose>
					</select>
				</td>
			</tr>
			<tr>
				<th>*방 형태</th>
				<td>
					<select id="roomType" name="roomType" class="select" style="height: 25px;">
						<option value="T" selected="selected">Standard Room</option>
						<option value="D">Deluxe Room</option>
						<option value="S">Suite Room</option>
					</select>
				</td>
			</tr>
			<tr>
				<th>*침대 형태</th>
				<td>
					<select id="bedType" name="bedType" class="select" style="height: 25px;">
						<option value="S" selected="selected">Single Bed</option>
						<option value="D">Double Bed</option>
						<option value="T">Twin Bed</option>
						<option value="F">Family Bed</option>
					</select>
				</td>
			</tr>
			<tr>
				<th>허용 인원</th>
				<td><select id="availablePerson" name="availablePerson" style=" width:100px; height: 25px;">
						<option value="1" selected="selected">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5">5</option>
					</select>
					명					
				</td>
			</tr>
			<tr>
				<th>기본 요금</th>
				<td><input type="text" name="basicCharge" placeholder="기본요금" value="${sessionScope.addroomInfo.basicCharg }">원</td>
			</tr>
		</table>
	</form>
</div>
</center>