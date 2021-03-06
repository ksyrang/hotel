<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:url var="root" value="/" />

<link href="${pageContext.request.contextPath}/resources/css/kjs.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/css/admin/amdin_hotelList.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/css/admin/amdin_memberList.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/css/admin/admin_memberInfo.css" rel="stylesheet" type="text/css">

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<c:if test="${not empty sessionScope.msg }">
	<script>alert("${msg}");</script>
</c:if>

<script>
	function daumPost(){
		
	    new daum.Postcode({
	        oncomplete: function(data) {
	   			var addr = "";
	   			// R == 도로명 주소, J == 지번 주소
	   			if(data.userSelectedType == "R")
	   				addr = data.roadAddress;
	   			else{
	   				addr = data.jibunAddress;
	   			}
	   			document.getElementById('zonecode').value= data.zonecode; // 우편번호
	   			document.getElementById('addr1').value = addr;
	   			document.getElementById('addr2').focus();
	        }
	    }).open();
	    
	}
</script>
<center>
	<div class="admin_main">
	<div class="admin_memberInfoTopLeft">호텔 수정</div>
	
	
	<form action="hotelModifyProc" method="post">
		<div class="admin_memberInfoTopRight">
			<input type="submit" value="수정" class="listBtn"/>
			<input type="button" value="이전" class="listBtn" onclick="javascript:history.back();"/>
		</div>
		<table class="admin_memberInfoTable">

			<tr>
				<th>호텔 이름</th>
				<td><input type="text" name="hotelName" placeholder="호텔이름" value="${sessionScope.hotelInfo.hotelName }"></td>
			</tr>
			<tr>
				<th>호텔 아이디</th>
				<td><input type="text" name="hotelId" placeholder="호텔아이디" readonly="readonly" value="${sessionScope.hotelInfo.hotelId }"></td>
			</tr>
			<tr>
				<th>호텔 비밀번호</th>
				<td><input type="password" name="hotelPw" placeholder="비밀번호"></td>
			</tr>
			<tr>
				<th>호텔 비밀번호 확인</th>
				<td><input type="password" name="hotelPwC" placeholder="비밀번호 확인"></td>
			</tr>
			<tr>
				<th>호텔 이메일</th>
				<td><input type="text" name="hotelEmail" placeholder="호텔 이메일" value="${sessionScope.hotelInfo.hotelEmail }"></td>
			</tr>
			<tr>
				<th>호텔 연락처</th>
				<td><input type="text" name="hotelPhoneNumber" placeholder="호텔 전화번호" value="${sessionScope.hotelInfo.hotelPhoneNumber }"></td>
			</tr>
			<tr>
				<th>우편 번호</th>
				<td>
					<input type=text name='hotelZipcode' id="zonecode" value="${sessionScope.hotelInfo.hotelZipcode }" /> 
				</td>
				<td><input type="button" class="btn" value="우편번호 검색" onclick="daumPost()"></td>
			</tr>
			<tr>
				<th>주소</th>
				<td><input type=text name='hotelAddr1' id="addr1" value="${sessionScope.hotelInfo.hotelAddr1 }" readonly="readonly"/></td> 
			</tr>
			<tr>
				<th>상세 주소</th>
				<td><input type=text name='hotelAddr2' id="addr2" value="${sessionScope.hotelInfo.hotelAddr2 }" /></td>
			</tr>
		</table>
	</form>
</div>
</center>