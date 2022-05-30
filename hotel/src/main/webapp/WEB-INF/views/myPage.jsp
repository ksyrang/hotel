<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko" class="webkit chrome win  js portrait pc">
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=Edge">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title>My Account Summary | My Page | The SinNanDa Hotels &amp; Resorts</title>
	<link href="${pageContext.request.contextPath}/css/mem/common.css" rel="stylesheet" type="text/css">
	<link href="${pageContext.request.contextPath}/css/mem/title_ko.css" rel="stylesheet" type="text/css">
	<link href="${pageContext.request.contextPath}/css/mem/common/print.css" rel="stylesheet" type="text/css" media="print">
	<link href="${pageContext.request.contextPath}/css/mem/mainImages_ko.css" rel="stylesheet" type="text/css">
	<link href="${pageContext.request.contextPath}/css/mem/common/reserve_new.css" rel="stylesheet" type="text/css">
	<link href="${pageContext.request.contextPath}/css/mem/common/lang-ko_N.css" rel="stylesheet" type="text/css">
	<link href="${pageContext.request.contextPath}/css/mem/common/btn_ko.css" rel="stylesheet" type="text/css">
	<link href="${pageContext.request.contextPath}/css/common/swiper.min.css" rel="stylesheet" type="text/css">
	<meta name="description" content="My Account Summary"><!-- <meta name="keywords" content="My Account Summary, My Page" /> -->
	<meta name="og:title" content="My Account Summary | My Page | The Shilla Hotels &amp; Resorts"> 
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
	</script>
