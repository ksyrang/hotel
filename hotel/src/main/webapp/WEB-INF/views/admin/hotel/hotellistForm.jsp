<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:url var="root" value="/" />

<center>
<div style="height: 20px;"></div>
	<table>
		<thead>
			<tr>
				<th style="width: 150px; height: 20px;" align="center">Hotel ID</th>
				<th style="width: 250px; height: 20px;" align="center">Hotel Name</th>
				<th style="width: 150px; height: 20px;" align="center">Phone number</th>
				<th style="width: 200px; height: 20px;" align="center">Email</th>
				<th style="width: 100px; height: 20px;" align="center">수정 / 삭제</th>
			</tr>
		</thead>
		<tr>
			<td style="width: 150px; height:20px;" align="center"><hr/></td>
			<td style="width: 250px; height:20px;" align="center"><hr/></td>
			<td style="width: 150px; height:20px;" align="center"><hr/></td>
			<td style="width: 200px; height:20px;" align="center"><hr/></td>
			<td style="width: 100px; height:20px;" align="center"><hr/></td>
		</tr>
		<c:forEach var="hoteldb" items="${hotelList }">
			<tr>
				<td style="width: 150px; height: 20px;" align="center">${hoteldb.hotelId }</td>
				<td style="width: 250px; height: 20px;" align="center">${hoteldb.hotelName }</td>
				<td style="width: 150px; height: 20px;" align="center">${hoteldb.phoneNumber }</td>
				<td style="width: 200px; height: 20px;" align="center">${hoteldb.email }</td>
				<td style="width: 100px; height: 20px;" align="center">
					<input type="button" value="수정"> <input type="button" value="삭제">
				</td>
			</tr>

		</c:forEach>
	
	</table>
<div style="height: 20px;"></div>
</center>