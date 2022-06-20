<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url var="root" value="/" />


<html lang="ko" class="webkit chrome win  retina ratio1_25 js portrait tablet"><head>
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>The ShinNanDa Hotels</title>

<link href="${pageContext.request.contextPath}/resources/css/mem/common.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/css/mem/common/print.css" rel="stylesheet" type="text/css" media="print">
<link href="${pageContext.request.contextPath}/resources/css/mem/mainImages_ko.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/css/mem/common/reserve_new.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/css/mem/common/lang-ko_N.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/css/common/swiper.min.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/css/common/new_2019.css" rel="stylesheet" type="text/css">

<style>
.footer_logo a{ margin:auto; width:250px; height:78px; position:relative; left: -1%; }
</style>
<meta name="description" content="The Shilla Hotels &amp; Resorts"><!-- <meta name="keywords" content="The Shilla Hotels &amp; Resorts" /> -->
<meta name="og:title" content="The Shilla Hotels &amp; Resorts">

</head>

<body>

<!-- <div id="popCalendarDiv" class="popCalendar" style="display:none"></div>  -->

<!-- js 파일
<script src="/js/json2.js" charset="UTF-8"></script>
<script src="/js/jquery-1.8.3.js" charset="UTF-8"></script>
<script src="/js/uniform.js" charset="UTF-8"></script>
<script src="/js/browser.js" charset="UTF-8"></script>
<script src="/js/style.hub.js" charset="UTF-8"></script>
<script src="/js/swiper.min.js"></script>
<script src="/js/style.advance.js" charset="UTF-8"></script>개선 : js 추가
<script src="/js/resv/advResvCalendar.js" charset="UTF-8"></script> [2019_모션추가]4 달력 고도화

<script src="/index.do/secu/messageJs.do" charset="UTF-8"></script>
	<script src="/js/common.js" charset="UTF-8"></script>
<script src="/js/commonEx.js" charset="UTF-8"></script>
<script src="/js/jquery.slides.js" charset="UTF-8"></script>
<script src="/js/mbr/popLogin.js" charset="UTF-8"></script><div id="popLoginDiv" class="popLogin" style="display:none"></div>
<script src="/js/mbr/forIdPwd.js" charset="UTF-8"></script><div id="popForIdPwDiv" style="display:none">0</div>
<script src="/js/resv/resvCalendar.js" charset="UTF-8"></script><script src="/js/resv/resv.js" charset="UTF-8"></script><script src="/js/resv/din.js" charset="UTF-8"></script><script src="/js/ask/ask.js" charset="UTF-8"></script><script src="/js/mbr/zipno.js" charset="UTF-8"></script><div id="zipNoLayerDiv" class="popLogin" style="display:none"></div><script src="/js/offers/makeAPlan.js" charset="UTF-8"></script><div id="makeAPlanLayerDiv" class="popLogin" style="display:none"></div><script src="/js/mbr/mbr_join.js" charset="UTF-8"></script><script src="/js/jquery.cookie.js" charset="UTF-8"></script>
<script src="/js/placeholders.js" charset="UTF-8"></script>
<script src="/js/dining_new2020.js" charset="UTF-8"></script> 
-->
<!--[if IE 6]><script src="/js/png24.js"></script><![endif]-->

<!-- <script type="text/javascript">

	</script> -->

<!--  운영인 경우만 Google Analytics 호출
Google Tag Manager
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','GTM-T3LBJ26');</script>
End Google Tag Manager

Global site tag (gtag.js) - Google Analytics

<script async="" src="https://www.googletagmanager.com/gtag/js?id=UA-119797985-1"></script>
<script>

  window.dataLayer = window.dataLayer || [];

  function gtag(){dataLayer.push(arguments);}

  gtag('js', new Date());



  gtag('config', 'UA-119797985-1');

</script> 
-->


<script type="application/ld+json">
 {
  "@context": "http://schema.org",
  "@type": "Person",
  "name": "신라호텔",
  "url": "http://www.shillahotels.com",
  "sameAs": [
    "https://www.facebook.com/theshillahotels",
    "https://www.instagram.com/shillahotels/",
    "https://www.youtube.com/channel/UCPf8mXllIYwEIv8e_A2rOjA",
    "https://play.google.com/store/apps/details?id=net.shilla.shlapp&hl=ko"
  ]
 }
 </script>



<!-- Google Tag Manager (noscript) -->
<!-- <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-T3LBJ26"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript> -->
<!-- End Google Tag Manager (noscript) -->

	<!--<dl class="skipNavi">
 <dt>THE SHILLA 바로가기 메뉴</dt><dd><a class="goContents" href="#seoulBtn">본문으로 바로가기</a></dd></dl> -->

