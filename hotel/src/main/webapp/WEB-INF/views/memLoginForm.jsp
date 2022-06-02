<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko" class="webkit chrome win  retina ratio1_25 js portrait tabletwide"><head>
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>로그인 | The Shilla Hotels &amp; Resorts</title>
<link href="${pageContext.request.contextPath}/css/mem/common.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/css/mem/title_ko.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/css/mem/common/print.css" rel="stylesheet" type="text/css" media="print">
<link href="${pageContext.request.contextPath}/css/mem/mainImages_ko.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/css/mem/common/reserve_new.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/css/mem/common/lang-ko_N.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/css/mem/common/btn_ko.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/css/common/swiper.min.css" rel="stylesheet" type="text/css">
<script src="${pageContext.request.contextPath}/js/json2.js" charset="UTF-8" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/js/jquery-1.8.3.js" charset="UTF-8" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/js/uniform.js" charset="UTF-8" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/js/browser.js" charset="UTF-8" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/js/style.hub.js" charset="UTF-8" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/js/swiper.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/js/style.advance.js" charset="UTF-8" type="text/javascript"></script><!-- 개선 : js 추가 -->
<script src="${pageContext.request.contextPath}/js/resv/advResvCalendar.js" charset="UTF-8" type="text/javascript"></script> <!-- [2019_모션추가]3 달력 고도화 -->
<script src="${pageContext.request.contextPath}/index.do/secu/messageJs.do" charset="UTF-8" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/js/common.js" charset="UTF-8" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/js/commonEx.js" charset="UTF-8" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/js/jquery.slides.js" charset="UTF-8" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/js/mbr/popLogin.js" charset="UTF-8" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/js/mbr/forIdPwd.js" charset="UTF-8" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/js/mbr/mbshPointRead.js" charset="UTF-8" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/js/resv/resvCalendar.js" charset="UTF-8" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/js/resv/resvPromotionCalendar.js" charset="UTF-8"></script>
<script src="${pageContext.request.contextPath}/js/resv/resv.js" charset="UTF-8"></script>
<script src="${pageContext.request.contextPath}/js/resv/din.js" charset="UTF-8"></script>
<script src="${pageContext.request.contextPath}/js/ask/ask.js" charset="UTF-8"></script>
<script src="${pageContext.request.contextPath}/js/mbr/zipno.js" charset="UTF-8"></script>
<script src="${pageContext.request.contextPath}/js/offers/makeAPlan.js" charset="UTF-8"></script>
<script src="${pageContext.request.contextPath}/js/mbr/mbr_join.js" charset="UTF-8"></script><script src="/js/jquery.cookie.js" charset="UTF-8"></script>
<script src="${pageContext.request.contextPath}/js/placeholders.js" charset="UTF-8" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/js/rewards_new2020.js" charset="UTF-8" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/js/dining_new2020.js" charset="UTF-8" type="text/javascript"></script>
<!--[if IE 6]><script src="/js/png24.js"></script><![endif]-->

<script type="text/javascript">

	</script>
