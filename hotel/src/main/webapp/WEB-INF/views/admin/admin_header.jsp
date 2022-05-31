<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:url var="root" value="/" />
<link href="${pageContext.request.contextPath}/resources/css/admin/admin_header.css" rel="stylesheet" type="text/css">
<div class="admin_logo">
	<a href="${root }admin_index?formpath=memberList"><img  class="logo" src="${pageContext.request.contextPath}/resources/images/newLogo.gif"></a>
</div>
<div class="amdin_header">
	<div class="admin_header_top">
		<a href="#">로그아웃</a>
</div>
<div class="admin_nav">
	<a href="${root }admin_index?formpath=memberList">회원관리</a>
	<a href="${root }hotellistProc" class="nav_margin">호텔관리</a>
	<a href="" class="nav_margin">룸관리</a>
	<a href="" class="nav_margin">매출관리</a>
	<a href="" class="nav_margin">통계</a>
</div>
	

</div>