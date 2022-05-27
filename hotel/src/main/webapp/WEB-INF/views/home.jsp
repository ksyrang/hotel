<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="ko" class="webkit chrome win  retina ratio1_25 js portrait tablet"><head>
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>The Shilla Hotels &amp; Resorts</title>
<link href="${pageContext.request.contextPath}/resources/css/mem/common.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/css/mem/common/print.css" rel="stylesheet" type="text/css" media="print">
<link href="${pageContext.request.contextPath}/resources/css/mem/mainImages_ko.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/css/mem/common/reserve_new.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/css/mem/common/lang-ko_N.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/css/common/swiper.min.css" rel="stylesheet" type="text/css">
<meta name="description" content="The Shilla Hotels &amp; Resorts"><!-- <meta name="keywords" content="The Shilla Hotels &amp; Resorts" /> -->
<meta name="og:title" content="The Shilla Hotels &amp; Resorts">
<!-- 검색엔진용 추가 180524 -->
<meta name="keywords" content="신라스테이,신라호텔,서울신라호텔,제주신라호텔,호텔신라,럭셔리호텔,신라리워즈">
<meta name="description" content="국내 최고 럭셔리 호텔인 호텔신라는 신라호텔과 신라스테이 브랜드를 보유하고 있습니다.">
<meta name="subject" content="신라스테이 소개,신라 리워즈 안내,브랜드 및 호텔 소개,객실 패키지 안내,온라인 최저가 예약,">
<script type="text/javascript" async="" src="https://www.google-analytics.com/analytics.js"></script><script gtm="GTM-T3LBJ26" type="text/javascript" async="" src="https://www.google-analytics.com/gtm/optimize.js?id=OPT-NQ9CLZ3"></script><script type="text/javascript" async="" src="https://www.googletagmanager.com/gtag/js?id=G-30Y6N61ES4&amp;l=dataLayer&amp;cx=c"></script><script type="text/javascript" async="" src="https://www.google-analytics.com/analytics.js"></script><script async="" src="https://www.googletagmanager.com/gtm.js?id=GTM-T3LBJ26"></script><script type="text/javascript">

document.write("<div id='popCalendarDiv' class='popCalendar' style='display:none' ></div>");


function getDaysInMonth(year, month) {
  return [31,((!(year % 4 ) && ( (year % 100 ) || !( year % 400 ) ))?29:28),31,30,31,30,31,31,30,31,30,31][month-1];
}

function getDayOfWeek(year, month, day) {
  var date = new Date(year,month-1,day);
  return date.getDay();
}

this.clearDate = clearDate;
function clearDate() {
  dateField.value = '';
  hide();
}

 function getCurrentYear() {
  var year = new Date().getFullYear();
  if(year < 1900) year += 1900;
  return year;
}

function getCurrentMonth() {
  return new Date().getMonth() + 1;
} 

function getCurrentDay() {
  return new Date().getDate();
}

var thisYear = getCurrentYear();
var thisMonth = getCurrentMonth();
var thisDay = getCurrentDay();


var selectedYear = thisYear;
var selectedMonth = thisMonth;
var selectedDay = "";


function calendarDrawTable( calenderDivId , currentYear , currentMonth , currentDay ) {

	if(currentMonth == 0){
		currentYear = currentYear - 1;
		currentMonth = 12;
	}

	var lastMonth =  currentMonth;

	if(currentMonth == 12){
		lastMonth = 1; 
	}else{
		lastMonth = lastMonth + 1;
	}

	var dayOfMonth = 1;
	var validDay = 0;
	var startDayOfWeek = getDayOfWeek(currentYear, currentMonth, dayOfMonth);
	var daysInMonth = getDaysInMonth(currentYear, currentMonth);
	
	var months = [];
	months.push(messages["javascript.calendar.january"]);
	months.push(messages["javascript.calendar.february"]);
	months.push(messages["javascript.calendar.march"]);
	months.push(messages["javascript.calendar.april"]);
	months.push(messages["javascript.calendar.may"]);
	months.push(messages["javascript.calendar.june"]);
	months.push(messages["javascript.calendar.july"]);
	months.push(messages["javascript.calendar.august"]);
	months.push(messages["javascript.calendar.september"]);
	months.push(messages["javascript.calendar.october"]);
	months.push(messages["javascript.calendar.november"]);
	months.push(messages["javascript.calendar.december"]);

    var table = "	<div class='dateCtl'>";

	table = table + "	<div class='datePrev'><a class='btnPrev' href='javascript:calenderView(0,-1);' title='" + messages["javascript.calendar.pre.month.title"] + "'>&lt;</a></div>";
	table = table + "	<div class='dateNow'>"+currentYear+"."+months[currentMonth-1]+"</div>";
	table = table + "	<div class='dateNext'><a class='btnNext' href='javascript:calenderView(0,1);' title='" + messages["javascript.calendar.next.month.title"] + "'>"+" &gt;</a></div>";
	table = table + "	</div>";

    table = table + "	<table summary='" + messages["javascript.calendar.next.month.title"] + "'>";
    table = table + "	<caption>" + messages["javascript.calendar.table.caption"].replaceMsg([months[currentMonth-1]]) + "</caption>";
    table = table + "	<thead>";
    table = table + "		<tr>";
    table = table + "		<th scope='col' class='sun'><span>" + messages["javascript.calendar.table.col.sun"] + "</span></th>	";
    table = table + "		<th scope='col' class='mon'><span>" + messages["javascript.calendar.table.col.mon"] + "</span></th>";
    table = table + "		<th scope='col' class='tue'><span>" + messages["javascript.calendar.table.col.tue"] + "</span></th>";
    table = table + "		<th scope='col' class='wed'><span>" + messages["javascript.calendar.table.col.wed"] + "</span></th>";
    table = table + "		<th scope='col' class='thu'><span>" + messages["javascript.calendar.table.col.thu"] + "</span></th>";
    table = table + "		<th scope='col' class='fri'><span>" + messages["javascript.calendar.table.col.fri"] + "</span></th>";
    table = table + "		<th scope='col' class='sat'><span>" + messages["javascript.calendar.table.col.sat"] + "</span></th>";
    table = table + "	</tr>	";
    table = table + "	</thead>	";
    table = table + "	<tbody>	";
    
    for(var week=0; week < 6; week++) {
      table = table + "<tr>";
      for(var dayOfWeek=0; dayOfWeek < 7; dayOfWeek++) {
        if(week == 0 && startDayOfWeek == dayOfWeek) {
          validDay = 1;
        } else if (validDay == 1 && dayOfMonth > daysInMonth) {
          validDay = 0;
        }

        if(validDay) {
          

		  var viewMonth = currentMonth;
		  var viewDay = dayOfMonth;
		  
		  if(currentMonth < 10 && viewMonth.length == 1 ){
			viewMonth = "0"+currentMonth;
		  }
		  if(dayOfMonth < 10 && viewDay.length == 1 ){
			viewDay = "0"+dayOfMonth;
		  }

		  
		  if(thisYear == currentYear && thisMonth == viewMonth && thisDay == viewDay ){
	          table = table + "<td><span class='today' >";
		  }else{
	          table = table + "<td><span  >";
		  }
		  table = table + "<div id='count_"+currentYear+viewMonth+viewDay+"'></div>";
		  table = table + "<div id='"+currentYear+viewMonth+viewDay+"'>";
		  table = table + "<a href=\"#none\" title='" + currentYear + messages["javascript.calendar.year.title"] + viewMonth + messages["javascript.calendar.month.title"] + viewDay + messages["javascript.calendar.day.title"]+"' onclick='javascript:setCalendarControlDate("+currentYear+","+viewMonth+","+viewDay+");'  >"+viewDay+"</a>";
		  table = table + "</div>";
		  table = table + "</span></td>";
          dayOfMonth++;
        } else {
          table = table + "<td><span>&nbsp;</span></td>";
        }
      }
      table = table + "</tr>";
    }
    table = table + "</tbody>";


    table = table + "</table>";
    
    $("#"+calenderDivId).html(table);

  }
  

function calenderView( yearMovieNum , monthMovieNum ){
	
	if (yearMovieNum == 0 && monthMovieNum == 0) {
		selectedYear = thisYear;
		selectedMonth = thisMonth;
		selectedDay = thisDay;
	}else{
		selectedYear = new Date(selectedYear+yearMovieNum,selectedMonth+monthMovieNum,1).getFullYear();
		selectedMonth = new Date(selectedYear+yearMovieNum,selectedMonth+monthMovieNum,1).getMonth();
		selectedDay = new Date(selectedYear+yearMovieNum,selectedMonth+monthMovieNum,1).getDate();
	}
	calendarDrawTable( "popCalendarDiv" , selectedYear,selectedMonth,1);
	
}
//Ã¬Â¡Â°Ã­ÂÂ Ã¬ÂÂÃ¬ÂÂÃªÂ¸Â°ÃªÂ°ÂÃªÂ³Â¼ Ã¬Â¢ÂÃ«Â£ÂÃªÂ¸Â°ÃªÂ°ÂÃ¬ÂÂ´ Ã¬ÂÂÃ¬ÂÂÃ«ÂÂ Ã¬Â¢ÂÃ«Â£ÂÃªÂ¸Â°ÃªÂ°ÂÃ¬ÂÂ Ã¬ÂÂÃ«ÂÂ Ã­ÂÂ¨Ã¬ÂÂÃ«Â¥Â¼ Ã¬ÂÂ¬Ã¬ÂÂ©Ã­ÂÂ´Ã¬ÂÂ Ã«ÂÂ¬Ã«Â Â¥ Ã«ÂÂ¸Ã¬Â¶Â
function calenderEndView( yearMovieNum , monthMovieNum ){
	
	selectedYear = new Date(selectedYear,selectedMonth,1).getFullYear();
	selectedMonth = new Date(selectedYear,selectedMonth,1).getMonth();
	selectedDay = new Date(selectedYear,selectedMonth,1).getDate();
	
	calendarDrawTable( "popCalendarDiv" , selectedYear,selectedMonth,1);
	
}

var DATE_ID = "";
function popCalendarLayer(dateId , today){
	DATE_ID = dateId;
	if(today != '2022-05-25'){
		today = today.split("-");
		var originToday = "2022-05-25".split("-");
		
		var date1 = new Date(today[0],today[1],today[2]);
		var date2 = new Date(originToday[0],originToday[1],originToday[2]);
		
		var diff = date2 - date1;
		var currDay = 24 * 60 * 60 * 1000;// Ã¬ÂÂ * Ã«Â¶Â * Ã¬Â´Â * Ã«Â°ÂÃ«Â¦Â¬Ã¬ÂÂ¸Ã¬Â»Â¨
	    var currMonth = currDay * 30;// Ã¬ÂÂ Ã«Â§ÂÃ«ÂÂ¬
	    var currYear = currMonth * 12; // Ã«ÂÂ Ã«Â§ÂÃ«ÂÂ¬
	    
	    var year = parseInt(diff/currYear);
	    var month = parseInt(diff/currMonth);

		calenderEndView(  year , month);
	}else{
		
		calenderView(  "0" , "0");
		
	}
	var p = $("#"+dateId);
	var offset = p.offset();
	$("#popCalendarDiv").attr("style","z-Index:99999;display:;left:"+offset.left+"px; top:"+(offset.top+25)+"px;");
}
function setCalendarControlDate(yyyy,mm,dd){
	  if(mm < 10){
		  mm = "0"+mm;
	  }
	  if(dd < 10){
		  dd = "0"+dd;
	  }
	  $("#"+DATE_ID).val(yyyy+"-"+mm+"-"+dd);
	  
	  $("#popCalendarDiv").attr("style","z-Index:99999;display:none;");
}

function popCalendarLayerHide(){
	$("#popCalendarDiv").attr("style","z-Index:99999;display:none;");
}
</script></head><body class="mainBody"><div id="popCalendarDiv" class="popCalendar" style="display:none"></div>

<script src="/js/json2.js" charset="UTF-8"></script>
<script src="/js/jquery-1.8.3.js" charset="UTF-8"></script>
<script src="/js/uniform.js" charset="UTF-8"></script>
<script src="/js/browser.js" charset="UTF-8"></script>
<script src="/js/style.hub.js" charset="UTF-8"></script>
<script src="/js/swiper.min.js"></script>
<script src="/js/style.advance.js" charset="UTF-8"></script><!-- 개선 : js 추가 -->
<script src="/js/resv/advResvCalendar.js" charset="UTF-8"></script> <!-- [2019_모션추가]4 달력 고도화 -->

<script src="/index.do/secu/messageJs.do" charset="UTF-8"></script>
	<script src="/js/common.js" charset="UTF-8"></script>
<script src="/js/commonEx.js" charset="UTF-8"></script>
<script src="/js/jquery.slides.js" charset="UTF-8"></script>
<script src="/js/mbr/popLogin.js" charset="UTF-8"></script><div id="popLoginDiv" class="popLogin" style="display:none"></div>
<script src="/js/mbr/forIdPwd.js" charset="UTF-8"></script><div id="popForIdPwDiv" style="display:none">0</div>
<script src="/js/resv/resvCalendar.js" charset="UTF-8"></script><script src="/js/resv/resv.js" charset="UTF-8"></script><script src="/js/resv/din.js" charset="UTF-8"></script><script src="/js/ask/ask.js" charset="UTF-8"></script><script src="/js/mbr/zipno.js" charset="UTF-8"></script><div id="zipNoLayerDiv" class="popLogin" style="display:none"></div><script src="/js/offers/makeAPlan.js" charset="UTF-8"></script><div id="makeAPlanLayerDiv" class="popLogin" style="display:none"></div><script src="/js/mbr/mbr_join.js" charset="UTF-8"></script><script src="/js/jquery.cookie.js" charset="UTF-8"></script>
<script src="/js/placeholders.js" charset="UTF-8"></script>
<script src="/js/dining_new2020.js" charset="UTF-8"></script>
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
<script>

  window.dataLayer = window.dataLayer || [];

  function gtag(){dataLayer.push(arguments);}

  gtag('js', new Date());



  gtag('config', 'UA-119797985-1');

</script>
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
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-T3LBJ26"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->

