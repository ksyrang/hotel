<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:url var="root" value="/" />
<link href="${pageContext.request.contextPath}/resources/css/admin/amdin_hotelList.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/css/admin/amdin_memberList.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/css/admin/admin_memberInfo.css" rel="stylesheet" type="text/css">


<c:if test="${not empty msg }">
	<script>alert("${msg}");</script>
</c:if>


<center>
	<div class="admin_main">
	<div class="admin_memberInfoTopLeft">호텔 정보</div>
	
	<div class="admin_memberInfoTopRight">
		<c:choose>
			<c:when test="">
				<input type="button" value="목록" class="listBtn" onclick="location.href='${root }hotellistProc'">
			</c:when>
			<c:otherwise>
				<input type="button" value="이전" class="listBtn" onclick="javascript:history.back();"/>
			</c:otherwise>
		</c:choose>
		<input type="button" value="수정" class="listBtn" onclick="location.href='${root }prehotelModifyProc?hotelId=${sessionScope.hotelInfo.hotelId}'">
		<input type="button" value="삭제" class="listBtn" onclick="location.href='${root }admin_index?formpath=admin_hotelDelete&hotelId=${sessionScope.hotelInfo.hotelId}'">
	</div>
		<table class="admin_memberInfoTable">
			<tr>
				<th>호텔 이름</th><td>${sessionScope.hotelInfo.hotelName }</td>
			</tr>
	
			<tr>
				<th>호텔 아이디</th><td>${sessionScope.hotelInfo.hotelId }</td>
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
		</table>
	</form>
</div>
</center>