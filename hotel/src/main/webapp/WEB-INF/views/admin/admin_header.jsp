<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:url var="root" value="/" />
<link href="${pageContext.request.contextPath}/resources/css/admin/admin_header.css" rel="stylesheet" type="text/css">
<div class="admin_logo">
	<a href="${root }memberListProc"><img  class="logo" src="${pageContext.request.contextPath}/resources/images/newLogo.gif"></a>
</div>
<div class="amdin_header">
	<div class="admin_header_top">
		<a href="${root }logoutProc">로그아웃</a>
</div>

<!-- 세션으로 manager/admin 구분(미완성) -->
<!-- manager -->
<!-- 
<div class="admin_nav">
	<a href="">예약관리</a>
	<a href="${root }hotelInfoProc" class="nav_margin">호텔관리</a>
	<a href="${root }roomlistProc" class="nav_margin">룸관리</a>
</div>
 -->

<!-- admin -->
<div class="admin_nav">
	<a href="${root }memberListProc">회원 관리</a>
	<a href="${root }admin_reservationListProc" class="nav_margin">예약 관리</a>
	<c:choose>
		<c:when test="${sessionScope.userId eq 'admin' }">
			<a href="${root }hotellistProc" class="nav_margin">호텔 관리</a>
		</c:when>
		<c:otherwise>
			<a href="#"  class="nav_margin">호텔 정보</a>
		</c:otherwise>
	</c:choose>
	<a href="${root }roomlistProc" class="nav_margin">객실 관리</a>
	<a href="" class="nav_margin">매출 관리</a>
	<c:if test="${sessionScope.userId eq 'admin' }">
		<a href="${root }admin_index?formpath=admin_statisticsMain" class="nav_margin">통계</a>
	</c:if>
	
</div>
	

</div>