<dl class="skipNavi">
	<dt>THE SHILLA 바로가기 메뉴</dt><dd><a class="goContents" href="#seoulBtn">본문으로 바로가기</a></dd></dl>

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
  <h1 class="logo">  <a href="/index.do">THE SHILLA HOTELS &amp; RESORTS</a></h1>
  <!-- 로그인 -->
  <span class="loginArea">
	<a href="/membership/mbr/login/memLogin.do">로그인</a>
    <a href="/mem/mbr/join/memViewBrowsewrap.do">신라리워즈 가입</a>
    </span>
  <!-- 예약확인 추가 -->
  <div class="resvConfirm">
		  <div class="resvConBox">
			  <a class="btn" href="#">예약확인<!-- 예약확인 --></a>
			  <ul class="list">
				  <li class="dn1 first last">
					  <ul class="listSt">
						  <li class="st first st1">
							  <a href="/membership/mbr/login/memLogin.do?resvYn=Y&amp;resvType=R"><span>객실<!-- 객실 --></span></a>
						  </li>
						  <li class="st last st2">
						  	  <a href="/membership/mbr/login/memLogin.do?resvYn=Y&amp;resvType=D"><span>다이닝<!-- 다이닝 --></span></a>
						  </li>
					  </ul>
				  </li>
			  </ul>
		  </div>
	  </div>
  <!-- 예약확인 추가 -->
  <!-- 한국어 영어 일어 시작  -->
    <div class="language">
		<div class="globalBox">
			<a class="btn" href="#">한국어</a><ul class="list">
				<li class="dn1 first last">
					<ul class="listSt">
						<li class="st first st3"><a href="/hub/cmm/setLang.do?lang=en"><span>English</span></a></li><li class="st st4"><a href="/hub/cmm/setLang.do?lang=ja"><span>日本語</span></a></li><li class="st last st5"><a href="/hub/cmm/setLang.do?lang=zh"><span>简体中文</span></a></li></ul>
				</li>
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
		<a class="btn" href="javascript:void(0);">호텔찾기 콤보상자</a>

		<!-- 개선 : 호텔찾기 -->
		<div class="hotelBox_N">
			<div class="hHead">
				<ul class="htTab">
   					<li class="tab2 on first"><a href="#"><span>권역별</span></a></li>
					<li class="tab1  last"><a href="#"><span>브랜드별</span></a></li><!-- a 선택시 li class on 추가 -->
				</ul>
			</div>

			<!-- 권역별 -->
			<div class="hCon" style="display:block;">
				<div class="list2">
					<dl>
						<dt><a href="#"><img src="${pageContext.request.contextPath}/images/ko/mem/new_2019/main_tab2_tit1.gif" alt="국내"></a></dt>
						<dd>
							<strong class="tit"><img src="${pageContext.request.contextPath}/images/ko/mem/new_2019/main_tab2_stit1.gif" alt="서울 강북"></strong>
							<ul>
								<li class="first"><a href="https://www.shilla.net/seoul/index.do?lang=ko">서울신라호텔</a></li>
													<li><a href="https://www.shillastay.com/gwanghwamun/index.do?lang=ko">신라스테이 광화문</a></li>
														<li><a href="https://www.shillastay.com/mapo/index.do?lang=ko">신라스테이 마포</a></li>
														<li class="last"><a href="https://www.shillastay.com/seodaemun/index.do?lang=ko">신라스테이 서대문</a></li>
														</ul>
						</dd>
						<dd>
							<strong class="tit"><img src="${pageContext.request.contextPath}/images/ko/mem/new_2019/main_tab2_stit2.gif" alt="서울 강남"></strong>
							<ul>
								<li class="first"><a href="https://www.shillastay.com/yeoksam/index.do?lang=ko">신라스테이 역삼</a></li>
														<li><a href="https://www.shillastay.com/seocho/index.do?lang=ko">신라스테이 서초</a></li>
														<li><a href="https://www.shillastay.com/guro/index.do?lang=ko">신라스테이 구로</a></li>
														<li class="last"><a href="https://www.shillastay.com/samsung/index.do?lang=ko">신라스테이 삼성</a></li>
														</ul>
						</dd>
						<dd>
							<strong class="tit"><img src="${pageContext.request.contextPath}/images/ko/mem/new_2019/main_tab2_stit3.gif" alt="전국"></strong>
							<ul>
								<li class="first"><a href="https://www.shilla.net/jeju/index.do?lang=ko">제주신라호텔</a></li>
													<li><a href="https://www.shillastay.com/dongtan/index.do?lang=ko">신라스테이 동탄</a></li>
														<li><a href="https://www.shillastay.com/cheonan/index.do?lang=ko">신라스테이 천안</a></li>
														<li><a href="https://www.shillastay.com/ulsan/index.do?lang=ko">신라스테이 울산</a></li>
														<li><a href="https://www.shillastay.com/haeundae/index.do?lang=ko">신라스테이 해운대</a></li>
														<li><a href="https://www.shillastay.com/seobusan/index.do?lang=ko">신라스테이 서부산</a></li>
														<li class="last"><a href="https://www.shillastay.com/jeju/index.do?lang=ko">신라스테이 제주</a></li>
													</ul>
						</dd>
					</dl>
					<dl>
						<dt><a href="#"><img src="${pageContext.request.contextPath}/images/ko/mem/new_2019/main_tab2_tit2.gif" alt="해외"></a></dt>
						<dd>
							<strong class="tit"><img src="${pageContext.request.contextPath}/images/ko/mem/new_2019/main_tab2_stit4.gif" alt="베트남"></strong>
							<ul>
								<li class="first last"><a href="https://www.shillamonogram.com/dnmg/index.do?lang=ko">신라모노그램 다낭</a></li>
												</ul>
						</dd>
					</dl>
				</div>
			</div>
			<!-- //권역별 -->


			<!-- 브랜드별 -->
			<div class="hCon" style="display:none;">
				<div class="list1">
					<dl>
						<dt><a href="/index.do"><img src="${pageContext.request.contextPath}/images/ko/mem/new_2019/main_tab1_tit1.gif" alt="THE SHILLA"></a></dt>
						<dd>
							<ul>
							<li class="first"><a href="https://www.shilla.net/seoul/index.do?lang=ko">서울신라호텔</a></li>
														<li class="last"><a href="https://www.shilla.net/jeju/index.do?lang=ko">제주신라호텔</a></li>
														</ul>
						</dd>
					</dl>
					<dl>
						<dt><a href="https://www.shillamonogram.com/mghub/index.do?lang=ko"><img src="${pageContext.request.contextPath}/images/ko/mem/new_2019/main_tab1_tit2.gif" alt="SHILLA MONOGRAM"></a></dt>
						<dd>
							<ul>
								<li class="first last"><a href="https://www.shillamonogram.com/dnmg/index.do?lang=ko">신라모노그램 다낭</a></li>
												</ul>
						</dd>
					</dl>
					<dl>
						<dt><a href="https://www.shillastay.com/"><img src="${pageContext.request.contextPath}/images/ko/mem/new_2019/main_tab1_tit3.gif" alt="SHILLA STAY"></a></dt>
						<dd>
							<ul>
								<li class="first"><a href="https://www.shillastay.com/gwanghwamun/index.do?lang=ko">신라스테이 광화문</a></li>
													<li><a href="https://www.shillastay.com/mapo/index.do?lang=ko">신라스테이 마포</a></li>
													<li><a href="https://www.shillastay.com/seodaemun/index.do?lang=ko">신라스테이 서대문</a></li>
													<li><a href="https://www.shillastay.com/yeoksam/index.do?lang=ko">신라스테이 역삼</a></li>
													<li><a href="https://www.shillastay.com/seocho/index.do?lang=ko">신라스테이 서초</a></li>
													<li><a href="https://www.shillastay.com/guro/index.do?lang=ko">신라스테이 구로</a></li>
													<li><a href="https://www.shillastay.com/samsung/index.do?lang=ko">신라스테이 삼성</a></li>
													<li><a href="https://www.shillastay.com/dongtan/index.do?lang=ko">신라스테이 동탄</a></li>
													<li><a href="https://www.shillastay.com/cheonan/index.do?lang=ko">신라스테이 천안</a></li>
													<li><a href="https://www.shillastay.com/ulsan/index.do?lang=ko">신라스테이 울산</a></li>
													<li><a href="https://www.shillastay.com/haeundae/index.do?lang=ko">신라스테이 해운대</a></li>
													<li><a href="https://www.shillastay.com/seobusan/index.do?lang=ko">신라스테이 서부산</a></li>
													<li class="last"><a href="https://www.shillastay.com/jeju/index.do?lang=ko">신라스테이 제주</a></li>
												</ul>
						</dd>
					</dl>
				</div>
			</div>
			<!-- //브랜드별 -->

			<a href="#" class="btnClose">닫기</a>
		</div>
		<!-- //개선 : 호텔찾기 -->

		<div class="list" style="display:none"><!-- 20180307 호텔찾기 가로형 변경 -->
		    <div class="hotel">
		        <h3><a href="/index.do" class="tit">The Shilla</a></h3>
		        <ul class="hotelListBox">
					<li class="first"><a href="http://www.shilla.net/seoul/index.do?lang=ko">서울신라호텔</a></li>
					<li class="last"><a href="http://www.shilla.net/jeju/index.do?lang=ko">제주신라호텔</a></li>
				</ul>
		    </div>
		    <div class="stay">
		        <h3><a href="http://www.shillastay.com/stayhub/index.do" class="tit">Shilla Stay</a></h3>
		        <ul class="stayListBox">
		            <li class="first">
		                <span class="tit">서울 강북<!-- 서울 강북 --></span>
		                <ul>
							<li class="first"><a href="http://www.shillastay.com/gwanghwamun/index.do?lang=ko">신라스테이 광화문</a></li>
							<li><a href="http://www.shillastay.com/mapo/index.do?lang=ko">신라스테이 마포</a></li>
							<li class="last"><a href="http://www.shillastay.com/seodaemun/index.do?lang=ko">신라스테이 서대문</a></li>
						</ul>
		                <span class="tit">서울 강남<!-- 서울 강남 --></span>
		                <ul>
							<li class="first"><a href="http://www.shillastay.com/yeoksam/index.do?lang=ko">신라스테이 역삼</a></li>
							<li><a href="http://www.shillastay.com/seocho/index.do?lang=ko">신라스테이 서초</a></li>
							<li class="last"><a href="http://www.shillastay.com/guro/index.do?lang=ko">신라스테이 구로</a></li>
						</ul>
		            </li>
		            <li class="last">
		                <span class="tit">전국<!-- 전국 --></span>
		                <ul>
							<li class="first"><a href="http://www.shillastay.com/dongtan/index.do?lang=ko">신라스테이 동탄</a></li>
							<li><a href="http://www.shillastay.com/cheonan/index.do?lang=ko">신라스테이 천안</a></li>
							<li><a href="http://www.shillastay.com/ulsan/index.do?lang=ko">신라스테이 울산</a></li>
							<li><a href="http://www.shillastay.com/haeundae/index.do?lang=ko">신라스테이 해운대</a></li>
							<li class="last"><a href="http://www.shillastay.com/jeju/index.do?lang=ko">신라스테이 제주</a></li>
						</ul>
		            </li>
		        </ul>
		    </div>
		</div><!-- 20180307 호텔찾기 가로형 변경 -->
	</div>

	<!-- 예약 팝업 추가 -->
	<div class="rsvBox_wrap rsvBtn">
		<a class="btn" href="#none">예약<!-- 예약 --></a>
		<div class="newDim"></div>
		<div class="rsvBox_N">
			<div class="hHead">
				<ul class="htTab">
					<li class="tab1 first last"><a href="#"><span>예약<!-- 예약 --></span></a></li>
				</ul>
			</div>
			<div class="hCon">
				<div class="list1">
					<ul>
						<li class="rsvHotelGo first"><a href="/seoul/resv/rpm/memSetStep1.do">객실 예약<!-- 객실 예약 --></a></li>
						<li class="rsvDiningGo last"><a href="/fbresv/web/memDiningStepWait.do">다이닝 예약<!-- 다이닝 예약 --></a></li>
					</ul>
				</div>
			</div>
			<a href="#" class="btnClose">닫기</a>
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
</div></div>
	</div>
	
	<script src="/js/jquery.flexslider-min.js" charset="UTF-8"></script><!-- 2017추가 -->
<script src="/js/jquery.jsSelect.js" charset="UTF-8"></script><!-- 2017추가 -->
<script type="text/javascript" src="/js/netfunnel/netfunnel.js" charset="utf-8"></script>
<script type="text/javascript">


$(window).on("load", function(){
	if("" != ""){
		alert("");
	}

	$(".mdScreen").hide();

	// 스크롤 생성 제거
	if($(".scroll.jspScrollable").data('jsp') !== undefined ){
		$(".scroll.jspScrollable").data('jsp').destroy();
	}

});


/// oks 추가 페이지 로드시 요일체크
function wok(nowDate){
	var week = [
		'일' 
		,'월'
		,'화'
		,'수'
		,'목'
		,'금'
		,'토'
		];
	var dayOfWeek = week[new Date(nowDate).getDay()];
	return dayOfWeek;
}


$(function(){

	$(".mdScreen").show();

	  var failMessage = function(){
	      return false;
	  },
	  preventEvent = {
	   "keydown" : function(e) {
	     var keycode = function(e){
	             return ('which' in e ? e.which : e.keyCode)
	         }(e),
	         ctrl_cv = (e.ctrlKey && (keycode == 118 || keycode == 86)),
	         shift_insert = (e.shiftKey && keycode == 45);
	         if (ctrl_cv || shift_insert){
	             return failMessage();
	         }
	   }
	   ,"mousedown" : function(e) {
	      var rightClick = (e.button == 2);
	        if(rightClick){
	           return failMessage();
	        }
	   }
	   ,"contextmenu" : function(e) {
	           return failMessage();
	   }
	 };
	$(document).bind(preventEvent);
}());

$(document).ready(function() {
	// 엔터방지
	$(document).keypress(function(e) { if (e.keyCode == 13) e.preventDefault(); }); // 엔터 막기

	
	var speedTime='5';
	
		speedTime = parseInt(speedTime)*1000;
	

	/*
	[2019_모션추가] 달력 고도화 start
	*/

	/*
	[2019_모션추가] 호텔 선택 레이어
	기능 : 호텔 선택 레이어 슬라이드
	- 호텔을 검색해주세요 (.inpHtSch) 클릭 시 -> 레이어 활성화
	- '.htData > li > a ' 버튼 클릭 시 -> '.flexslider .slides' 슬라이드 추가
	- 선택한 호텔 정보 출력('.ckList')
	※ .htData > li에 data 속성 추가 필요(*개발*) : data-hotelId="호텔Id", data-hotelTitle="호텔 명", data-addr="호텔 주소", data-imgUrl="슬라이드 이미지"
	※ 언어 변경 시  설정된 언어로 data-hotelTitle, data-addr 값 적용

	※ 검색 결과 없을 경우 호출 : pc.resvSelHotel.isData(false);
	※ 검색 결과 있을 경우 호출 : pc.resvSelHotel.isData(true);
	*/
	pc.resvSelHotel.init();

	var calOpts = {
			calDiv: "rsvCalendarDate",
			ckinYmdId: "ckinYmd",
			ckoutYmdId: "ckoutYmd",
			nightCntId: "nightCnt",
			resvDateInfoId: "resvDateInfo",
			ckinYmdInfoId: "ckinYmdInfo",
			ckoutYmInfodId: "ckoutYmdInfo",
			nightCntInfoId: "nightCntInfo",
			isMain : true,
			today: '2022-05-25' //오늘날짜
			// oks 추가 2019-10-21 어권 추가
			,lang : 'ko'
		};

	$.advResvCalendar.setDefaults(calOpts);

	// oks
	var ckinD = new Date();
	ckinD.setDate(ckinD.getDate()+parseInt(0));
	var ckinMm = ckinD.getMonth()+1 < 10 ? "0"+(ckinD.getMonth()+1) : ckinD.getMonth()+1;
	var ckinDd = ckinD.getDate() < 10 ? "0"+ckinD.getDate() : ckinD.getDate();

	var ckoutD = new Date();
	ckoutD.setDate(ckoutD.getDate()+(parseInt(0)+1));
	var ckoutMm = ckoutD.getMonth()+1 < 10 ? "0"+(ckoutD.getMonth()+1) : ckoutD.getMonth()+1;
	var ckoutDd = ckoutD.getDate() < 10 ? "0"+ckoutD.getDate() : ckoutD.getDate();

	// oks
	jQuery("#ckinYmd").val(ckinD.getFullYear()+"-"+ckinMm+"-"+ckinDd);
	jQuery("#ckoutYmd").val(ckoutD.getFullYear()+"-"+ckoutMm+"-"+ckoutDd);

	var dayIdx1 = new Date(ckinD.getFullYear(), ckinMm , ckinDd ).getDay();
	var dayIdx2 = new Date(ckoutD.getFullYear(), ckoutMm, ckoutDd ).getDay();

	$("#ckinDateInfo").text(ckinD.getFullYear()+"."+ckinMm+"."+ckinDd +" (" + wok($("#ckinYmd").val()) + ")");
	$("#ckoutDateInfo").text(ckoutD.getFullYear()+"."+ckoutMm+"."+ckoutDd+" (" + wok($("#ckoutYmd").val()) + ")");

	$("#nightCntInfo").text("1"+messages["javascript.calendar.night"]);
	$("#nightCnt").val("1");

	// end


	$('.mainVisualHub').flexslider({
		animation: "fade",
		slideshow: true,
		animationLoop: true,
		directionNav : true,
		prevText : '이전',
		nextText: '다음',
		controlNav :false,
		slideshowSpeed: speedTime,
		controlsContainer:'#mainVisualControl',
		start:function(){
			var idx=$('.mainVisualHub .slides > li').index();
			if(idx<1){
				$('.mainControl').hide();
			}
		}
	});

	$('.specialOfferSlide').flexslider({
		animation: "slide",
		slideshow: true,
		slideshowSpeed: '4500',
		directionNav : true,
		slideshow : false,
		prevText : '이전',
		nextText: '다음',
		controlsContainer:'#specialOfferControl',
	});

	$('.rsvInput').on('click', function(){
		if($("#hotlId").val() == '') {
			alert('호텔 또는 도시를 선택해주세요.');
			$("#hotlId_selection").focus();
			return;
		}
		$.resvCalendar.setDefaults(calOpts).createCalendar();
		$('.rsvCalendarDate').toggleClass('on');
		var calendarDialog = $(this).parents('.rsvHubWrap').next('.rsvCalendarDate');
		calendarDialog.focus();
	});

	$(".adultNum, .childrenNum, .babyNum").click(function(){
		if($("#hotlId").val() == "") {
			alert('호텔 또는 도시를 선택해주세요.');
			$(this).removeClass("on");
			$(this).parents().find("div").removeClass("jsSelect_on");
			return;
		}
	});

	var hotlLabel = "호텔 또는 도시를 선택해주세요.";
	var adltLable = "성인";
	var chldLabel = "어린이";
	var infantLabel = "유아";

	//reseration select default title
	$("#findhtl .jsSelect .value").text(hotlLabel);
	$("#adult .jsSelect .value").text(adltLable);
	$("#child .jsSelect .value").text(chldLabel);
	$("#baby .jsSelect .value").text(infantLabel);

	fncMainPopup();

	// 노출될 이미지가 2페이지 미만인 경우 슬라이드 이전 다음 버튼 삭제
	if(jQuery(".specialOffer").find("ol > li").length < 2){
		jQuery(".specialOffer").find(".flex-direction-nav").remove();
	}

});