</head>
<body class="subBody">
	<div id="popCalendarDiv" class="popCalendar" style="display:none"></div>
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
	
	<script type="text/javascript"></script>
	
	<!-- 운영인 경우만 Google Analytics 호출 -->
	<!-- Google Tag Manager -->
	<script>
		(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
		new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
		j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
		'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
		})(window,document,'script','dataLayer','GTM-T3LBJ26');
	</script>
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
	<noscript>
		<iframe src="https://www.googletagmanager.com/ns.html?id=GTM-T3LBJ26"
		height="0" width="0" style="display:none;visibility:hidden"></iframe>
	</noscript>
	<!-- End Google Tag Manager (noscript) -->
	
	<dl class="skipNavi">
		<dt>THE SHILLA 바로가기 메뉴</dt>
		<dd><a class="goContents" href="#contents">본문으로 바로가기</a></dd>
	</dl>
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
		<a href="/hotel/myPage">마이페이지</a>
		</span>
	  <!-- 예약확인 추가 -->
	  <div class="resvConfirm">
			  <div class="resvConBox">
				  <a class="btn" href="#">예약확인<!-- 예약확인 --></a>
				  <ul class="list" style="display: none;">
					  <li class="dn1 first last">
						  <ul class="listSt">
							  <li class="st first st1">
								  <a href="/hotel/memListResv"><span>객실<!-- 객실 --></span></a>
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
			<a href="/hotel/myPage">신라리워즈</a>
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
							<a href="/hotel/myPage" class="on">
								<span>신라리워즈 등급 및 포인트</span>
							</a>
						</li>
						<li class="m2">
							<a><span>예약 확인/취소</span></a>
							<ul class="sMenu">
								<li class="s1 first">
									<a href="/hotel/memListResv">
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
									<a href="/hotel/memSetPwCnfm">
										<span>프로필 수정</span>
									</a>
								</li>
								<li class="s2">
									<a href="/hotel/memSetPwMod">
										<span>비밀번호 변경</span>
									</a>
								</li>
								<li class="s3">
									<a href="/hotel/memListAsk">
										<span>문의 내역</span>
									</a>
								</li>
								<li class="s4 last">
									<a href="/hotel/memSetPwDropfm?gubun=t">
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
	
	
	$(function() {
		
		
		$("select, input").uniform();
	});
	
	</script>
	
	<form name="myResvForm" id="myResvForm" method="get">
	<input type="hidden" name="resvId" id="resvId" value="" autocomplete="off"><input type="hidden" name="legNumber" id="legNumber" value="" autocomplete="off"><div class="contents" id="contents">
		<div class="ctnMypage ctnPromotion rewards_N">
			<div class="location">
				<p class="list">
					<span class="crPosit">
					현재 페이지 위치 : </span> &gt; 
					마이페이지 &gt; 
					<strong>신라리워즈 등급 및 포인트</strong>
				</p>
			</div>
			<div class="myAccountTit">
				<h3 class="tit">
					신라리워즈 등급 및 포인트</h3>
			</div>
			
			
			<div class="account">
				<div class="userInfoTopBox clearfix">
				
					<div class="userInfoList1 fl">
						<p><strong>YOONGHEE LEE</strong>님은</p>
						<p><strong class="bLevel">BROWN</strong> 회원입니다.</p>
					</div>
					<div class="userInfoList2 fr">
						<ul>
							<li class="first">
								<span>회원번호</span>
								<strong>2094148</strong>
							</li>
							<li class="last">
								<span>포인트</span>
								<strong>0<b> P</b></strong>
							</li>
						</ul>
					</div>
				</div>
				
				<div class="userInfoTopBoxTit clearfix"><!-- 20201203 레이아웃 변경 -->
					<div class="fl">
						<img src="${pageContext.request.contextPath}/images/ko/mypage/graphTitTxt.gif" alt="등급 현황">
					</div>
					<div class="fr">
						<a href="/membership/offers/benefits/memBenefitsIndex.do" title="등급별 혜택보기" class="linkTxt">
							등급별 혜택보기</a>
					</div>
				</div>
				
				<!-- 그래프 -->
				<div class="userInfoGraphBox">
					<div class="userInfoGraphWrap clearfix">
						<!-- 박수 기준 -->
						<div class="userNightGraph fl">
							<div class="graphTit">
								<img src="${pageContext.request.contextPath}/images/ko/mypage/graphTit1.gif" alt="박수기준">
							</div>
							<div class="graphInfo">
								<!-- 박수 기준 그래프 영역 -->
								<div class="graph-list">
									<div class="graph-backLine">
										<span class="backLine1"></span>
										<span class="backLine2"></span>
									</div>
									<div class="graphIconWrap">
										<span class="nightIcon">
											<img src="${pageContext.request.contextPath}/images/ko/mypage/night_icon.png" alt="박수 기준 night 아이콘">
										</span>
									</div>
									<ul class="graphStandardInfo">
										<li class="first">
											<strong>0</strong> 박</li>
										<li class="last"><strong>1</strong> 박</li>
									</ul>
									
									<div class="graph-data brown per0"><!-- brown(기본모양) / silver / gold / diamond -->
										<!-- 등급명 추가시 색상 변경// brown에는 per class 없음 // diamond는 무조건 per100 -->
										<div class="slice1 circle-list"></div>
										<div class="slice2 circle-list"></div>
									</div>
								</div>
							</div>
							<div class="graphTxt">
								<!-- BROWN, SILVER, GOLD 등급일 때 -->
										<p>
											<strong class="userTierTxt">SILVER</strong> 등급까지 <strong class="userNightTxt">1 박</strong> 남았습니다.</p>
									</div>
						</div>
						<!-- 포인트 기준 -->
						<div class="userPointGraph fr">
							<div class="graphTit">
								<img src="${pageContext.request.contextPath}/images/ko/mypage/graphTit2.gif" alt="포인트기준">
							</div>
							<div class="graphInfo">
								<!-- 포인트 기준 그래프 영역 -->
								<div class="graph-list">
									<div class="graph-backLine">
										<span class="backLine1"></span>
										<span class="backLine2"></span>
									</div>
									<div class="graphIconWrap">
										<span class="pointsIcon">
											<img src="${pageContext.request.contextPath}/images/ko/mypage/points_icon.png" alt="포인트 기준 night 아이콘">
										</span>
									</div>
									<ul class="graphStandardInfo">
										<li class="first">
											<strong>0</strong> P
										</li>
										<li class="last"><strong>100</strong> P
										</li>
									</ul>
									<div class="graph-data brown per0">
										<div class="slice1 circle-list"></div>
										<div class="slice2 circle-list"></div>
									</div>
								</div>
							</div>
							<div class="graphTxt">
								<!-- BROWN, SILVER, GOLD 등급일 때 -->
										<p>
											<strong class="userTierTxt">SILVER</strong> 등급까지 <strong class="userNightTxt">100 P</strong> 남았습니다.</p>
									</div>
						</div>
					</div>
				</div>
				<!-- 등급별 혜택보기 -->
				<div class="tierNoticeTxt">
					<p>
						※ 등급평가 및 조정은 1월 1일부터 12월 31일까지 (체크아웃기준) 1년간 이용한 실적기준</p>
				</div>
				<div class="pointTableWrap">
					<div class="pointTableTit clearfix">
						<div class="fl">
							<img src="${pageContext.request.contextPath}/images/ko/mypage/boardTitle1.gif" alt="최근 6개월 이내의 포인트 적립/사용 내역을 확인하실 수 있습니다.">
						</div>
						<a href="/membership/offers/earnUse/memEarnUseIndex.do" title="포인트 안내보기" class="linkTxt fr">
							포인트 안내보기</a>
					</div>
					<table class="bbsList bbsQnaList" summary="호텔,구분,이용금액(원),적립포인트,사용포인트,이용날짜로 구성된 게시물 리스트 표">
						<caption>최근 6개월 이내의 포인트 적립/사용 내역을 확인하실 수 있습니다.</caption>
						<colgroup>
							<col width="25%" class="col1">
							<col width="25%" class="col2">
							<col width="25%" class="col3">
							<col width="25%" class="col4">
						</colgroup>
						<thead>
							<tr>
								<th>구분</th>
								<th>적립 포인트</th>
								<th>사용포인트</th>
								<th>날짜</th>
							</tr>
						</thead>
						<tbody>
							<tr class="first last">
										<td colspan="6">자료가 없습니다.</td>
									</tr>
								</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
	
	<div id="reserveNotice" style="display:none"></div>
	</form>
	</div>
	
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
</body>
</html>