<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="ko" class="webkit chrome win  retina ratio1_25 js portrait tabletwide"><head>
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>로그인 | The Shilla Hotels &amp; Resorts</title>
<%-- <link href="${pageContext.request.contextPath}/css/mem/common.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/css/mem/title_ko.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/css/mem/common/print.css" rel="stylesheet" type="text/css" media="print">
<link href="${pageContext.request.contextPath}/css/mem/mainImages_ko.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/css/mem/common/reserve_new.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/css/mem/common/lang-ko_N.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/css/mem/common/btn_ko.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/css/common/swiper.min.css" rel="stylesheet" type="text/css"> --%>
<link href="${pageContext.request.contextPath}/resources/css/csh.css" rel="stylesheet" type="text/css">

<meta name="description" content="로그인"><!-- <meta name="keywords" content="로그인" /> -->
<meta name="og:title" content="로그인 | The Shilla Hotels &amp; Resorts">
<!-- 검색엔진용 추가 180524 -->
<meta name="keywords" content="신라스테이,신라호텔,서울신라호텔,제주신라호텔,호텔신라,럭셔리호텔,신라리워즈">
<meta name="description" content="국내 최고 럭셔리 호텔인 호텔신라는 신라호텔과 신라스테이 브랜드를 보유하고 있습니다.">
<meta name="subject" content="신라스테이 소개,신라 리워즈 안내,브랜드 및 호텔 소개,객실 패키지 안내,온라인 최저가 예약,">
<script type="text/javascript" async="" src="https://www.google-analytics.com/analytics.js"></script><script gtm="GTM-T3LBJ26" type="text/javascript" async="" src="https://www.google-analytics.com/gtm/optimize.js?id=OPT-NQ9CLZ3"></script><script type="text/javascript" async="" src="https://www.googletagmanager.com/gtag/js?id=G-30Y6N61ES4&amp;l=dataLayer&amp;cx=c"></script><script type="text/javascript" async="" src="https://www.google-analytics.com/analytics.js"></script><script async="" src="https://www.googletagmanager.com/gtm.js?id=GTM-T3LBJ26"></script><script type="text/javascript">

document.write("<div id='popCalendarDiv' class='popCalendar' style='display:none' ></div>");

</script>
</head><body class="subBody joinBody"><div id="popCalendarDiv" class="popCalendar" style="display:none"></div>
<jsp:useBean id="member" class="com.care.hotel.member.DTO.memberDTO"/>
<jsp:setProperty property="*" name="member"/>
<script src="/js/json2.js" charset="UTF-8"></script>
<script src="/js/jquery-1.8.3.js" charset="UTF-8"></script>
<script src="/js/uniform.js" charset="UTF-8"></script>
<script src="/js/browser.js" charset="UTF-8"></script>
<script src="/js/style.hub.js" charset="UTF-8"></script>
<script src="/js/swiper.min.js"></script>
<script src="/js/style.advance.js" charset="UTF-8"></script><!-- 개선 : js 추가 -->
<script src="/js/resv/advResvCalendar.js" charset="UTF-8"></script> <!-- [2019_모션추가]3 달력 고도화 -->
<script src="/index.do/secu/messageJs.do" charset="UTF-8"></script>
	<script src="/js/common.js" charset="UTF-8"></script>
<script src="/js/commonEx.js" charset="UTF-8"></script>
<script src="/js/jquery.slides.js" charset="UTF-8"></script>
<script src="/js/mbr/popLogin.js" charset="UTF-8"></script><div id="popLoginDiv" class="popLogin" style="display:none"></div>
<script src="/js/mbr/forIdPwd.js" charset="UTF-8"></script><div id="popForIdPwDiv" style="display: block;" tabindex="-1"></div>
<div class="popLayer popLayerFindId">

	<div class="popHead">
		<h2 class="tit">신난다리워즈 아이디 찾기</h2>
		<div class="btn"><a class="btnClose" href="${root }index?formpath=login"><span>닫기</span></a></div>
	</div>
	<div class="popCtn">
		
			<p class="msg1">신난다리워즈 아이디 찾기 결과는 다음과 같습니다.</p>
			<div class="formBox">
				<dl>
					<dd>
						<strong>${msg}</strong>
					</dd>
				</dl>	
			</div>
			
			<div class="btnList">
				<a href="${root }index?formpath=login" class="btnSubmit"><span>확인</span></a>
			</div>
			<!--   -->
		
	</div>
		<!-- 아이디찾기 결과선택 -->
		