$(document).ready(function(){
	/************ 호텔 키워드 검색 탭*********************/
	pc.resvSelHotel.init();
	$("#keywordAreaBtn").click(function(){
	 	var $ckOptList = $('.htSearch .ckType');
        var oSelf = this;
        $ckOptList.each(function(){
            oSelf.maxSelCnt = $(this).attr('data-maxSelCnt'); //호텔 최대 선택 가능 갯수

            if(oSelf.maxSelCnt === undefined){
            	// 프로모션의 경우 1개만 선택 가능
                if($('.newpromotionWrap').length > 0){
                    oSelf.maxSelCnt = 1;
                }else{
                    oSelf.maxSelCnt = 5;
                }
                $(this).attr('data-maxSelCnt', oSelf.maxSelCnt);
            }
        });
	});

	$("ul.htTab").find("li").click(function(e){

		$("#hotlId").val("");
		$("#hotlIdArr").val("");
		$("#htBoxInfo .htTabCon li a").each(function(){
			if($(this).hasClass("on")){
				$(this).removeClass("on");
			}
		});

		if($("#searchBarKeyword").val().length == 1 ){
			$("#htBrandList").hide();
			$("#htRegionList").hide();
			$(".txtErr").show();
			$("#htBoxInfo .noti").html("");
			$("#htBoxInfo .noti").hide();
			$(".noData").html("<p>두 글자 이상 입력해주세요.</p>");
			$(".noData").show();
			// 선택해제 버튼
			$(".btnClear").css("display","none");
		} else {
			if($("#htBrandList .htData").html() == ""){
				$("#htBoxInfo .noData").show();
				$("#htBoxInfo .htTabCon").hide();
				//$("#htBoxInfo .noti").hide();
			}else{
				var $target = $(e.currentTarget);
	            var tabIdx = $target.index();
	            var $tabCont = $('.htSearch .htTabCon');
	            var $resetBtn = $('.htSearch .btnClear');

	            $tabCont.eq(tabIdx).show();
	            $tabCont.eq(tabIdx).siblings().hide();
	            if($("#htBoxInfo .noti").html() == ""){
	            	$("#htBoxInfo .noti").hide();
	            }else{
	            	$("#htBoxInfo .noti").show();
	            }
			}
		}

		$("#searchBarKeyword").attr('placeholder', "호텔을 선택해주세요.");
	});

	$("#htSchDel").click(function(){
		$("#hotlId").val("");
		$("#searchBarKeyword").val("");
		$("#searchBarKeyword").trigger("keyup");
		$("#hotlIdArr").val("");
		$("#htBoxInfo .noti").hide();
		// oks 1017
		$("#searchBarKeyword").attr('placeholder', "호텔을 선택해주세요.");
	});

	$(".btnClear").click(function(){
		$("#hotlId").val("");
		$("#hotlIdArr").val("");
		$("#searchBarKeyword").attr('placeholder', "호텔을 선택해주세요.");
	});

	$(".btnInpSch").click(function(){
		$("#searchBarKeyword").trigger("click");
	});

	$("#searchBarKeyword").click(function(){
		if($("#hotlIdArr").val().length == 0){
			searchFunction("","");
		} else {
			searchFunction("","_plg");
		}
	}).bind().delay(1000).keyup(function(e){
		if(e.keyCode == 13){
			return false;
		}

		if(!keyupValidation(e.keyCode)){
			return false;
		}

		$("#hotlId").val("");
		$("#hotlIdArr").val("");
		$("#searchBarKeyword").attr('placeholder', "호텔을 선택해주세요.");
		var keyword = $("#searchBarKeyword").val();
		/* var regexp = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣0-9a-zA-Z.]/; // 숫자,영문,특수문자
        for( var i=0; i<keyword.length; i++){
			if(keyword.charAt(i) != " " && regexp.test(keyword.charAt(i)) == false ){
				$("#searchBarKeyword").val($("#searchBarKeyword").val().replace(keyword.charAt(i),""));
				//alert(keyword.charAt(i) + "는 입력불가능한 문자입니다");
			}
        } */

		if (keyword.length > 1 || keyword.trim() == "" ) {
			$(".txtErr").hide();
			$(".noData").html("<p>검색 결과가 없습니다.<br>다른 검색어를 입력해주세요.</p>");
			$(".noData").hide();
			searchFunction(keyword,"");
		} else {
			$("#htBrandList").hide();
			$("#htRegionList").hide();
			$(".txtErr").show();
			$("#htBoxInfo .noti").html("");
			$("#htBoxInfo .noti").hide();
			$(".noData").html("<p>두 글자 이상 입력해주세요.</p>");
			$(".noData").show();
			// 선택해제 버튼
			$(".btnClear").css("display","none");
		}

	});
	/******************************************/

	var searchFunction = function(key,plg){
		var chkIdx = 0;

		$(".htSearch .htTab li").each(function(idx){
			if($(this).hasClass("on")){
				chkIdx = idx;
			}
		});

		if(key.trim() != ""){
			$("#htBoxInfo .noti").show();
		}
		if(key.trim() == ""){
			$("#htBoxInfo .noti").html("");
			$("#htBoxInfo .noti").hide();
		}

		var param = encodeURIComponent(
				JSON.stringify({
					"keyword" : key
				}
			)
		);
		var ajaxUrl = "/resv/rpm/searchKeyword.do";

		$.ajax({
			url: ajaxUrl,
			data: "data="+param ,
			cache: false,
			type: "POST",
			async: false,
			beforeSend : function(){
			},
			success : function(data){
				var jsonObj = jQuery.parseJSON(data);
				var objData = jsonObj.model;
				var resultCnt = objData.FLAG == "00" ? (objData.hotlList.length / 2) : "0";
				var brandHtml = "";
				var regionHtml = "";

				var tsHtml = "";
				var stayHtml = "";
				var monoglamHtml = "";

				var GNHtml = ""; //강남
				var GBHtml = ""; //강북
				var NWHtml = ""; //전국
				var OSHtml = ""; //해외

				//키워드 타이핑 시 초기화
				if(plg != "_plg"){
					$("#hotlId").val("");
					$("#hotlIdArr").val("");
					$(".btnClear").trigger("click");
				}

				// oks 1018
				if(key.length > 1){
					var keywordSearchTxt = "'{0}'에 대한 {1}개의 검색결과";
						keywordSearchTxt = keywordSearchTxt.replace("{0}", key);
						keywordSearchTxt = keywordSearchTxt.replace("{1}", resultCnt);
					jQuery("#htBoxInfo .noti").html(keywordSearchTxt);
					jQuery("#htBoxInfo .noti").css("display","block");
				} else {
					jQuery("#htBoxInfo .noti").html("");
					jQuery("#htBoxInfo .noti").css("display","none");
				}

				if(objData.FLAG == "00"){
					if(objData.hotlList.length > 0){
						hotelList = objData.hotlList;
						// 선택해제 버튼
						$(".btnClear").css("display","block");

						for(var i = 0; i < hotelList.length; i++){
							var hotelObj = hotelList[i];

							var addClassOn = "";
							if(plg == "_plg"){
								var hotlarry = $("#hotlIdArr").val().split(",");
								hotlarry.forEach(function(element) {
									if(element == hotelObj.hotlId){
										addClassOn = "on";
									}
								});
							}

							var img = "${pageContext.request.contextPath}/images/ko/mem/new_2019/bg_check_hotel_default.gif";
							if(hotelObj.attFilePath != undefined){ img = "https://www.shilla.net//images/upload/"+hotelObj.attFilePath; } else { img }
							var nm = "";
							if(hotelObj.hotlNm != undefined){ nm = hotelObj.hotlNm; }
							var add = "";
							if(hotelObj.hotlAddr != undefined){ add = hotelObj.hotlAddr; }

							if(hotelObj.brandGroupCd == "TS"){
								tsHtml +="<li data-hotlId=\""+hotelObj.hotlId+"\"data-hoteltitle=\""+ nm +"\" data-addr=\""+ add +"\"data-imgUrl=\""+ img +"\"><a class=\"" + addClassOn + "\" href=\"#none\">"+ nm +"</a></li>";
							}else if(hotelObj.brandGroupCd == "STAY"){
								stayHtml += "<li data-hotlId=\""+hotelObj.hotlId+"\"data-hoteltitle=\"" +nm +"\" data-addr=\""+ add +"\" data-imgUrl=\""+ img +"\"><a class=\"" + addClassOn + "\" href=\"#none\">"+ nm +"</a></li>";
							}else if(hotelObj.brandGroupCd == "MONOGLAM"){

								if("ko" != "ko" && "ko" != "ja"){
									addClassOn = addClassOn+ " monoWidth";
								}

								monoglamHtml += "<li data-hotlId=\""+hotelObj.hotlId+"\"data-hoteltitle=\""+ nm +"\" data-addr=\""+ add +"\" data-imgUrl=\""+ img +"\"><a class=\"" + addClassOn + "\" href=\"#none\">"+ nm +"</a></li>";
							}
							if(hotelObj.regionGroupNm == "GN"){
								GNHtml += "<li data-hotlId=\""+hotelObj.hotlId+"\"data-hoteltitle=\""+ nm +"\" data-addr=\""+ add +"\" data-imgUrl=\""+ img +"\"><a class=\"" + addClassOn + "\" href=\"#none\">"+ nm +"</a></li>";
							}else if(hotelObj.regionGroupNm == "GB"){
								GBHtml += "<li data-hotlId=\""+hotelObj.hotlId+"\"data-hoteltitle=\""+ nm +"\" data-addr=\""+ add +"\" data-imgUrl=\""+ img +"\"><a class=\"" + addClassOn + "\" href=\"#none\">"+ nm +"</a></li>";
							}else if(hotelObj.regionGroupNm == "TS"){
								NWHtml += "<li data-hotlId=\""+hotelObj.hotlId+"\"data-hoteltitle=\""+ nm +"\" data-addr=\""+ add +"\" data-imgUrl=\""+ img +"\"><a class=\"" + addClassOn + "\" href=\"#none\">"+ nm +"</a></li>";
							}else if(hotelObj.regionGroupNm =="OS"){

								if("ko" != "ko" && "ko" != "ja"){
									addClassOn = addClassOn+ " monoWidth";
								}

								OSHtml += "<li data-hotlId=\""+hotelObj.hotlId+"\"data-hoteltitle=\""+ nm +"\" data-addr=\""+ add +"\" data-imgUrl=\""+ img +"\"><a class=\"" + addClassOn + "\" href=\"#none\">"+ nm +"</a></li>";
							}

						}

						if(GNHtml != "" || GBHtml != "" || NWHtml != ""){
							regionHtml += "<strong class=\"contury\">국내</strong>";
						}
						if(GBHtml != ""){
							regionHtml += "<dl>";
							regionHtml += "	<dt>서울 강북</dt>";
							regionHtml += "	<dd>";
							regionHtml += "		<ul>";
							regionHtml += 			GBHtml;
							regionHtml += 	"	</ul>";
							regionHtml += "	</dd>";
							regionHtml += "</dl>";
						}
						if(GNHtml != ""){
							regionHtml += "<dl>";
							regionHtml += "	<dt>서울 강남</dt>";
							regionHtml += "	<dd>";
							regionHtml += "		<ul>";
							regionHtml += 			GNHtml;
							regionHtml += 	"	</ul>";
							regionHtml += "	</dd>";
							regionHtml += "</dl>";
						}
						if(NWHtml != ""){
							regionHtml += "<dl>";
							regionHtml += "	<dt>전국</dt>"; 
							regionHtml += "	<dd>";
							regionHtml += "		<ul>";
							regionHtml += 			NWHtml;
							regionHtml += 	"	</ul>";
							regionHtml += "	</dd>";
							regionHtml += "</dl>";
						}
						if(OSHtml != ""){
							regionHtml += "<strong class=\"contury\">해외</strong>"; 
							regionHtml += "<dl>";
							regionHtml += "	<dt>베트남</dt>"; 
							regionHtml += "	<dd>";
							regionHtml += "		<ul>";
							regionHtml += 			OSHtml;
							regionHtml += 	"	</ul>";
							regionHtml += "	</dd>";
							regionHtml += "</dl>";
						}

						if(tsHtml != ""){
							brandHtml += "<dl>";
							brandHtml += "	<dt>신라호텔</dt>";
							brandHtml += "	<dd>";
							brandHtml += "		<ul>";
							brandHtml += 			tsHtml;
							brandHtml += 	"	</ul>";
							brandHtml += "	</dd>";
							brandHtml += "</dl>";
						}
						if(monoglamHtml != ""){
							brandHtml += "<dl>";
							brandHtml += "	<dt>신라모노그램</dt>";
							brandHtml += "	<dd>";
							brandHtml += "		<ul>";
							brandHtml += 			monoglamHtml;
							brandHtml += 	"	</ul>";
							brandHtml += "	</dd>";
							brandHtml += "</dl>";
						}
						if(stayHtml != ""){
							brandHtml += "<dl>";
							brandHtml += "	<dt>신라스테이</dt>";
							brandHtml += "	<dd>";
							brandHtml += "		<ul>";
							brandHtml += 			stayHtml;
							brandHtml += 	"	</ul>";
							brandHtml += "	</dd>";
							brandHtml += "</dl>";
						}

						$("#htBoxInfo .noData").hide();
						$("#htBrandList .htData").html(brandHtml);
						$("#htRegionList .htData").html(regionHtml);
						//키워드 재검색 시 초기화

						if(chkIdx==0){
							$("#htBrandList").hide();
							$("#htRegionList").show();
						}else{
							$("#htBrandList").show();
							$("#htRegionList").hide();
						}
						$(".htSearch .htTab li").removeClass("on");
						$(".htSearch .htTab li:eq("+chkIdx+")").addClass("on");

						//권역별
						$("#htBoxInfo .htTabCon li a").click(function(){
							var hotelId = $(this).parent("li").data("hotlid");
							var hotlIdStr = $("#hotlIdArr").val();
							var hotlIdArr = hotlIdStr.split(",");
							var onCount = 0;
							/* $("#htBoxInfo .htTabCon li a").each(function(){
								if($(this).hasClass("on")){
									onCount++;
								}
							}); */

							hotlIdArr.forEach(function(element){
								onCount++;
							});

							if(!$(this).hasClass("on")){
								if(onCount > 4){
									var mgs = messages["javascript.alert.hotel.select"];
									mgs = mgs.replace('{0}', "5");
									alert(mgs);
									return false;
								} else {
									if(hotlIdStr == ""){
										hotlIdStr = hotelId;
										$('#searchBarKeyword').val("");
									}else{
										hotlIdStr += ","+hotelId;
									}
								}
							}else{
								if(hotlIdArr.length == 1){
									// oks 1017
									$("#searchBarKeyword").attr('placeholder', "호텔을 선택해주세요.");
									hotlIdStr = "";
								}else{
									hotlIdStr = "";
									for(var i = 0;i < hotlIdArr.length; i++){
										if(hotlIdArr[i] != hotelId){
											if(0 == i){
												hotlIdStr = hotlIdArr[i];
											}else{
												if(hotlIdStr == ""){
													hotlIdStr = hotlIdArr[i];
													fnHotlIdSelection(hotlIdArr[i]);

												}else{
													hotlIdStr += "," + hotlIdArr[i];
												}
											}
										}
									}
								}
							}
							if(hotlIdStr != "" && hotlIdStr.split(",").length == 1){
								fnHotlIdSelection(hotlIdStr); // ID
							}
							$("#hotlIdArr").val(hotlIdStr);

							if(hotlIdStr == ""){
								$("#keywordAreaBtn").attr("src","${pageContext.request.contextPath}/images/ko/mem/new_2019/reserve_step1_ok_disable.gif");
								$("#keywordAreaBtn").parent().removeClass();
							}else{
								$("#keywordAreaBtn").attr("src","${pageContext.request.contextPath}/images/ko/mem/new_2019/reserve_step1_ok.gif");
								$("#keywordAreaBtn").parent().addClass("btnSubmit");
							}
						});
					}else{
						$("#htBrandList .htData").html("");
						$("#htRegionList .htData").html("");

						$("#htBoxInfo .noData").css("display","block");
						$("#htBoxInfo .htTabCon").css("display","none");

						// 선택해제 버튼
						$(".btnClear").css("display","none");
					}

				}else{
					$("#htBrandList .htData").html("");
					$("#htRegionList .htData").html("");

					$("#htBoxInfo .noData").show();
					$("#htBoxInfo .htTabCon").hide();

					// 선택해제 버튼
					$(".btnClear").css("display","none");
				}
			},
			error : function(jqxhr, textStatus, error){
				alert("keywordsSearch request fail : " + error);
			}
		});
	};

	/****************************************** 2*/
});
//특수키 입력
function keyupValidation(key){
	var result = true;
	if(key == 9 || key == 13 || key == 16 || key == 17 || key == 18
			|| key == 19 || key == 20 || key == 27 || key == 33 || key == 34
			|| key == 35 || key == 36 || key == 37 || key == 38 || key == 39
			|| key == 40 || key == 45 || key == 46 || key == 91 || key == 92
			|| key == 93 || key == 144 || key ==  145 || key == 186 || key == 187
			|| key == 188 || key == 189 || key == 190 || key == 191 || key == 192
			|| key == 219 || key == 220 || key == 221 || key == 222){
		result = false;
	}
	return result;
}

