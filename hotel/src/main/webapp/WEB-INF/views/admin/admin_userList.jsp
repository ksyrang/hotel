<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<head>
<meta charset="UTF-8">
<link href="${pageContext.request.contextPath}/resources/css/admin/amdin_userList.css" rel="stylesheet" type="text/css">
<title>admin_userList</title>
</head>


<body>

<div class="admin_main">


<div class="admin_userCombo">
	<select name="userCombo" class="admin_userCombobox">
		<option value="none">===선택===</option>
		<option value="id">아이디</option>
		<option value="name">이름</option>
		<option value="tel">전화번호</option>
		<option value="eamil">이메일</option>
	</select>
	<input type="text" name="userSearch" class="admin_userSearchTxt">
	<input type="button" name="userSearchBtn" value="검색" class="admin_userSearchBtn">
</div>

<div>
	<table class="admin_userTable">
		<thead>
		<tr>
			<th>아이디</th>
			<th>이름</th>
			<th>생년월일</th>
			<th>전화번호</th>
			<th>이메일</th>
		</tr>
		</thead>
		<tr>
			<td><a href="admin_index?formpath=userInfo">dauen1</a></td>
			<td>신다은(Shin DaEun)</td>
			<td>1999.07.06</td>
			<td>010-5620-1321</td>
			<td>dauen1@naver.com</td>
			<td style="width:100px;">
			<input type="button" value="수정" class="listBtn">
			<input type="button" value="삭제" class="listBtn">
			</td>
		</tr>
		<tr>
			<td>isddke22</td>
			<td>김은영(Kim EunYoung)</td>
			<td>1983.10.24</td>
			<td>010-8372-1475</td>
			<td>isddke22@gmail.com</td>
			<td>
			<input type="button" value="수정" class="listBtn">
			<input type="button" value="삭제" class="listBtn">
			</td>
		</tr>
	</table><br>
	<b>총 회원수 : 2명</b>
</div>

</div>

</body>
