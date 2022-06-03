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

</script></head>
<script type="text/javascript">
function emailCheck() {
$('#select[name=selectEmail]').change(function(){
   $("#select option:selected").each(function () {
		
		if($(this).val()== '1'){ //직접입력일 경우
			 $("#email02").val('');                        //값 초기화
			 $("#email02").attr("disabled",false); //활성화
		}else{ //직접입력이 아닐경우
			 $("#email02").val($(this).text());      //선택값 입력
			 $("#email02").attr("disabled",true); //비활성화
		}
   });
});
});
</script>

<body class="subBody joinBody"><div id="popCalendarDiv" class="popCalendar" style="display:none"></div>

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
<script src="/js/resv/resvCalendar.js" charset="UTF-8"></script><script src="/js/resv/resvPromotionCalendar.js" charset="UTF-8"></script>
<script src="/js/resv/resv.js" charset="UTF-8"></script><script src="/js/resv/din.js" charset="UTF-8"></script>
<script src="/js/ask/ask.js" charset="UTF-8"></script><script src="/js/mbr/zipno.js" charset="UTF-8"></script><div id="zipNoLayerDiv" class="popLogin" style="display:none"></div>
<script src="/js/offers/makeAPlan.js" charset="UTF-8"></script><div id="makeAPlanLayerDiv" class="popLogin" style="display:none"></div>
<script src="/js/mbr/mbr_join.js" charset="UTF-8"></script>
<script src="/js/jquery.cookie.js" charset="UTF-8"></script>
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

<script type="text/javascript" src="/js/jquery.alphanumeric.js"></script>
<script type="text/javascript">
<!--


$(window.document).ready(function(){
  	$(window.document).on("contextmenu", function(event){return false;});	//우클릭방지
    	$(window.document).on("selectstart", function(event){return false;});	//더블클릭을 통한 선택방지
    	$(window.document).on("dragstart"	, function(event){return false;});	//드래그
});


$(document).ready(function() { 
	$("select,input").not(".css-checkbox").uniform();
	$('.opacity').hide();
	$('.re-loader').hide();
	
	$("input[name='preferenceCk']").click(function () {
      if ($(this).is(":checked")) {
        $(this).parent().find("label").addClass("keyOn");
      } else {
        $(this).parent().find("label").removeClass("keyOn");
      }
    });
}); 

jQuery(function() {
	jQuery("#mbrEnFnm").numericalpha();
	jQuery("#mbrEnLnm").numericalpha();
});


var gbn = false;

function fnCalcBirth() {
	var todayMonth = "5";
	var todayDay = "27";
	var lastYear = "2003";
	var birthMonth = $.trim($('#birthMonth').val());
	var birthDay = $.trim($('#birthDay').val());
	var birthYear = $.trim($('#birthYear').val());
	
	if(todayMonth < 10)	todayMonth	= "0" + todayMonth;	// 현재 월이 10보다 작을경우 '0' 문자 합한다
	if(todayDay < 10)	todayDay	= "0" + todayDay;	// 현재 월이 10보다 작을경우 '0' 문자 합한다
	if(birthMonth < 10)	birthMonth	= "0" + birthMonth;	// 현재 월이 10보다 작을경우 '0' 문자 합한다
	if(birthDay < 10)	birthDay	= "0" + birthDay;	// 현재 월이 10보다 작을경우 '0' 문자 합한다	

	var today = todayMonth + todayDay;
	var birth = birthMonth + birthDay;

	if(today < birth && lastYear == birthYear) {
		return false;
	} else {
		return true;
	}
}


