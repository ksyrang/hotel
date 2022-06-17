<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:url var="root" value="/" />
<link href="${pageContext.request.contextPath}/resources/css/admin/amdin_hotelList.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/css/admin/amdin_memberList.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/css/admin/admin_memberInfo.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/css/admin/admin_memberDelete.css" rel="stylesheet" type="text/css">
<script>
	function check() {
		adminId = document.getElementById('adminId');
		adminPw = document.getElementById('adminPw');
		
		if(adminId.value == "" || adminPw.value == "") {
			alert('아이디 혹은 비밀번호를 확인해주세요.');
			return;
		}
		
		document.getElementById('f').submit();
	}
</script>
<c:if test="${not empty msg }">
	<script>alert('${msg}');</script>
</c:if>
<center>
<div class="admin_main">
	<div class="top_info">객실 삭제</div><br>
	<div align="center">
		${roomId }을 정말 삭제하시겠습니까?
	</div>
	
	<div align="center" class="delteTabDiv">
		<form action="roomdeletecheckProc" method="post" id="f">
			<table class="adminLoginTable">
				<tr>
					<th>관리자 아이디</th>
					<td><input type="text" id="adminId" name="adminId" placeholder="아이디 입력"/></td>
				</tr>
				<tr>
					<th>관리자 패스워드</th>
					<td><input type="text" id="adminPw" name="adminPw" placeholder="비밀번호 입력"/></td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="button" class="okBtn" onclick="check();" value="삭제"/>
						<input type="reset" class="okBtnB" value="취소"/>
					</td>
				</tr>
			</table>
			<input type="hidden" id="roomId" name="roomId" value="${roomId }"/>
		</form>	
	</div>
</div>
</center>