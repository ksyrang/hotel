<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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


		<script type="text/javascript">
	$(document).ready(function(){
		$(".findBtn a").click(function(){
		 	$(".findBox").slideToggle("fast");
		});
	});
	function ssoLogout() {
		location.href = "/mem/login/SSOLogout.do";

	}
	$( "#benefitBtn" ).click(function() {
		  $( "#showCardbox" ).show( "slow" );
		  $( "#hiddencardbox" ).hide( "slow" );
	});
</script>

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
					<tr id="memberGender" class="first">
						<th scope="row" class="first"><em class="ast">*</em> 성명(국문)</th>
						<td class="first">
							<label for="titlCd" class="nameH">경칭</label>
							<select name="memberGender" id="memberGender" style="width: 85px; height: 27px; line-height: 27px;">
							<option value="" selected disabled>선택</option>
							<option value="M" title="M">남</option>
							<option value="W" title="W." >여</option>
							<option value="N" title="N" >선택안함</option>
							</select>
						<!--	<div class="selector" id="uniform-titlCd" style="width: 71px;"><span style="width: 46px; user-select: none;">
										선택</span><select id="titlCd" class="nameH uiform" name="titlCd">
								<option value="">선택</option>
								<option value="Miss." title="Ms.">
											Ms.</option>
									<option value="Mr." title="Mr." selected>
											Mr.</option>
									</select></div>  -->
							<input type="text" class="lastNameEn uiform text" id="memberNameKR" name="mbrNm" maxlength="30" value="" autocomplete="off">
						</td>
					</tr>
					
					<tr id="memberNameENG">
						<th scope="row"><em class="ast">*</em> 성명(영문)</th>
						<td>
							<label for="mbrEnFnm" class="firstNameEn">First name(이름)</label>
							<input id="mbrEnFnm" name="mbrEnFnm" onkeyup="this.value=this.value.replace(/[^a-z]/gi,'');" style="text-transform: uppercase;" type="text" class="lastNameEn uiform text" value="" maxlength="30" autocomplete="off">
							<label for="mbrEnLnm" class="lastNameEn">Last name(성)</label>
							<input id="mbrEnLnm" name="mbrEnLnm" onkeyup="this.value=this.value.replace(/[^a-z]/gi,'');" style="text-transform: uppercase;" type="text" class="lastNameEn uiform text" value="" maxlength="30" autocomplete="off"></td>
							
					</tr>
			
					<!-- 생년월일 -->
					<tr id="memberBirth">
						<th scope="row"><em class="ast">*</em> 생년월일</th>
						<td>
						
						<select name="year" style="width: 85px; height: 27px; line-height: 27px;">
							<option value="" selected disabled>선택</option>
							<option value="2003">2003</option>
							<option value="2002">2002</option>
							<option value="2001">2001</option>
							<option value="2000">2000</option>
							<option value="1999">1999</option>
							<option value="1998">1998</option>
							<option value="1997">1997</option>
							<option value="1996">1996</option>
							<option value="1995">1995</option>
							<option value="1994">1994</option>
							<option value="1993">1993</option>
							<option value="1992">1992</option>
							<option value="1991">1991</option>
							<option value="1990">1990</option>
							<option value="1989">1989</option>
							<option value="1989">1988</option>
							<option value="1987">1987</option>
							<option value="1986">1986</option>
							<option value="1986">1985</option>
							<option value="1984">1984</option>
							<option value="1983">1983</option>
							<option value="1982">1982</option>
							<option value="1981">1981</option>
							<option value="1980">1980</option>
							<option value="1979">1979</option>
							<option value="1978">1978</option>
							<option value="1977">1977</option>
							<option value="1976">1976</option>
							<option value="1975">1975</option>
							<option value="1974">1974</option>
							<option value="1973">1973</option>
							<option value="1972">1972</option>
							<option value="1971">1971</option>
							<option value="1970">1970</option>
							<option value="1969">1969</option>
							<option value="1968">1968</option>
							<option value="1967">1967</option>
							<option value="1966">1966</option>
							<option value="1965">1965</option>
							<option value="1964">1964</option>
							<option value="1963">1963</option>
							<option value="1962">1962</option>
							<option value="1961">1961</option>
							<option value="1960">1960</option>
						</select>
								<select name="month" style="width: 85px; height: 27px; line-height: 27px;">
								<option value="" selected disabled>선택</option>
								<option value="1" title="1">1</option>
								<option value="2" title="2">2</option>
								<option value="3" title="3">3</option>
								<option value="4" title="4">4</option>
								<option value="5" title="5">5</option>
								<option value="6" title="6">6</option>
								<option value="7" title="7">7</option>
								<option value="8" title="8">8</option>
								<option value="9" title="9">9</option>
								<option value="10" title="10">10</option>
								<option value="11" title="11">11</option>
								<option value="12" title="12">12</option>
							</select>
							<select name="day" style="width: 85px; height: 27px; line-height: 27px;">
							<option value="" selected disabled>선택</option>
								<option value="1" title="1">1</option>
								<option value="2" title="2">2</option>
								<option value="3" title="3">3</option>
								<option value="4" title="4">4</option>
								<option value="5" title="5">5</option>
								<option value="6" title="6">6</option>
								<option value="7" title="7">7</option>
								<option value="8" title="8">8</option>
								<option value="9" title="9">9</option>
								<option value="10" title="10">10</option>
								<option value="11" title="11">11</option>
								<option value="12" title="12">12</option>
								<option value="13" title="13">13</option>
								<option value="14" title="14">14</option>
								<option value="15" title="15">15</option>
								<option value="16" title="16">16</option>
								<option value="17" title="17">17</option>
								<option value="18" title="18">18</option>
								<option value="19" title="19">19</option>
								<option value="20" title="20">20</option>
								<option value="21" title="21">21</option>
								<option value="22" title="22">22</option>
								<option value="23" title="23">23</option>
								<option value="24" title="24">24</option>
								<option value="25" title="25">25</option>
								<option value="26" title="26">26</option>
								<option value="27" title="27">27</option>
								<option value="28" title="28">28</option>
								<option value="29" title="29">29</option>
								<option value="30" title="30">30</option>
								<option value="31" title="31">31</option>
							</select>
						</td>
					</tr>
					
					<!-- 이메일 -->

					<tr id="memberEmail">
						<th scope="row"><em class="ast">*</em> 이메일 </th>
						<td>
							<input id="email01" name="email01"  type="text" size="20" value="" onkeyup="this.value=this.value.replace(/[^a-z0-9_.@-]/gi,'');" maxlength="40" title="이메일주소 입력" autocomplete="off">
							<span class="at">@</span> 
							
							<input id="email02" name="email02"  type="text" size="20" value="" onkeyup="this.value=this.value.replace(/[^a-z0-9_.@-]/gi,'');" maxlength="40" title="이메일주소 도메인 입력" autocomplete="off">
							<select id="memberEmail" name="memberEmail" style="width: 115px; height: 27px; line-height: 27px;" onchange="email02.value=this.value">
							<option value="" selected disabled>E-Mail 선택</option>
							<option value="">직접입력하기</option>
							<option value="naver.com" title="naver.com">naver.com</option>
							<option value="hanmail.net" title="hanmail.net">hanmail.net</option>
							<option value="nate.com" title="nate.com">nate.com</option>
							<option value="gmail.com" title="gmail.com">gmail.com</option>
							<option value="hotmail.com" title="hotmail.com">hotmail.com</option>
							<option value="yahoo.co.kr" title="yahoo.co.kr">yahoo.co.kr</option>
							</select> 
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
					<tr id="memberMobile">
						<th scope="row"><em class="ast">*</em> 휴대전화 </th>
						<td>
							<label for="mbno1" class="phoneComp">휴대폰국번</label>
							<select name="mobileFirst" style="width: 85px; height: 27px; line-height: 27px;">
								<option value="010" title="010">010</option>
								<option value="011" title="011">011</option>
								<option value="016" title="016">016</option>
								<option value="017" title="017">017</option>
								<option value="018" title="018">018</option>
								<option value="019" title="019">019</option>
							</select>
						-
							<label for="mbno2" class="phoneNum1">휴대폰앞번호</label>
							<input type="text" class="uiform phoneNum1 text" id="mbno2" name="mbno2" value="" maxlength="4" onkeyup="this.value=this.value.replace(/[^\d\ ]/g, '')" autocomplete="off">
							-
							<label for="mbno3" class="phoneNum2">휴대폰뒷번호</label>
							<input type="text" class="uiform phoneNum2 text" id="mbno3" name="mbno3" value="" maxlength="4" onkeyup="this.value=this.value.replace(/[^\d\ ]/g, '')" autocomplete="off">
							
							
						</td>
					</tr>
					<!-- 자택전화 -->
					<tr id="memberHomePhone">
						<th scope="row"> 자택전화</th>
						<td>
							<label for="phno1" class="phoneComp">국번</label>
							<select name="homeFirst" style="width: 85px; height: 27px; line-height: 27px;">
								<option value=""selected disabled>선택</option>
								<option value="02" title="02" >02</option>
								<option value="031" title="031">031</option>
								<option value="032" title="032">032</option>
								<option value="033" title="033">033</option>
								<option value="041" title="041">041</option>
								<option value="042" title="042">042</option>
								<option value="043" title="043">043</option>
								<option value="044" title="044">044</option>
								<option value="051" title="051">051</option>
								<option value="052" title="052">052</option>
								<option value="053" title="053">053</option>
								<option value="054" title="054">054</option>
								<option value="055" title="055">055</option>
								<option value="061" title="061">061</option>
								<option value="062" title="062">062</option>
								<option value="063" title="063">063</option>
								<option value="064" title="064">064</option>
								<option value="0130" title="0130">0130</option>
								<option value="080" title="080">080</option>
								<option value="070" title="070">070</option>
								<option value="0506" title="0506">0506</option>
								<option value="0502" title="0502">0502</option>
								<option value="0503" title="0503">0503</option>
								<option value="0504" title="0504">0504</option>
								<option value="0507" title="0507">0507</option>
								<option value="0505" title="0505">0505</option>
								<option value="0303" title="0303">0303</option>
							</select>
							-
							<label for="phno2" class="phoneHome1">집전화앞번호</label>
							<input type="text" class="uiform phoneHome1 text" id="phno2" name="phno2" maxlength="4" onkeyup="this.value=this.value.replace(/[^\d\ ]/g, '')" autocomplete="off">
							-
							<label for="phno3" class="phoneHome2">집전화뒷번호</label>
							<input type="text" class="uiform phoneHome2 text" id="phno3" name="phno3" maxlength="4" onkeyup="this.value=this.value.replace(/[^\d\ ]/g, '')" autocomplete="off">
							
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
								<span class="idConfirm"><input type="button" value="중복 확인" onclick="isExistId()"></span><span class="msgCheck msgCheck2">5~12자  이내 영문 또는 영문/숫자 조합</span></td>
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
				 <a href="${root }index?formpath=memberInsert" >회원가입</a>&nbsp;&nbsp;
				  <a href="${root }index?formpath=memJoinForm">취소</a>
			 	<input type=button class="join_button" value='회원 가입' style="width: 120px;" />
				<input type=reset value='취소' style="width: 120px; "/>
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
			$("#join_form").attr("action", "${root }index?formpath=memJoinForm");
			$("#join_form").submit();
		});
	});
	</script>	
			
</body></html>