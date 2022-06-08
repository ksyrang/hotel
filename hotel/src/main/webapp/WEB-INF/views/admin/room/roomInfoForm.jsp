<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:url var="root" value="/" />
<link href="${pageContext.request.contextPath}/resources/css/admin/amdin_hotelList.css" rel="stylesheet" type="text/css">


<center>
<form>
	<table>
		<tr>
			<th>방 아이디</th><th>${sessionScope.roomInfo.roomId }</th>
		</tr>

		<tr>
			<th>호텔 아이디</th><td>${sessionScope.roomInfo.hotelId }</td>
		</tr>
		<tr>
			<th>방 형태</th><td>${sessionScope.roomInfo.roomType }</td>
		</tr>
		<tr>
			<th>침대 형태</th><td>${sessionScope.roomInfo.bedType }</td>
		</tr>
		<tr>
			<th>허용 인원</th><td>${sessionScope.roomInfo.availablePerson }</td>
		</tr>
		<tr>
			<td><input type="button" class="Btn" value="수정" onclick="location.href='${root }preroomModifyProc?roomId=${roomInfo.roomId}'"/></td>
			<td><input type="button" class="Btn" value="삭제" onclick="location.href='${root  }admin_index?formpath=roomdelete&roomId=${roomInfo.roomId}'"></td>
			<td><input type="button" class="Btn" value="뒤로가기" onclick="location.href='${root}roomlistProc'"/></td>
		</tr>
	</table>
</form>

</center>