function saveMbrJoinForm( ) {
	
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
		/* alert(messages["msg.cmm.required"].replaceMsg(['아이디 중복확인을 해주세요.'])); */
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
		 $.post( "/mem/mbr/join/memSaveMbrInfo.do", string).done(function(data){
		 
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
			if(confirm('이미 가입된 이메일 주소입니다. 로그인 페이지로 이동합니다.')) {
				window.location.href = "/membership/mbr/login/memLogin.do";
			}
		 }else if(resultCode == "mssDupl") {	// 분리보관 중복
			checkedEmail = false;
			if(confirm('이미 가입된 이메일 주소입니다. 로그인 페이지로 이동합니다.')) {
				window.location.href = "/membership/mbr/login/memLogin.do";
			}
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
var checkedLognId = false;
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
function unCheck() {
	$('.checked').removeAttr('class');
}
//-->
</script>
<form id="mbrJoinForm" name="mbrJoinForm" action="/mem/mbr/join/memSetMbrInfo.do" method="post"><input type="hidden" id="hotlUsePupsCd" name="hotlUsePupsCd" autocomplete="off">
<input type="hidden" id="foodKindTypCd" name="foodKindTypCd" autocomplete="off">
<input type="hidden" id="idOverlap" name="idOverlap" value="" autocomplete="off">
<input type="hidden" id="annvTypCd" name="annvTypCd" value="" autocomplete="off">
<input type="hidden" id="annvNm" name="annvNm" value="" autocomplete="off">
<input type="hidden" id="annvYear" name="annvYear" value="" autocomplete="off">
<input type="hidden" id="annvMonth" name="annvMonth" value="" autocomplete="off">
<input type="hidden" id="annvDay" name="annvDay" value="" autocomplete="off">
<input type="hidden" id="annySclcCd" name="annySclcCd" value="" autocomplete="off">
<input type="hidden" id="LangTypCd" name="LangTypCd" value="KR" autocomplete="off">
<input type="hidden" id="dmstYn" name="dmstYn" value="" autocomplete="off">
<input type="hidden" id="membershipUseYn" name="membershipUseYn" value="Y" autocomplete="off">
<input type="hidden" id="individualInfoUseYn" name="individualInfoUseYn" value="Y" autocomplete="off">
<input type="hidden" id="othersInfoUseYn" name="othersInfoUseYn" value="Y" autocomplete="off">
<input type="hidden" id="marketingUseYn" name="marketingUseYn" value="Y" autocomplete="off">
<input type="hidden" id="transferAgreeYn" name="transferAgreeYn" value="Y" autocomplete="off">
<input type="hidden" id="mbshIdNo" name="mbshIdNo" value="" autocomplete="off">
<input type="hidden" id="submitYn" name="submitYn" value="N" autocomplete="off">
<input type="hidden" id="smsRecvYnY" name="smsRecvYn" value="Y" autocomplete="off">
<input type="hidden" id="emailRecvYn" name="emailRecvYn" value="Y" autocomplete="off">
<input type="hidden" id="countCd" name="countCd" value="KR" autocomplete="off">
<input type="hidden" id="email" name="email" value="" autocomplete="off">
<input type="hidden" id="itCd" name="itCd" value="" autocomplete="off">
<input type="hidden" id="termsOptional" name="termsOptional" value="" autocomplete="off">
<input type="hidden" id="termsLocation" name="termsLocation" value="" autocomplete="off">
<input type="hidden" id="receiveSms" name="receiveSms" value="" autocomplete="off">
<input type="hidden" id="receiveEmail" name="receiveEmail" value="" autocomplete="off">
<input type="hidden" id="receiveTm" name="receiveTm" value="" autocomplete="off">
<input type="hidden" id="receiveDm" name="receiveDm" value="" autocomplete="off">
<input type="hidden" id="ipinDI" name="ipinDI" value="MC0GCCqGSIb3DQIJAyEAAbJUqAbJdglIwRAEVYNOEyP2u6WjBOAOjDRHCjs5m2A=" autocomplete="off">
<input type="hidden" id="ipinCI" name="ipinCI" value="" autocomplete="off">
<input type="hidden" id="dfsYn" name="dfsYn" value="" autocomplete="off">
<input type="hidden" id="shillaDfsJoinFlag" name="shillaDfsJoinFlag" autocomplete="off">
<input type="hidden" id="trdReceiveSms" name="trdReceiveSms" value="" autocomplete="off">
<input type="hidden" id="trdReceiveEmail" name="trdReceiveEmail" value="" autocomplete="off">
<input type="hidden" id="trdReceiveTm" name="trdReceiveTm" value="" autocomplete="off">
<input type="hidden" id="trdReceiveDm" name="trdReceiveDm" value="" autocomplete="off">
<input type="hidden" id="termsTrdOvrsTransfer" name="termsTrdOvrsTransfer" value="" autocomplete="off">
<input type="hidden" id="termsTrdMarketing" name="termsTrdMarketing" value="" autocomplete="off">
<input type="hidden" id="cnt" name="cnt" value="7" autocomplete="off">

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
						<li class="t3 last"><span>약관동의</span></li>
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
					
					<tbody><tr class="first">
						<th scope="row" class="first"><em class="ast">*</em> 성명(국문)</th>
						<td class="first">
							<label for="titlCd" class="nameH">경칭</label>
							<select name="gender" style="width: 85px; height: 27px; line-height: 27px;">
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
							<input type="text" class="lastNameEn uiform text" id="mbrNm" name="mbrNm" maxlength="30" value="" autocomplete="off">
						</td>
					</tr>
					
					<tr>
						<th scope="row"><em class="ast">*</em> 성명(영문)</th>
						<td>
							<label for="mbrEnFnm" class="firstNameEn">First name(이름)</label>
							<input id="mbrEnFnm" name="mbrEnFnm" onkeyup="this.value=this.value.replace(/[^a-z]/gi,'');" style="text-transform: uppercase;" type="text" class="lastNameEn uiform text" value="" maxlength="30" autocomplete="off"><label for="mbrEnLnm" class="lastNameEn">Last name(성)</label>
							<input id="mbrEnLnm" name="mbrEnLnm" onkeyup="this.value=this.value.replace(/[^a-z]/gi,'');" style="text-transform: uppercase;" type="text" class="lastNameEn uiform text" value="" maxlength="30" autocomplete="off"></td>
							
					</tr>
			
					<!-- 생년월일 -->
					<tr>
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
							<!-- <div class="selector" id="uniform-birthYear" style="width: 74px;"><span style="width: 49px; user-select: none;">선택</span>
							
							
							<select class="uiform birthYear" id="birthYear" name="birthYear">
								<option value="" selected="selected">선택</option>
								<option value="2003">2003</option>
								<option value="2002">2002</option>
								</select>
								</div>
							<label for="birthYear" class="birthYear">.</label>  -->
							
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
							
						<!--  <div class="selector" id="uniform-birthMonth" style="width: 71px;"><span style="width: 46px; user-select: none;">1</span><select class="uiform birthMonth" id="birthMonth" name="birthMonth" >
								<option value="">선택</option>
								<option value="1" title="1" selected>1</option>
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
								</select></div>
							<label for="birthMonth" class="birthMonth"></label>  -->
							
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
							
						<!--	<div class="selector" id="uniform-birthDay" style="width: 71px;"><span style="width: 46px; user-select: none;">선택</span><select class="uiform birthDay" id="birthDay" name="birthDay" >
								<option value="">선택</option>
								<option value="1" title="1" selected>1</option>
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
								</select></div>
							<label for="birthDay" class="birthDay">일</label> -->
							
						</td>
					</tr>
					
					<!-- 이메일 -->

					<tr>
						<th scope="row"><em class="ast">*</em> 이메일 </th>
						<td>
							<input id="email01" name="email01"  type="text" size="20" value="" onkeyup="this.value=this.value.replace(/[^a-z0-9_.@-]/gi,'');" maxlength="40" title="이메일주소 입력" autocomplete="off">
							<span class="at">@</span> 
							
							<input id="email02" name="email02"  type="text" size="20" value="" onkeyup="this.value=this.value.replace(/[^a-z0-9_.@-]/gi,'');" maxlength="40" title="이메일주소 도메인 입력" autocomplete="off">
							<select id="selectEmail" name="selectEmail" style="width: 115px; height: 27px; line-height: 27px;" onchange="email02.value=this.value">
							<option value="" selected disabled>E-Mail 선택</option>
							<option value="blank">직접입력하기</option>
							<option value="naver.com" title="naver.com">naver.com</option>
							<option value="hanmail.net" title="hanmail.net">hanmail.net</option>
							<option value="nate.com" title="nate.com">nate.com</option>
							<option value="gmail.com" title="gmail.com">gmail.com</option>
							<option value="hotmail.com" title="hotmail.com">hotmail.com</option>
							<option value="yahoo.co.kr" title="yahoo.co.kr">yahoo.co.kr</option>
							</select> 
					<!--	<div class="selector" id="uniform-emailDomainCd" style="width: 111px;"><span style="width: 86px; user-select: none;">직접입력</span><select id="emailDomainCd" class="emailDomainSel" onchange="javascript:$('#email2').val(this.value)">
								<option value="">직접입력</option>

									<option value="naver.com" title="naver.com" selected="">naver.com</option>

									<option value="hanmail.net" title="hanmail.net">hanmail.net</option>

									<option value="nate.com" title="nate.com">nate.com</option>

									<option value="gmail.com" title="gmail.com">gmail.com</option>
									
									<option value="hotmail.com" title="hotmail.com">hotmail.com</option>
															
									<option value="yahoo.co.kr" title="yahoo.co.kr">yahoo.co.kr</option>

							</select></div> -->
							<span class="emailConfirm"><a href="javascript:checkDuplicateEmail()">이메일 중복확인</a></span>
						</td>
					</tr>
					
					<!-- 휴대전화 -->
					<tr>
						<th scope="row"><em class="ast">*</em> 휴대전화 </th>
						<td>
							<label for="mbno1" class="phoneComp">휴대폰국번</label>
							<select name="mobileFirst" style="width: 85px; height: 27px; line-height: 27px;">
								<option value="010" title="010" selected>010</option>
								<option value="011" title="011">011</option>
								<option value="016" title="016">016</option>
								<option value="017" title="017">017</option>
								<option value="018" title="018">018</option>
								<option value="019" title="019">019</option>
							</select>
						<!--  	<div class="selector" id="uniform-mbno1" style="width: 67px;"><span style="width: 42px; user-select: none;">010</span><select class="uiform phoneComp" id="mbno1" name="mbno1">
										<option value="010" title="010" selected>010</option>
										<option value="011" title="011">011</option>
										<option value="016" title="016">016</option>
										<option value="017" title="017">017</option>
										<option value="018" title="018">018</option>
										<option value="019" title="019">019</option>
										</select></div>	-->
								
							-
							<label for="mbno2" class="phoneNum1">휴대폰앞번호</label>
							<input type="text" class="uiform phoneNum1 text" id="mbno2" name="mbno2" value="" maxlength="4" onkeyup="this.value=this.value.replace(/[^\d\ ]/g, '')" autocomplete="off">
							-
							<label for="mbno3" class="phoneNum2">휴대폰뒷번호</label>
							<input type="text" class="uiform phoneNum2 text" id="mbno3" name="mbno3" value="" maxlength="4" onkeyup="this.value=this.value.replace(/[^\d\ ]/g, '')" autocomplete="off">
							
							
						</td>
					</tr>
					<!-- 자택전화 -->
					<tr>
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
							
						<!-- 	<div class="selector" id="uniform-phno1" style="width: 74px;"><span style="width: 49px; user-select: none;">선택</span><select class="uiform phoneHome" id="phno1" name="phno1">
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
								</select></div>	 -->
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
									<label class="zipcode1" for="zipcode1">우편번호앞자리</label>
									<input type="text" class="zipcode1 uiform text" id="zipNo1" name="zipNo1" style="width: 100px;" readonly="" autocomplete="off">
<!-- 										- -->
<!-- 										<input type="text" class="zipcode2 uiform" id="zipNo2" name="zipNo2"  readonly> -->
									<a href="javascript:popZipNoSecuSearch('zipNo1','zipNo2','adr','detlAdr','adr','detlAdr');" id="zipbutton" class="btnSchAddress">주소찾기</a>
								</div>
								
								<div class="addressOld">
										
									<div class="address1">
										<label class="address1" for="newAdr">주소구,동</label>
										<input type="text" class="address1 uiform text" id="adr" name="adr" readonly="" autocomplete="off">
									</div>
									<div class="address2">
										<label class="address2" for="newDetlAdr">상세주소</label>
										<input type="text" class="address2 uiform text" id="detlAdr" name="detlAdr" maxlength="100" readonly="" autocomplete="off">
									</div>
								</div>
							</div>
							
						</td>
					</tr>
					
					</tbody></table>
					
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
								<td class="first"><input type="text" id="lognId" name="lognId" class="uiform text" maxlength="15" autocomplete="off" style="width:130px">
								<span class="idConfirm"><a href="javascript:checkDuplicateLognId()">아이디 중복확인</a></span><span class="msgCheck msgCheck2">5~12자  이내 영문 또는 영문/숫자 조합</span></td>
							</tr>
					<tr>
						<th scope="row"><em class="ast">*</em> 비밀번호</th>
						<td>
							<label for="mbrPw" class="pwForm1">비밀번호</label>
							<input type="password" class="pwForm1 uiform password" id="mbrPw" name="mbrPw" maxlength="20" autocomplete="off" style="width:130px">
							<div class="pwGuideBox">
								<a href="javascript:;" class="btnPwHelp"><span>비밀번호입력안내</span><em class="icoHelp"></em></a>
								<div class="pwGuide" style="display: none;">
									<h4 class="tit">비밀번호 입력 시 아래의 사항을 참고하시어 안전한 정보 입력을 권장합니다.</h4>
									<ul class="list">
										<li class="first"> 아이디 및 아이디를 포함한 문자/숫자는 비밀번호로 사용할 수 없습니다.</li><li> 동일하거나 연속되는 문자 또는 숫자는 사용 불가능합니다.  예) aaa,111</li><li>생일, 주민등록번호 등 타인이 알아내기 쉬운 비밀번호는 사용을 자제해 주시기 바랍니다.	</li><li class="last">비밀번호는 3~6개월에 한번씩 주기적으로 바꾸어 사용	하시는 것이 안전합니다. </li></ul>
									<a href="javascript:;" class="btnClose"><span>닫기</span></a>
								</div>
							</div>
							<script>
								$(document).ready(function() {
									//비밀번호 도움말 열기 
									$(".pwGuideBox .btnPwHelp").on("click",function(e){
										if($(".pwGuideBox .pwGuide").is(":visible")){
											$(".pwGuideBox .pwGuide").hide();	
										}else{	
											$(".pwGuideBox .pwGuide").show();
										}
										e.stopPropagation();
									}); 
									$(document).click(function(){
										$(".pwGuideBox .pwGuide").hide();
									});
									$(".pwGuideBox .pwGuide").click(function(e){
										e.stopPropagation();
									}); 
									$(".pwGuideBox .pwGuide .btnClose").on("click",function(e){
											$(".pwGuideBox .pwGuide").hide();	
									}); 
								});
							</script>
							
							<span class="msgCheck msgCheck2">8~20자  이내 영문/숫자 조합(특수문자 입력 가능)</span>
						</td>
					</tr>
					<!-- 비빌번호 확인 -->
					<tr class="last">
						<th scope="row" class="last"><em class="ast">*</em> 비밀번호 확인</th>
						<td class="last">
							<label for="mbrPw2" class="pwForm2">비밀번호 확인</label>
							<input type="password" class="pwForm2 uiform password" id="mbrPw2" name="mbrPw2" maxlength="20" autocomplete="off" style="width:130px"> 
						</td>
					</tr>
					
				</tbody></table>
				
                

<div class="rwPromotion">
                   <span>※ 신라리워즈 가입 고객께는 모바일
   카드가 발급 되며 혜택 및 약관은
   홈페이지에서 확인 가능합니다.</span>   
                </div>
                 <!-- 카드 안내 문구 끝-->
							
				<br>
				
				<div class="btnList"><a href="javascript:saveMbrJoinForm();" class="btnJoinSend">가입신청</a></div>
				
			</div>
		</div>
		</div>
			<div id="viewLoading" class="re-loader" style="display: none;">
		 	 <img src="${pageContext.request.contextPath}/images/ko/common/loadingAnimation.gif" alt="">
			</div>
			<div class="opacity" style="display: none;"></div>
	</form><div id="mbrJoinLayer"></div>
	
			
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
			<li class="link3"><a href="/membership/memFooter/pop/memEmailAdCollectPop.do" onclick="openCtrlPopup('/mem/memFooter/pop/memEmailAdCollectPop.do','emailAdCollectPop');  return false;">이메일무단수집금지</a></li>
			<li class="link4"><a href="https://www.shillaaudit.com/audit/inf_information.do" target="_blank">윤리경영</a></li>
			<li class="link5 last"><a href="/membership/memFooter/pop/memSafeMngPop.do" onclick="openCtrlPopup('/mem/memFooter/pop/memSafeMngPop.do','emailAdCollectPop');  return false;">건축/시설물 안전관리</a></li>  </ul>
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
0!==a.length&&a[a.length-1]===e||a.push(e);break;case 2:k=x();"FORWARD"===k?-1<document.referrer.indexOf(w)&&a.push(e):"BACK"===k?p!==e&&a.pop():a.push(e);break;default:k="OTHER",a.push(e)}else a.push(e);sessionStorage.setItem("_nav_path",JSON.stringify(a))}window.addEventListener("beforeunload",y);n={tabCount:r,redirectCount:n,navigationType:k,newTab:!0===f?"New":"Existing",tabId:d.replace(/_.+/,"")};window.google_tag_manager[google_tag_manager["GTM-T3LBJ26"].macro(59)].dataLayer.set("browsingBehavior",n);window.dataLayer.push({event:"custom.navigation",
browsingBehavior:n})}})();</script>
</body></html>