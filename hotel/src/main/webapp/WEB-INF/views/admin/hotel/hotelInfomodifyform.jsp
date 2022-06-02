<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:url var="root" value="/" />
//<script src="${root}/resources/check.js"></script>
<link href="${pageContext.request.contextPath}/resources/css/admin/amdin_hotelList.css" rel="stylesheet" type="text/css">
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<center>
<form action="hotelModifyProc" method="post">
	<table>
		<tr>
			<th>호텔 이름</th>
			<th><input type="text" name="hotelName" placeholder="호텔이름" value="${sessionScope.hotelInfo.hotelName }"></th>
		</tr>
		<tr>
			<th>호텔 아이디</th>
			<td><input type="text" name="hotelId" placeholder="호텔아이디" readonly="readonly" value="${sessionScope.hotelInfo.hotelId }"></td>
		</tr>
		<tr>
			<th>호텔 이메일</th>
			<td><input type="text" name="hotelEmail" placeholder="호텔 이메일" value="${sessionScope.hotelInfo.email }"></td>
		</tr>
		<tr>
			<th>호텔 연락처</th>
			<td><input type="text" name="hotelEmail" placeholder="호텔 전화번호" value="${sessionScope.hotelInfo.phoneNumber }"></td>
		</tr>
		<tr>
			<th>우편 번호</th>
			<td>
				<input type=text name='zipcode' id="zonecode" value="${sessionScope.hotelInfo.zipCode }" readonly="readonly"/> 
			</td>
			<td><input type="button" value="우편번호 검색" onclick="daumPost()"></td>
		</tr>
		<tr>
			<th>주소</th>
			<td><input type=text name='addr1' id="addr1" value="${sessionScope.hotelInfo.addr1 }" readonly="readonly"/></td> 
		</tr>
		<tr>
			<th>상세 주소</th>
			<td><input type=text name='addr1' id="addr2" value="${sessionScope.hotelInfo.addr2 }" readonly="readonly"/></td>
		</tr>
		<tr>
			<td align='center' height=40 colspan=4>
				<input type=submit value='회원 수정' style="width: 120px; "/>
				<input type=reset value='취소' style="width: 120px; "/>	 
			</td>
		</tr>
	</table>
</form>
</center>