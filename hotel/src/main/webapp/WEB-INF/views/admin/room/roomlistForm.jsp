<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:url var="root" value="/" />

<center>
<div style="height: 20px;"></div>
	<table>
		<thead>
			<tr>
				<th style="width: 150px; height: 20px;" align="center">Room ID</th>
				<th style="width: 250px; height: 20px;" align="center">Hotel Id</th>
				<th style="width: 150px; height: 20px;" align="center">Bed type</th>
				<th style="width: 200px; height: 20px;" align="center">투숙가능 인원</th>
			</tr>
		</thead>
		<tr>
			<td style="width: 150px; height:20px;" align="center"><hr/></td>
			<td style="width: 250px; height:20px;" align="center"><hr/></td>
			<td style="width: 150px; height:20px;" align="center"><hr/></td>
			<td style="width: 200px; height:20px;" align="center"><hr/></td>
		</tr>
		<c:forEach var="roomdb" items="${roomList }">
			<tr>
				<td style="width: 150px; height: 20px;" align="center">${roomdb.roomId }</td>
				<td style="width: 250px; height: 20px;" align="center">${roomdb.hotelId }</td>
				<td style="width: 150px; height: 20px;" align="center">${roomdb.bedType }</td>
				<td style="width: 200px; height: 20px;" align="center">${roomdb.availablePerson }</td>

			</tr>

		</c:forEach>
	
	</table>
<div style="height: 20px;"></div>
</center>