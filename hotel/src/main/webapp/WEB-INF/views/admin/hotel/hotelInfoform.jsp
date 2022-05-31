<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:url var="root" value="/" />
<link href="${pageContext.request.contextPath}/resources/css/admin/amdin_hotelList.css" rel="stylesheet" type="text/css">

<center>
<form>
	<table>
		<tr>
			<th>호텔 이름</th><th>${sessionScope.hotelInfo.hotelName }</th>
		</tr>
		<tr>
			<th>호텔 아이디</th><td>${sessionScope.hotelInfo.hotelId }</td>
		</tr>
		<tr>
			<th>호텔 아이디</th><td>${sessionScope.hotelInfo.email }</td>
		</tr>
		<tr>
			<th>호텔 연락처</th><td>${sessionScope.hotelInfo.phoneNumber }</td>
		</tr>
		<tr>
			<th rowspan="2">호텔 주소</th><td>${sessionScope.hotelInfo.addr1}</td>
		</tr>
		<tr>
			<td>${sessionScope.hotelInfo.addr2 }</td>
		</tr>
		<tr>
			<th>호텔 우편번호</th><td>${sessionScope.hotelInfo.zipCode }</td>
		</tr>
	</table>
</form>

</center>