//호텔별 당일 예약 가능 여부 체크
function fnResvPosbAheadDyYnTF(resvPosbAheadDyCnt){
	var ckinYmd = $("#ckinYmd").val();
	var afterInYmd = "";
	var aheadDayYnTF = true;

	var limitDay = new Date("2022-05-25");
	limitDay.setDate(limitDay.getDate()+parseInt(resvPosbAheadDyCnt));
	var limitMm = limitDay.getMonth()+1 < 10 ? "0"+(limitDay.getMonth()+1) : limitDay.getMonth()+1;
	var limitDd = limitDay.getDate() < 10 ? "0"+limitDay.getDate() : limitDay.getDate();
	var limitYmd = limitDay.getFullYear()+""+limitMm+""+limitDd;
	//예약가능일 체크인 선택 날짜 비교 후 체크인 날짜 변경
	if(parseInt(limitYmd) >= parseInt(ckinYmd.replace(/-/gi,""))){
		var ckinD = new Date();
		ckinD.setDate(ckinD.getDate()+parseInt(resvPosbAheadDyCnt));
		var ckinMm = ckinD.getMonth()+1 < 10 ? "0"+(ckinD.getMonth()+1) : ckinD.getMonth()+1;
		var ckinDd = ckinD.getDate() < 10 ? "0"+ckinD.getDate() : ckinD.getDate();

		afterInYmd = ckinD.getFullYear()	+ "" + ckinMm	+ "" + ckinDd; // 변경된 체크인 날짜( YYYY-MM-DD )
	}else{
		afterInYmd = ckinYmd;
	}

	if(parseInt(ckinYmd.replace(/-/gi,"")) < parseInt(afterInYmd.replace(/-/gi,""))){
		aheadDayYnTF = false;
	}

	return aheadDayYnTF;
};


function fnHotlIdSelection(selectVal){
	var selectObj = selectVal;

	$.ajax({
		url: "/resv/rpm/getHotlInfo.do",
		data : { "hotlId": selectObj },
		cache: false,
		type: "POST",
		async: false,
		success : function(json){
			var data = jQuery.parseJSON(json);
			$("#searchBarKeyword").attr('placeholder', data.model.hotlVo.hotlNm);
			$("#maxCapaCnt").val(data.model.hotlVo.maxCapaCnt);
			$("#resvPosbAheadDyCnt").val(data.model.hotlVo.resvPosbAheadDyCnt);



			$("#prtyExpRoom").val(data.model.hotlVo.prtyExpRoom);
			$("#rsvInquireHotlId").val(data.model.hotlId);	//객실예약연락처 가져오는 호텔ID
			$("#hotlId").val(data.model.hotlId);
			$("#hotlUrlPath").val(selectObj);
			$("input[name='keyword']").each(function(){
				$(this).prop("checked", false);
			});
		},
		error : function(){
			alert( "getHotlInfo Request Failed");
		}
	});

};

//메인 팝업
function fncMainPopupOpen(obj) {

	if (getCookie("popup_"+obj.dbbsId+"_"+obj.hotlId) != "done") {
		//var url = "/index.do/popop/mainPopup.do?dbbsId="+obj.dbbsId+"&langTypCd="+obj.langTypCd;
		var url = "/hub/popop/mainPopup.do?dbbsId="+obj.dbbsId+"&langTypCd="+obj.langTypCd;
		var opt = "";

		if(obj.popSize != ""){
			var popSize = obj.popSize.split(":");
			if(popSize.length > 1){
				opt = "width="+popSize[0]+",height="+popSize[1];
			}
		}

		if(obj.popLoc != ""){
			var popLoc = obj.popLoc.split(":");
			if(popLoc.length > 1){
				if(opt != "") opt = opt + ",";
				opt = opt + "top="+popLoc[0]+",left="+popLoc[1];
			}
		}

		if(opt != "") opt = opt + ",";
		opt = opt + 'scrollbars=no,status=no';
		window.open(url, obj.dbbsId+obj.idx, opt);

	}

}

/**
 * 허브에서 popup이 동작하지 않아서 추가
 */

function getCookie(cookie_name) {
    var isCookie = false;
    var start, end;
    var i = 0;

    // cookie 문자열 전체를 검색
    while(i <= document.cookie.length) {
         start = i;
         end = start + cookie_name.length;
         // cookie_name과 동일한 문자가 있다면
         if(document.cookie.substring(start, end) == cookie_name) {
             isCookie = true;
             break;
         }
         i++;
    }

    // cookie_name 문자열을 cookie에서 찾았다면
    if(isCookie) {
        start = end + 1;
        end = document.cookie.indexOf(";", start);
        // 마지막 부분이라는 것을 의미(마지막에는 ";"가 없다)
        if(end < start)
            end = document.cookie.length;
        // cookie_name에 해당하는 value값을 추출하여 리턴한다.
        return document.cookie.substring(start, end);
    }
    // 찾지 못했다면
    return "";
}

//메인 팝업
function fncMainPopup() {
	var popLen = '1';

	if(popLen > 0){
		
			var param_0 = new Object();
			param_0.index = "0";
			param_0.hotlId = "HUB";
			param_0.dbbsId = "20684";
			param_0.langTypCd = "KR";
			param_0.subj = "코로나19 감염병 관련 안내";
			param_0.popLoc = "0:0";
			param_0.popSize = "400:450";
			if("PC,MOBILE,APP".indexOf("PC") > -1){
				fncMainPopupOpen(param_0);
			}
		
	}
}