<meta name="description" content="로그인"><!-- <meta name="keywords" content="로그인" /> -->
<meta name="og:title" content="로그인 | The Shilla Hotels &amp; Resorts">
<!-- 검색엔진용 추가 180524 -->
<meta name="keywords" content="신라스테이,신라호텔,서울신라호텔,제주신라호텔,호텔신라,럭셔리호텔,신라리워즈">
<meta name="description" content="국내 최고 럭셔리 호텔인 호텔신라는 신라호텔과 신라스테이 브랜드를 보유하고 있습니다.">
<meta name="subject" content="신라스테이 소개,신라 리워즈 안내,브랜드 및 호텔 소개,객실 패키지 안내,온라인 최저가 예약,">
<script type="text/javascript" async="" src="https://www.google-analytics.com/analytics.js"></script>
<script gtm="GTM-T3LBJ26" type="text/javascript" async="" src="https://www.google-analytics.com/gtm/optimize.js?id=OPT-NQ9CLZ3"></script>
<script type="text/javascript" async="" src="https://www.googletagmanager.com/gtag/js?id=G-30Y6N61ES4&amp;l=dataLayer&amp;cx=c"></script>
<script type="text/javascript" async="" src="https://www.google-analytics.com/analytics.js"></script>
<script async="" src="https://www.googletagmanager.com/gtm.js?id=GTM-T3LBJ26"></script>
<script type="text/javascript">

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
	if(today != '2022-05-27'){
		today = today.split("-");
		var originToday = "2022-05-27".split("-");
		
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
</script></head><body class="subBody joinBody"><div id="popCalendarDiv" class="popCalendar" style="display:none"></div>

<div id="popForIdPwDiv" style="display:none">0</div>
<div id="popLoginDiv" class="popLogin" style="display:none"></div>
<div id="mbshPotinRead" style="display:none"></div>
<div id="makeAPlanLayerDiv" class="popLogin" style="display:none"></div>
<div id="zipNoLayerDiv" class="popLogin" style="display:none"></div>
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



<!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-T3LBJ26"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->

<dl class="skipNavi">
	<dt>THE SHILLA 바로가기 메뉴</dt><dd><a class="goContents" href="#contents">본문으로 바로가기</a></dd></dl>

<div class="subWrap subWrapHub">
	<div class="head headHub">
		<script type="text/javascript">
	$(document).ready(function(){
		$(".findBtn a").click(function(){
		 	$(".findBox").slideToggle("fast");
		});
	});
	function ssoLogout() {
		location.href = "/membership/login/SSOLogout.do";

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
  <h1 class="logo"><a href="/index.do">THE SHILLA HOTELS &amp; RESORTS</a></h1>
  <!-- 로그인 -->
  <span class="loginArea">
	<a href="/hotel/memLoginForm">로그인</a>
    <a href="/hotel/memJoinAgreeForm">신라리워즈 가입</a>
    </span>
  <!-- 예약확인 추가 -->
  <div class="resvConfirm">
		  <div class="resvConBox">
			  <a class="btn" href="#">예약확인<!-- 예약확인 --></a>
			  <ul class="list" style="display: none;">
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
			<a class="btn" href="#">한국어</a><ul class="list" style="display: none;">
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
						<dt><a href="/index.do"><img src="${pageContext.request.contextPath}/images/ko/mem/new_2019/main_tab1_tit1" alt="THE SHILLA"></a></dt>
						<dd>
							<ul>
							<li class="first"><a href="https://www.shilla.net/seoul/index.do?lang=ko">서울신라호텔</a></li>
														<li class="last"><a href="https://www.shilla.net/jeju/index.do?lang=ko">제주신라호텔</a></li>
														</ul>
						</dd>
					</dl>
					<dl>
						<dt><a href="https://www.shillamonogram.com/mghub/index.do?lang=ko"><img src="/images/ko/mem/new_2019/main_tab1_tit2" alt="SHILLA MONOGRAM"></a></dt>
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
	
	<div class="contain">
		<script type="text/javascript">

jQuery(function() {





	var msg = "step1";

	if(msg != ""){
		if(msg == "step2" || msg == "step1" || msg == "secret"){
			msg = messages["msg.login.members.only"];
			alert(msg);
		}else if(msg == "02"){
			alert('조회된 예약정보가 없습니다.');
		}else if(msg == "NonOnlineResv"){
			openPopup('ResvRouteInfo');
		}else{
			alert(msg);
		}/*//시크릿 특가 상품 관련 알럿
		else if(msg =="msg.login.members.only"){
			alert(msg);
		} msg 다른쪽에 사용하는 부분이 없어 else 삭제함.
		또한 회원전용상품 내 로그인 필요한 상품의 경우 로그인하면 다시 해당 링크로 이동 시키기 위해 message에 spofrId 를 넣어 alert 발생시키면 안됨
		MemBbRewardsOffersPackCtrl.java memViewRewardsPack 357 라인 참조
		else{
			alert(msg);
		} */
	}

	 $("#rememberId").click(function () {
			$("input[id=rememberId]:checked").each(function() {
				alert(messages["msg.rewards.id.remember"]);
			});
	    });
});

cookiId = "";


$(document).ready(function(e) {

	// 2020 로그인 탭 추가, class 변경
	$(".tabForm .loginTab ul li").click(function () {

		//회원, 비회원 탭 이미지 변경
		var tabType = $(this).index();
			$('.loginTab li').each(function(index){
			$(this).find('img').attr('src', $(this).find('img').attr('src').replace('_off','_on'));
			if(tabType != index){
				$(this).find('img').attr('src', $(this).find('img').attr('src').replace('_on','_off'));
			}

		});

		$(".tabContent .ctn").hide()
		var activeTab = $(this).attr("rel");
		var idenMem = $(this).attr("idenMem");
		$("#idenMem").val(idenMem);
		$("#" + activeTab).show()
	});

	//비로그인으로 예약확인 들어올시 비회원 탭 활성화
	var resvYn = '';
	if(resvYn == "Y"){
		$(".tabForm .loginTab ul li").eq(1).trigger("click");
	}



















	// 비회원 예약 라디오 탭
	$(".tabForm .rBtn input").on("click focus", function () {
		var divId = $(this).val();
		$(this).attr("checked", "checked");
		$(".tabForm .inputFormNo").removeClass("formOn");
		if ("Y" == divId) {
			$("#roomR").addClass("formOn");
			$(".diningT").hide();
		} else {
			$("#diningR").addClass("formOn");
			$(".diningT").show();
		}
	});



	// 2020 로그인 탭 추가, class 변경

	// 2020-11-26 로그인 인풋 js 수정
	// 회원 인풋 박스 컨트롤
	$("#loginForm input").val("");
	$("#loginForm input").on("focus", function(){
		var $idTxt = $(this).val();
		if ( $idTxt ==("") ) {
			$(this).addClass("uiFocus");
		}
	});
	$("#loginForm input").on("blur", function(){
		var $idTxt = $(this).val();
		if ( $idTxt ==("") ) {
			$(this).val("");
			$(this).removeClass("uiFocus");
		}
	});

	$("#loginResvForm input.rName1").on({
		focus: function() {
			var $inputTxt = $(this).val();
			if ( $inputTxt ==('First name(이름)') ) {
				$(this).val("");
			}
		},
		blur: function() {
			var $inputTxt = $(this).val();
			if ( $inputTxt ==("") ) {
				$(this).val('First name(이름)');
			}
		}
	});

	$("#loginResvForm input.rName2").on({
		focus: function() {
			var $inputTxt = $(this).val();
			if ( $inputTxt ==('Last name(성)') ) {
				$(this).val("");
			}
		},
		blur: function() {
			var $inputTxt = $(this).val();
			if ( $inputTxt ==("") ) {
				$(this).val('Last name(성)');
			}
		}
	});

	$("#loginDiningForm input.rName1").on({
		focus: function() {
			var $inputTxt = $(this).val();
			if ( $inputTxt ==('First name(이름)') ) {
				$(this).val("");
			}
		},
		blur: function() {
			var $inputTxt = $(this).val();
			if ( $inputTxt ==("") ) {
				$(this).val('First name(이름)');
			}
		}
	});

	$("#loginDiningForm input.rName2").on({
		focus: function() {
			var $inputTxt = $(this).val();
			if ( $inputTxt ==('Last name(성)') ) {
				$(this).val("");
			}
		},
		blur: function() {
			var $inputTxt = $(this).val();
			if ( $inputTxt ==("") ) {
				$(this).val('Last name(성)');
			}
		}
	});

	$("#loginDiningForm input.rName3").on({
		focus: function() {
			var $inputTxt = $(this).val();
			if ( $inputTxt ==('이름') ) {
				$(this).val("");
			}
		},
		blur: function() {
			var $inputTxt = $(this).val();
			if ( $inputTxt ==("") ) {
				$(this).val('이름');
			}
		}
	});

	if (cookiId != "") {
		$("#j_username").focus();
		$("#j_username").val(cookiId);
	}

	//비회원 인풋박스 컨트롤
	$(".inputId input").val("");
	$(".inputId input").on("focus", function () {
		var $idTxt = $(this).val();
		if ($idTxt == ("")) {
			$(this).addClass("uiFocus");
		}
	});
	$(".inputId input").on("blur", function () {
		var $idTxt = $(this).val();
		if ($idTxt == ("")) {
			$(this).val("");
			$(this).removeClass("uiFocus");
		}
	});


	$("input").uniform();

});

//숫자만 입력
function onlyNumber(event){
	event = event || window.event;
	var keyID = (event.which) ? event.which : event.keyCode;
	if ( (keyID >= 48 && keyID <= 57) || (keyID >= 96 && keyID <= 105) || keyID == 8 || keyID == 46 || keyID == 37 || keyID == 39 || keyID == 17 || keyID == 9 || (event.ctrlKey && event.keyCode == 86))
		return;
	else
		return false;
}
function removeChar(event) {
	event = event || window.event;
	var keyID = (event.which) ? event.which : event.keyCode;
	if ( keyID == 8 || keyID == 46 || keyID == 37 || keyID == 39 )
		return;
	else
		event.target.value = event.target.value.replace(/[^0-9]/g, "");
}



//팝업 오픈
function openPopup(id) {
	jQuery("html, body").stop().animate({scrollTop: 0}, 0);
	jQuery(".dimmed").stop().show();
	jQuery("#" + id).stop().show();
}

//팝업 닫기
function closePopup(id) {
	jQuery("#" + id).stop().hide();
	jQuery(".dimmed").stop().hide();
}

var referers = "https://www.shillahotels.com/seoul/resv/rpm/memSetStep1.do";


function loginSubmit(){

	//회원 비회원 여부
	var rMember = $("#idenMem").val();

	if('Y' == rMember) { 
		if($.trim($('#j_username').val()) == ""){
			alert(messages["msg.cmm.required"].replaceMsg(['신라리워즈 번호 또는 아이디']));
			$('#j_username').focus();
			return;
		}
		if($.trim($('#j_password').val()) == ""){
			alert(messages["msg.cmm.required"].replaceMsg(['비밀번호']));
			$('#j_password').focus();
			return;
		}

		var rememberId = "";

		$("input[name^='rememberId']:checkbox:checked").each(function(index){
			rememberId = "Y";
		});

		$.ajax({
			url: '/membership/mbr/login/dormancyMemChk.do',
			type: "post",
			data: { "j_username": $("#j_username").val() ,"j_password" : $("#j_password").val()},
			dataType: "html",
			async : false,
			error: function(){
				$("#j_username").val("");
				$("#j_password").val("");
				$("#j_username").focus();
				alert("fail");
			},

			success: function( strData ){
				
				if("dormancyPopPw" == strData){
					//  휴면회원정보에 mbrpw 없는 회원은 레이어 팝업
					popForPw2('mem');
					return;
				}
				
				if("dormancySuccess" == strData){
					// 고객님의 휴면 계정이 활성화되었습니다.
					alert("고객님의 휴면 계정이 활성화되었습니다. ");
				}
				
				//비번찾기 레이어팝업 오픈 여부 start
				$.ajax({
					url: '/membership/mbr/login/memMbrPwStorageStatus.do',
					type: "post",
					data: { "j_username": $("#j_username").val() },
					dataType: "html",
					async : false,
					error: function(){
						$("#j_username").val("");
						$("#j_password").val("");
						$("#j_username").focus();
						alert("fail");
					},

					success: function( strData ){
					
						if("N" == strData){
								// mbrpw 없는 회원은 레이어 팝업
								popForPw2('mem');
								return;
						}else{
							//start login ajax
							$.ajax({
								url: '/login/login.secu',
								type: "post",
								data: { "j_username": $("#j_username").val() ,"j_password" : $("#j_password").val(),"rememberId" : rememberId , "popLoginYn" : "Y" },
								dataType: "html",
								error: function(){
									$("#j_username").val("");
									$("#j_password").val("");
									$("#j_username").focus();
									alert("fail");
								},
			
								success: function( strData ){
			
									var arr = strData.split(":");
			
									if("loginSuccess" == arr[0]){
			
										// 오페라 업그레이드로 인한 비밀번호 프로세스 변경 : 신라넷에 비밀번호 저장을 위해서 임시로(고객VOC방지) 정상로그인시 패스워드를 신라넷에 저장
										/*
										$.ajax({
											url: '/membership/mbr/login/memUpdatePwStorage.do',
											type: "post",
											data: { "j_username": $("#j_username").val() ,"j_password" : $("#j_password").val()},
											dataType: "html",
											error: function(){
												$("#j_username").val("");
												$("#j_password").val("");
												$("#j_username").focus();
												alert("fail2");
											},
			
											success: function( strData ){
											*/
												var nextURL = "";
												if(referers != "" && referers.indexOf("login.do") < 0 && referers.indexOf("mbr/join") < 0 ){
													nextURL = "https://www.shillahotels.com/seoul/resv/rpm/memSetStep1.do";
												}else{
													nextURL =  "/index.do";
												}
			
												if("" != "") {
													$('#nextURL').val("");
												} else if(nextURL.indexOf("membership/mbr/login/memLogin.do") > 0 ){
													nextURL = '';
												}else{
													$('#nextURL').val("/index.do");
												}
			
												if(nextURL != "") {
													if("/seoul" != ""){
														if ("step1" == "step1"){
															nextURL = "/seoul/resv/rpm/memSetStep1.do?ckinYmd=2022-05-27&ckoutYmd=2022-05-28&adltCnt=2&chldCnt=0&infantCnt=0&totlAdltCnt=2&totlChldCnt=0&totlInfantCnt=0&hotlId=S&hotlIdArr=S&roomCnt=1&nightCnt=1";
														}else if("step1" == "step2"){
															nextURL = "/seoul/resv/rpm/memSetStep2Pric.do?resvYn=Y";
														}else{
															nextURL = "/seoul"+"?spofrId=";
														}
													}
			
													if("" != ""){
														nextURL = "/mem/rewards/prmo/memSetPrmoMbrInfo.do?itCd="+"";
													}
													$('#loginForm').attr('action',nextURL).submit();
												}else{
													$('#loginForm').attr('action','/index.do').submit();
												}
									/*
											}
										});
									*/
									}else if("loginFail" == arr[0]) {
			
										//비밀번호 다름
										var value = arr[1];
										if(parseInt(value)>=5){
											alert('비밀번호를 연속 5회 잘못 입력하셨습니다. 임시 비밀번호를 발급받아 이용해주시기 바랍니다.');
										}else{
											alert('신라리워즈 번호 또는 비밀번호가 틀립니다.');
										}
			
										$("#j_password").val("");
			
									}else if("loginError" == arr[0]) {
										var errorCode = arr[1];
										if(errorCode == "notacti"){
											alert('신라리워즈 번호 또는 비밀번호가 틀립니다.');
										}else{
											//ows 및  통신 장애
											/* alert('SYSTEM ERROR\nMembership Center 02-2230-5528'); */
											alert(messages["msg.login.ows.error"]);
										}
										$("#j_password").val("");
									}else if("thereIsNoId" == arr[0]){
										alert('신라리워즈 번호 또는 비밀번호가 틀립니다.');
										$("#j_password").val("");
									}else if("memReSetPw" == arr[0]){
			
										// 오페라 업그레이드로 인한 비밀번호 프로세스 변경 : 신라넷에 비밀번호 저장을 위해서 임시로(고객VOC방지) 정상로그인시 패스워드를 신라넷에 저장
										/*
										$.ajax({
											url: '/membership/mbr/login/memUpdatePwStorage.do',
											type: "post",
											data: { "j_username": $("#j_username").val() ,"j_password" : $("#j_password").val()},
											dataType: "html",
											error: function(){
												$("#j_username").val("");
												$("#j_password").val("");
												$("#j_username").focus();
												alert("fail3");
											},
			
											success: function( strData ){
											*/
												$('#loginForm').attr('action','/mem/forPw/memSetModPw.do').submit();
									/*
											}
										});
									*/
									}else if("dropLoginError" == arr[0]){
										alert('탈회처리중인 아이디 입니다.');
									}else if("rewardNull" == arr[0]){
										var rewardNo = arr[1];
										popRewardNo(rewardNo);
									}
									/* 본인인증 체크
										else if("niceChk" == arr[0]){
										//$('#loginForm').attr('action','/membership/mem/memSetCert.do').submit();
										$('#loginForm').attr('action','/index.do').submit();
									} */
								}
							});
							//end login ajax					
						}
					}
				});//비번찾기 레이어팝업 오픈 여부 end
						
			}
		});
	} else if('N' == rMember) {

		//객실,다이닝구분
		var rMember = $("input:radio[name='rMember']:checked").val();
		if (rMember == "Y"){//객실
			if($.trim($('#resvId').val()) == ""){
				alert(messages["msg.cmm.required"].replaceMsg(['예약번호']));
				$('#resvId').focus();
				return;
			}

			if($.trim($('#guestEnFnm').val()) == ""){
				alert(messages["msg.cmm.required"].replaceMsg(['First name(이름)']));
				$('#guestEnFnm').focus();
				return;
			}

			if($.trim($('#guestEnLnm').val()) == ""){
				alert(messages["msg.cmm.required"].replaceMsg(['Last name(성)']));
				$('#guestEnLnm').focus();
				return;
			}

			$('#loginResvForm').attr('action', '/membership/resv/rpm/memListNonMbrResv.do').submit();

		}else{//다이닝
			var msg;
			if ($.trim($('#resvCode').val()) == "") {
				var msg = '예약번호';
				alert(messages["msg.cmm.required"].replaceMsg([msg]));
				$('#resvId').focus();
				return;
			}

			var lang = 'KR';
			if(lang =="KR"){
				if ($.trim($('#guestNm').val()) == "") {
					var msg = '이름';
					alert(messages["msg.cmm.required"].replaceMsg([msg]));
					$('#guestNm').focus();
					return;
				}
			}else{
				if ($.trim($('#guestEnFnm').val()) == "") {
					var msg = 'First name';
					alert(messages["msg.cmm.required"].replaceMsg([msg]));
					$('#guestEnFnm').focus();
					return;
				}

				if ($.trim($('#guestEnLnm').val()) == "") {
					var msg = 'Last name';
					alert(messages["msg.cmm.required"].replaceMsg([msg]));
					$('#guestEnLnm').focus();
					return;
				}
			}

			var lang = 'KR';
			if(lang =="KR"){
				var guestNm = $("#guestNm").val();
				$("#visitName").val(guestNm);
				seletDining();
			}else{
				var guestEnFnm = $("#loginDiningForm").find("#guestEnFnm").val();
				var guestEnLnm = $("#loginDiningForm").find("#guestEnLnm").val();
				$("#visitName").val(guestEnFnm.toUpperCase()+" "+guestEnLnm.toUpperCase());
				seletDining();
			}
		}

	}
}





























///다이닝 조회
function seletDining(){
	$.ajax({
		url: '/fbresv/mbl/selectNonMemberResv.do',
		type: "post",
		dataType:"json",
		data : {
			resvCode : $("#resvCode").val().toUpperCase(),
			visitName : $("#visitName").val()
		},
		error: function(request,status,error){
			alert("request fail : " + error);
		},
		success: function( data ){
			if(data.model.result == "ok"){
				if(data.model.reVO == ""){
					pc.layerPopup.openPop("#ResvInquirypPop");
				}else{
					$("#loginDiningForm").find("#resvId").val(data.model.reVO.resvId);
					$("#loginDiningForm").attr("action","/fbresv/web/memDiningDetailResv.do");
					$("#loginDiningForm").submit();
				}
			}
		}
	});
}

//온라인 활성화
function fnCmdActi(hotlPath){
	popPointHotlPath = hotlPath;
	var errorCheck = "";
	$.ajax(
            {
            	url : '/mem/mbr/join/memActivationStep1.do',
                type: "post",
                dataType: "html",
                error: function(){
                	errorCheck = "fail";
                },
                success: function( strData ){
                	popForIdPwDiv.html(strData);
                	popForIdPwDiv.show();
                	$("#popForIdPwDiv").attr("tabindex",-1).focus();
                }
            }
     );
     if(errorCheck == "fail"){
  		alert('조회에 실패하였습니다.');
     }
}


function popRewardNo(rewardNo){
	var errorCheck = "";
	$.ajax(
            {
            	url : '/membership/mem/memViewInfoRw.do',
            	data: { "rewardNo": rewardNo},
                type: "post",
                dataType: "html",
                error: function(){
                	errorCheck = "fail";
                },
                success: function( strData ){
                	popForIdPwDiv.html(strData);
                	popForIdPwDiv.show();
                	$("#popForIdPwDiv").attr("tabindex",-1).focus();
                }
            }
     );
     if(errorCheck == "fail"){
  		alert('조회에 실패하였습니다.');
     }
}


</script>

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
											<a class="btnJoin" href="/hotel/memJoinAgreeForm"><span>신라리워즈 가입</span></a>
											<a href="/hotel/findID" id="popForIdButton" class="btnLostId"><span>신라리워즈 번호 찾기</span></a>
											<a href="/hotel/findPW" id="popForPwButton" class="btnLostPw"><span>비밀번호찾기</span></a>
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
			<li class="link3"><a href="/membership/memFooter/pop/memEmailAdCollectPop.do" onclick="openCtrlPopup('/membership/memFooter/pop/memEmailAdCollectPop.do','emailAdCollectPop');  return false;">이메일무단수집금지</a></li>
			<li class="link4"><a href="https://www.shillaaudit.com/audit/inf_information.do" target="_blank">윤리경영</a></li>
			<li class="link5 last"><a href="/membership/memFooter/pop/memSafeMngPop.do" onclick="openCtrlPopup('/membership/memFooter/pop/memSafeMngPop.do','emailAdCollectPop');  return false;">건축/시설물 안전관리</a></li>  </ul>
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
	</div>
</div>



<script type="text/javascript" id="">document.all&&!document.addEventListener||window.proxied_alert||(window.proxied_alert=window.alert,window.alert=function(){var a=arguments[0]?arguments[0]:"null";dataLayer.push({event:"alert_showed",alert_message:a});return proxied_alert.apply(this,arguments)});</script><script type="text/javascript" id="">(function(){if(null==sessionStorage.getItem("_PageViewCounter")||void 0==sessionStorage.getItem("_PageViewCounter"))sessionStorage.setItem("_PageViewCounter",1);else{var f=0;f=parseInt(sessionStorage.getItem("_PageViewCounter"));f+=1;sessionStorage.setItem("_PageViewCounter",f)}var v=!0,l=2592E5;if(window.Storage){var c=JSON.parse(localStorage.getItem("_tab_ids"))||[],d=sessionStorage.getItem("_tab_id"),a=JSON.parse(sessionStorage.getItem("_nav_path")),e=document.location.href;f=!1;var w=document.location.origin,
t,p,m,g,u=function(b){return 0===l?b:b.filter(function(h){try{return m=parseInt(h.split("_")[1],10),m>(new Date).getTime()}catch(q){return!1}})};var r=function(b){if(0===l)return b;try{g=b.split("_");m=parseInt(g[1],10);if(m>(new Date).getTime())return b;g=g[0]+"_"+((new Date).getTime()+l);sessionStorage.setItem("_tab_id",g);return g}catch(h){return b}};var x=function(){if(!1===v)return"BACK/FORWARD";if(2>a.length)return"FORWARD";t=a[a.length-2];p=a[a.length-1];return t===e||p===e?"BACK":"FORWARD"},
y=function(){c=JSON.parse(localStorage.getItem("_tab_ids"))||[];d=sessionStorage.getItem("_tab_id");c=u(c);if(c.length&&null!==d){var b=c.indexOf(d);-1<b&&c.splice(b,1);localStorage.setItem("_tab_ids",JSON.stringify(c))}},z=function(){var b=(new Date).getTime();"undefined"!==typeof performance&&"function"===typeof performance.now&&(b+=performance.now());return"xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx".replace(/[xy]/g,function(h){var q=(b+16*Math.random())%16|0;b=Math.floor(b/16);return("x"===h?q:q&3|
8).toString(16)})+(0<l?"_"+((new Date).getTime()+l):"")},A=function(b,h){return!(!0===h&&0!==b&&255!==b)};null===d?(d=z(),f=!0,sessionStorage.setItem("_tab_id",d)):d=r(d);c=u(c);-1===c.indexOf(d)&&(c.push(d),localStorage.setItem("_tab_ids",JSON.stringify(c)));r=c.length;if(window.PerformanceNavigation){a=a||[];var n=window.performance.navigation.redirectCount;if(A(window.performance.navigation.type,f))switch(window.performance.navigation.type){case 0:var k="NAVIGATE";a.push(e);break;case 1:k="RELOAD";
0!==a.length&&a[a.length-1]===e||a.push(e);break;case 2:k=x();"FORWARD"===k?-1<document.referrer.indexOf(w)&&a.push(e):"BACK"===k?p!==e&&a.pop():a.push(e);break;default:k="OTHER",a.push(e)}else a.push(e);sessionStorage.setItem("_nav_path",JSON.stringify(a))}window.addEventListener("beforeunload",y);n={tabCount:r,redirectCount:n,navigationType:k,newTab:!0===f?"New":"Existing",tabId:d.replace(/_.+/,"")};window.google_tag_manager[google_tag_manager["GTM-T3LBJ26"].macro(82)].dataLayer.set("browsingBehavior",n);window.dataLayer.push({event:"custom.navigation",
browsingBehavior:n})}})();</script>
</body></html>