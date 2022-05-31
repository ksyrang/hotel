<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:url var="root" value="/" />
<link href="${pageContext.request.contextPath}/resources/css/admin/amdin_hotelList.css" rel="stylesheet" type="text/css">

<center>
	
	<table>
		<tr>
			<th>${hotelInfo.hotelName }</th>
		</tr>
		<tr>
			<th>호텔 아이디</th><td>${hotelInfo.hotelId }</td>
		</tr>
		<tr>
			<th>호텔 아이디</th><td>${hotelInfo.email }</td>
		</tr>
		<tr>
			<th>호텔 연락처</th><td>${hotelInfo.phoneNumber }</td>
		</tr>
		<tr>
			<th>호텔 주소</th><td>${hotelInfo.Addr1 +  hotelInfo.addr2}</td>
		</tr>
		<tr>
			<th>호텔 우편번호</th><td>${hotelInfo.zipCode }</td>
		</tr>
	</table>


</center>