</div>
<!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-T3LBJ26"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->

<dl class="skipNavi">
	<dt>THE SHILLA 바로가기 메뉴</dt><dd><a class="goContents" href="#contents">본문으로 바로가기</a></dd></dl>


	
	<div class="contain">

<!-- 예약 조회 안내 레이어 팝업 -->
<div id="ResvInquirypPop" style="display:none;">
	<div class="popLayer popLayerRegistCard new_popLayer diningPop" tabindex="-1" style="width: 430px;">
		<div class="popHead">
			<h2 class="tit">예약 인원 입력 안내<!-- 예약 조회 안내 안내 --></h2>
			<div class="btn"><a class="btnClose" href="#" onclick="pc.layerPopup.closePop('#ResvInquirypPop'); return false;"><span>닫기</span></a>
			</div>
		</div>
		<div class="popCtn new_rsvBox diningPop" style="width: 430px;">
			<p class="checkTxt"><span>조회된 예약정보가 없습니다.<br> 예약 정보 및 예약처를 다시 확인해주십시오.</span></p> 
<p>※ 온라인 예약에 한 해 조회되며, 예약 센터를 통한 예약은 온라인에서 조회되지 않습니다.</p><div class="btnBox">
				<a href="#" onclick="pc.layerPopup.closePop('#ResvInquirypPop'); return false;"><img src="${pageContext.request.contextPath}/images/ko/mem/new_2020/resv_confirm.jpg" alt="확인"></a>
			</div>
		</div>
		<div class="btnAcc">
			<a class="btnClose" href="#" onclick="pc.layerPopup.closePop('#ResvInquirypPop'); return false;"><span>닫기</span></a>
		</div>
	</div>
	<div class="mdScreen" style="display: block; height: 1292px;"></div>
</div>
<!-- // 예약 조회 안내 레이어 팝업 -->

