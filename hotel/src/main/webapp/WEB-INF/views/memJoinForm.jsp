<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko" class="webkit chrome win  retina ratio1_25 js portrait tabletwide"><head>
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>회원정보 입력 | 신라리워즈 가입 | The Shilla Hotels &amp; Resorts</title>
<link href="${pageContext.request.contextPath}/css/mem/common.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/css/mem/title_ko.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/css/mem/common/print.css" rel="stylesheet" type="text/css" media="print">
<link href="${pageContext.request.contextPath}/css/mem/mainImages_ko.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/css/mem/common/reserve_new.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/css/mem/common/lang-ko_N.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/css/mem/common/btn_ko.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/css/common/swiper.min.css" rel="stylesheet" type="text/css">
<style> 
.opacity{background-color:#000000;    display: block;    height: 155%; left: 0;    margin: 0;    opacity: 0.5;    position: absolute;    top: 0;    width: 100%;   z-index: 1000;}
.opacity{-ms-filter: "progid:DXImageTransform.Microsoft.Alpha(Opacity=50)"; /* IE 8 */ filter: progid:DXImageTransform.Microsoft.Alpha(Opacity=50); /* IE 7 and olders */   opacity: .5; }
/*예약에서 로딩중*/
.re-loader { position: absolute; z-index: 10; top: 57%;left: 47%;}
</style> 
<meta name="description" content="회원정보 입력"><!-- <meta name="keywords" content="신라리워즈 가입, 회원정보 입력" /> -->
<meta name="og:title" content="회원정보 입력 | 신라리워즈 가입 | The Shilla Hotels &amp; Resorts">
<!-- 검색엔진용 추가 180524 -->
<meta name="keywords" content="신라스테이,신라호텔,서울신라호텔,제주신라호텔,호텔신라,럭셔리호텔,신라리워즈">
<meta name="description" content="국내 최고 럭셔리 호텔인 호텔신라는 신라호텔과 신라스테이 브랜드를 보유하고 있습니다.">
<meta name="subject" content="신라스테이 소개,신라 리워즈 안내,브랜드 및 호텔 소개,객실 패키지 안내,온라인 최저가 예약,">
<script type="text/javascript" async="" src="https://www.google-analytics.com/analytics.js"></script><script gtm="GTM-T3LBJ26" type="text/javascript" async="" src="https://www.google-analytics.com/gtm/optimize.js?id=OPT-NQ9CLZ3"></script><script type="text/javascript" async="" src="https://www.googletagmanager.com/gtag/js?id=G-30Y6N61ES4&amp;l=dataLayer&amp;cx=c"></script><script type="text/javascript" async="" src="https://www.google-analytics.com/analytics.js"></script><script async="" src="https://www.googletagmanager.com/gtm.js?id=GTM-T3LBJ26"></script>
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
</head>
<body class="subBody joinBody"><div id="popCalendarDiv" class="popCalendar" style="display:none"></div>

<!-- <script src="/js/json2.js" charset="UTF-8"></script>
<script src="/js/jquery-1.8.3.js" charset="UTF-8"></script>
<script src="/js/uniform.js" charset="UTF-8"></script>
<script src="/js/browser.js" charset="UTF-8"></script>
<script src="/js/style.hub.js" charset="UTF-8"></script>
<script src="/js/swiper.min.js"></script>
<script src="/js/style.advance.js" charset="UTF-8"></script>개선 : js 추가
<script src="/js/resv/advResvCalendar.js" charset="UTF-8"></script> [2019_모션추가]3 달력 고도화
<script src="/index.do/secu/messageJs.do" charset="UTF-8"></script>
	<script src="/js/common.js" charset="UTF-8"></script>
<script src="/js/commonEx.js" charset="UTF-8"></script>
<script src="/js/jquery.slides.js" charset="UTF-8"></script>
<script src="/js/mbr/popLogin.js" charset="UTF-8"></script><div id="popLoginDiv" class="popLogin" style="display:none"></div>
<script src="/js/mbr/forIdPwd.js" charset="UTF-8"></script><div id="popForIdPwDiv" style="display:none">0</div>
<script src="/js/mbr/mbshPointRead.js" charset="UTF-8"></script><div id="mbshPotinRead" style="display:none"></div>
<script src="/js/resv/resvCalendar.js" charset="UTF-8"></script><script src="/js/resv/resvPromotionCalendar.js" charset="UTF-8"></script>
<script src="/js/resv/resv.js" charset="UTF-8"></script><script src="/js/resv/din.js" charset="UTF-8"></script>
<script src="/js/ask/ask.js" charset="UTF-8"></script><script src="/js/mbr/zipno.js" charset="UTF-8"></script><div id="zipNoLayerDiv" class="popLogin" style="display:none"></div>
<script src="/js/offers/makeAPlan.js" charset="UTF-8"></script><div id="makeAPlanLayerDiv" class="popLogin" style="display:none"></div>
<script src="/js/mbr/mbr_join.js" charset="UTF-8"></script>
<script src="/js/jquery.cookie.js" charset="UTF-8"></script>
<script src="/js/placeholders.js" charset="UTF-8"></script>
<script src="/js/rewards_new2020.js" charset="UTF-8"></script>
<script src="/js/dining_new2020.js" charset="UTF-8"></script> -->
<!--[if IE 6]><script src="/js/png24.js"></script><![endif]-->

<script type="text/javascript">

	</script>

<!-- 운영인 경우만 Google Analytics 호출 -->
<!-- Google Tag Manager -->
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','GTM-T3LBJ26');</script>
<!-- End Google Tag Manager -->

<!-- Global site tag (gtag.js) - Google Analytics -->

<script async="" src="https://www.googletagmanager.com/gtag/js?id=UA-119797985-1"></script>





<!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-T3LBJ26"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->

<dl class="skipNavi">
	<dt>THE SHILLA 바로가기 메뉴</dt><dd><a class="goContents" href="#contents">본문으로 바로가기</a></dd></dl>

<script>
	document.oncontextmenu = function(){ // 컨텍스트 메뉴금지
		return false;
	};
</script>

	
	<div class="contain">

<script type="text/javascript" src="/js/jquery.alphanumeric.js"></script>
<script type="text/javascript">

/* function saveMbrJoinForm() {
	
	if($.trim($('#titlCd').val()) == ""){
		alert(messages["msg.cmm.selected.required"].replaceMsg(['호칭']));
		$('#titlCd').focus();
		return;
	}
	
	if($.trim($('#mbrNm').val()) == ""){
		alert(messages["msg.cmm.required"].replaceMsg(['성명']));
		$('#mbrNm').focus();
		return;
	}

	if($.trim($('#mbrEnFnm').val()) == ""){
		alert(messages["msg.cmm.required"].replaceMsg(['First name(이름)']));
		$('#mbrEnFnm').focus();
		return;
	}

	if($.trim($('#mbrEnLnm').val()) == ""){
		alert(messages["msg.cmm.required"].replaceMsg(['Last name(성)']));
		$('#mbrEnLnm').focus();
		return;
	}


	if($.trim($('#birthYear').val()) == ""){
		alert(messages["msg.cmm.selected.required"].replaceMsg(['생일(년도)']));
		$('#birthYear').focus();
		return;
	}

	if($.trim($('#birthMonth').val()) == ""){
		alert(messages["msg.cmm.selected.required"].replaceMsg(['생일(월)']));
		$('#birthMonth').focus();
		return;
	}

	if($.trim($('#birthDay').val()) == ""){
		alert(messages["msg.cmm.selected.required"].replaceMsg(['생일(일)']));
		$('#birthDay').focus();
		return;
	}

	
	if(fnCalcBirth() == false) {
		alert('신라리워즈는 만19세 이상부터 회원가입이 가능합니다.');
		return;
	}
	
	if($.trim($('#mbno2').val()) == ""){
		alert(messages["msg.cmm.required"].replaceMsg(['휴대전화 ']));
		$('#mbno2').focus();
		return;
	}

	if($.trim($('#mbno3').val()) == ""){
		alert(messages["msg.cmm.required"].replaceMsg(['휴대전화 ']));
		$('#mbno3').focus();
		return;
	}
	
	if($.trim($('#mbrPw').val()) == ""){
		alert(messages["msg.cmm.required"].replaceMsg(['비밀번호']));
		$('#mbrPw').focus();
		return;
	}

	if($.trim($('#mbrPw2').val()) == ""){
		alert(messages["msg.cmm.required"].replaceMsg(['비밀번호 확인']));
		$('#mbrPw2').focus();
		return;
	}

	if($.trim($('#mbrPw').val()) != $.trim($('#mbrPw2').val())){
		alert('비밀번호와 비밀번호확인이 일치하지 않습니다.');
		$('#mbrPw2').focus();
		return;
	}
	
	var mbrPw = $('#mbrPw').val();
	if(!checkPass(mbrPw)){
		   return;
	}
	
	//특수문자 %가 패스워드에 들어간 경우 체크 -- 20160229 김동욱
	if(!checkPassSpChar($('#mbrPw'))){
		return;
	}
	
	$('#email').val($('#email1').val() + "@" + $('#email2').val());
	
	if($.trim($('#email').val()) == ""){
		alert(messages["msg.cmm.required"].replaceMsg(['이메일']));
		return;
	}
    if(!checkEmail( $('#email1') , $('#email2')  )){
   	   return;
    }
    
	if(!checkedEmail) {
		alert(messages["msg.cmm.required"].replaceMsg(['이메일 중복확인을 해주세요.']));
		$('#email1').focus();
		return;
	}
	
	if($.trim($('#lognId').val()) == ""){
		alert(messages["msg.cmm.required"].replaceMsg(['아이디']));
		return;
	}
	if(!checkedLognId) {
	//	 alert(messages["msg.cmm.required"].replaceMsg(['아이디 중복확인을 해주세요.'])); 
		alert(messages["msg.cmm.required"].replaceMsg(["아이디 중복확인"]));
		$('#lognId').focus();
		return;
	}

	if(gbn == false){
		
		gbn = true;
		$('.opacity').show();
		$('.re-loader').show();
		
		$("#titlCd").prop("disabled", false);
		$("#mbrNm").prop("disabled", false);
		$("#birthYear").prop("disabled", false);
		$("#birthMonth").prop("disabled", false);
		$("#birthDay").prop("disabled", false);
		$("#mbno1").prop("disabled", false);
		
	    //신청버튼
		 var string = $("form[name=mbrJoinForm]").serialize();
		 $.post( "/${root }index?formpath=memJoinSuccessForm", string).done(function(data){
		 
			$('.opacity').hide();
			$('.re-loader').hide();

			var jObj = JSON.parse(data);
			
			 if(jObj.returnCode == "ciOverlap"){
					alert('이미 가입된 회원입니다.');
					 $('#mbrJoinForm').attr('action','/index.do').submit();
			 }else if(jObj.returnCode == "emailOverlap"){
					alert('이미 가입된 email 주소입니다.');
					 //$('#mbrJoinForm').attr('action','/index.do').submit();
				 	gbn=false;
			 }else if(jObj.returnCode == "fail"){
					alert('신라리워즈 고객센터로 문의하세요.');
					 $('#mbrJoinForm').attr('action','/index.do').submit();
			 }else if(jObj.returnCode == "noJoinCd"){
				 	alert('입력하신 프로모션 코드는 유효하지 않습니다.');
				 	gbn=false;
			 }else if(jObj.returnCode == "dfIdOverlap"){
				 	alert('이미 사용중인 ID입니다. 다른 ID를 설정해 주세요.');
				 	gbn=false;
			 }else if(jObj.returnCode == "noRcId"){
					alert('유효하지 않은 추천인 아이디입니다.');
				 	gbn=false;
			 }else{
				 $("#mbshIdNo").val(jObj.returnCode);
				 $("#shillaDfsJoinFlag").val(jObj.shillaDfsJoinFlag);
				 if ("" != null && "" != "") {	 
					 alert('신청이 완료되었습니다.');
					 $('#mbrJoinForm').attr('action','/index.do').submit();
				 }else{
					$('#mbrJoinForm').attr('action','./memViewMbrInfoEnd.do').submit();
				 }
			 }

		}).fail(function( jqxhr, textStatus, error ) {
			$('.opacity').hide();
			$('.re-loader').hide();
			alert('생성이 실패하였습니다.');
		});
	}
}
 */
	
	function isExistId(){
		var req;
		req = new XMLHttpRequest();
		req.onreadystatechange = printMsg;
		req.open('post', 'isExistId');
		req.send(document.getElementById('memberId').value);
	}	function sendAuth(){
		var req;
		req = new XMLHttpRequest();
		req.onreadystatechange = printMsg;
		req.open('post', 'sendAuth');
		req.send(document.getElementById('memberEmail').value);
	}
	
	function printMsg(){
		var req;
		var msg = document.getElementById('msg');
		msg.innerHTML = req.responseText;
	}

	function checkAuth(){
		var req;
		req = new XMLHttpRequest();
		req.onreadystatechange = printMsg;
		req.open('post', 'checkAuth');
		req.setRequestHeader("Content-Type", "application/json; charset=UTF-8");
		var number = document.getElementById('authNumber').value;
		var data = {authNumber:number};
		data = JSON.stringify(data);
		req.send(data);
	}
</script>
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
	   			document.getElementById('memberZipcode').value= data.zonecode; // 우편번호
	   			document.getElementById('memberAddr1').value = addr;
	   			document.getElementById('memberAddr2').focus();
	        }
	    }).open();
	    
	}