<div class="subWrap subWrapHub">
	<div class="head headHub">
		<script type="text/javascript">
	$(document).ready(function(){
		$(".findBtn a").click(function(){
		 	$(".findBox").slideToggle("fast");
		});
	});
	function ssoLogout() {
		location.href = "/index.do/login/SSOLogout.do";

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


<div class="header">
  <div class="footer_logo">
         <a href="${root }"><img  class="logo" src="${pageContext.request.contextPath}/resources/images/logoSND2.gif" width="100" height="78"></a>
  </div>
<!-- 
  <h1 class="Alogo"><a href="${root }">THE SHINNANDA HOTELS</a></h1>
 -->
  <!-- 로그인 -->
  <span class="loginArea">
  	<c:choose>
  		<c:when test="${sessionScope.userId == null || sessionScope.userId == '' }">
  			<a href="${root }index?formpath=login">로그인</a>
		    <a href="${root }index?formpath=memJoinAgreeForm">신난다리워즈 가입</a>
  		</c:when>
  		<c:otherwise>
			<a href="${root }logoutProc">로그아웃</a>
		    <a href="${root }memListResvProc">마이페이지</a>
  		</c:otherwise>
  	</c:choose>
  </span>
  <!-- 예약확인 추가 -->
   <div class="resvConfirm">
		  <div class="resvConBox">
			  <a class="btn" href="${root }memListResvProc">예약확인</a>
			  <!-- <ul class="list">
				  <li class="dn1 first last">
					  <ul class="listSt">
						  <li class="st first st1">
							  <a href="/membership/mbr/login/memLogin.do?resvYn=Y&amp;resvType=R"><span>객실객실</span></a>
						  </li>
						  <li class="st last st2">
						  	  <a href="/membership/mbr/login/memLogin.do?resvYn=Y&amp;resvType=D"><span>다이닝다이닝</span></a>
						  </li>
					  </ul>
				  </li>
			  </ul> -->
		  </div>
	</div>
  <!-- 예약확인 추가 -->
  <!-- 한국어 영어 일어 시작  -->
    <div class="language">
		<div class="globalBox">
			<a class="btn" href="#">한국어</a><ul class="list">
				<!--<li class="dn1 first last">
					<ul class="listSt">
						 <li class="st first st3"><a href="/hub/cmm/setLang.do?lang=en"><span>English</span></a></li><li class="st st4"><a href="/hub/cmm/setLang.do?lang=ja"><span>日本語</span></a></li><li class="st last st5"><a href="/hub/cmm/setLang.do?lang=zh"><span>简体中文</span></a></li></ul> 
				</li> -->
			</ul>
		</div>
    </div>
    <script type="text/javascript">
        jQuery(function() {
            jQuery('.dn1 > ul > li').each(function(idx) {
                jQuery(this).addClass('st'+(idx+1));
            });
        });
    </script>

	<!-- Find a hotel 시작 -->
	<div class="hotelBox_wrap"><!-- 개선 : class="hotelBox_wrap"변경 -->
<%-- 		<a class="btn" href="${root}reservationMainProc">호텔찾기</a>
 --%>
	</div>

	<!-- 예약 팝업 추가 -->
	<div class="rsvBox_wrap rsvBtn">
		<a class="btn" href="${root }reservationMainProc">예약<!-- 예약 --></a>
		<div class="newDim"></div>
		<div class="rsvBox_N">
			<div class="hHead">
				<ul class="htTab">
					<li class="tab1 first last"><a href="#"><span>예약<!-- 예약 --></span></a></li>
				</ul>
			</div>
			<!-- <div class="hCon">
				<div class="list1">
					<ul>
						<li class="rsvHotelGo first"><a href="/seoul/resv/rpm/memSetStep1.do">객실 예약객실 예약</a></li>
						<li class="rsvDiningGo last"><a href="/fbresv/web/memDiningStepWait.do">다이닝 예약다이닝 예약</a></li>
					</ul>
				</div>
			</div> 
			<a href="#" class="btnClose">닫기</a>-->
		</div>
	</div>
	<!-- // 예약 팝업 추가 -->
  <div class="hubMenu">
    <ul>
        <li class="first"><span class="hMenu1"><a href="/membership/inquires/aboutShilla/memOverView.do">호텔신라 소개</a></span></li>
        <li><span class="hMenu2"><a href="/membership/inquires/contactus/memIndex.do">고객문의</a></span></li>
        <li class="last"><span class="hMenu3">
		<a href="/membership/offers/pack/memListRewardsPack.do">신라리워즈</a>
			</span>
        </li>
    </ul>
  </div>
</div>
</div>
	</div>

	</body>
	</html>