function fncGoResv(){
	var hotlLabel	= "호텔을 선택해주세요.";	// 호텔을 선택해주세요.
	var ckinLabel	= "체크인 날짜를 선택해주세요.";	// 체크인 날짜를 선택해주세요.
	var ckoutLabel	= "체크아웃 날짜를 선택해주세요.";	// 체크아웃 날짜를 선택해주세요.
	var guestLabel	= "투숙인원을 선택해주세요.";	// 투숙인원을 선택해주세요.

	// 호텔 선택 확인
	 if(jQuery("#hotlIdArr").val() == ""){
		alert(hotlLabel);
		return;
	}

	// 체크인/아웃 날짜 확인
	if(jQuery("#ckinYmd").val() == ""){
		alert(ckinLabel);
		return;
	}
	if(jQuery("#ckoutYmd").val() == ""){
		alert(ckoutLabel);
		return;
	}

	var aryPeople = [];
	jQuery('.number > .num').each(function(index) {
    	aryPeople.push($(this).text());
	});
    var sumAds = Number(aryPeople[0]) + Number(aryPeople[3]) + Number(aryPeople[6]);
    var sumKis = Number(aryPeople[1]) + Number(aryPeople[4]) + Number(aryPeople[7]);
    var sumBbs = Number(aryPeople[2]) + Number(aryPeople[5]) + Number(aryPeople[8]);

    if(sumAds <= 0){
		alert(guestLabel);
		return;
	}

    var romCnt = 1;
    if(jQuery(".rsvPeople").find('.r_number ').attr('class').indexOf('addRoom3') > 0) {
    	romCnt = 3;
    } else if(jQuery(".rsvPeople").find('.r_number ').attr('class').indexOf('addRoom2') > 0) {
    	romCnt = 2;
    } else {
    	romCnt = 1;
    }

    jQuery("#roomCnt").val(romCnt);
    jQuery("#adltCnt").val(aryPeople[0] +","+ aryPeople[3] +","+ aryPeople[6] );
    jQuery("#chldCnt").val(aryPeople[1] +","+ aryPeople[4] +","+ aryPeople[7] );
    jQuery("#infantCnt").val(aryPeople[2] +","+ aryPeople[5] +","+ aryPeople[8] );

    jQuery("#totlAdltCnt").val(sumAds);
    jQuery("#totlChldCnt").val(sumKis);
    jQuery("#totlInfantCnt").val(sumBbs);


	//인원 수 VALIDATION CHECK
	var hotlIdArr = $("#hotlIdArr").val();
	if(hotlIdArr != ""){
		var alertFlag = "";
		//선택된 호텔 ARRAY STRING;
		var hotlIds = hotlIdArr.split(",");
		//선택된 호텔 갯수
		var hotlCnt = hotlIds.length;
		 // 객실당 최대 선택가능한 총인원수
        var maxCnt = 4;
        // 객실당 최대 선택가능한 성인수
        var adltMaxCnt = 3;
        // 객실 별 인원 LIST로 변경
        var adultStr = $("#adltCnt").val();
        var adltList = adultStr.split(",");
        var chldStr = $("#chldCnt").val();
        var chldList = chldStr.split(",");
        var infantStr = $("#infantCnt").val();
        var infantList = infantStr.split(",");
        var roomCnt = $("#roomCnt").val();

        for (var i = 0; i < hotlIds.length; i++) {
            if (hotlIds[i] == "D") {
                //동탄인 경우
                maxCnt = 3;
                adltMaxCnt = 2;
                break;
            } else if(hotlIds[i] == "VDNSM"){
            	if(hotlCnt == 1){
                	maxCnt = 14;
                	adltMaxCnt = 10;
            	}else if(hotlCnt == 2 && hotlIdArr.indexOf("HUDSS") > -1){
            		maxCnt = 5;
                    adltMaxCnt = 4;
            	}else if(hotlIdArr.indexOf("HUDSS") > -1 ){
                	maxCnt = 4;
                	adltMaxCnt = 2;
                }else{
            		maxCnt = 4;
                    adltMaxCnt = 3;
            	}
            } else if (hotlIds[i] == "HUDSS") {
                // 스테이 해운대인 경우
                if(hotlCnt == 1 || (hotlCnt == 2 && hotlIdArr.indexOf("VDNSM") > -1)) {
                    maxCnt = 5;
                    adltMaxCnt = 4;
                }else if(hotlIdArr.indexOf("HUDSS") > -1 ){
                	maxCnt = 4;
                	adltMaxCnt = 2;
                }else {
                    maxCnt = 4;
                    adltMaxCnt = 3;
                }
                continue;
            }else{
            	maxCnt = 4;
                adltMaxCnt = 3;
            }
        }
        var dongtanFlag = false;
        var haewoondaeFlag = false;
        var danangFlag = false;
        for (var i = 0; i < hotlIds.length; i++) {
        	if (hotlIds[i] == "D") {
        		dongtanFlag = true;
        	}
        	if(hotlIds[i] == "HUDSS"){
        		haewoondaeFlag = true;
        	}
        	if(hotlIds[i] == "VDNSM"){
        		danangFlag = true;
        	}
        }
      //동탄, 해운대, 다낭 호텔 포함 여부 확인
        if(dongtanFlag || haewoondaeFlag || danangFlag){
        	alertFlag = "";
        	if(dongtanFlag){
        		alertFlag += "D";
        	}
			if(haewoondaeFlag){
        		alertFlag += "H";
        	}
			if(danangFlag){
        		alertFlag += "M";
        	}
        }else{
        	alertFlag = "N";
        }

      //객실 별 인원 체크
        for(var roomIdx = 0; roomIdx < Number(roomCnt); roomIdx++){
        	var adltCnt = adltList[roomIdx]; // 성인 수
        	var chldCnt = chldList[roomIdx]; // 어린이 수
        	var infantCnt = infantList[roomIdx]; // 유아 수
        	var totlCnt = parseInt(adltCnt) + parseInt(chldCnt) + parseInt(infantCnt);
       		if(totlCnt > maxCnt || adltCnt > adltMaxCnt ){
       			if(2 > hotlCnt){
       				if(alertFlag == "N"){
        				//객실 1실당 성인과 소인 동반 시 최대 4인까지만 투숙이 가능합니다.
        				var mag = messages["javascript.fncgoresv.room.alert1"];
				        	mag = mag.replace(/<br\/>/g,"\n");
	            		alert(mag);
	            	}else if(alertFlag == "D"){
	            		//신라스테이 동탄은 객실 1실당 성인과 소인 동반 시 최대 3인까지만 투숙 가능합니다.
	            		var mag = messages["javascript.fncgoresv.room.alert2"];
				        	mag = mag.replace(/<br\/>/g,"\n");
	            		alert(mag);
	            	}else if(alertFlag == "H"){
	            		//신라스테이 해운대는 객실 1실당 성인과 소인 동반 시 최대 5인까지 투숙 가능합니다.
	            		var mag = messages["javascript.fncgoresv.room.alert3"];
				        	mag = mag.replace(/<br\/>/g,"\n");
	            		alert(mag);
	            	}else if (alertFlag == "M"){
                    	 //신라모노그램 다낭은 객실 1실당 성인 10인 또는 성인과 소인 동반 시 최대 14인까지 투숙 가능합니다.
                        var mag = messages["javascript.fncgoresv.room.alert12"];
                        mag = mag.replace(/<br\/>/g, "\n");
                        alert(mag);
                    }
       			}else if(hotlCnt == 2){
       				if(alertFlag == "DH"){
	        			/** 신라스테이 동탄은 객실 1실당 성인과 소인 동반 시 최대 3인까지만 투숙 가능하오니 4인 이상 투숙을 원하시는 경우 동탄 지점을 선택 해제해주십시오.<br/>
	        			* 신라스테이 해운대는 객실 1실당 성인과 소인 동반 시 최대 5인까지 투숙 가능하오니 투숙을 원하시는 경우 해운대 지점만 선택해주십시오.*/
	    				var mag = messages["javascript.fncgoresv.room.alert13"];
				        	mag = mag.replace(/<br\/>/g,"\n");
	            		alert(mag);
	        		}else if(alertFlag == "DM"){
	        			/* 신라스테이 동탄은 객실 1실당 성인과 소인 동반 시 최대 3인까지만 투숙 가능하오니 4인 이상 투숙을 원하시는 경우 동탄 지점을 선택 해제해주십시오.<br/>
	        			* 신라모노그램 다낭은 객실 1실당 성인과 소인 동반 시 최대 14인까지 투숙 가능하오니 투숙을 원하시는 경우 다낭 지점만 선택해주십시오.*/
	    				var mag = messages["javascript.fncgoresv.room.alert14"];
				        	mag = mag.replace(/<br\/>/g,"\n");
	            		alert(mag);
	        		}else if(alertFlag == "HM"){
	        			/* 신라스테이 해운대는 객실 1실당 성인과 소인 동반 시 최대 5인까지 투숙 가능합니다.<br/>
	        			* 신라모노그램 다낭은 객실 1실당 성인과 소인 동반 시 최대 14인까지 투숙 가능하오니 투숙을 원하시는 경우 다낭 지점만 선택해주십시오.*/
	    				var mag = messages["javascript.fncgoresv.room.alert15"];
				        	mag = mag.replace(/<br\/>/g,"\n");
	            		alert(mag);
	        		}
       			}else{
	       			if(alertFlag == "N"){ //객실 1실당 성인과 소인 동반 시 최대 4인까지만 투숙이 가능합니다.
	            		var mag = messages["javascript.fncgoresv.room.alert1"];
				        mag = mag.replace(/<br\/>/g,"\n");
	            		alert(mag);
	            	}else if(alertFlag == "D"){
	            		/* 객실 1실당 성인과 소인 동반 시 최대 4인까지만 투숙이 가능합니다.  * 신라스테이 동탄은 객실 1실당 성인과 소인 동반 시 최대 3인까지만 투숙 가능하오니 4인 이상 투숙을 원하시는 경우 동탄 지점을 선택 해제해주십시오. */
	           			var mag = messages["javascript.fncgoresv.room.alert4"];
			        	mag = mag.replace(/<br\/>/g,"\n");
			        	alert(mag);
	            	}else if(alertFlag == "H"){
	            		/* alert("객실 1실당 성인과 소인 동반 시 최대 4인까지만 투숙이 가능합니다.\n" +"\n* 신라스테이 해운대는 객실 1실당 성인과 소인 동반 시 최대 5인까지"  +"\n투숙이 가능하오니 4인 이상 투숙을 원하시는 경우 해운대 지점만 단일 선택해주십시오."); */
	            		var mag = messages["javascript.fncgoresv.room.alert5"];
				        mag = mag.replace(/<br\/>/g,"\n");
	            		alert(mag);
	            	}else if (alertFlag == "M"){
	            		/*객실 1실당 성인과 소인 동반 시 최대 4인까지만 투숙이 가능합니다.  * 신라모노그램 다낭은 객실 1실당 성인과 소인 동반 시 최대 14인까지 투숙 가능하오니 투숙을 원하시는 경우 다낭 지점만 선택해주십시오.*/
	                     var mag = messages["javascript.fncgoresv.room.alert11"];
	                     mag = mag.replace(/<br\/>/g, "\n");
	                     alert(mag);
	                }else if(alertFlag == "DH"){
	                	/*객실 1실당 성인과 소인 동반 시 최대 4인까지만 투숙이 가능합니다.<br/> * 신라스테이 동탄은 객실 1실당 성인과 소인 동반 시 최대 3인까지만 투숙 가능하오니 4인 이상 투숙을 원하시는 경우 동탄 지점을 선택 해제해주십시오.<br/> * 신라모노그램 다낭은 객실 1실당 성인과 소인 동반 시 최대 14인까지 투숙 가능하오니 투숙을 원하시는 경우 다낭 지점만 선택해주십시오.*/
	            		var mag = messages["javascript.fncgoresv.room.alert6"];
				        mag = mag.replace(/<br\/>/g,"\n");
	            		alert(mag);
	            	}else if (alertFlag == "DM"){
	            		/* 객실 1실당 성인과 소인 동반 시 최대 4인까지만 투숙이 가능합니다.<br/> * 신라스테이 동탄은 객실 1실당 성인과 소인 동반 시 최대 3인까지만 투숙 가능하오니 4인 이상 투숙을 원하시는 경우 동탄 지점을 선택 해제해주십시오.<br/> * 신라모노그램 다낭은 객실 1실당 성인과 소인 동반 시 최대 14인까지 투숙 가능하오니 투숙을 원하시는 경우 다낭 지점만 선택해주십시오. */
						var mag = messages["javascript.fncgoresv.room.alert8"];
	            		mag = mag.replace(/<br\/>/g, "\n");
	            		alert(mag);
					}else if(alertFlag == "HM"){
						/*객실 1실당 성인과 소인 동반 시 최대 4인까지만 투숙이 가능합니다.<br/> * 신라스테이 해운대는 객실 1실당 성인과 소인 동반 시 최대 5인까지 투숙 가능합니다.<br/> * 신라모노그램 다낭은 객실 1실당 성인과 소인 동반 시 최대 14인까지 투숙 가능하오니 투숙을 원하시는 경우 다낭 지점만 선택해주십시오.*/
						var mag = messages["javascript.fncgoresv.room.alert9"];
						mag = mag.replace(/<br\/>/g, "\n");
						alert(mag);
					}else if(alertFlag == "DHM"){
						/* 객실 1실당 성인과 소인 동반 시 최대 4인까지만 투숙이 가능합니다.<br/> * 신라스테이 동탄은 객실 1실당 성인과 소인 동반 시 최대 3인까지만 투숙 가능하오니 4인 이상 투숙을 원하시는 경우 동탄 지점을 선택 해제해주십시오.<br/> * 신라스테이 해운대는 객실 1실당 성인과 소인 동반 시 최대 5인까지 투숙 가능합니다.<br/> * 신라모노그램 다낭은 객실 1실당 성인과 소인 동반 시 최대 14인까지 투숙 가능하오니 투숙을 원하시는 경우 다낭 지점만 선택해주십시오. */
						var mag = messages["javascript.fncgoresv.room.alert10"];
						mag = mag.replace(/<br\/>/g, "\n");alert(mag);

					}
       			}
       			$('.opacity').hide();
				pc.layerPopup.unLockScroll();
				$('.re-loader').hide();
       			return false;
        	}
        }
	}
	//인원 수 VALIDATION CHECK


	/****************************************** 1*/
	var noResvHotlNm = "";
	var noResvHotlCnt = 0;

	$.ajax({
		url: "/resv/rpm/getHotlInfoList.do",
		data : { "hotlIdStr": $("#hotlIdArr").val() },
		cache: false,
		type: "POST",
		async: false,
		success : function(json){
			var data = jQuery.parseJSON(json);
			var hotlList = data.model.hotlList;
			var lang = "ko";


			for(var c = 0;c < hotlList.length; c++){
				var hotlObj = hotlList[c];
				var hotlNm = "";
				if(hotlObj.resvPosbAheadDyCnt != "0"){
					aheadDayYnTF = fnResvPosbAheadDyYnTF(hotlObj.resvPosbAheadDyCnt);
					if(!aheadDayYnTF){
						switch (lang) {
						case "ko" : hotlNm = hotlObj.hotlNmKr; break;
						case "en" : hotlNm = hotlObj.hotlNmEn; break;
						case "ja" : hotlNm = hotlObj.hotlNmJp; break;
						case "zh" : hotlNm = hotlObj.hotlNmCn; break;
						default	  : hotlNm = hotlObj.hotlNmKr; break;
						}

						noResvHotlNm += hotlNm + ", ";
						noResvHotlCnt++;
					}
				}
			}
		},
		error : function(){
			alert( "getHotlInfoList Request Failed");
		}
	});

	if(noResvHotlCnt > 0){
		noResvHotlNm = noResvHotlNm.substring(0, noResvHotlNm.lastIndexOf(","));
		/* alert(noResvHotlNm+"은 당일 예약이 불가하오니 투숙일을 변경해주십시오. 당일 예약을 원하시는 경우 다른 호텔을 선택해주십시오\n"
        +"\n- 제주신라호텔 : 당일 15시까지 예약 가능\n"
        +"- 신라스테이 전 지점 : 당일 23시까지 예약 가능"); */
		var mag = messages["javascript.fncgoresv.room.alert7"];
			mag = mag.replace('{0}', noResvHotlNm);
			mag = mag.replace(/<br\/>/g,"\n");
				alert(mag);
		return ;
	}

	/////////////
	jQuery("#resvForm").attr("method", "post");
	jQuery("#resvForm").attr("action", "/seoul/resv/rpm/memSetStep1.do");
	jQuery("#resvForm").submit();

}


</script>



<form id="resvForm" name="resvForm">
<input type="hidden" id="maxCapaCnt" name="maxCapaCnt" autocomplete="off">
<input type="hidden" id="URL_PREFIX" name="URL_PREFIX" autocomplete="off">
<input type="hidden" id="hotlId" name="hotlId" autocomplete="off">
<input type="hidden" id="nightCnt" name="nightCnt" autocomplete="off" value="1">
<input type="hidden" id="resvTypCd" name="resvTypCd" autocomplete="off">
<input type="hidden" id="roomCd" name="roomCd" autocomplete="off">
<input type="hidden" id="spofrId" name="spofrId" autocomplete="off">
<input type="hidden" id="coporateVal" name="coporateVal" autocomplete="off">
<input type="hidden" id="coporateCd" name="coporateCd" autocomplete="off">
<input type="hidden" id="resvPosbAheadDyCnt" name="resvPosbAheadDyCnt" autocomplete="off">
<!-- 2019 추가 -->
<input type="hidden" id="hotlIdArr" name="hotlIdArr" autocomplete="off">
<input type="hidden" id="adltCnt" name="adltCnt" autocomplete="off">
<input type="hidden" id="chldCnt" name="chldCnt" autocomplete="off">
<input type="hidden" id="infantCnt" name="infantCnt" autocomplete="off">
<input type="hidden" id="totlAdltCnt" name="totlAdltCnt" autocomplete="off">
<input type="hidden" id="totlChldCnt" name="totlChldCnt" autocomplete="off">
<input type="hidden" id="totlInfantCnt" name="totlInfantCnt" autocomplete="off">
<input type="hidden" id="roomCnt" name="roomCnt" autocomplete="off">



<!-- 메인 비쥬얼 / 예약하기-->
<div class="mainVisualHub">
	<ul class="slides">
<li class="first flex-active-slide" style="width: 100%; float: left; margin-right: -100%; position: relative; opacity: 0.953522; display: block; z-index: 2;">
						<a href="https://www.shillahotels.com/membership/offers/pack/memViewRewardsPack.do?spofrId=24978">
							<img class="img" src="${pageContext.request.contextPath}/images/contents/main/MAIN_HUB/R0000001JH7P_KR.jpg" alt="[서울신라호텔] Rewards Urban Island - 따스한 햇살이 드리우는 어번 아일랜드 온수풀에서 봄날의 휴식을 즐겨보세요." draggable="false">
						</a>
					</li>
<li style="width: 100%; float: left; margin-right: -100%; position: relative; opacity: 0; display: block; z-index: 1;" class="">
						<a href="https://www.shillahotels.com/membership/offers/pack/memViewRewardsPack.do?spofrId=25948">
							<img class="img" src="${pageContext.request.contextPath}/images/contents/main/MAIN_HUB/R0000001L09O_KR.jpg" alt="[제주신라호텔] 서머 로맨스 -[2박 이상] 제주신라호텔에서 반짝이는 별빛 아래 여름날의 로맨스를 만들어 보세요." draggable="false">
						</a>
					</li>
<li class="last" style="width: 100%; float: left; margin-right: -100%; position: relative; opacity: 0.046478; display: block; z-index: 1;">
						<a href="https://www.shillahotels.com/membership/offers/pack/memViewRewardsPack.do?spofrId=24884">
							<img class="img" src="${pageContext.request.contextPath}/images/contents/main/MAIN_HUB/R0000001JH7F_KR.jpg" alt="[신라스테이] 신라스테이 Rewards The Freestyle Lounge 1705- 아늑하고 감성적으로 꾸며진 온돌 콘셉트룸에서 삼성전자 더 프리스타일과 함께 특별한 시간을 보내세요" draggable="false">
						</a>
					</li>
</ul>
	<div id="mainVisualControl" class="mainControl"><ul class="flex-direction-nav"><li class="flex-nav-prev"><a class="flex-prev" href="#">이전</a></li><li class="flex-nav-next"><a class="flex-next" href="#">다음</a></li></ul></div>
