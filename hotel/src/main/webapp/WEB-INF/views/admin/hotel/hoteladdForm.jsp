<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:url var="root" value="/" />
//<script src="${root}/resources/check.js"></script>
<link href="${pageContext.request.contextPath}/resources/css/admin/amdin_hotelList.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/css/admin/amdin_memberList.css" rel="stylesheet" type="text/css">

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
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
	<form action="hoteladdProc" method="post">
		<table>
			<tr>
				<td><input type="button" value="뒤로가기" onclick="location.href='${root}hotellistProc'"/></td>
			</tr>
			<tr>
				<th>호텔 이름</th>
				<th><input type="text" name="hotelName" placeholder="호텔이름" value="${sessionScope.hotelAdd.hotelName }"></th>
			</tr>
			<tr>
				<th>호텔 아이디</th>
				<td><input type="text" name="hotelId" placeholder="호텔아이디" value="${sessionScope.hotelAdd.hotelId }"></td>
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
				<td><input type="text" name="hotelEmail" placeholder="호텔 이메일" value="${sessionScope.hotelAdd.hotelEmail }"></td>
			</tr>
			<tr>
				<th>호텔 연락처</th>
				<td><input type="text" name="hotelPhoneNumber" placeholder="호텔 전화번호" value="${sessionScope.hotelAdd.hotelPhoneNumber }"></td>
			</tr>
			<tr>
				<th>우편 번호</th>
				<td>
					<input type=text name='hotelZipcode' id="zonecode" value="${sessionScope.hotelAdd.hotelZipcode }" /> 
				</td>
				<td><input type="button" value="우편번호 검색" onclick="daumPost()"></td>
			</tr>
			<tr>
				<th>주소</th>
				<td><input type=text name='hotelAddr1' id="addr1" value="${sessionScope.hotelAdd.hotelAddr1 }" readonly="readonly"/></td> 
			</tr>
			<tr>
				<th>상세 주소</th>
				<td><input type=text name='hotelAddr2' id="addr2" value="${sessionScope.hotelAdd.hotelAddr2 }" /></td>
			</tr>
			<tr>
				<td align='center' height=40 colspan=4>
					<input type="submit" value='호텔 추가' style="width: 120px; "/>
					<input type="reset" value='취소' style="width: 120px; "/>	 
				</td>
			</tr>
		</table>
	</form>
</div>
</center>