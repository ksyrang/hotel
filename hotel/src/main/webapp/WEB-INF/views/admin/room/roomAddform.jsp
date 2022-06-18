<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:url var="root" value="/" />
<script src="${root}/resources/check.js"></script>
<link href="${pageContext.request.contextPath}/resources/css/admin/amdin_hotelList.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/css/admin/amdin_memberList.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/css/admin/admin_memberInfo.css" rel="stylesheet" type="text/css">

<script>
	function check() {
		var roomId = document.getElementById('roomId');
		var hotelId = document.getElementById('hotelId');
		
		var roomTypeList = document.getElementById('roomType');
		var roomType = roomTypeList.options[roomTypeList.selectedIndex].value;
		
		var bedTypeList = document.getElementById('bedType');
		var bedType = bedTypeList.options[bedTypeList.selectedIndex].value;
		
		var availablePersonList = document.getElementById('availablePerson');
		var availablePerson = availablePersonList.options[availablePersonList.selectedIndex].value;
		
		var basicCharge = document.getElementById('basicCharge');
		
		if(roomId.value == "" || hotelId.value == "" || roomType == null || bedType == null || availablePerson == null || basicCharge.value == "") {
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
				<td><input type="text" id="roomId" name="roomId" placeholder="방 아이디" value="${addroomInfo.roomId }"></td>
			</tr>
			<tr>
				<th>*호텔 아이디</th>
				<td>
					<select id="hotelId" name="hotelId" class="select" style=" width:152px; height: 25px;">
						<c:choose>
							<c:when test="${sessionScope.userId eq 'admin' }">
								<option value="">호텔선택</option>
								<c:forEach var="List" items="${hotelidList }">
									<c:choose>
										<c:when test="${List.hotelId eq addroomInfo.hotelId}">
											<option value="${List.hotelId }" selected="selected">${List.hotelName }</option>
										</c:when>
										<c:otherwise>
											<option value="${List.hotelId }">${List.hotelName }</option>
										</c:otherwise>
									</c:choose>			
								</c:forEach>								
							</c:when>
							<c:otherwise>
								<option value="${hotelInfo.hotelId }">${hotelInfo.hotelName }</option>							
							</c:otherwise>
						</c:choose>
					</select>
				</td>
			</tr>
			<tr>
				<th>*방 형태</th>
				<td>
					<select id="roomType" name="roomType" class="select" style="height: 25px;">
					<c:choose>
						<c:when test="${addroomInfo.roomType eq 'T'}">
							<option value="T" selected="selected">Standard Room</option>
							<option value="D">Deluxe Room</option>
							<option value="S">Suite Room</option>
						</c:when>
						<c:when test="${addroomInfo.roomType eq 'D'}">
							<option value="T">Standard Room</option>
							<option value="D" selected="selected">Deluxe Room</option>
							<option value="S">Suite Room</option>
						</c:when>
						<c:when test="${addroomInfo.roomType eq 'S'}">
							<option value="T">Standard Room</option>
							<option value="D">Deluxe Room</option>
							<option value="S" selected="selected">Suite Room</option>
						</c:when>
						<c:otherwise>
							<option value="T" selected="selected">Standard Room</option>
							<option value="D">Deluxe Room</option>
							<option value="S">Suite Room</option>						
						</c:otherwise>
					</c:choose>
					</select>
				</td>
			</tr>
			<tr>
				<th>*침대 형태</th>
				<td>
					<select id="bedType" name="bedType" class="select" style="height: 25px;">
						<c:choose>
							<c:when test="${addroomInfo.bedType eq 'S'}">
								<option value="S" selected="selected">Single Bed</option>
								<option value="D">Double Bed</option>
								<option value="T">Twin Bed</option>
								<option value="F">Family Bed</option>
							</c:when>
							<c:when test="${addroomInfo.bedType eq 'D'}">
								<option value="S">Single Bed</option>
								<option value="D" selected="selected">Double Bed</option>
								<option value="T">Twin Bed</option>
								<option value="F">Family Bed</option>
							</c:when>
							<c:when test="${addroomInfo.bedType eq 'T'}">
								<option value="S">Single Bed</option>
								<option value="D">Double Bed</option>
								<option value="T" selected="selected">Twin Bed</option>
								<option value="F">Family Bed</option>
							</c:when>
							<c:when test="${addroomInfo.bedType eq 'F'}">
								<option value="S">Single Bed</option>
								<option value="D">Double Bed</option>
								<option value="T">Twin Bed</option>
								<option value="F" selected="selected">Family Bed</option>
							</c:when>
							<c:otherwise>
								<option value="S" selected="selected">Single Bed</option>
								<option value="D">Double Bed</option>
								<option value="T">Twin Bed</option>
								<option value="F">Family Bed</option>
							</c:otherwise>
						</c:choose>
					</select>
				</td>
			</tr>
			<tr>
				<th>*허용 인원</th>
				<td><select id="availablePerson" name="availablePerson" style=" width:100px; height: 25px;">
						<c:choose>
							<c:when test="${addroomInfo.availablePerson == 1 }">
								<option value="1" selected="selected">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
								<option value="5">5</option>
							</c:when>
							<c:when test="${addroomInfo.availablePerson == 2 }">
								<option value="1">1</option>
								<option value="2" selected="selected">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
								<option value="5">5</option>
							</c:when>
							<c:when test="${addroomInfo.availablePerson == 3 }">
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3" selected="selected">3</option>
								<option value="4">4</option>
								<option value="5">5</option>
							</c:when>
							<c:when test="${addroomInfo.availablePerson == 4 }">
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4" selected="selected">4</option>
								<option value="5">5</option>
							</c:when>
							<c:when test="${addroomInfo.availablePerson == 5 }">
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
								<option value="5" selected="selected">5</option>
							</c:when>
							<c:otherwise>
								<option value="1" selected="selected">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
								<option value="5">5</option>
							</c:otherwise>
						</c:choose>
					</select>
					명					
				</td>
			</tr>
			<tr>
				<th>*기본 요금</th>
				<td><input type="text" id="basicCharge" name="basicCharge" placeholder="기본요금" value="${addroomInfo.basicCharge }">원</td>
			</tr>
		</table>
	</form>
</div>
</center>