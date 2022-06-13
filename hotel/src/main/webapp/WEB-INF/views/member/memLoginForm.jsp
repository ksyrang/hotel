<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<style>
	input{
    	background-img : url('이미지 위치');
        background-repeat : no-repeat;
        backgroupd-size : 13px;
    }
</style>
<<script type="text/javascript">
	function logininfoSubmit(){
		document.getElementById("f").submit();		
	}
</script>
<c:url var="root" value="/" />
<center>
<div class="loginBox contents" id="contents">
	<div class="top">
		<h1 class="logo">
			<span>
				<p>호텔신라 홈페이지를 방문해 주셔서 감사합니다.<br>회원 가입시 입력하신 아이디와 비밀번호를 입력해 주시기  바랍니다.</p>
				<p>※ 호텔신라의 회원이 되시면 다양한 신라호텔의 정보 및  서비스 혜택을 받으실 수 있습니다.</p>
			</span>
		</h1>
	</div>
	<div class="tabContent">
		<div class="allBox">
			<div class="box">
				<div class="formBox">
					<div class="cBox">
						<fieldset class="loginSet">
							<form id="f" action="${root }loginProc" method="POST">
								<div class="inputForm">
									<div style="float: left; height: 30px;"><input type="text" style="width: 280px; " name="userId" placeholder="신라 리워즈 아이디 입력"></div>
									<div style="float: left;"><input type="password" style="width: 280px; " maxlength="40" name="userPw" placeholder="비밀번호"></div>
								</div>
								<!-- 로그인 버튼 -->
								<div class="loginBtn">	
									<a href="javascript:logininfoSubmit();" title="Login">
										<img src="${pageContext.request.contextPath}/images/ko/common/join/loginBtnLogin.gif" alt="로그인" class="btnLogin">
									</a>
								</div>
							</form>
						</fieldset>
						<div class="btn">
							<a class="btnJoin" href="${root }index?formpath=memJoinAgreeForm"><span>신라리워즈 가입</span></a>
							<a href="${root }index?formpath=findIDForm" id="popForIdButton" class="btnLostId"><span>신라리워즈 번호 찾기</span></a>
							<a href="${root }index?formpath=findPW" id="popForPwButton" class="btnLostPw"><span>비밀번호찾기</span></a>
						</div>
					</div>
				</div>
			</div>
			<div class="loginT">
				<p>이메일, 연락처 등의 정보가 변경되면 웹사이트에서 회원정보를 수정해주시기 바랍니다.</p>
			</div>
		</div>
	</div>
</div>
</center>
