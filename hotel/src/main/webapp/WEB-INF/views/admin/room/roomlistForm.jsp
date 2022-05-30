<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:url var="root" value="/" />

<center>
	<table>
		<thead>
			<tr>
				<th style="width: 150px; height: 20px;" align="center">room ID</th>
				<th style="width: 250px; height: 20px;" align="center">호텔 이름</th>
				<th style="width: 150px; height: 20px;" align="center">방 형태</th>
				<th style="width: 200px; height: 20px;" align="center">투숙가능인원</th>
			</tr>
		</thead>
		<tr>
			<td style="width: 180px; height:20px;" align="center"><hr/></td>
			<td style="width: 400px; height:20px;" align="center"><hr/></td>
			<td style="width: 70px; height:20px;" align="center"><hr/></td>
			<td style="width: 70px; height:20px;" align="center"><hr/></td>
		</tr>
		<c:forEach items="${room_List }">
			<tr>
				<td style="width: 150px; height: 20px;" align="center">${Hotel }</th>
				<td style="width: 250px; height: 20px;" align="center">Hotel Name</th>
				<td style="width: 150px; height: 20px;" align="center">Phone number</th>
				<td style="width: 200px; height: 20px;" align="center">Email</th>
			</tr>
			
		
		</c:forEach>
	
	</table>

</center>