</script>
<form id="join_form" name="join_form" action="memberJoin" method="post">


	<div class="container">
		<div class="contents" id="contents">
			<div class="ctnJoin ctnJoinStep2">
			
				<div class="location">
					<p class="list"><span class="crPosit">현재 페이지 위치 : </span>  &gt; <strong>회원가입</strong></p>
				</div>
				<div class="headTit">
					<h3 class="tit">회원가입</h3>
				</div>
				
				<div class="joinStep">
					<ul class="step">
						<li class="t1 first"><span>약관동의</span></li>
						<li class="t2 on"><span>회원정보 입력</span></li>
						<li class="t3 last"><span>가입완료</span></li>
					</ul>
				</div>			
				
				<div class="hTit">
					<h4 class="tit">회원정보 입력</h4>
				</div>
							
				<div class="hTitS">
					<h4 class="tit">기본 입력</h4>
					<div class="info"><em class="ast">*</em> 표시 필수입력사항</div>
				</div>
				
				<table class="tableTypeA tableJoinForm" summary="성명(한글),성명(영문),아이디,비밀번호,비밀번호확인,생년월일,이메일,휴대전화,자택전화,주소,SMS수신여부,기념일로 구성된테이블입니다." style="margin-top:0px;">
					<caption>회원가입 기본정보입력</caption>
					<colgroup>
							<col width="16%" class="col1">
							<col class="col2">
					</colgroup>
					
					<tbody>
					<tr class="first">
						<th scope="row" class="first"><em class="ast">*</em> 성명(국문)</th>
						<td class="first">
							<label for="memberGender" class="nameH">경칭</label>
							<select name="memberGender" id="memberGender" style="width: 85px; height: 27px; line-height: 27px;">
							<option value="" selected disabled>선택</option>
							<option value="m" title="m">남</option>
							<option value="w" title="w" >여</option>
							<option value="n" title="n" >선택안함</option>
							</select>

							<input type="text" class="lastNameEn uiform text" id="memberNameKR" name="memberNameKR" maxlength="30" value="" autocomplete="off" />
						</td>
					</tr>
					
					<tr>
						<th scope="row"><em class="ast">*</em> 성명(영문)</th>
						<td>
							<input id="memberNameENG" name="memberNameENG" placeholder='띄어쓰기 없이 작성' onkeyup="this.value=this.value.replace(/[^a-z]/gi,'');" style="text-transform: uppercase;" type="text" class="lastNameEn uiform text" value="" maxlength="30" autocomplete="off" />
						</td>
							
					</tr>
			
					<!-- 생년월일 -->
					<tr>
						<th scope="row"><em class="ast">*</em> 생년월일</th>
						<td>
						<input id="memberBirth" name="memberBirth" placeholder='- 빼고 8자리로 작성' onkeyup="this.value=this.value.replace(/[^0-9]/gi,'');" style="text-transform: uppercase;" type="text" class="lastNameEn uiform text" value="" maxlength="8" autocomplete="off" />
						</td>
					</tr>
					
					<!-- 이메일 -->

					<tr>
						<th scope="row"><em class="ast">*</em> 이메일 </th>
						<td>
							<input id="memberEmail" name="memberEmail"  type="text" size="20" value="" onkeyup="this.value=this.value.replace(/[^a-z0-9_.@-]/gi,'');" maxlength="40" title="이메일주소 입력" autocomplete="off"> 
							<input type="button" value="이메일 인증번호 전송" onclick="sendAuth()">
						</td>
					</tr>
					<tr>
						<th scope="row"><em class="ast">*</em> 이메일 인증번호 </th>
						<td>
							<input type="text" class="uiform mailNumb text" id="mailNumb" name="mailNumb" value="" maxlength="4" onkeyup="this.value=this.value.replace(/[^\d\ ]/g, '')" autocomplete="off">
							<input type="button" value="인증번호 확인" onclick="checkAuth()">
						</td>
					</tr>
					<!-- 휴대전화 -->
					<tr>
						<th scope="row"><em class="ast">*</em> 휴대전화 </th>
						<td>
							<input type="text" class="uiform phoneNum2 text" placeholder='- 빼고 작성' id="memberMobile" name="memberMobile" value="" maxlength="11" onkeyup="this.value=this.value.replace(/[^\d\ ]/g, '')" autocomplete="off">	
						</td>
					</tr>
					<!-- 자택전화 -->
					<tr>
						<th scope="row"> 자택전화</th>
						<td>
							<input type="text" class="uiform phoneHome2 text" placeholder='- 빼고 작성' id="memberHomePhone" name="memberHomePhone" maxlength="10" onkeyup="this.value=this.value.replace(/[^\d\ ]/g, '')" autocomplete="off">
						</td>
					</tr>
					<tr class="last">
						<th scope="row" class="last">자택주소</th>
						<td class="last">
							<div class="addressWrap">
								<div class="zipcode">
									<label class="zipcode1" for="memberZipcode">우편번호앞자리</label>
									<input type="text" class="zipcode1 uiform text" id="memberZipcode" name="memberZipcode" style="width: 100px;" readonly="readonly" autocomplete="off">
