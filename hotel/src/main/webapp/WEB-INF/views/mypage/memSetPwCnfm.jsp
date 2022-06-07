<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="../common/main_header.jsp" %>
<c:url var="root" value="/" />
<c:url var="mypage" value="/mypage/" />
<link href="${pageContext.request.contextPath}/resources/css/mem/title_ko.css" rel="stylesheet" type="text/css">
<style>
.lnbAreaMypage .lnbMenu .m2 .sMenu li.s1 a{ background-position:0 0;}
.lnbAreaMypage .lnbMenu .m2 .sMenu li.s2 a{ background-position:0 -22px;}
.lnbAreaMypage .lnbMenu .m2 .sMenu li.s3 a{ background-position:0 -44px;}
.lnbAreaMypage .lnbMenu .m2 .sMenu li.s4 a{ background-position:0 -66px;}
</style>
	<div class="contain">
		<div class="container">
			<div class="lnbArea lnbAreaMypage">
			<div class="lnbMenu">
				<h2 class="tit">마이페이지</h2>
				<ul class="menu">
					<li class="m1 first">
						<a href="/hotel/myPage"><span>예약 확인/취소</span>
						</a>
					</li>
					<li class="m2 last">
						<a><span>내정보</span></a>
						<ul class="sMenu">
							<li class="s1 first">
							<a href="/hotel/mypage/memSetPwCnfm" class="on"><span>프로필 수정</span></a>
							</li>
							<li class="s2">
								<a href="/hotel/mypage/memSetPwMod"><span>비밀번호 변경</span></a>
							</li>
							<li class="s3">
								<a href="/hotel/mypage/memListAsk"><span>문의 내역</span></a>
							</li>
							<li class="s4 last">
								<a href="/hotel/mypage/memSetPwDropfm?gubun=t"><span>탈회요청</span></a>
							</li>
						</ul>
					</li>
				</ul>
			</div>  <!-- lnbMenu -->
		</div> <!-- lnbArea lnbAreaMypage -->
	<div class="contents" id="contents">
				<script type="text/javascript">

$(document).ready(function() { 
	$("select, input").uniform();
	
	var meYn = 'null';
	if(meYn == 'back'){
		alert("잘못된 접근 방식입니다.");
		
	}
}); 

function selectPwCnfm(){
	

	if($.trim($('#mbrPw').val()) == ""){
		alert(messages["msg.cmm.required"].replaceMsg(['비밀번호']));
		$('#mbrPw').focus();
		return;
	}
	var mbrInfo = './memSetMbrInfo.do';
	var termi = './memSetMbrDropOut.do';
	var gubun = '';
	$.ajax(
            {
                url: './memSelectPwCnfm.do',
                type: "post",
                data: { "mbrPw": $("#mbrPw").val() },
                dataType: "html",
                error: function(){
                	errorCheck = "fail";
                },
                success: function( strData ){
                	if("success" == strData ){
                		if(gubun != 't'){
        			    	$('#pwCnfmForm').attr('action',mbrInfo).submit();
                		}else{
                			$('#pwCnfmForm').attr('action',termi).submit();
                		}
                	}else if("fail" == strData){
                		alert('비밀번호가 일치하지 않습니다.');
                		return;
                	}else{
                		alert("장시간 이용하지 않아 로그아웃되었습니다. 로그인 후 다시 이용해 주시기 바랍니다. ");
                		$('#pwCnfmForm').attr("action", "/membership/mbr/login/memLogin.do").submit();
                	}
                }
            }                           
     );
	
}
//-->
</script>
			<div class="contents" id="contents">
		<form name="pwCnfmForm" id="pwCnfmForm" method="post" action="">
		<input type="text" name="hiddenInputName" id="hiddenInputName" style="display:none" autocomplete="off" class="text">
		<input type="hidden" name="hiddenInputType" id="hiddenInputType" value="Y" autocomplete="off">
				<div class="ctnMypage ctnUserInfo1">
					<div class="location">
								<p class="list"><span class="crPosit">현재 페이지 위치 : </span> &gt; 마이페이지 &gt; 내정보  &gt; <strong>프로필 수정</strong></p>
							</div>
						<div class="myProfilemodifyTit">
								<h4 class="tit">프로필 수정</h4>
							</div>
						<div class="msgBox">
					YOONGHEE LEE님의 정보를 안전하게 보호하기 위해 비밀번호를 다시 한번 확인합니다.</div>
			    <table class="tableTypeA tableUserInfo1" summary="아이디,비밀번호로 구성된 테이블">
					<caption>프로필 수정</caption>
					<colgroup>
						<col width="17%" class="col1">
						<col class="col2">
					</colgroup>
					<tbody><tr class="first">
						<th scope="row" class="first">신라리워즈 번호</th>
<td class="first">2094148</td>
						
					</tr>
					<tr class="last">
						<th scope="row" class="last"><label for="mbrPw" class="pw">비밀번호</label></th>
						<td class="last">
							<input type="password" class="pw uiform password" id="mbrPw" name="mbrPw" maxlength="20" onkeydown="javascript: if(event.keyCode == 13) selectPwCnfm()" autocomplete="off">
						</td>
					</tr>
				</tbody></table>
				
				<div class="btnList">
					<a href="javascript:popForPw('mem');" id="popForPwButton" class="btnFindPw">
						<span>비밀번호 찾기</span>
					</a>
					<a href="javascript:selectPwCnfm();" class="btnConfirm"><span>확인</span></a>
				</div>
				</div>
		</form>
			</div></div>

		</div>
	
	</div>
<%@ include file="../common/main_footer.jsp" %>