<!-- hub 예약 영역 -->
	<div class="rsvWrap new_rsvBox">
	  	<!-- 검색영역 -->
		<div class="rsvSchHotel">
			<!-- 호텔 선택 -->
	  		<div class="rsvSchCont htSch">
	  			<dl>
	  				<dt class=""><img src="${pageContext.request.contextPath}/images/ko/mem/new_2019/tit_searchhotel01.png" alt="호텔 또는 도시" draggable="false"></dt>
	  				<dd class="htSchWrap">
						<input type="text" placeholder="호텔을 선택해주세요." class="inpHtSch" id="searchBarKeyword" autocomplete="off">
						<a href="#none" class="btnInpSch">검색</a>
						<a href="#none" id="htSchDel" class="btnDel">삭제</a>
						<!-- 호텔 다중 선택 시 노출 -->
						<div class="more">
							<span class="btnHtMore" style="display: none;">
								<strong class="hidden">다중 선택한 호텔 더보기 </strong>
								<span>+5</span>
								<span class="moreHt"></span>
							</span>
						</div>
						<!-- //호텔 다중 선택 시 노출 -->
						<!-- error msg -->
						<p class="txtErr" style="display: none;">*두 글자 이상 입력해주세요.</p>
	  				</dd>
	  			</dl>
	  		</div>
	  		<!-- //호텔 선택 -->

	  		<!-- 날짜 선택 -->
	  		<div class="rsvSchCont htCheck">
	  			<dl>
	  				<dt><img src="${pageContext.request.contextPath}/images/ko/mem/new_2019/tit_searchhotel02.png" alt="체크인" draggable="false"></dt>
	  				<dd><a href="#" class="btnCalShow" id="ckinDateInfo">2022.05.25 (수)</a></dd>
	  			</dl>
	  			<dl class="stay">
	  				<dt><span class="hidden">숙박</span></dt>
	  				<dd id="nightCntInfo">1박</dd>
	  			</dl>
	  			<dl>
	  				<dt><img src="${pageContext.request.contextPath}/images/ko/mem/new_2019/tit_searchhotel03.png" alt="체크아웃" draggable="false"></dt>
	  				<dd><a href="#" class="btnCalShow" id="ckoutDateInfo">2022.05.26 (목)</a></dd>
	  			</dl>
	  		</div>
	  		<!-- //날짜 선택 -->
	  		<!-- 객실 인원 선택 -->
	  		<div class="rsvSchCont htRoom">
	  			<dl>
	  				<dt><img src="${pageContext.request.contextPath}/images/ko/mem/new_2019/tit_searchhotel04.png" alt="객실" draggable="false"></dt>
	  				<dd><a href="#" class="btnRoomshow sumRoom">1</a></dd>
	  			</dl>
	  			<dl>
	  				<dt><img src="${pageContext.request.contextPath}/images/ko/mem/new_2019/tit_searchhotel05.png" alt="성인" draggable="false"></dt>
	  				<dd><a href="#" class="btnRoomshow sumAdult">2</a></dd>
	  			</dl>
	  			<dl>
	  				<dt>
	  					<img src="${pageContext.request.contextPath}/images/ko/mem/new_2019/tit_searchhotel06.png" alt="어린이" draggable="false">
	  					<span class="btnQuestion">
	  						<strong class="hidden">안내</strong>
	  						<span class="warnBalloonBox" style="width:250px;">37개월 이상 ~ 만 12세 이하 (베트남 : 37개월 이상 ∼ 만 11세까지)</span>
	  					</span>
	  				</dt>
	  				<dd><a href="#" class="btnRoomshow sumChild">0</a></dd>
	  			</dl>
	  			<dl>
	  				<dt>
	  					<img src="${pageContext.request.contextPath}/images/ko/mem/new_2019/tit_searchhotel07.png" alt="유아" draggable="false">
	  					<span class="btnQuestion">
	  						<strong class="hidden">안내</strong>
	  						<span class="warnBalloonBox">36개월 이하</span>
	  					</span>
	  				</dt>
	  				<dd><a href="#" class="btnRoomshow sumBaby">0</a></dd>
	  			</dl>
	  		</div>
	  		<div class="rsvSchCont btnSearch">
	  			<a href="#"><img onclick="fncGoResv();" src="${pageContext.request.contextPath}/images/ko/mem/new_2019/btn_search.gif" alt="검색" draggable="false"></a>
	  		</div>
	  		<!-- //객실 인원 선택 -->
	  	</div>
		<!-- //검색영역 -->

		<!-- 호텔 선택 -->
		<div class="ly_reserve htSearch" style="display: none;">
		<!-- 호텔 선택 부분 좌측영역 -->
			<div class="htBoxTop">
			<ul class="htTab clearfix">
	      		<li class="tab2 on first"><a href="#"><span>권역별<!-- 권역별 --></span></a></li>
	      		<li class="tab1  last"><a href="#"><span>브랜드별<!-- 브랜드별 --></span></a></li><!-- a 선택시 li class on 추가 -->
	      	</ul>
	      	<p class="noti2"><img src="${pageContext.request.contextPath}/images/ko/mem/new_2019/txt_hotel_seach_noti.png" alt="※ 최대 5개까지 선택 가능" draggable="false"></p>
	    	</div>


			<div class="htBox" style="display:block">
				<div class="htChoice">
			    	<div class="htBoxResult">
			    		<div class="scroll">
			          		<div class="scrollCont" id="htBoxInfo">
				           		<!-- 검색어 입력시에만 노출 -->
				           		<div class="noti"></div>
			            			<!-- 검색결과가 없는 상태 -->
				                <div class="noData" style="display:none; width: 100%;">
				                	<p>검색 결과가 없습니다.<br>다른 검색어를 입력해주세요.</p>
				                </div>
				                <!-- //검색결과가 없는 상태 -->

								<!-- 권역	별 -->
								<div class="htTabCon" id="htRegionList" style="display: block;">
									<strong class="hidden">권역별 검색결과</strong>
									<div class="htData ckType" data-maxselcnt="5">
									</div>
								</div>
								<!-- //권역	별 -->
			            		<!-- 브랜드 별 -->
								<div class="htTabCon" id="htBrandList" style="display: none;">
									<!-- 호텔 선택했을때 우측 이미지 사진 변경되야함 -->
									<strong class="hidden">브랜드별 검색결과</strong>
									<div class="htData ckType" data-maxselcnt="5">
									</div>
								</div>
								<!-- //브랜드	별 -->
					            <!-- //검색결과가 있는 상태 -->
							</div>
						</div>

					</div>
				</div>
				<!-- 호텔 선택 부분 좌측영역 -->

				<!-- 호텔 이미지 스와이프 우측영역 -->
				<div class="ckHotelInfo">
					<div class="ckHotel">
				    	<strong class="tit">호텔정보</strong>
				        <!-- 검색결과 있음 > 선택 후 -->
						<div class="slideBox">
				        	<a href="#" class="ad-prev" style="display: none;">이전</a><!-- 호텔 2개 이상 선택 시 노출 -->
				          	<div class="flexslider">
							<ul class="slides">
							</ul>
						</div>
						<a href="#" class="ad-next" style="display: none;">다음</a><!-- 호텔 2개 이상 선택 시 노출 -->
						<!-- //호텔 2개 이상 선택 시 노출 -->
					</div>
					<div class="ckList">
					<ul></ul>
					</div>
					<!-- //검색결과 있음 > 선택 후 -->
					</div>
				</div>
				<!--// 호텔 이미지 스와이프 우측영역 -->
			</div>

			<!-- 버튼영역 -->
	      	<a href="#none" class="btnClear" style="display:block;"><img src="${pageContext.request.contextPath}/images/ko/mem/new_2019/btn_hotel_clear_txt.png" alt="선택해제" draggable="false"></a><!-- 검색결과 없는 경우에는 비노출 -->

			<div class="btnList">
	    		<a href="javascript:void(0);" class="btnSubmit"><img src="${pageContext.request.contextPath}/images/ko/mem/new_2019/reserve_step1_ok_disable.gif" alt="확인" id="keywordAreaBtn" draggable="false"></a>
	    		<!-- disabled -->
	    		</div>
	    	<!-- //버튼영역 -->
		</div>
	   	<!-- //호텔 선택 -->

	    <!-- 달력 Area -->
		<div class="ly_reserve rsvCalendarDate new_rsvCal" id="rsvCalendarDate"></div>
		<!-- //달력 Area -->

		<!-- 프로모션 달력 Area -->
		<div class="ly_reserve promotionCalendar new_rsvCal" id="promotionCalendar"></div>
		<!-- //달력 Area -->

		<!-- 달력 Area html 소스 -->
		<div class="ly_reserve rsvCalendarDate new_rsvCal" style="display:none;">
		</div>
		<input type="hidden" id="ckinYmd" title="체크인 날짜 입력" name="ckinYmd" autocomplete="off" class="" value="2022-05-25">
		<input type="hidden" id="ckoutYmd" title="체크아웃 날짜 입력" name="ckoutYmd" autocomplete="off" value="2022-05-26">
		<!-- //달력 Area html 소스 -->

	    <!-- 객실인원선택 -->
<div class="ly_reserve rsvPeople" style="display: none;">
	<div class="r_number">
	<div class="con room1">
		<dl>
			<dt>객실 1</dt>
			<dd>
				<ul>
					<li class="first">
						<strong class="tit">성인</strong>
	     			<div class="number">
	     				<a href="javascript:void(0);" class="minus">삭제</a>
	     				<span class="num cntAdRm1">2</span>
	     				<a href="javascript:void(0);" class="plus disabled">추가</a>
	     			</div>
					</li>
					<li>
						<strong class="tit">어린이</strong>
	     			<div class="number">
	     				<a href="javascript:void(0);" class="minus">삭제</a>
	     				<span class="num cntKiRm1">0</span>
	     				<a href="javascript:void(0);" class="plus">추가</a>
	     			</div>
					</li>
					<li class="last">
						<strong class="tit">유아</strong>
	     			<div class="number">
	     				<a href="javascript:void(0);" class="minus">삭제</a>
	     				<span class="num cntBbRm1">0</span>
	     				<a href="javascript:void(0);" class="plus">추가</a>
	     			</div>
					</li>
				</ul>
			</dd>
		</dl>
	</div>

	<div class="con room2">
		<dl>
			<dt>객실 2</dt>
			<dd>
				<ul><!-- 객실3까지 추가 후에 객실2 btnRooms del2 버튼 클릭하여 삭제처리 할 경우 객실3의 데이터 객실2로 이동-->
					<li class="first">
						<strong class="tit">성인</strong>
			   			<div class="number">
			   				<a href="javascript:void(0);" class="minus">삭제</a>
			   				<span class="num cntAdRm2">0</span>
			   				<a href="javascript:void(0);" class="plus">추가</a>
			   			</div>
					</li>
					<li>
						<strong class="tit">어린이</strong>
			   			<div class="number">
			   				<a href="javascript:void(0);" class="minus">삭제</a>
			   				<span class="num cntKiRm2">0</span>
			   				<a href="javascript:void(0);" class="plus">추가</a>
			   			</div>
					</li>
					<li class="last">
						<strong class="tit">유아</strong>
			   			<div class="number">
			   				<a href="javascript:void(0);" class="minus">삭제</a>
			   				<span class="num cntBbRm2">0</span>
			   				<a href="javascript:void(0);" class="plus">추가</a>
			   			</div>
					</li>
				</ul>
			</dd>
			<dd class="rooms">
				<a href="javascript:void(0);" class="btnRooms del2">삭제</a><!-- r_number addRoom2 일 경우 클릭 시 addRoom2 삭제, r_number addRoom2 addRoom3일 경우 클릭 시 addRoom3 삭제 -->
				<a href="javascript:void(0);" class="btnRooms add2">추가</a><!-- 클릭 시 r_number에 class addRoom2 추가 -->
			</dd>
		</dl>
	</div>

   <!-- 객실 추가하기 -->
	<div class="con room3">
		<dl>
			<dt>객실 3</dt>
			<dd>
				<ul>
					<li class="first">
						<strong class="tit">성인</strong>
	     			<div class="number">
	     				<a href="javascript:void(0);" class="minus">삭제</a>
	     				<span class="num cntAdRm3">0</span>
	     				<a href="javascript:void(0);" class="plus">추가</a>
	     			</div>
					</li>
					<li>
						<strong class="tit">어린이</strong>
	     			<div class="number">
	     				<a href="javascript:void(0);" class="minus">삭제</a>
	     				<span class="num cntKiRm3">0</span>
	     				<a href="javascript:void(0);" class="plus">추가</a>
	     			</div>
					</li>
					<li class="last">
						<strong class="tit">유아</strong>
	     			<div class="number">
	     				<a href="javascript:void(0);" class="minus">삭제</a>
	     				<span class="num cntBbRm3">0</span>
	     				<a href="javascript:void(0);" class="plus">추가</a>
	     			</div>
					</li>
				</ul>
			</dd>
			<dd class="rooms">
				<a href="javascript:void(0);" class="btnRooms del3">삭제</a><!-- 클릭 시 r_number에 class addRoom3 삭제 -->
				<a href="javascript:void(0);" class="btnRooms add3">추가</a><!-- 클릭 시 r_number에 class addRoom3 추가 -->
			</dd>
		</dl>
	</div>
   	<!-- //객실 추가하기 -->

	<ul class="notiList1">
		<li class="first">객실은 최대 3개까지 선택 가능합니다.<!-- 최대 3개까지 선택 가능합니다 --></li>
		<li>어린이 : 37개월 이상 ~ 만 12세 이하 (베트남 : 37개월 이상 ∼ 만 11세까지)</li><li class="last">유아 : 36개월 이하</li>
	</ul>
	</div>

	<div class="btnList">
		<a href="#none" class="btnSubmit"><img src="${pageContext.request.contextPath}/images/ko/mem/new_2019/reserve_step1_ok.gif" alt="확인" draggable="false"></a><!-- 선택이 되어있지 않을 경우에만 class disabled 추가 -->
	</div>
</div>
	    <!--// 객실인원선택 -->
	</div>

<!-- // hub 예약 영역 -->

</div>


<!-- // 메인 비쥬얼 -->
<div class="mainHubContent" id="seoulBtn">
	<!-- 다이닝배너 -->
	<div class="diningMainBanner">
		<a href="/fbresv/web/memDiningStepWait.do"><img src="${pageContext.request.contextPath}/images/ko/mem/new_2020/diningMainBanner.jpg" alt="다이닝 예약 바로가기"></a>
	</div>
	<!-- specialOffer -->
	 <div class="specialOffer">
		<a href="/membership/offers/pack/memListRewardsPack.do"><h2 class="sptitle">스페셜 오퍼(Special Offers)</h2></a>
		<div class="specialOfferSlide">
			
		<div class="flex-viewport" style="overflow: hidden; position: relative;"><ul class="slides" style="width: 600%; transition-duration: 0s; transform: translate3d(-1200px, 0px, 0px);"><li class="first last clone" aria-hidden="true" style="width: 1200px; float: left; display: block;">
					<div class="slideType1">
						<div class="type1">
							<div class="offerImg pck">
								<a href="https://www.shillahotels.com/membership/offers/event/memViewRewardsEvent.do?spofrId=24455">
									<img src="${pageContext.request.contextPath}/images/contents/main/MAIN_HUB/R0000001JH65_KR.jpg" alt="Gourmet 패키지 | 2022.01.01~2022.05.31" draggable="false">
									<div class="slideDesc">Autumn Edition</div>
								</a>
							</div>
							<ul>
								<li class="pck first">
									<a href="https://www.shillahotels.com/membership/offers/event/memViewRewardsEvent.do?spofrId=25735">
										<img src="${pageContext.request.contextPath}/images/contents/main/MAIN_HUB/R0000001KQ38_KR.jpg" alt="이벤트 -KIDS FRIENDLY VACATION / 2022년 7월 31일까지" draggable="false">
										<div class="slideDesc">Autumn Edition</div>
									</a>
								</li>
								<li class="pck last">
									<a href="https://www.shillahotels.com/membership/offers/pack/memViewRewardsPack.do?spofrId=26138">
										<img src="${pageContext.request.contextPath}/images/contents/main/MAIN_HUB/R0000001LM83_KR.jpg" alt="서울 - REWARDS Blooming Moment / 22년 5월 26일까지 중 화~목" draggable="false">
										<div class="slideDesc">Autumn Edition</div>
									</a>
								</li>
							</ul>
						</div>
						<div class="type2">
							<ul>
								<li class="pck first">
									<a href="https://www.shillahotels.com/membership/offers/pack/memViewRewardsPack.do?spofrId=12977">
										<img src="${pageContext.request.contextPath}/images/contents/main/MAIN_HUB/R0000001LPU9_KR.jpg" alt="제주 - Member Exclusive 패키지 / 2022년 12월 31일까지" draggable="false">
										<div class="slideDesc">Autumn Edition</div>
									</a>
								</li>
								<li class="pck last">
									<a href="https://www.shillahotels.com/membership/offers/pack/memViewRewardsPack.do?spofrId=21446">
										<img src="${pageContext.request.contextPath}/images/contents/main/MAIN_HUB/R0000001KXTH_KR.jpg" alt="스테이 - REWARDS SMART STREAMING - 2022년 6월 31일까지" draggable="false">
										<div class="slideDesc">Autumn Edition</div>
									</a>
								</li>
							</ul>
						</div>
					</div>
				</li>