<!-- 										- -->
<!-- 										<input type="text" class="zipcode2 uiform" id="zipNo2" name="zipNo2"  readonly> -->
									<input type="button" value="우편번호 검색" onclick="daumPost()">
								</div>
								
								<div class="addressOld">
										
									<div class="address1">
										<label class="address1" for="memberAddr1">주소구,동</label>
										<input type="text" class="address1 uiform text" id="memberAddr1" name="memberAddr1" readonly="readonly" autocomplete="off">
									</div>
									<div class="address2">
										<label class="address2" for="memberAddr2">상세주소</label>
										<input type="text" class="address2 uiform text" id="memberAddr2" name="memberAddr2" maxlength="100"  autocomplete="off">
									</div>
								</div>
							</div>	
						</td>
					</tr>
					</tbody>
					</table>
					
					<!-- 웹사이트 비밀번호 입력 시작 -->
					<div class="hTitS">
						<h4 class="tit">웹사이트 비밀번호 입력</h4>
					</div>

					<table class="tableTypeA tableJoinForm" summary="신라리워즈번호, 비밀번호, 비밀번호확인 으로 구성된테이블입니다." style="margin-top:0px;">
						<caption>회원가입 웹사이트 비밀번호 입력</caption>
						<colgroup>
							<col width="16%" class="col1">
							<col class="col2">
						</colgroup>
							<tbody><tr class="first">
								<th scope="row" class="first"><em class="ast">*</em> 아이디</th>
								<td class="first"><input type="text" id="memberId" name="memberId" class="uiform text" maxlength="15" autocomplete="off" style="width:130px">
								<span class="idConfirm"><input type="button" value="중복 확인" onclick="isExistId()"></span><span class="msgCheck msgCheck2">8자  이내 영문 또는 영문/숫자 조합</span></td>
							</tr>
					<tr>
						<th scope="row"><em class="ast">*</em> 비밀번호</th>
						<td>
							<label for="memberPw" class="pwForm1">비밀번호</label>
							<input type="password" class="pwForm1 uiform password" id="memberPw" name="memberPw" maxlength="20" autocomplete="off" style="width:130px">
								<div class="pwGuide" style="display: none;">
									<h4 class="tit">비밀번호 입력 시 아래의 사항을 참고하시어 안전한 정보 입력을 권장합니다.</h4>
									<ul class="list">
										<li class="first"> 아이디 및 아이디를 포함한 문자/숫자는 비밀번호로 사용할 수 없습니다.</li><li> 동일하거나 연속되는 문자 또는 숫자는 사용 불가능합니다.  예) aaa,111</li><li>생일, 주민등록번호 등 타인이 알아내기 쉬운 비밀번호는 사용을 자제해 주시기 바랍니다.	</li><li class="last">비밀번호는 3~6개월에 한번씩 주기적으로 바꾸어 사용	하시는 것이 안전합니다. </li></ul>
									<a href="javascript:;" class="btnClose"><span>닫기</span></a>
								</div>
							<span class="msgCheck msgCheck2">8~20자  이내 영문/숫자 조합(특수문자 입력 가능)</span>
						</td>
					</tr>
					<!-- 비빌번호 확인 -->
					<tr class="last">
						<th scope="row" class="last"><em class="ast">*</em> 비밀번호 확인</th>
						<td class="last">
							<label for="memberPwCheck" class="pwForm2">비밀번호 확인</label>
							<input type="password" class="pwForm2 uiform password" id="memberPwCheck" name="memberPwCheck" maxlength="20" autocomplete="off" style="width:130px"> 
						</td>
					</tr>
					
				</tbody>
				
				
                </table>

				<div class="rwPromotion">
                   <span>※ 신라리워즈 가입 고객께는 모바일
   카드가 발급 되며 혜택 및 약관은
   홈페이지에서 확인 가능합니다.</span>   
                </div>
                 <!-- 카드 안내 문구 끝-->
							
				<br>
				
				
               
           		<!--  onclick="nextStep();"-->
				
				<div class="btnList">
			 	<input type=button value='회원 가입' onclick="location.href='${root }index?formpath=memberInsert'" style="width: 60px;" />
				<input type=reset value='취소' style="width: 60px; "/>
				</div>
			
			</div>
		</div>
		</div>
			<div id="viewLoading" class="re-loader" style="display: none;">
		 	 <img src="${pageContext.request.contextPath}/images/ko/common/loadingAnimation.gif" alt="">
			</div>
			<div class="opacity" style="display: none;"></div>
	</form>
	<div id="mbrJoinLayer"></div>
	</div>
	
	<script>
	$(document).ready(function(){
	//회원가입 버튼(회원가입 기능 작동)
		$(".join_button").click(function(){
			$("#join_form").attr("action", "${root }index?formpath=memberInsert");
			$("#join_form").submit();
		});
	});
	</script>	
			
</body></html>