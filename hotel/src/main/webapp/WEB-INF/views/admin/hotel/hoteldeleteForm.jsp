<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:url var="root" value="/" />
<link href="${pageContext.request.contextPath}/resources/css/admin/amdin_hotelList.css" rel="stylesheet" type="text/css">

<center>
	<form action="hoteldeleteProd" method="post">
		<table>
			<tr>
				<th>호텔 이름</th>
				<td>${hotel.hotelId }</td>
			</tr>
			<tr>
				<th>매니저 아이디</th>
				<td><input type="text" name="managerId" value="${sessionScope.managerId }" readonly="readonly" /> </td>
			</tr>
			<tr>
				<th>패스워드</th>
				<td><input type="text" name="pw" placeholder="비밀번호 입력"/></td>
			</tr>
			<tr>
				<th>패스워드 확인</th>
				<td><input type="text" name="pwC" placeholder="비밀번호 입력"/></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="확인"/>
					<input type="reset" value="취소"/>
				</td>
			</tr>
		</table>
		
	
	</form>	



</center>