<div class="container">
	<div class="loginBox contents" id="contents">

		<div class="location rgt">
			<p class="list"><span class="crPosit">현재 페이지 위치 : </span> &gt; <strong>로그인</strong></p>
		</div>
		<div class="headTit">
			<h4 class="tit">로그인</h4>
		</div>

		<div class="top">
			<h1 class="logo"><span><p>호텔신라 홈페이지를 방문해 주셔서 감사합니다.<br>회원 가입시 입력하신 아이디와 비밀번호를 입력해 주시기  바랍니다.</p><p>※ 호텔신라의 회원이 되시면 다양한 신라호텔의 정보 및  서비스 혜택을 받으실 수 있습니다.</p></span></h1>
			<div class="info">
				<p>호텔신라 홈페이지를 방문해 주셔서 감사합니다.<br>회원 가입시 입력하신 아이디와 비밀번호를 입력해 주시기  바랍니다.</p><p>※ 호텔신라의 회원이 되시면 다양한 신라호텔의 정보 및  서비스 혜택을 받으실 수 있습니다.</p></div>
		</div>

		<!--  로그인 변경 2020 -->
		<ul class="tabForm">
			<div class="loginTab">
				<ul>
					<li class="on first" rel="rMem" idenmem="Y">
						<a href="#"><img src="${pageContext.request.contextPath}/images/ko/mem/new_2020/login_mem_on.jpg" alt="회원">회원</a>
					</li>
					<li rel="rMemNone" idenmem="N" class="last">
						<a href="#"><img src="${pageContext.request.contextPath}/images/ko/mem/new_2020/login_nomem_off.jpg" alt="비회원">비회원</a>
					</li>
				</ul>
			</div>
			<div class="tabContent">
				<ul>
					<li class="ctn ctnOn first" id="rMem">
						<div class="allBox">
							<div class="box">
								<div class="formBox">
									<div class="cBox">
										<fieldset class="loginSet">
											<form id="loginForm" action="/login/login.secu" method="POST">
											<input type="hidden" id="ciYn" name="ciYn" autocomplete="off" value="">
											<input type="hidden" id="birth" name="birth" autocomplete="off" value="">
											<input type="hidden" id="titlCd" name="titlCd" autocomplete="off" value="">
											<input type="hidden" id="ipinDI" name="ipinDI" autocomplete="off" value="">
											<input type="hidden" id="ipinCI" name="ipinCI" autocomplete="off" value="">
											<input type="hidden" id="mbno" name="mbno" autocomplete="off" value="">
												<legend>로그인입력폼입니다</legend>
												<div class="inputForm">
													<div class="inputId"><label for="id">신라리워즈 번호 또는 아이디</label><input type="text" class="id input uiform text" id="j_username" name="j_username" value="" onkeydown="javascript: if(event.keyCode == 13) loginSubmit()" title="신라리워즈 번호 입력" autocomplete="off"></div>
													<div class="inputPw"><label for="pw">비밀번호</label><input type="password" class="pw input uiform password" id="j_password" name="j_password" value="" maxlength="20" onkeydown="javascript: if(event.keyCode == 13) loginSubmit()" title="비밀번호 입력" autocomplete="off"></div>
												</div>
												<div class="checker" id="uniform-rememberId"><span><input type="checkbox" class="idSave uiform checkbox" id="rememberId" name="rememberId" value="" autocomplete="off"></span></div>
												<label class="idSave" for="idSave"> 신라리워즈 번호 또는 아이디 저장</label>
												<div class="loginBtn"><a href="javascript:loginSubmit();" title="Login"><img src="${pageContext.request.contextPath}/images/ko/common/join/loginBtnLogin.gif" alt="로그인" class="btnLogin"></a></div>
												<p class="msg" id="pwNot" style="display:none">아이디와 비밀번호가 일치하지 않습니다.<br>연속 5회 오류시(로그인 날짜가 달라도 해당됨) 로그인이 제한됩니다.<br>제한해제를 위해서는 임시 비밀번호를 발급받으시거나 비밀번호를 재설정해주시기 바랍니다.</p><br>
												<p class="msg" id="pwError" style="display:none">비밀번호를 연속 5회 잘못 입력하셨습니다. 임시 비밀번호를 발급받아 이용해주시기 바랍니다.</p>
												<input type="hidden" name="nextURL" id="nextURL" autocomplete="off" value="">
											</form>
										</fieldset>
										<div class="btn">
											<a class="btnJoin" href="/mem/mbr/join/memViewBrowsewrap.do"><span>신라리워즈 가입</span></a>
											<a href="javascript:popForId('mem');" id="popForIdButton" class="btnLostId"><span>신라리워즈 번호 찾기</span></a>
											<a href="javascript:popForPw('mem');" id="popForPwButton" class="btnLostPw"><span>비밀번호찾기</span></a>
										</div>
									</div>
								</div>
							</div>
							<div class="loginT">
								<p>이메일, 연락처 등의 정보가 변경되면 웹사이트에서 회원정보를 수정해주시기 바랍니다.</p>
							</div>
							<div class="beLogin">
								<p class="tpBox">※ 현장가입 및 기존 멤버십에서 전환하신 회원님께는 온라인 계정을 활성화 하시면 로그인 하실 수 있습니다.</p>
								<p class="btnBox"><a href="javascript:fnCmdActi();" class="btnOnline"><span>온라인 계정 등록하기</span></a></p>
							</div>
						</div>
					</li>
					<li class="ctn ctn2  last" id="rMemNone">
						<div class="allBox">
							<div class="box">
								<div class="loginTabl rBtn">
									<div class="radio" id="uniform-rMember"><span class="checked"><input type="radio" class="rMember uiform radio" id="rMember" name="rMember" checked="" value="Y" autocomplete="off"></span></div>
									<label class="rMember mgr22" for="rMember">객실<!-- 객실 예약 --></label>
									<div class="radio" id="uniform-rMemberNone"><span><input type="radio" class="rMemberNone uiform radio" id="rMemberNone" name="rMember" value="N" autocomplete="off"></span></div>
									<label class="rMemberNone" for="rMemberNone">다이닝<!-- 다이닝 예약 --></label>
								</div>
								<div class="formBox">
									<div class="cBox">
										<fieldset class="loginSet">
											<form id="loginResvForm" action="/membership/resv/rpm/memListNonMbrResv.do" method="POST">
												<legend>비회원(예약확인 입력폼입니다)</legend>
												<div class="inputFormNo formOn" id="roomR">
													<div class="inputId">
														<label for="rNum">예약번호</label><input type="text" onkeyup="return removeChar(event)" onkeydown="return onlyNumber(event)" class="id rNum input uiform text" id="resvId" name="resvId" value="" autocomplete="off">
													</div>
													<div class="inputPw">
														<label for="rName1">first name </label><input type="text" value="First name(이름)" id="guestEnFnm" name="guestEnFnm" style="text-transform: uppercase;" onkeyup="this.value=this.value.replace(/[^a-z]/gi,'');" class="rName1 input uiform text" autocomplete="off" title="성을 제외한 이름 입력">
														<label for="rName2">Last name </label><input type="text" value="Last name(성)" id="guestEnLnm" name="guestEnLnm" class="rName2 input uiform text" style="text-transform: uppercase;" onkeyup="this.value=this.value.replace(/[^a-z]/gi,'');" autocomplete="off" onkeydown="javascript: if(event.keyCode == 13) loginSubmit();" title="이름을 제외한 성 입력">
													</div>
												</div>
												<div class="loginBtn"><a href="javascript:loginSubmit();" title="Login"><img src="${pageContext.request.contextPath}/images/ko/common/join/loginBtnLogin.gif" alt="로그인" class="btnLogin"></a></div>
												</form>
											<!-- // 객실 예약 -->

											<!-- 2020-11-26 인풋박스 값 변경 -->
											<!-- 다이닝 예약 -->
											<form id="loginDiningForm" action="/membership/resv/rpm/memListNonMbrResv.do" method="POST">
												<input type="hidden" id="visitName" name="visitName" autocomplete="off">
												<input type="hidden" id="resvId" name="resvId" autocomplete="off">
												<input type="hidden" id="resvTypeCd" name="resvTypeCd" value="N" autocomplete="off">
												<div id="diningR" class="inputFormNo ">
													<div class="inputId">
														<label for="rNum">예약번호</label>
														<input type="text" onkeydown="javascript: if(event.keyCode == 13) loginSubmit()" class="id rNum input uiform text" id="resvCode" name="resvCode" onkeyup="this.value=this.value.replace(/[^A-Z0-9]/gi,'');" autocomplete="off">
													</div>
													<div class="inputPw">
															<label for="rName3">이름</label>
															<input type="text" onkeydown="javascript: if(event.keyCode == 13) loginSubmit()" style="ime-mode:active" id="guestNm" value="이름" onkeyup="this.value=this.value.replace(/[^가-힣ㄱ-ㅎㅏ-ㅣ]/gi,'');" class="rName3 input uiform text" autocomplete="off">
														</div>
													</div>
											</form>
											<!-- // 다이닝 예약 -->
											<div class="loginBtn">
												<a href="javascript:loginSubmit();" title="Login">
													<img src="${pageContext.request.contextPath}/images/ko/common/join/loginBtnLogin.gif" alt="로그인" class="btnLogin">
												</a>
											</div>
										</fieldset>
									</div>
								</div>
							</div>
						</div>
						<div class="loginT diningT" style="display: none;line-height: 16px;"><p>※ 온라인 예약에 한해 조회 가능합니다.<!-- ※ 온라인 예약에 한해 조회 가능합니다. --><br>
							※ 신라스테이 예약확인/취소는 해당 지점으로 전화 주시기 바랍니다.<!-- ※ 신라스테이 예약확인/취소는 해당 지점으로 전화 주시기 바랍니다. --></p>
						</div>
					</li>
				</ul>
			</div>
		</ul> <!-- class="tabForm" -->
		<!-- // 로그인 변경 2020 -->
		<input type="hidden" id="idenMem" value="Y" autocomplete="off">
