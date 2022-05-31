<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko" class="webkit chrome win  js portrait pc"><head>
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>프로필 수정 | 개인정보 | My Page | The Shilla Hotels &amp; Resorts</title>
<link href="${pageContext.request.contextPath}/css/mem/common.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/css/mem/title_ko.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/css/mem/common/print.css" rel="stylesheet" type="text/css" media="print">
<link href="${pageContext.request.contextPath}/css/mem/mainImages_ko.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/css/mem/common/reserve_new.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/css/mem/common/lang-ko_N.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/css/mem/common/btn_ko.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/css/common/swiper.min.css" rel="stylesheet" type="text/css">
<meta name="description" content="프로필 수정"><!-- <meta name="keywords" content="프로필 수정, My Page" /> -->
<meta name="og:title" content="프로필 수정 | 개인정보 | My Page | The Shilla Hotels &amp; Resorts"> 
<!-- 검색엔진용 추가  180524 -->
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
	if(today != '2022-05-30'){
		today = today.split("-");
		var originToday = "2022-05-30".split("-");
		
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
</script></head><body class="subBody"><div id="popCalendarDiv" class="popCalendar" style="display:none"></div>
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
<script src="/js/mbr/forIdPwd.js" charset="UTF-8"></script><div id="popForIdPwDiv" style="display:none">0</div>
<script src="/js/mbr/mbshPointRead.js" charset="UTF-8"></script><div id="mbshPotinRead" style="display:none"></div>
<script src="/js/resv/resvCalendar.js" charset="UTF-8"></script><script src="/js/resv/resvPromotionCalendar.js" charset="UTF-8"></script><script src="/js/resv/resv.js" charset="UTF-8"></script><script src="/js/resv/din.js" charset="UTF-8"></script><script src="/js/ask/ask.js" charset="UTF-8"></script><script src="/js/mbr/zipno.js" charset="UTF-8"></script><div id="zipNoLayerDiv" class="popLogin" style="display:none"></div><script src="/js/offers/makeAPlan.js" charset="UTF-8"></script><div id="makeAPlanLayerDiv" class="popLogin" style="display:none"></div><script src="/js/mbr/mbr_join.js" charset="UTF-8"></script><script src="/js/jquery.cookie.js" charset="UTF-8"></script>
<script src="/js/placeholders.js" charset="UTF-8"></script>
<script src="/js/rewards_new2020.js" charset="UTF-8"></script>
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
	<a href="javascript:ssoLogout();">로그아웃</a>
	<a href="/membership/mypage/account/listAccount.do">마이페이지</a>
	</span>
  <!-- 예약확인 추가 -->
  <div class="resvConfirm">
		  <div class="resvConBox">
			  <a class="btn" href="#">예약확인<!-- 예약확인 --></a>
			  <ul class="list">
				  <li class="dn1 first last">
					  <ul class="listSt">
						  <li class="st first st1">
							  <a href="/membership/mypage/resv/memListResv.do"><span>객실<!-- 객실 --></span></a>
						  </li>
						  <li class="st last st2">
						  	  <a href="/fbresv/web/memDiningListResv.do"><span>다이닝<!-- 다이닝 --></span></a>
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
	
	<div class="contain">
	
		<div class="container">
		
			<div class="lnbArea lnbAreaMypage">
			<div class="lnbMenu">
				<h2 class="tit">마이페이지</h2>
				<ul class="menu">
					<li class="m1 first">
						<!-- 선택시 a태그에 class="on" -->
						<a href="/membership/mypage/account/listAccount.do">
							<span>신라리워즈 등급 및 포인트</span>
						</a>
					</li>
					<li class="m2">
						<a><span>예약 확인/취소</span></a>
						<ul class="sMenu">
							<li class="s1 first">
								<a href="/membership/mypage/resv/memListResv.do">
									<span>객실/패키지</span>
								</a>
							</li>
							<li class="s2 last">
								<a href="/fbresv/web/memDiningListResv.do"><span>다이닝</span></a>
							</li>
						</ul>
					</li>
					<li class="m3">
						<a><span>포인트</span></a>
						<ul class="sMenu">
							<li class="s1 first">
								<a href="/membership/mypage/point/memListPointReference.do">
									<span>포인트조회</span>
								</a>
							</li>
							<li class="s2">
								<a href="/membership/mypage/point/memSetPointRetrospective.do">
									<span>포인트 조정신청</span>
								</a>
							</li>
							<li class="s3 last">
								<a href="/membership/mypage/point/memSetPointApplication.do">
									<span>삼성상품권 교환신청</span>
								</a>
							</li>
						</ul>
					</li>
					<li class="m4">
						<a>쿠폰</a>
						<ul class="sMenu">
							<li class="s1 first">
								<a href="/membership/mypage/coupon/memCouponList.do">
									<span>쿠폰함</span>
								</a>
							</li>
							<li class="s2 last">
								<a href="/membership/mypage/promotion/memPmtResvList.do">
									<span>프로모션 숙박권</span>
								</a>
							</li>
						</ul>
					</li>
					<li class="m5 last">
						<a><span>내정보</span></a>
						<ul class="sMenu">
							<li class="s1 first">
								<a href="/membership/mypage/mbr/memSetPwCnfm.do" class="on">
									<span>프로필 수정</span>
								</a>
							</li>
							<li class="s2">
								<a href="/membership/mypage/mbr/memSetPwMod.do">
									<span>비밀번호 변경</span>
								</a>
							</li>
							<li class="s3">
								<a href="/membership/mypage/ask/memListAsk.do">
									<span>문의 내역</span>
								</a>
							</li>
							<li class="s4 last">
								<a href="/membership/mypage/mbr/memSetPwDropfm.do?gubun=t">
									<span>탈회요청</span>
								</a>
							</li>
						</ul>
					</li>
				</ul>
			</div>
		</div>
	<div class="contents" id="contents">
				<script type="text/javascript">
<!--
$(document).ready(function() { 
	$("select, input").uniform();
	
// 	var meYn = 'Y';
	
// 	if(meYn != 'N'){
// 		alert("잘못된 접근 방식입니다.");
// 		$('#mbrJoinForm').attr('action',"/membership/mypage/mbr/memSetPwCnfm.do").submit();
// 	}

	if($("#marketingUseYnN").is(":checked")){
		$("#emailRecvYnY").prop("disabled", true);
		$("#emailRecvYnN").prop("disabled", true);
		$("#smsRecvY").prop("disabled", true);
		$("#smsRecvN").prop("disabled", true);
	}
	
	// 개인정보 마케팅 활용 "아니오" 선택 시
	$("#marketingUseYnN").click(function(){
		if($(this).is(":checked")){
			$("#emailRecvYnY").prop("checked", false);
			$("#emailRecvYnN").prop("checked", true);
			$("#smsRecvY").prop("checked", false);
			$("#smsRecvN").prop("checked", true);

			$("#emailRecvYnY").prop("disabled", true);
			$("#emailRecvYnN").prop("disabled", true);
			$("#smsRecvY").prop("disabled", true);
			$("#smsRecvN").prop("disabled", true);
		}
	});
	
	// 개인정보 마케팅 활용 "예" 선택 시
	$("#marketingUseYnY").click(function(){
		if($(this).is(":checked")){
			$("#emailRecvYnY").prop("disabled", false);
			$("#emailRecvYnN").prop("disabled", false);
			$("#smsRecvY").prop("disabled", false);
			$("#smsRecvN").prop("disabled", false);
		}
	});
}); 



function fn_setGoldMbshReqrNo(goldReqrNo){
	$("#goldMbshReqrNo").val(goldReqrNo);
}

//이메일 수신 동의/철회 메일 발송 여부
function setAgreeEmail(checkVal) {
	//20150302 김동욱
	//이메일 수신여부를 변경 시 기존 정보와 변경된 경우 수신 또는 철회 메일 전송을 위한 구분자를 세팅한다.
	if(checkVal != "Y" ) {
		if(checkVal == "Y") {
			$('#emailAgreeSendType').val("Y");
		} else {
			$('#emailAgreeSendType').val("N");
		}
	} else {
		$('#emailAgreeSendType').val("");
	}
}

function setAnnv(){
	
	debugger;
	var annvList = [];
	var annvTypCdList = [];
	var sclcCdList = [];
	var annvNmList = [];
	
	$("input[name^='mbrAnnvMVo_annv_']").each(function(index){
		annvList.push($(this).val());
	});
	$("input[name^='mbrAnnvMVo_annvTypCd_']").each(function(index){
		annvTypCdList.push($(this).val());
	});
	$("input[name^='mbrAnnvMVo_sclcCd_']").each(function(index){
		sclcCdList.push($(this).val());
	});
	$("input[name^='mbrAnnvMVo_annvNm_']").each(function(index){
		annvNmList.push($(this).val());
	});
	
	
	var length = annvList.length;
	
	for(var i=0; i < length; i++){
		annvList[i];
		annvTypCdList[i];
		sclcCdList[i];
		annvNmList[i];
		var cnt = i+1;
		var inputName1 = "annySclcCd_"+cnt;
		var inputName2 = "annvTypCd_"+cnt;
		
		var inputName3 = "annvNm_"+cnt;
		
		var inputYy= "annvYear_"+cnt;
		var inputMm= "annvMonth_"+cnt;
		var inputDd= "annvDay_"+cnt;
		
		
		var yy = annvList[i].substr(0,4);
		var mm = annvList[i].substr(5,2);
		var dd = annvList[i].substr(8,2);
		
		$("#"+inputName2).val(annvTypCdList[i]);//결혼기념일, 생일 //select
		$("#"+inputName2).focus();
		$("#"+inputName1).val(sclcCdList[i]);//양력음력 //radio
		$("#"+inputName1).focus();
		$("#"+inputName3).val(annvNmList[i]);//이름 //input text
		$("#"+inputDd).val(dd);//일  // select
		$("#"+inputMm).val(mm);//월  // select
		$("#"+inputYy).val(yy);//년  // annvYear_1
		
		
		
	}
	
	
}


function popMbrIdDup(){

	if($.trim($('#mbrId').val()) == ""){
		alert(messages["msg.cmm.required"].replaceMsg(['신라리워즈 번호 또는 아이디']));
		$('#mbrId').focus();
		return;
	}
	
	if(!checkID($('#mbrId'))){
		   return;
	}
	
	var errorCheck = "";
	var mbrJoinLayer = $("#mbrJoinLayer");
	$.ajax(
            {
                url: './selectMbrIdDup.do',
                type: "post",
                data: { "mbrId": $("#mbrId").val() },
                dataType: "html",
                error: function(){
                	errorCheck = "fail";
                },
                success: function( strData ){
                	mbrJoinLayer.html(strData);
                }
            }                           
     );
     if(errorCheck == "fail"){
  		alert('조회에 실패하였습니다.');
     }
}


function saveMbrJoinForm( ) {
	
	if($.trim($('#email1').val()) == ""){
		alert(messages["msg.cmm.required"].replaceMsg(['이메일 ']));
		$('#email1').focus();
		return;
	}
	if($.trim($('#email2').val()) == ""){
		alert(messages["msg.cmm.required"].replaceMsg(['이메일도메인 ']));
		$('#email2').focus();
		return;
	}

	if($.trim($('#mbno').val()) == ""){
		alert(messages["msg.cmm.required"].replaceMsg(['휴대전화 ']));
		$('#mbno').focus();
		return;
	}
	
	if(!checkedLognId) {
		alert(messages["msg.cmm.required"].replaceMsg(['아이디 중복확인을 해주세요.']));
		$('#lognId').focus();
		return;
	}
	
	$("#email").val($("#email1").val()+"@"+$("#email2").val());
	
	if($("#email").val() != $("#orgEmail").val()){
		if(!checkedEmail) {
			alert('이메일 중복확인을 해주세요.');
			$('#email1').focus();
			return;
		}
	}
	
	if($("#marketingUseYnY").is(":checked")){
		if(!$("#emailRecvYnY").is(":checked") && !$("#smsRecvY").is(":checked")){
			alert('정보 수신 여부의 수신 채널을 선택해주세요.');
			$('#marketingUseYnN').focus();
			return;
		}
	}
	
	$("#emailRecvYnY").prop("disabled", false);
	$("#emailRecvYnN").prop("disabled", false);
	$("#smsRecvY").prop("disabled", false);
	$("#smsRecvN").prop("disabled", false);
	
	
	var string = $("form[name=mbrJoinForm]").serialize();
	$.post( "/membership/mypage/mbr/memUpdateMbrInfo.do", string).done(function( resultCode ) {
		if(resultCode == "success"){
			alert('정상적으로 수정되었습니다.');
			$('#mbrJoinForm').attr('action','./memSetMbrInfo.do').submit();
		}else if(resultCode == "false"){
			alert('수정이 실패하였습니다.');
			return;
		}else if(resultCode == "noJoinCd"){
			alert('입력하신 프로모션 코드는 유효하지 않습니다.');
			return;
		}
		else{
			alert("장시간 이용하지 않아 로그아웃되었습니다. 로그인 후 다시 이용해 주시기 바랍니다. ");
			$('#mbrJoinForm').attr('action','/membership/mbr/login/memLogin.do').submit();
		}
	}).fail(function( jqxhr, textStatus, error ) {
		alert('수정이 실패하였습니다.');
	});
}

var checkedEmail = false;
function checkDuplicateEmail() {

	$('#email').val($('#email1').val() + "@" + $('#email2').val());
	var string = $("form[name=mbrJoinForm]").serialize();
	$.post( "/mem/mbr/join/memCheckDuplicateEmail.do", string).done(function( resultCode ) {
		$('.opacity').hide();
		$('.re-loader').hide();

		if(resultCode == "notExistEmail"){
			checkedEmail = true;			 
			alert('사용 가능한 이메일입니다.');
		}else if(resultCode == "emailOverlap"){
			checkedEmail = false;
			alert('이미 가입된 email 주소입니다.');
		}else if(resultCode == "mssDupl") {
			checkedEmail = false;
			alert('이미 가입된 email 주소입니다.');
		}else{
			checkedEmail = false;
			alert('이메일 형식이 아닙니다.');
		}
	}).fail(function( jqxhr, textStatus, error ) {
		$('.opacity').hide();
		$('.re-loader').hide();
		alert('생성이 실패하였습니다.');
	});
}

var checkedLognId = true;
function checkDuplicateLognId() {
	 var string = $("form[name=mbrJoinForm]").serialize();
	 $.post( "/mem/mbr/join/memCheckDuplicateLognId.do", string).done(function( resultCode ) {
		$('.opacity').hide();
		$('.re-loader').hide();
		
		 if(resultCode == "lognIdOverlap"){
			 checkedLognId = false;			 
			 alert('이미 사용중인 ID입니다. 다른 ID를 설정해 주세요.');
		 }else if(resultCode == "notExistLognId"){
			 checkedLognId = true;
			 alert('사용 가능한 ID입니다.');
		 }else{
			 checkedLognId = false;		
			 alert('아이디 형식이 아닙니다.');
		 }

	}).fail(function( jqxhr, textStatus, error ) {
		$('.opacity').hide();
		$('.re-loader').hide();
		alert('생성이 실패하였습니다.');
	});
}

function creditCardInfoDel(rewardNo) {
	var url = '/membership/mypage/point/memCardInfoDel.do';

//		if (confirm('취소 하시겠습니까?')) {
	if (confirm("저장된 카드정보를 삭제하시겠습니까?")) {

		$.ajax({
			"url"	: url,
			method	: "post",
			data	: {"rewardNo" : rewardNo},

			success	: function(data) {
				var jObj = JSON.parse(data);

				if (jObj.resultCode === "200") {
					

					location.href = "/membership/mypage/mbr/memSetMbrInfo.do";
				} else {
					alert("삭제에 실패하였습니다.");
				}
			}
		})
	}

}

function popPrivacyInc(number){
	var privacyIncLayerDiv = $("#privacyIncLayerDiv");
	$.ajax(
			{
				url: '/membership/mbr/join/memViewPrivacyInc.do?number='+number,
				type: "post",
				dataType: "html",
				error: function(){
				},
				success: function( strData ){
					privacyIncLayerDiv.html(strData);
					privacyIncLayerDiv.show();
					$(".popLayer").attr("tabindex",-1);
					$(".popLayer").attr("style","top:250px");
					$(".popLayer").focus();
				}
			}
	);
}
//-->
</script>
<div id="privacyIncLayerDiv" class="popLogin" style="display:none"></div>

		<form id="mbrJoinForm" name="mbrJoinForm" action="/membership/mypage/mbr/memSetMbrInfo.do" method="post"><input type="hidden" id="hotlUsePupsCd" name="hotlUsePupsCd" autocomplete="off">
			<input type="hidden" id="foodKindTypCd" name="foodKindTypCd" autocomplete="off">
			
			<input type="hidden" id="goldMbshReqrNo" name="goldMbshReqrNo" value="" autocomplete="off">
			<input type="hidden" id="annvTypCd" name="annvTypCd" value="" autocomplete="off">
			<input type="hidden" id="annvNm" name="annvNm" value="" autocomplete="off">
			<input type="hidden" id="annvYear" name="annvYear" value="" autocomplete="off">
			<input type="hidden" id="annvMonth" name="annvMonth" value="" autocomplete="off">
			<input type="hidden" id="annvDay" name="annvDay" value="" autocomplete="off">
			<input type="hidden" id="cnt" name="cnt" value="7" autocomplete="off">
			<input type="hidden" id="annySclcCd" name="annySclcCd" value="" autocomplete="off">	
			<input type="hidden" id="dmstYn" name="dmstYn" value="" autocomplete="off">
			<input type="hidden" id="phonNatCd" name="phonNatCd" value="82" autocomplete="off">
			<input type="hidden" id="email" name="email" autocomplete="off">
<!-- 			<input type="text" id="phonNatCd"     name="phonNatCd" value="82"  /> -->
			
			<input type="hidden" id="emailAgreeSendType" name="emailAgreeSendType" value="" autocomplete="off">
			
			<div class="contents" id="contents">
			<div class="ctnMypage ctnUserInfo2">
			
				<div class="location">
					<p class="list"><span class="crPosit">현재 페이지 위치 : </span> &gt; 마이페이지 &gt; 내정보 &gt; <strong>프로필 수정</strong></p>
				</div>
				
				<div class="myProfilemodifyTit">
					<h4 class="tit">프로필 수정</h4>
				</div>
				
				<div class="msg">고객님의 정보를 언제든지 확인, 변경하실 수 있습니다.</div>
				
				<div class="hTitS">
						<h5 class="tit">기본정보</h5>
				</div>
					<table class="tableTypeA tableJoinForm tableUserInfo2" summary="성명(한글),성명(영문),아이디,비밀번호,비밀번호확인,생년월일,이메일,휴대전화,자택전화,주소,SMS수신여부,기념일로 구성된테이블입니다." border="1">
						<caption>프로필 수정</caption>
					<colgroup>
						<col width="13%" class="col1">
						<col class="col2">
					</colgroup>
					
					<tbody><tr class="first">
						<th scope="row" class="first">성명(국문)</th>
						<td class="first">
							<label for="titlCd" class="nameH">경칭</label>
							<div class="selector disabled" id="uniform-titlCd" style="width: 67px;"><span style="width: 42px; user-select: none;">Mr.</span><select id="titlCd" class="nameH uiform" name="titlCd" disabled="">
								<option value="Miss." title="Ms.">Ms.</option>
								<option value="Mr." title="Mr." selected="">Mr.</option>
								<option value="Dr." title="Dr.">Dr.</option>
								</select></div>
							<span class="name">이융희</span> 
						</td>
					</tr>
					
					<tr>
						<th scope="row">성명(영문)</th>
						<td>
							LEE&nbsp;YOONGHEE</td>
					</tr>
					
					<tr>
						<th scope="row">아이디</th>
						<td>
						whiteyhl</td>
					</tr>
					<tr>
						<th scope="row">이메일 </th>
						<td>
							<label class="emailId" for="email1">이메일아이디 </label>
							<input id="email1" name="email1" class="emailId uiform text" type="text" value="whiteyhl" onkeyup="this.value=this.value.replace(/[^a-z0-9_-.]/gi,'');" maxlength="40" autocomplete="off">
							<span class="at">@</span>
							<label class="emailDomain" for="email2">이메일도메인 </label>
							<input id="email2" name="email2" class="emailDomain uiform text" type="text" value="hanmail.net" onkeyup="this.value=this.value.replace(/[^a-z0-9_-.]/gi,'');" style="width:170px; " maxlength="40" autocomplete="off">
							<label class="emailDomainSel" for="emailSelect">이메일도메인선택</label>
							<div class="selector" id="uniform-emailSelect" style="width: 125px;"><span style="width: 100px; user-select: none;">직접입력</span><select id="emailSelect" name="emailSelect" class="emailDomainSel uiform" onchange="javascript:$('#email2').val(this.value)">
								<option value="">직접입력</option>
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
							<span class="emailConfirm" style="margin-left: 10px;"><a href="#none" onclick="checkDuplicateEmail();">이메일 중복확인</a></span>
							<input type="hidden" id="orgEmail" name="orgEmail" value="whiteyhl@hanmail.net" autocomplete="off">
							</td>
					</tr>
					<tr>
						<th scope="row">휴대전화 </th>
						<td>
							<input type="text" class="uiform phoneNum3 text" style="width: 200px;" id="mbno" name="mbno" maxlength="18" value="01077211941" onkeyup="this.value=this.value.replace(/[^\d\ ]/g, '')" autocomplete="off">
							</td>
					</tr>
					<!--마케팅 활용 동의 S-->
					<tr>
						<th scope="row" rowspan="3">개인정보<br>마케팅<br>활용 동의</th>
						<td>
							<div class="marketingUseBox">
								<span class="msgCheck msgCheck3">호텔신라와 신라스테이 및 기타 제휴 호텔에서의 개인정보 마케팅 활용에 동의하시겠습니까?</span> <a class="btnViewAllPro" href="#none" onclick="popPrivacyInc(4);" id="privacyIncbutton_2">약관 확인</a><br>
								<div class="radio" id="uniform-marketingUseYnY"><span class="checked"><input type="radio" name="marketingUseYn" class="uiform radio" id="marketingUseYnY" value="Y" checked="checked" autocomplete="off"></span></div>
								<label for="marketingUseYnY" class="emailRecep1">예</label>
								<div class="radio" id="uniform-marketingUseYnN"><span><input type="radio" name="marketingUseYn" class="uiform radio" id="marketingUseYnN" value="N" autocomplete="off"></span></div>
								<label for="marketingUseYnN" class="emailRecep2">아니오</label>
							</div>
						</td>
					</tr>
					<tr>
						<td>
						<span>매체별 광고성 정보 수신 동의</span><br>
							<div class="emailRecepBox">
								<span class="msgCheck msgCheck3 rcvTerm" style="margin-top:5px">· 뉴스레터 수신 여부</span>
								<div class="radio" id="uniform-emailRecvYnY"><span class="checked"><input type="radio" name="emailRecvYn" class="uiform emailRecep1 radio" id="emailRecvYnY" value="Y" checked="checked" autocomplete="off"></span></div>
								<label for="emailRecvYnY" class="emailRecep1">예</label>
								<div class="radio" id="uniform-emailRecvYnN"><span><input type="radio" name="emailRecvYn" class="uiform emailRecep2 radio" id="emailRecvYnN" value="N" autocomplete="off"></span></div>
								<label for="emailRecvYnN" class="emailRecep2">아니오</label>
							</div>
							<div class="emailRecepBox">
								<span class="msgCheck msgCheck3 rcvTerm">· LMS 수신 여부</span>
								<div class="radio" id="uniform-smsRecvY"><span class="checked"><input type="radio" name="smsRecvYn" class="uiform emailRecep1 radio" id="smsRecvY" value="Y" checked="checked" autocomplete="off"></span></div>
								<label for="smsRecvY" class="emailRecep1">예</label>
								<div class="radio" id="uniform-smsRecvN"><span><input type="radio" name="smsRecvYn" class="uiform emailRecep2 radio" id="smsRecvN" value="N" autocomplete="off"></span></div>
								<label for="smsRecvN" class="emailRecep2">아니오</label>
							</div>
						</td>
					</tr>
					<tr>
						<td style="color:#666">※ 통지할 정보가 없거나, 정확하지 않은 정보인 경우 처리결과를 수신하지 못할 수 있음을 알려드립니다.</td>
					</tr>
					<!--마케팅 활용 동의 E-->
					<tr class="last">
						<th scope="row" class="last">프로모션 코드</th>
                        <td class="last"><input type="text" id="joinCd" name="joinCd" class="uiform text" maxlength="60" autocomplete="off" style="width:130px;text-transform: uppercase;">&nbsp; <em class="btnPwHelp"><span>이벤트 참여 시 제공받은 코드를 입력해주시기 바랍니다. </span></em></td>
                        </tr>
                   
                   
                   </tbody></table>
				
				<div class="btnList">
						<a href="javascript:saveMbrJoinForm();" class="btnChange"><span>수정</span></a>
						<a href="/hotel/memSetPwCnfm" class="btnCancel"><span>취소</span></a>
				</div>
			</div>
		</div>
		</form><div id="mbrJoinLayer"></div></div>

		</div>
	
	</div>
	<div id="emailAdCollectPop" style="display:none"></div><div id="footerEmailLayer" style="display:none"></div><div class="foot footHub">
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



<script type="text/javascript" id="">document.all&&!document.addEventListener||window.proxied_alert||(window.proxied_alert=window.alert,window.alert=function(){var a=arguments[0]?arguments[0]:"null";dataLayer.push({event:"alert_showed",alert_message:a});return proxied_alert.apply(this,arguments)});</script><script type="text/javascript" id="">(function(){if(null==sessionStorage.getItem("_PageViewCounter")||void 0==sessionStorage.getItem("_PageViewCounter"))sessionStorage.setItem("_PageViewCounter",1);else{var f=0;f=parseInt(sessionStorage.getItem("_PageViewCounter"));f+=1;sessionStorage.setItem("_PageViewCounter",f)}var v=!0,l=2592E5;if(window.Storage){var c=JSON.parse(localStorage.getItem("_tab_ids"))||[],d=sessionStorage.getItem("_tab_id"),a=JSON.parse(sessionStorage.getItem("_nav_path")),e=document.location.href;f=!1;var w=document.location.origin,
t,p,m,g,u=function(b){return 0===l?b:b.filter(function(h){try{return m=parseInt(h.split("_")[1],10),m>(new Date).getTime()}catch(q){return!1}})};var r=function(b){if(0===l)return b;try{g=b.split("_");m=parseInt(g[1],10);if(m>(new Date).getTime())return b;g=g[0]+"_"+((new Date).getTime()+l);sessionStorage.setItem("_tab_id",g);return g}catch(h){return b}};var x=function(){if(!1===v)return"BACK/FORWARD";if(2>a.length)return"FORWARD";t=a[a.length-2];p=a[a.length-1];return t===e||p===e?"BACK":"FORWARD"},
y=function(){c=JSON.parse(localStorage.getItem("_tab_ids"))||[];d=sessionStorage.getItem("_tab_id");c=u(c);if(c.length&&null!==d){var b=c.indexOf(d);-1<b&&c.splice(b,1);localStorage.setItem("_tab_ids",JSON.stringify(c))}},z=function(){var b=(new Date).getTime();"undefined"!==typeof performance&&"function"===typeof performance.now&&(b+=performance.now());return"xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx".replace(/[xy]/g,function(h){var q=(b+16*Math.random())%16|0;b=Math.floor(b/16);return("x"===h?q:q&3|
8).toString(16)})+(0<l?"_"+((new Date).getTime()+l):"")},A=function(b,h){return!(!0===h&&0!==b&&255!==b)};null===d?(d=z(),f=!0,sessionStorage.setItem("_tab_id",d)):d=r(d);c=u(c);-1===c.indexOf(d)&&(c.push(d),localStorage.setItem("_tab_ids",JSON.stringify(c)));r=c.length;if(window.PerformanceNavigation){a=a||[];var n=window.performance.navigation.redirectCount;if(A(window.performance.navigation.type,f))switch(window.performance.navigation.type){case 0:var k="NAVIGATE";a.push(e);break;case 1:k="RELOAD";
0!==a.length&&a[a.length-1]===e||a.push(e);break;case 2:k=x();"FORWARD"===k?-1<document.referrer.indexOf(w)&&a.push(e):"BACK"===k?p!==e&&a.pop():a.push(e);break;default:k="OTHER",a.push(e)}else a.push(e);sessionStorage.setItem("_nav_path",JSON.stringify(a))}window.addEventListener("beforeunload",y);n={tabCount:r,redirectCount:n,navigationType:k,newTab:!0===f?"New":"Existing",tabId:d.replace(/_.+/,"")};window.google_tag_manager[google_tag_manager["GTM-T3LBJ26"].macro(82)].dataLayer.set("browsingBehavior",n);window.dataLayer.push({event:"custom.navigation",
browsingBehavior:n})}})();</script>
</body></html>