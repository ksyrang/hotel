<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:url var="root" value="/" />
<link href="${pageContext.request.contextPath}/resources/css/admin/amdin_hotelList.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/css/admin/amdin_memberList.css" rel="stylesheet" type="text/css">

<center>
<div class="admin_main">
	<form action="roomdeleteProc" method="post">
		<table>
			<tr>
				<th>룸 아이디</th>
				<td>${sessionScope.roomId }</td>
			</tr>
			<tr>
				<th>관리자 아이디</th>
				<td><input type="text" name="adminId" placeholder="아이디 입력"/></td>
			</tr>
			<tr>
				<th>관리자 패스워드</th>
				<td><input type="text" name="adminPw" placeholder="비밀번호 입력"/></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="삭제"/>
					<input type="reset" value="취소"/>
				</td>
			</tr>
		</table>
	</form>	
</div>
</center>