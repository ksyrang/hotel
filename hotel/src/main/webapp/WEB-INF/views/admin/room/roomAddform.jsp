<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:url var="root" value="/" />
<script src="${root}/resources/check.js"></script>
<link href="${pageContext.request.contextPath}/resources/css/admin/amdin_hotelList.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/css/admin/amdin_memberList.css" rel="stylesheet" type="text/css">

<center>
	<div class="admin_main">
	<form action="roomAddProc" method="post">
		<table>
			<tr>
				<td><input type="button" value="뒤로가기" onclick="location.href='${root}roomlistProc'"/></td>
			</tr>
			<tr>
				<th>방 아이디</th>
				<td><input type="text" name="roomId" placeholder="방 아이디" value="${sessionScope.addroomInfo.roomId }"></td>
			</tr>
			<tr>
				<th>호텔 아이디</th>
				<td><select name="hotelSel" class="select" style=" width:152px; height: 25px;">
					<option value="">전체</option>
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
				</select></td>
			</tr>
			<tr>
				<th>방 형태</th>
				<td><input type="text" name="roomType" placeholder="방 형태" value="${sessionScope.addroomInfo.roomType }"></td>
			</tr>
			<tr>
				<th>침대 형태</th>
				<td><input type="text" name="bedType" placeholder="침대 형태" value="${sessionScope.addroomInfo.bedType }"></td>
			</tr>
			<tr>
				<th>허용 인원</th>
				<td><input type="text" name="availablePerson" placeholder="정원" value="${sessionScope.addroomInfo.availablePerson }"></td>
			</tr>
			<tr>
				<td align='center' height=40 colspan=5>
					<input type="submit" value='객실 추가' style="width: 120px; "/>
					<input type="reset" value='취소' style="width: 120px; "/>	 
				</td>
			</tr>
		</table>
	</form>
</div>
</center>