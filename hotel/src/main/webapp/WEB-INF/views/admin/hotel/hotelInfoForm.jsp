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
			<th>호텔 비밀전호</th><td>${sessionScope.hotelInfo.hotelPw }</td>
		</tr>
		<tr>
			<th>호텔 이메일</th><td>${sessionScope.hotelInfo.hotelEmail }</td>
		</tr>
		<tr>
			<th>호텔 연락처</th><td>${sessionScope.hotelInfo.hotelPhoneNumber }</td>
		</tr>
		<tr>
			<th rowspan="2">호텔 주소</th><td>${sessionScope.hotelInfo.hotelAddr1}</td>
		</tr>
		<tr>
			<td>${sessionScope.hotelInfo.hotelAddr2 }</td>
		</tr>
		<tr>
			<th>호텔 우편번호</th><td>${sessionScope.hotelInfo.hotelZipcode }</td>
		</tr>
		<tr>
			<td><input type="button" class="Btn" value="수정" onclick="location.href='${root }prehotelModifyProc?hotelId=${hoteldb.hotelId}'"/></td>
			<td><input type="button" class="Btn" value="삭제" onclick="location.href='${root  }admin_index?formpath=hoteldelete&hotelId=${hoteldb.hotelId}'"></td>
			<td><input type="button" class="Btn" value="뒤로가기" onclick="location.href='${root}hotellistProc'"/></td>
		</tr>
	</table>
</form>

</center>