<!-- 					<div class="loginT"> -->
<!-- 					</div> -->
</div>
</div>
<!-- 예약경로 안내 팝업 -->
<div id="ResvRouteInfo" style="display:none">
	<div class="popLayer ResvRouteInfo" tabindex="-1">
		<div class="popHead">
			<h2 class="tit">예약경로 안내</h2>
			<div class="btn"><a class="btnClose" href="#none" onclick="closePopup('ResvRouteInfo');"><span>닫기</span></a></div>
		</div>
		<div class="popCtn">
            <p>해당 예약은 신라호텔 온라인(홈페이지, 모바일 APP) 이외의 경로로 예약되었습니다.<br>상세 정보는 각 예약처로 확인 부탁드립니다.</p>
		</div>
		<div class="btnAcc">
			<a class="btnClose" href="#none" onclick="closePopup('ResvRouteInfo');"><span>닫기</span></a>
		</div>
	</div>
	<div class="mdScreen" style="height: 1292px; display: block;"></div>
</div>
<div id="reserveNotice" style="display:none"></div><div id="emailAdCollectPop" style="display:none"></div><div id="footerEmailLayer" style="display:none"></div><div class="foot footHub">
			<script type="text/javascript">
	function openIdInfo() {
		var url = "http://www.ftc.go.kr/bizCommPop.do?wrkr_no=2038143363";
		window.open(url, "bizCommPop", "width=750, height=700, scrollbars=1");
	}
</script>
</body></html>