<li class="first last flex-active-slide" style="width: 1200px; float: left; display: block;">
					<div class="slideType1">
						<div class="type1">
							<div class="offerImg pck">
								<a href="https://www.shillahotels.com/membership/offers/event/memViewRewardsEvent.do?spofrId=24455">
									<img src="${pageContext.request.contextPath}/images/contents/main/MAIN_HUB/R0000001JH65_KR.jpg" alt="Gourmet 패키지 | 2022.01.01~2022.05.31" draggable="false">
									<div class="slideDesc">Autumn Edition</div>
								</a>
							</div>
							<ul>
								<li class="pck first">
									<a href="https://www.shillahotels.com/membership/offers/event/memViewRewardsEvent.do?spofrId=25735">
										<img src="${pageContext.request.contextPath}/images/contents/main/MAIN_HUB/R0000001KQ38_KR.jpg" alt="이벤트 -KIDS FRIENDLY VACATION / 2022년 7월 31일까지" draggable="false">
										<div class="slideDesc">Autumn Edition</div>
									</a>
								</li>
								<li class="pck last">
									<a href="https://www.shillahotels.com/membership/offers/pack/memViewRewardsPack.do?spofrId=26138">
										<img src="${pageContext.request.contextPath}/images/contents/main/MAIN_HUB/R0000001LM83_KR.jpg" alt="서울 - REWARDS Blooming Moment / 22년 5월 26일까지 중 화~목" draggable="false">
										<div class="slideDesc">Autumn Edition</div>
									</a>
								</li>
							</ul>
						</div>
						<div class="type2">
							<ul>
								<li class="pck first">
									<a href="https://www.shillahotels.com/membership/offers/pack/memViewRewardsPack.do?spofrId=12977">
										<img src="${pageContext.request.contextPath}/images/contents/main/MAIN_HUB/R0000001LPU9_KR.jpg" alt="제주 - Member Exclusive 패키지 / 2022년 12월 31일까지" draggable="false">
										<div class="slideDesc">Autumn Edition</div>
									</a>
								</li>
								<li class="pck last">
									<a href="https://www.shillahotels.com/membership/offers/pack/memViewRewardsPack.do?spofrId=21446">
										<img src="${pageContext.request.contextPath}/images/contents/main/MAIN_HUB/R0000001KXTH_KR.jpg" alt="스테이 - REWARDS SMART STREAMING - 2022년 6월 31일까지" draggable="false">
										<div class="slideDesc">Autumn Edition</div>
									</a>
								</li>
							</ul>
						</div>
					</div>
				</li>
<li class="first last clone" aria-hidden="true" style="width: 1200px; float: left; display: block;">
					<div class="slideType1">
						<div class="type1">
							<div class="offerImg pck">
								<a href="https://www.shillahotels.com/membership/offers/event/memViewRewardsEvent.do?spofrId=24455">
									<img src="${pageContext.request.contextPath}/images/contents/main/MAIN_HUB/R0000001JH65_KR.jpg" alt="Gourmet 패키지 | 2022.01.01~2022.05.31" draggable="false">
									<div class="slideDesc">Autumn Edition</div>
								</a>
							</div>
							<ul>
								<li class="pck first">
									<a href="https://www.shillahotels.com/membership/offers/event/memViewRewardsEvent.do?spofrId=25735">
										<img src="${pageContext.request.contextPath}/images/contents/main/MAIN_HUB/R0000001KQ38_KR.jpg" alt="이벤트 -KIDS FRIENDLY VACATION / 2022년 7월 31일까지" draggable="false">
										<div class="slideDesc">Autumn Edition</div>
									</a>
								</li>
								<li class="pck last">
									<a href="https://www.shillahotels.com/membership/offers/pack/memViewRewardsPack.do?spofrId=26138">
										<img src="${pageContext.request.contextPath}/images/contents/main/MAIN_HUB/R0000001LM83_KR.jpg" alt="서울 - REWARDS Blooming Moment / 22년 5월 26일까지 중 화~목" draggable="false">
										<div class="slideDesc">Autumn Edition</div>
									</a>
								</li>
							</ul>
						</div>
						<div class="type2">
							<ul>
								<li class="pck first">
									<a href="https://www.shillahotels.com/membership/offers/pack/memViewRewardsPack.do?spofrId=12977">
										<img src="${pageContext.request.contextPath}/images/contents/main/MAIN_HUB/R0000001LPU9_KR.jpg" alt="제주 - Member Exclusive 패키지 / 2022년 12월 31일까지" draggable="false">
										<div class="slideDesc">Autumn Edition</div>
									</a>
								</li>
								<li class="pck last">
									<a href="https://www.shillahotels.com/membership/offers/pack/memViewRewardsPack.do?spofrId=21446">
										<img src="${pageContext.request.contextPath}/images/contents/main/MAIN_HUB/R0000001KXTH_KR.jpg" alt="스테이 - REWARDS SMART STREAMING - 2022년 6월 31일까지" draggable="false">
										<div class="slideDesc">Autumn Edition</div>
									</a>
								</li>
							</ul>
						</div>
					</div>
				</li></ul></div><ol class="flex-control-nav flex-control-paging"></ol></div>
		<a href="/membership/offers/pack/memListRewardsPack.do" class="btnOfferMore"><img src="${pageContext.request.contextPath}/images/ko/hub/main/btnOfferMore.gif" alt="더보기"></a>
	</div>
<!-- 신라리워즈 -->
				<div class="rewardsWrap">
					<div class="rewardsWrapInner">
						<h2 class="rwTitle"><img src="${pageContext.request.contextPath}/images/ko/hub/main/rwTitle.gif" alt="Shilla Rewards Membership"></h2>
						<ul class="rwDesc">
							<li class="first"><a href="/membership/offers/pack/memListRewardsPack.do"><img src="${pageContext.request.contextPath}/images/ko/hub/main/rwDesc1.gif" alt="회원전용상품 회원을 위한 상품과 이벤트"></a></li>
							<li><a href="/membership/offers/benefits/memBenefitsIndex.do"><img src="${pageContext.request.contextPath}/images/ko/hub/main/rwDesc2.gif" alt="회원전용 프로모션"></a></li>
							<li class="last"><a href="/membership/offers/earnUse/memEarnUseIndex.do"><img src="${pageContext.request.contextPath}/images/ko/hub/main/rwDesc3.gif" alt="신라리워즈 포인트 현금처럼 사용가능한 포인트"></a></li>
						</ul>
						<div class="rwBenefit">
							<img src="${pageContext.request.contextPath}/images/ko/hub/main/rwBenefit.gif" alt="신라리워즈 혜택">
							<a href="/membership/offers/benefits/memBenefitsIndex.do" class="btnRwMore"><img src="${pageContext.request.contextPath}/images/ko/hub/main/btnRwMore.gif" alt="자세히보기"></a>
						</div>
						<div class="rwJoin">
							<img src="${pageContext.request.contextPath}/images/ko/hub/main/rwCard.png" alt="신라리워즈">
							<a href="/mem/mbr/join/memViewBrowsewrap.do" class="btnRwJoin"><img src="${pageContext.request.contextPath}/images/ko/hub/main/btnRwJoin.gif" alt="가입하기"></a>
						</div>
					</div>
				</div>
			<div class="hubVideo">
					<div class="enjoyTit">갤러리</div>
					<div class="youtube">
						<iframe src="https://www.youtube.com/embed/81xxCLvADlU?rel=0&amp;showinfo=0" width="1200" height="678" frameborder="0"></iframe>
					</div>
				</div>

			<!-- 뉴스레터 -->
	 <div class="newsLetterWrap"><!-- 2022-01-11 뉴스레터 보이게 -->
		<div class="newsLetterWrapInner clearfix">
			<h2 class="nlTitle fl">
				<img src="${pageContext.request.contextPath}/images/ko/hub/main/nlTitle.png" alt="뉴스레터 구독신청">
			</h2>
			<div class="nlContent clearfix fl">
				<div class="nlEmailEnroll fl">
					<div class="nlEmailEnrollLayer">
						<input type="text" id="regEmail1" class="emailAd" style="ime-mode:disabled;text-transform: lowercase;" placeholder="이메일 주소를 입력해주세요." autocomplete="off"><span>@</span><input type="text" id="regEmail2" autocomplete="off" class="" style="ime-mode:disabled;text-transform: lowercase;">
					</div>
					<div class="optionList">
						<div class="selectWrap0">
							<div class="selector" id="uniform-nlEmailDomainCdReg" style="width: 146px;"><span style="width: 126px; user-select: none;">직접입력</span><select id="nlEmailDomainCdReg" class="" onchange="emailSet('reg',this.value)">
								<option value="" selected="selected">직접입력</option>
								<option value="naver.com" title="naver.com">naver.com</option>
								<option value="hanmail.net" title="hanmail.net">hanmail.net</option>
								<option value="hotmail.com" title="hotmail.com">hotmail.com</option>
								<option value="nate.com" title="nate.com">nate.com</option>
								<option value="yahoo.co.kr" title="yahoo.co.kr">yahoo.co.kr</option>
								<option value="empas.com" title="empas.com">empas.com</option>
								<option value="dreamwiz.com" title="dreamwiz.com">dreamwiz.com</option>
								<option value="freechal.com" title="freechal.com">freechal.com</option>
								<option value="lycos.co.kr" title="lycos.co.kr">lycos.co.kr</option>
								<option value="korea.com" title="korea.com">korea.com</option>
								<option value="gmail.com" title="gmail.com">gmail.com</option>
								<option value="hanmir.com" title="hanmir.com">hanmir.com</option>
								<option value="paran.com" title="paran.com">paran.com</option>
								</select></div>
						</div>
					</div>
				</div>
				<a href="#none" class="btnNlApply" title="뉴스레터 구독 신청"><!-- 동의요청 팝업 -->
					<img src="${pageContext.request.contextPath}/images/ko/hub/main/btnNlApply.jpg" alt="신청">
				</a>
				<div class="nlNoticeTxt">
					<p class="nlErrorTxt">
						<img src="${pageContext.request.contextPath}/images/ko/hub/main/newLetterError.png" alt="올바른 이메일형식이 아닙니다."> <span>올바른 이메일형식이 아닙니다.</span>
					</p>
					<p class="nlCancleTxt">뉴스레터 구독 취소를 원하신다면 <a href="#none" class="btnNlCancle" title="뉴스레터 구독 취소 신청">여기</a>를 클릭해 주십시오.</p><!-- 구독취소 팝업 -->
				</div>
			</div>
		</div>
	</div>
	<!-- 뉴스레터 수신을 위한 개인정보 수집 및 이용 동의 팝업 -->
	<div id="nlAgreePop" style="display: none;">
		<div class="popLayer popNewLetterAgree">
			<div class="popHead">
				<h2 class="tit">
					<img src="${pageContext.request.contextPath}/images/ko/hub/main/nlAgreeTitle.jpg" alt="뉴스레터 수신을 위한 개인정보 수집 및 이용 동의">
				</h2>
				<div class="btn">
					<a class="btnClose" href="#none"><span>닫기</span></a>
				</div>
			</div>
			<div class="popCtn">
				<p class="emailTxt">뉴스레터 수신을 위한 개인정보 수집 및 이용 동의 안내 (필수)</p>
				<dl>
					<dt>1. 개인정보 수집 항목</dt>
					<dd>- 이메일 주소</dd>
					<dt>2. 수집 및 이용 목적</dt>
					<dd>- 뉴스레터 발송</dd>
					<dt>3. 보유 및 이용기간</dt>
					<dd>- 수신거부 시까지</dd>
				</dl>
				<p class="emailTxtA">※ 동의를 거부 하실 수 있으나, 동의 거부 시 뉴스레터 수신이 불가능합니다.</p>
				<div class="btnBox">
					<a href="#none" class="btnNlAgree" title="동의"><!-- 구독 신청 완료 팝업 출력 예정 -->
						<img src="${pageContext.request.contextPath}/images/ko/hub/main/btnNlAgree.jpg" alt="동의">
					</a>
				</div>
			</div>
		</div>
		<div class="mdScreen" style="height: 4026px; display: none;"></div>
	</div>
	<!-- 뉴스레터 구독 취소 안내 -->
	<div id="nlCanclePop" style="display: none;">
		<div class="popLayer popNewLetterCancle" style="">
			<div class="popHead">
				<h2 class="tit">
					<img src="${pageContext.request.contextPath}/images/ko/hub/main/nlCancleTitle.jpg" alt="뉴스레터 구독 취소 안내">
				</h2>
				<div class="btn">
					<a class="btnClose" href="#none"><span>닫기</span></a>
				</div>
			</div>
			<div class="popCtn" style="">
				<p class="emailTxt">뉴스레터를 더 이상 수신하고 싶지 않으시다면 신청하신 이메일 주소를 입력하신 후,<br>수신거부 동의 버튼을 클릭해 주시기 바랍니다.</p>
				<div class="nlContent clearfix" style="">
					<div class="nlEmailEnroll fl" style="">
						<div class="nlEmailEnrollLayer">
							<input type="text" id="delEmail1" class="emailAd" style="ime-mode:disabled;text-transform: lowercase;" placeholder="이메일 주소를 입력해주세요." autocomplete="off"><span>@</span><input type="text" id="delEmail2" style="ime-mode:disabled;text-transform: lowercase;" autocomplete="off">
						</div>
						<div class="optionList" style="">
							<div class="selectWrap0" style="">
								<div class="selector" id="uniform-nlEmailDomainCdDel" style="width: 119px;"><span style="width: 109px; user-select: none;">직접입력</span><select id="nlEmailDomainCdDel" class="" onchange="emailSet('del',this.value)" style="">
									<option value="" selected="selected">직접입력</option>
									<option value="naver.com" title="naver.com">naver.com</option>
									<option value="hanmail.net" title="hanmail.net">hanmail.net</option>
									<option value="hotmail.com" title="hotmail.com">hotmail.com</option>
									<option value="nate.com" title="nate.com">nate.com</option>
									<option value="yahoo.co.kr" title="yahoo.co.kr">yahoo.co.kr</option>
									<option value="empas.com" title="empas.com">empas.com</option>
									<option value="dreamwiz.com" title="dreamwiz.com">dreamwiz.com</option>
									<option value="freechal.com" title="freechal.com">freechal.com</option>
									<option value="lycos.co.kr" title="lycos.co.kr">lycos.co.kr</option>
									<option value="korea.com" title="korea.com">korea.com</option>
									<option value="gmail.com" title="gmail.com">gmail.com</option>
									<option value="hanmir.com" title="hanmir.com">hanmir.com</option>
									<option value="paran.com" title="paran.com">paran.com</option>
									</select></div>
							</div>
						</div>
					</div>
				</div>
				<div class="nlNoticeTxt">
					<p class="nlErrorTxt" style="display: none;" id="delErrorTxt">
						<img src="${pageContext.request.contextPath}/images/ko/hub/main/newLetterError.png" alt="올바른 이메일형식이 아닙니다."> <span>올바른 이메일형식이 아닙니다.</span>
					</p>
				</div>
				<p class="emailTxtA">※ 추가 문의 사항은 전화 문의해주시기 바랍니다.</p>
				<div class="btnBox">
					<a href="#none" class="btnNlAgreeCancle" title="수신거부 동의"><!-- 구독 취소 완료 팝업 출력 예정 -->
						<img src="${pageContext.request.contextPath}/images/ko/hub/main/btnNlAgreeCancle.jpg" alt="수신거부 동의">
					</a>
				</div>
			</div>
		</div>
		<div class="mdScreen" style="height: 4026px; display: none;"></div>
	</div>
	 <!-- //뉴스레터 -->
	 </div>
</form>

