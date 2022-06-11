<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:url var="root" value="/" />
<link href="${pageContext.request.contextPath}/resources/css/admin/amdin_hotelList.css" rel="stylesheet" type="text/css">

<center>
<div style="height: 20px;"></div>
<form action=""><!-- 자기 자신의 map으로 가는데 list의 시작이 listproc이었기 때문에 proc으로 진행됨. -->
	<select name="select" class="select" style="height: 25px;">
		<option value="">전체</option>
		<option value="id">아이디</option>
		<option value="name">이름</option>
		<option value="tel">전화번호</option>
		<option value="email">이메일</option>
	</select>
	<input type="text" name="search" class="search">
	<input type="submit" name="SearchBtn" value="검색" class="Btn">
	<input type="button" name="addBtn" value="호텔 추가" onclick="location.href='${root }admin_index?formpath=admin_hotelAdd'" class = "Btn">

</form>

<div style="height: 20px;"></div>
	<table >
		<thead>
			<tr>
				<th style="width: 150px; height: 20px;" align="center">Hotel ID</th>
				<th style="width: 250px; height: 20px;" align="center">Hotel Name</th>
				<th style="width: 150px; height: 20px;" align="center">Phone number</th>
				<th style="width: 200px; height: 20px;" align="center">Email</th>
				<th style="width: 100px; height: 20px;" align="center">수정 / 삭제</th>
			</tr>
		</thead>
		<tr><td colspan=5><hr/></td></tr>
		<c:forEach var="hoteldb" items="${sessionScope.hotelList }">
			<tr>
				<td style="width: 150px; height: 20px;" align="center">
				<a href="hotelInfoProc?hotelId=${hoteldb.hotelId}">${hoteldb.hotelId }</a>
				</td>
				<td style="width: 250px; height: 20px;" align="center">${hoteldb.hotelName }</td>
				<td style="width: 150px; height: 20px;" align="center">${hoteldb.hotelPhoneNumber }</td>
				<td style="width: 200px; height: 20px;" align="center">${hoteldb.hotelEmail }</td>
				<td style="width: 100px; height: 20px;" align="center">
					<input type="button" class="Btn" value="수정" onclick="location.href='${root }prehotelModifyProc?hotelId=${hoteldb.hotelId}'"> <b>/</b> 
					<input type="button" class="Btn" value="삭제" onclick="location.href='${root }admin_index?formpath=admin_hotelDelete&hotelId=${hoteldb.hotelId}'">
				</td>
			</tr>
		</c:forEach>
		<tr><td colspan=5><hr/></td></tr>
	</table>
${sessionScope.hotelPage }
<div style="height: 20px;"></div>
</center>