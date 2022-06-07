<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:url var="root" value="/" />
<link href="${pageContext.request.contextPath}/resources/css/admin/amdin_hotelList.css" rel="stylesheet" type="text/css">

<center>
<div style="height: 20px;"></div>
<form action="">
	<select name="select" class="select" style="height: 25px;">
		<option value="">전체</option>
		<option value="roomId">방 아이디</option>
		<option value="hotelId">호텔 아이디</option>
		<option value="Rtype">방 형태</option>
		<option value="Btype">침대 형태</option>
		<option value="person">허용인원</option>
	</select>
	<input type="text" name="search" class="search">
	<input type="submit" name="SearchBtn" value="검색" class="Btn">
	<input type="button" name="addBtn" value="room Add" onclick="location.href=${root }admin_index?formpath=roomAdd" class = "Btn">
</form>
	
<div style="height: 20px;"></div>
	<table >
		<thead>
			<tr>
				<th style="width: 150px; height: 20px;" align="center">방 아이디</th>
				<th style="width: 250px; height: 20px;" align="center">호텔 아이디</th>
				<th style="width: 150px; height: 20px;" align="center">방 형태</th>
				<th style="width: 150px; height: 20px;" align="center">침대 형태</th>
				<th style="width: 200px; height: 20px;" align="center">허용 인원</th>
				<th style="width: 100px; height: 20px;" align="center">수정 / 삭제</th>
			</tr>
		</thead>
		<tr><td colspan=6><hr/></td></tr>
		<c:forEach var="roomdb" items="${sessionScope.roomList }">
			<tr>
				<td style="width: 150px; height: 20px;" align="center">${roomdb.roomId }</td>
				<td style="width: 250px; height: 20px;" align="center">${roomdb.hotelId }</td>
				<td style="width: 150px; height: 20px;" align="center">${roomdb.roomType }</td>
				<td style="width: 200px; height: 20px;" align="center">${roomdb.bedType }</td>
				<td style="width: 200px; height: 20px;" align="center">${roomdb.availablePerson }</td>
				<td style="width: 100px; height: 20px;" align="center">
					<input type="button" class="Btn" value="수정" onclick="location.href='${root }preroomModifyProc?hotelId=${roomdb.roomId}'"> <b>/</b> 
					<input type="button" class="Btn" value="삭제" onclick="location.href='${root  }admin_index?formpath=roomdelete&roomId=${roomdb.roomId}'">
				</td>
			</tr>
		</c:forEach>
		<tr><td colspan=6><hr/></td></tr>
	</table>
${sessionScope.roomPage }
<div style="height: 20px;"></div>
</center>