<script>
	//메인 뉴스레터 구독 신청 및 구독 취소 팝업
	$(document).ready(function(){
		//구독 신청
		$(".btnNlApply").on("click", function(){
			if(!emailCheck('reg')){
				$("#regEmail2").focus();
				return false;
			};
			$("#nlAgreePop, #nlAgreePop .mdScreen").show();
		});
		//구독 신청 닫기
		$("#nlAgreePop .btnClose").on("click", function(){
			$("#nlAgreePop, #nlAgreePop .mdScreen").hide();			
		});
		//구독 취소
		$(".btnNlCancle").on("click", function(){
			$("#nlCanclePop, #nlCanclePop .mdScreen").show();
		});
		//구독 취소 닫기
		$("#nlCanclePop .btnClose").on("click", function(){
			$("#nlCanclePop, #nlCanclePop .mdScreen").hide();
		});
		//동의 click 시 alert 출력
		$(".btnNlAgree").on("click", function(){
			
			var email;
			email = $("#regEmail1").val()+"@"+$("#regEmail2").val();
			
			$.ajax({
				url: '/newsletter/regist.do',
				type: "post",
				dataType:"json",
				data: {
					email: email
				},
				error: function(request,status,error){
					alert("뉴스레터 수신 동의에 실패하였습니다.");
				},
				success: function( data ){
					if(data.model.result == "ok"){
						alert("고객님은 "+getMD()+" 뉴스레터 수신에 동의하셨습니다.");
						$("#nlAgreePop, #nlAgreePop .mdScreen").hide();
						$("#regEmail1").val("");
						$("#regEmail2").val("");
						$.uniform.update($("#nlEmailDomainCdReg").val(""));
					}else if(data.model.result == "overlap"){
						alert("이미 뉴스레터 수신에 등록되어 있는 이메일입니다.");
					}else{
						alert("뉴스레터 수신 동의에 실패하였습니다.");
					}
				},
			});
			
		});
		//수신거부 동의 click 시 alert 출력
		$(".btnNlAgreeCancle").on("click", function(){
			if(!emailCheck('del')){
				$("#delEmail2").focus();
				return false;
			};
			
			var email;
			email = $("#delEmail1").val()+"@"+$("#delEmail2").val();
			
			$.ajax({
				url: '/newsletter/remove.do',
				type: "post",
				dataType:"json",
				data: {
					email: email
				},
				error: function(request,status,error){
					alert("뉴스레터 수신 거부에 실패하였습니다.");
				},
				success: function( data ){
					if(data.model.result == "ok"){
						alert("고객님은 "+getMD()+" 뉴스레터 수신거부에 동의하셨습니다.");
						$("#nlCanclePop, #nlCanclePop .mdScreen").hide();
						$("#delEmail1").val("");
						$("#delEmail2").val("");
						$.uniform.update($("#nlEmailDomainCdDel").val(""));
					}else if(data.model.result == "notemail"){
						alert("일치하는 이메일 주소를 찾지 못했습니다. \n뉴스레터를 신청하지 않으셨거나,\n이미 구독 취소 하셨을 수도 있습니다.");
					}else{
						alert("뉴스레터 수신 거부에 실패하였습니다.");
					}
				},
			});
		});
		//select uniform 적용
		$("select").not(".design-checkbox").uniform();
	});
	
	function emailSet(type, value){
		if(type == 'reg'){
			$("#regEmail2").val(value)
		}else{
			$("#delEmail2").val(value)
		}
	}
	
	//이메일 형식 체크
	function emailCheck(type) {
		
		var email;
		if(type == 'reg'){
			email = $("#regEmail1").val()+"@"+$("#regEmail2").val();
		}else{
			email = $("#delEmail1").val()+"@"+$("#delEmail2").val();
		}
		
		//var exptext = /^[0-9A-Z]([-_\.]?[0-9A-Z])*@[0-9A-Z]([-_\.]?[0-9A-Z])*\.[A-Z]{2,3}$/i
		var exptext =/([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
		if(exptext.test(email) == false) {
			// 이메일 형식이 알파벳+숫자@알파벳+숫자.알파벳+숫자 형식이 아닐경우
			displayErrorTxt(type,'f');
			return false;
		}
		displayErrorTxt(type,'t');
		return true;
	}
	
	function getMD(){
		var date = new Date();
		var month = date.getMonth()+1 < 10 ? "0"+(date.getMonth()+1) : (date.getMonth()+1);
		var day = date.getDate() < 10 ? "0"+date.getDate() : date.getDate();
		
		return month+"월 "+day+"일"; 
	}
	
	function displayErrorTxt(type,bool){
		
		if(type == 'reg'){
			if(bool == 't'){
				$(".nlErrorTxt").hide();
			}else{
				$(".nlErrorTxt").show();
			}
		}else{
			if(bool == 't'){
				$("#delErrorTxt").hide();				
			}else{
				$("#delErrorTxt").show();
			}
		}
	}
	
</script><div id="emailAdCollectPop" style="display:none"></div><div id="footerEmailLayer" style="display:none"></div><div class="foot footHub">
		<script type="text/javascript">
	function openIdInfo() {
		var url = "http://www.ftc.go.kr/bizCommPop.do?wrkr_no=2038143363";
		window.open(url, "bizCommPop", "width=750, height=700, scrollbars=1");
	}
</script>
<div class="localBox">
	<div class="localBoxer">
		<div class="compInfo">
			<h2 class="logo">THE SHILLA SEOUL</h2>
		</div>
		<!-- 20191218 MG -->
		<div class="brandWrap">
			<div class="brand"><dl><dt><a href="/index.do">The Shilla</a></dt></dl></div>
			<div class="brandMono"><a href="https://www.shillamonogram.com/mghub/index.do?lang=ko">신라모노그램</a></div>
			<div class="brandStay"><a href="https://www.shillastay.com/stayhub/index.do">신라스테이</a></div>
		</div>
		<div class="linkInfo">
			<dl class="introduction">
				<dd class="d1"><a href="/membership/inquires/aboutShilla/memOverView.do"><span>호텔신라 소개</span></a></dd> 
				<dd class="d2"><a href="/membership/inquires/contactus/memIndex.do"><span>고객문의</span></a></dd>
				<dd class="d3"><a href="/membership/inquires/aboutShilla/memSiteMap.do"><span>사이트맵</span></a></dd>
				<dd class="d4"><a href="/membership/inquires/memChangeRewards.do"><span>신라리워즈 전환 안내</span></a></dd>
				<dd class="d5"><a href="http://www.theshillashop.com/catalog/index.html" target="_blank"><span>The Shilla shop</span></a></dd>
					<dd class="d6"><a href="https://www.samsunggiftcard.net/common/sgc/index.html" target="_blank"><span>삼성상품권</span></a></dd>
					<dd class="d7"><a href="#" onclick="oldHopenO('oldHpopup'); return false;"><span>신라리워즈 전환 안내</span></a></dd>
				</dl>
			<dl class="inquiries">
				<!-- <dt class="dt">Coonect with us</dt> -->
				<dd class="d1"><a title="Facebook - popup" target="_blank" href="http://www.facebook.com/theshillahotels"><span>Facebook</span></a></dd>
				<dd class="d2"><a title="Instagram - popup" target="_blank" href="https://www.instagram.com/shillahotels/"><span>인스타그램</span></a></dd>
				<dd class="d4"><a title="Google+ - popup" href="https://plus.google.com/116571259877956708092" rel="publisher" target="_blank"><span>Google+</span></a></dd>
				<dd class="d3"><a title="Weibo - popup" target="_blank" href="http://weibo.com/shillahotel"><span>Weibo</span></a></dd>
			</dl>
			
			<dl class="ContactInfo">
				<dd class="d1"><span>서울신라호텔 02-2233-3131</span></dd> 
				<dd class="d2"><span>제주신라호텔 064-735-5114</span></dd>
				<dd class="d3"><span>신라스테이 02-2230-0700</span></dd>
				<dd class="d4"><span>신라리워즈 02-2230-5528</span></dd>
			</dl>
		</div>
	</div>
</div>
<div class="footer">
	<div class="linkBox">
		<ul>
			<li class="link1 first"><a href="/membership/memFooter/memAgreement.do">신라리워즈 약관</a></li>
			<li class="link2"><a href="/membership/memFooter/memIndividualPolicy.do">개인정보처리방침</a></li>
			<li class="link3"><a href="/membership/memFooter/pop/memEmailAdCollectPop.do" onclick="openCtrlPopup('/index.do/memFooter/pop/memEmailAdCollectPop.do','emailAdCollectPop');  return false;">이메일무단수집금지</a></li>
			<li class="link4"><a href="https://www.shillaaudit.com/audit/inf_information.do" target="_blank">윤리경영</a></li>
			<li class="link5 last"><a href="/membership/memFooter/pop/memSafeMngPop.do" onclick="openCtrlPopup('/index.do/memFooter/pop/memSafeMngPop.do','emailAdCollectPop');  return false;">건축/시설물 안전관리</a></li>  </ul>
	</div>
	<div class="selectLang">
		<ul>
			<li class="en first"><a href="/hub/cmm/setLang.do?lang=en">English</a></li>
					<li class="ja"><a href="/hub/cmm/setLang.do?lang=ja">日本語</a></li>
					<li class="zh last"><a href="/hub/cmm/setLang.do?lang=zh">简体中文</a></li>
					</ul>
	</div> 
	<div class="adressBox">
		<p>㈜호텔신라 서울특별시 중구 동호로 249 (우: 04605)  Tel: 02-2233-3131 Fax: 02-2230-3769 사업자등록번호: 203-81-43363 통신판매신고번호: 중구00272호 대표이사 이부진    호스팅서비스제공자 삼성SDS㈜    서울객실예약 shilla.reserve@samsung.com  제주객실예약 jejushilla@samsung.com</p>
		<a class="footLinkbtn" href="#" onclick="openIdInfo(); return false;">사업자 정보 확인</a>
		</div>
	<div class="copyright"><p>COPYRIGHT © HOTEL SHILLA CO., LTD. ALL RIGHTS RESERVED.</p></div>
</div>
				<!-- 17.03.28 popup 추가 -->
		            <div id="oldHpopup">
						<div class="oldHback" style="z-index:999;"></div>
						<div class="oldHwrap" style="z-index:999;">
						<div class="ctnTitle">
							<img alt="명품고택 소개" src="${pageContext.request.contextPath}/images/ko/hub/main/oldHpoptit.gif">
						<div class="close"><a href="#" onclick="oldHopenC('oldHpopup'); return false;">
							<img src="${pageContext.request.contextPath}/images/ko/mem/reservation/step1Infoclose.gif" alt="닫기"></a>
						</div>
						</div>
						<div class="ctnWrap">
							<img src="${pageContext.request.contextPath}/images/ko/hub/main/oldHctn.jpg">
                            	<p>경북 명품고택</p>
                            	<p>호텔신라가 문화체육관광부에서 선정한 경상북도 명품 고택을 소개하여 드립니다.</p>
                            	<p>여행 테마에 따라 우리나라 전통문화와 선조들의 멋과 정신을 오롯이 체험하실 수 있습니다.</p>
                            	<p>* 호텔신라는 고택 예약 서비스를 직접 운영하지 않으며, 본 사이트는 고택 소개 정보만을 제공하고 있음을 알려드립니다.</p>
                            	<p>신라호텔 고객의 문의 및 의견과 관련하여 귀사가 아래와 같이 본인의 개인정보를 수집 및 이용하는데 동의합니다.</p>
						<div class="btnCtn">
							<a class="oldHbtn" href="http://gyeongbukgotaek.modoo.at" target="_blank">자세히 보기</a></div>
						</div>
						</div>
						</div>
						<script>
						function oldHopenO(IdName) {
							var pop = document.getElementById(IdName);
							pop.style.display = "block";
							$('html, body').animate({scrollTop: 0 }, 'fast');
							return false;
						}

						function oldHopenC(IdName) {
							var pop = document.getElementById(IdName);
							pop.style.display = "none";
							return false;
						}
						</script>
				<iframe id="hidden_frame" name="hidden_frame" style="display:none" title="빈 프레임"> </iframe></div>
	





<script type="text/javascript" id="">document.all&&!document.addEventListener||window.proxied_alert||(window.proxied_alert=window.alert,window.alert=function(){var a=arguments[0]?arguments[0]:"null";dataLayer.push({event:"alert_showed",alert_message:a});return proxied_alert.apply(this,arguments)});</script><script type="text/javascript" id="">(function(){if(null==sessionStorage.getItem("_PageViewCounter")||void 0==sessionStorage.getItem("_PageViewCounter"))sessionStorage.setItem("_PageViewCounter",1);else{var f=0;f=parseInt(sessionStorage.getItem("_PageViewCounter"));f+=1;sessionStorage.setItem("_PageViewCounter",f)}var v=!0,l=2592E5;if(window.Storage){var c=JSON.parse(localStorage.getItem("_tab_ids"))||[],d=sessionStorage.getItem("_tab_id"),a=JSON.parse(sessionStorage.getItem("_nav_path")),e=document.location.href;f=!1;var w=document.location.origin,
t,p,m,g,u=function(b){return 0===l?b:b.filter(function(h){try{return m=parseInt(h.split("_")[1],10),m>(new Date).getTime()}catch(q){return!1}})};var r=function(b){if(0===l)return b;try{g=b.split("_");m=parseInt(g[1],10);if(m>(new Date).getTime())return b;g=g[0]+"_"+((new Date).getTime()+l);sessionStorage.setItem("_tab_id",g);return g}catch(h){return b}};var x=function(){if(!1===v)return"BACK/FORWARD";if(2>a.length)return"FORWARD";t=a[a.length-2];p=a[a.length-1];return t===e||p===e?"BACK":"FORWARD"},
y=function(){c=JSON.parse(localStorage.getItem("_tab_ids"))||[];d=sessionStorage.getItem("_tab_id");c=u(c);if(c.length&&null!==d){var b=c.indexOf(d);-1<b&&c.splice(b,1);localStorage.setItem("_tab_ids",JSON.stringify(c))}},z=function(){var b=(new Date).getTime();"undefined"!==typeof performance&&"function"===typeof performance.now&&(b+=performance.now());return"xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx".replace(/[xy]/g,function(h){var q=(b+16*Math.random())%16|0;b=Math.floor(b/16);return("x"===h?q:q&3|
8).toString(16)})+(0<l?"_"+((new Date).getTime()+l):"")},A=function(b,h){return!(!0===h&&0!==b&&255!==b)};null===d?(d=z(),f=!0,sessionStorage.setItem("_tab_id",d)):d=r(d);c=u(c);-1===c.indexOf(d)&&(c.push(d),localStorage.setItem("_tab_ids",JSON.stringify(c)));r=c.length;if(window.PerformanceNavigation){a=a||[];var n=window.performance.navigation.redirectCount;if(A(window.performance.navigation.type,f))switch(window.performance.navigation.type){case 0:var k="NAVIGATE";a.push(e);break;case 1:k="RELOAD";
0!==a.length&&a[a.length-1]===e||a.push(e);break;case 2:k=x();"FORWARD"===k?-1<document.referrer.indexOf(w)&&a.push(e):"BACK"===k?p!==e&&a.pop():a.push(e);break;default:k="OTHER",a.push(e)}else a.push(e);sessionStorage.setItem("_nav_path",JSON.stringify(a))}window.addEventListener("beforeunload",y);n={tabCount:r,redirectCount:n,navigationType:k,newTab:!0===f?"New":"Existing",tabId:d.replace(/_.+/,"")};window.google_tag_manager[google_tag_manager["GTM-T3LBJ26"].macro(80)].dataLayer.set("browsingBehavior",n);window.dataLayer.push({event:"custom.navigation",
browsingBehavior:n})}})();</script>
</body></html>