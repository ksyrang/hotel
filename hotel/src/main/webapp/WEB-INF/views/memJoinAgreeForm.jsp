<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko" class="webkit chrome win  retina ratio1_25 js portrait tabletwide"><head>
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>약관동의 | 신라리워즈 가입 | The Shilla Hotels &amp; Resorts</title>
<link href="${pageContext.request.contextPath}/css/mem/common.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/css/mem/title_ko.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/css/mem/common/print.css" rel="stylesheet" type="text/css" media="print">
<link href="${pageContext.request.contextPath}/css/mem/mainImages_ko.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/css/mem/common/reserve_new.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/css/mem/common/lang-ko_N.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/css/mem/common/btn_ko.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/css/common/swiper.min.css" rel="stylesheet" type="text/css">
<meta name="description" content="약관동의"><!-- <meta name="keywords" content="신라리워즈 가입, 약관동의" /> -->
<meta name="og:title" content="약관동의 | 신라리워즈 가입 | The Shilla Hotels &amp; Resorts">
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
</script></head><body class="subBody joinBody"><div id="popCalendarDiv" class="popCalendar" style="display:none"></div>

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



	
	<div class="contain">
		<script type="text/javascript">

$(document).ready(function() { 
	
	if("" == "emailOverlap"){
		alert('이미 가입된 email 주소입니다.');
	}
	if("" == "urlError"){
		alert('잘못된 경로로 진입하였습니다.');
	}
	if("" == "getCertNoError"){
		alert('이메일인증이 실패하였습니다.');
	}
	
	$(".mbrChk").prop("disabled", true);

	// PC 회원가입 레이어팝업 show
	fncGetPopup();

	// 신라리워즈 약관 전체 동의
	$("#mbr_chk_all").click(function(){
		if($(this).is(":checked")){
			$(".mbrChkY").prop("checked", true);			
			$(".mbrChkN").prop("checked", false);
			$(".mbrChk").prop("disabled", false);
			$(".mbrChk").prop("checked", true);
			$("#mktArea").removeClass("opacity").addClass("opacity2");
		}else{
			$(".mbrChkN").prop("checked", true);
			$(".mbrChkY").prop("checked", false);
			$(".mbrChk").prop("checked", false);
			$(".mbrChk").prop("checked", false);
			$(".mbrChk").prop("disabled", true);
			$("#mktArea").removeClass("opacity2").addClass("opacity");
		}
	});
	
	$(".mbrChkY").click(function(){
		var chkFlag = true;
		$(".mbrChkY").each(function(){
			if(!$(this).is(":checked")){
				chkFlag = false;
			}
		});
		chkFlag == true ? $("#mbr_chk_all").prop("checked", true) : $("#mbr_chk_all").prop("checked", false);
	});
	
	$(".mbrChkN").click(function(){
		var chkFlag = true;
		$(".mbrChkY").each(function(){
			if(!$(this).is(":checked")){
				chkFlag = false;
			}
		});
		chkFlag == true ? $("#mbr_chk_all").prop("checked", true) : $("#mbr_chk_all").prop("checked", false);
	});
	
	// 매체별 광고성 정보 수신 동의 체크박스
	$(".mbrChk").click(function(){
		var objId = $(this).attr("id");
		var chkFlag = true;
		if($(this).is(":checked")){
			if(objId == "marketingAll"){
				$(".mbrChk").prop("checked", true);
			}else{
				
				$(".mbrChk").each(function(){
					if(!$(this).is(":checked") && $(this).attr("id") != "marketingAll"){
						chkFlag = false;
					}
				});
				
				chkFlag == true ? $("#marketingAll").prop("checked", true) : $("#marketingAll").prop("checked", false);
			}
		}else{
			if(objId == "marketingAll"){
				$(".mbrChk").prop("checked", false);
			}else{
				$(".mbrChk").each(function(){
					if(!$(this).is(":checked")){
						chkFlag = false;
					}
				});
				chkFlag == true ? $("#marketingAll").prop("checked", true) : $("#marketingAll").prop("checked", false);
			}
		}
		
		
	});
	
	// 개인정보 마케팅 활용 동의 선택값에 따라 CSS 수정
	$(".mktAgree").click(function(){
		if($(this).attr("id") == "checkAgree4_Y"){
			$("#mktArea").removeClass("opacity").addClass("opacity2");
			$(".mbrChk").prop("disabled", false);
		}else{
			$("#mktArea").removeClass("opacity2").addClass("opacity");
			$(".mbrChk").prop("checked", false);
			$(".mbrChk").prop("disabled", true);
		}
	});
});


function nextStep(){
	
	if(!$("#checkAgree1_Y").is(":checked")){
		$("#checkAgree1_Y").focus();
		alert("신라리워즈 이용약관에 대한 동의는 필수 선택사항입니다.");
		return;
	}
	
	if(!$("#checkAgree2_Y").is(":checked")){
		$("#checkAgree2_Y").focus();
		alert("개인정보 수집, 이용에 대한 동의는 필수 선택사항입니다.");
		return;
	}
	
	if(!$("#checkAgree6_Y").is(":checked")){
		$("#checkAgree6_Y").focus();
		alert("개인정보 제3자 제공에 대한 동의는 필수 선택사항입니다.");
		return;
	}
	
	if($("#checkAgree4_Y").is(":checked")){
		if(!$("#marketingSms").is(":checked") && !$("#marketingNews").is(":checked")) {
			$("#checkAgree4_Y").focus();
			alert(messages["javascript.alert.join.check4"]);
			return;
		}
	}

	fnPopup();
}

function popPrivacyInc(number){
	var privacyIncLayerDiv = $("#privacyIncLayerDiv");
	$.ajax(
            {
                url: '/mem/mbr/join/memViewPrivacyInc.do?number='+number,
                type: "post",
                dataType: "html",
                error: function(){
                },
                success: function( strData ){
                	privacyIncLayerDiv.html(strData);
                	privacyIncLayerDiv.show();
                	$(".popLayer").attr("tabindex",-1);
                	$(".popLayer").focus();
                }
            }                           
     );
}

function fnPopup(){
	var windowW = 500;  // 창의 가로 길이
    var windowH = 550;  // 창의 세로 길이
    var left = Math.ceil((window.screen.width - windowW)/2);
    var top = Math.ceil((window.screen.height - windowH)/2);
	window.open('', 'popupChk', 'width='+windowW+', height='+windowH+', top='+top+', left='+left+', fullscreen=no, menubar=no, status=no, toolbar=no, titlebar=yes, location=no, scrollbar=no');
	document.form_chk.action = "https://nice.checkplus.co.kr/CheckPlusSafeModel/checkplus.cb";
	document.form_chk.target = "popupChk";
	document.form_chk.submit();
}

function authCallBack(authInfo){
	
	if(authInfo.resultCode == "200"){
		$("#mbrNm").val(authInfo.sName);
		$("#birth").val(authInfo.sBirthDate);
		$("#titlCd").val(authInfo.sGender);
		$("#ipinDI").val(authInfo.sDupInfo);
		$("#ipinCI").val(authInfo.sConnInfo);
		$("#mbno").val(authInfo.sMobileNo);
		$("#mbno1").val(authInfo.mbno1);
		$("#mbno2").val(authInfo.mbno2);
		$("#mbno3").val(authInfo.mbno3);
		
		$("form[name=viewBrowsewrapForm]").submit();
	}else{
		alert(authInfo.resultMsg);
	}
}

function fncGetPopup(){
		$.ajax({
			url: "/mem/mbr/join/getPopup.do",
			data : { "hotlId": "HUB" },
			cache: false,
			type: "POST",
			success : function(json){
				var data = jQuery.parseJSON(json);
				var isPopup = data.model.isPopup;
				if ( isPopup == "Y" ) {
					for(var i = 0; i < data.model.popupVoList.length; i++){
						var viewObj = data.model.popupVoList[i];
						
						var popupSize = viewObj.popSize;
						var popupLoc = viewObj.popLoc;
						var opt ;

						if (getCookie("popup_"+viewObj.dbbsId+"_KR_"+ i) != "done") {
							var url = "/hub/popup/joinPopup.do?dbbsId="+viewObj.dbbsId+"&hotlId=HUB&langTypCd=KR&viewIdx="+i;
							var opt = "";
							
							if(popupSize != ""){
								var popSize = popupSize.split(":");
								if(popSize.length > 1){
									opt = "width="+popSize[0]+",height="+popSize[1];
								}
							}
							
							if(popupLoc != ""){
								var popLoc = popupLoc.split(":");
								if(popLoc.length > 1){
									if(opt != "") opt = opt + ","; 
									opt = opt + "top="+popLoc[0]+",left="+popLoc[1];
								}
							}
							
							if(opt != "") opt = opt + ",";  
							opt = opt + 'scrollbars=no,status=no';
							window.open(url, viewObj.dbbsId+i, opt);

						}
						
					}	
				}
			}
		});
}


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
</script>
<div id="termsIncLayerDiv" class="popLogin" style="display:none"></div>
<div id="privacyIncLayerDiv" class="popLogin" style="display:none"></div>

<form id="termsForm" name="termsForm">
<input type="hidden" id="termsRole" name="termsRole" autocomplete="off">
<input type="hidden" id="termsTitle" name="termsTitle" autocomplete="off">
</form>

<!-- 본인인증 서비스 Form-->
<form name="form_chk" method="post">
	<input type="hidden" name="m" value="checkplusSerivce" autocomplete="off">     <!-- 필수 데이타로, 누락하시면 안됩니다. -->
	<input type="hidden" name="EncodeData" value="AgAFQkQ2MDQf+bz3vizRwSLR/J45qh8dQZ5hSuAC//IPdSh5I7fYfXkIiExqglObe19CueftyLBiJ8R4H+XF7E8v1FI/yW3zMd9FvcFKtVOJXWMgndplmmzUEcAVpVoUnNoAjjIZXMKcTQbQAb12V0tbPfX19re+ivyh//Ktki+g4QPosLUfPNSqkSMpclBDzHw694sGtTTf2Eu7aH87plmia1Htmn1jEQWksrksI8YImyLg04hg4gH6xHpXhS7F8Q1udnmY6i9pgDA5Vf1EkF816uvM5DlTD84P39TkFMtqIt4l1O6yD7g5p1fT8e56wUCXAKqFK5cPz6OdKaVUzxGfky8Rmk2yT3UHKq1Oz6kME8yDxqM0bIQuOe8xU/Q71/0ldV2zAFIa6l66K2tBvZHvY42L4/nNBrcqYZGV5xlsU6dSiKYxrAbAwcARx8J07nogSl/U5f8Vwy3dtatKLvjB0oJtQNn8sw9yL0aVdEk7ruJwQamObOifnoJL4PQoCPj6y1LzRXQ=" autocomplete="off"> <!-- 위에서 업체정보를 암호화 한 데이타입니다. -->
</form>

<form name="viewBrowsewrapForm" id="viewBrowsewrapForm" method="post" action="memSetMbrInfo.do">
<input type="hidden" id="sqMbPersnallyCertifictH" name="sqMbPersnallyCertifictH" value="" autocomplete="off">
<input type="hidden" id="itCd" name="itCd" value="" autocomplete="off">
<input type="hidden" id="mbrNm" name="mbrNm" autocomplete="off">
<input type="hidden" id="birth" name="birth" autocomplete="off">
<input type="hidden" id="titlCd" name="titlCd" autocomplete="off">
<input type="hidden" id="ipinDI" name="ipinDI" autocomplete="off">
<input type="hidden" id="ipinCI" name="ipinCI" autocomplete="off">
<input type="hidden" id="mbno" name="mbno" autocomplete="off">
<input type="hidden" id="mbno1" name="mbno1" autocomplete="off">
<input type="hidden" id="mbno2" name="mbno2" autocomplete="off">
<input type="hidden" id="mbno3" name="mbno3" autocomplete="off">

<div class="container">
	<div class="contents" id="contents">
		
		<div class="ctnJoin ctnJoinStep1">
			<div class="location">
				<p class="list"><span class="crPosit">현재 페이지 위치 : </span>  &gt; <strong>회원가입</strong></p>
			</div>
			<div class="myRewardsjoinTit">
				<h3 class="tit">회원가입</h3>
			</div>
			<div class="joinStep">
				<ul class="step">
					<li class="t1 on first"><span>약관동의</span></li>
					<li class="t2"><span>회원정보 입력</span></li>
					<li class="t3 last"><span>가입완료</span></li>
				</ul>
			</div>
			<div class="top">
				<h3 class="tit">호텔신라에 오신 것을 환영합니다.</h3>
				<p class="info">호텔신라에 회원 가입하시면 하나의 ID로 통합해서 사용하실 수 있으며, 서울신라호텔, <br>제주신라호텔 등 신라호텔의 다양한 혜택과 서비스를 받으실 수 있습니다.</p><p></p>
			</div>
			<div class="hTit hTit1">
				<h4 class="tit">약관동의</h4>
			</div>
			
			<div class="checkAgreeBox">
                <input type="checkbox" class="checkAgree3 uiform checkbox" id="mbr_chk_all" autocomplete="off">
                <label for="mbr_chk_all" class="checkallA"><strong>신라리워즈 가입 약관 전체 동의</strong></label>
                <h4 class="tit"><br>※ 전체동의는 선택사항(동의 내용을 확인한후 개별동의 가능)이며 전체동의 버튼을 체크하면 선택적 수집동의도 동시 진행됩니다.</h4>
            </div>
            <!-- 신라 리워즈  약관동의 Start -->
			<div class="ctnBox">
				<div class="hTitS">
					<h4 class="tit">신라리워즈 이용약관에 대한 동의 (필수)</h4>
					<div class="info"><a href="#none" onclick="popPrivacyInc(1);" id="privacyIncbutton_1" class="btnViewAll">전체보기</a></div>
				</div>
				<div class="policyBox">
					<div class="box">
					<p><strong>제1조 멤버십 규정 일반</strong></p><br>
<p>1. 본 약관은 주식회사 호텔신라(이하 “회사”)의 호텔 멤버십 프로그램인 Shilla Rewards(이하 “멤버십 프로그램”)의 이용에 관한 기본적인 사항을 정함을
	목적으로 합니다.</p><br>
<p>2. 멤버십 프로그램의 이용약관 및 멤버십 운영에 관련한 각종 혜택 및 서비스의 적용 범위는 다음과 같습니다. (이하 (1)~(3)을 총칭하여 "가맹호텔")</p><br>
<p>(1) 신라호텔 : 서울신라호텔, 제주신라호텔</p><br>
<p>
	(2) 신라스테이 전 점
</p><br>
<p>(3) 그 외 향후 제휴 호텔 및 리조트</p><br>
<p>3. 회사는 본 약관에서 멤버십 프로그램의 회원 자격과 혜택, 멤버십 포인트 획득과 사용에 관한 내용을 규정합니다.</p><br>
<p>4. 멤버십 프로그램은 만 19세 이상의 개인 회원을 대상으로 하며, 법인 또는 단체 등은 멤버십에 가입할 수 없습니다.</p><br>
<p>5. 멤버십 프로그램의 약관, 규칙 중에 신청자 및 회원의 소속 국가 및 거주지의 강행법규에 위배되는 부분이 있을 경우, 해당 부분은 해당 회원에 한하여 무효화 합니다.
</p><br>
<p>6. 회사는 멤버십 운영 주체의 상황에 따라 본 이용약관을 포함한 프로그램 구성, 특전 및 그 내용을 변경하고, 본 멤버십 프로그램을 종료할 수 있습니다.
</p><br>
<p>7. 회사는 본 약관을 변경하는 경우 변경되는 약관의 적용일자 및 변경내용, 사유 등을 명시하여 현행약관과 함께 변경약관 적용일로부터 10일(회원에게 불리하게 변경되는 경우 1개월) 이전에 서면, 전자우편,
	홈페이지 공지 등의&nbsp;방법을 통해 회원에게 통지합니다. 회원은 변경약관에 동의하지 않을 수 있으며, 변경약관에 동의하지 않을 경우 회원 탈퇴를 할 수 있습니다. 단, 회사가 위 약관 변경 통지를 하면서 변경약관
	적용일까지 의사표시를 하지 않으면 변경약관에 동의한 것으로 간주한다는 내용을 고지하였음에도 불구하고, 회원이 명시적으로 거부의사를 표시하지 않은 경우 회원이 변경약관에 동의한 것으로 간주합니다. 단, 회원에게
	불리하게 변경되는 경우 통지 후 2개월 이내 회원 탈퇴를 할 수 있습니다. </p><br>
<p>8. 회사는 멤버십 프로그램 종료 최소 6개월 이전에 호텔 공식 웹사이트(https://www.shillahotels.com, 이하 “멤버십 홈페이지”)에 공지를 하며, 전 회원을 대상으로 1회 이상 전자우편을
	통한 안내문을 발송합니다.</p><br>
<p>9. 멤버십 프로그램 종료 통보 이후 6개월 경과 시점 기준으로 보유 포인트는 자동 소멸되며, 모든 혜택 및 서비스 제공이 중단됩니다.</p><br>
<p>10. 주소 및 기타 개인정보 사항의 변경 시 회원은 회사에 통보하여야 하고, 미 통보로 인한 회원의 불이익은 해당 회원이 감수하며 회사가 책임지지 않습니다.</p><br>
<p>11. 회사는 호텔정보 및 회원의 계정명세 등을 회원에게 통지할 수 있고, 우편에 의한 통지의 경우 그 분실 또는 전달의 지연에 대한 책임을 지지 않습니다.</p><br>
<p>12. 본 약관은 대한민국 법률이 적용되며, 본 약관과 관련된 제반 분쟁 및 소송은 회원의 주소지, 회사의 소재지를 관할하는 법원을 합의 관할법원으로 합니다.</p><br>

<p><strong>제2조 회원 가입 및 계정생성</strong></p><br>
<p>1. 회원 가입은 멤버십 홈페이지 및 모바일 앱 또는 가맹호텔의 지정된 영업장에서 가능합니다.</p><br>
<p>2. 회원 가입은 무료입니다.</p><br>
<p>3. 회원은 하나를 초과하는 멤버십을 가입하거나 소유할 수 없습니다.</p><br>
<p>4. 멤버십 중복 가입 시 하나를 제외한 멤버십은 강제 탈퇴 처리되며, 탈퇴 처리되는 멤버십의 포인트, 혜택은 자동 소멸됩니다.</p><br>
<p>5. 회원 등록 시 성명, 생년월일, 성별, 전자우편주소, 전화번호는 필수 기입 사항입니다.</p><br>
<p>6. 회원 등록 즉시 회원번호를 발급합니다.</p><br>
<p>7. 회원은 회원번호를 이용하여 멤버십 홈페이지에서 본인의 계정을 확인할 수 있습니다.</p><br>
<p>8. 회원은 멤버십 홈페이지의 개인 계정을 이용하여 보유 포인트, 적립내역, 개인정보 등 각종 정보의 열람 및 수정을 할 수 있습니다.</p><br>
<p>9. 회원 가입 시 모바일 멤버십 카드가 발급되며 모바일 멤버십 카드는 멤버십 홈페이지에서 확인 가능합니다. </p><br>

<p><strong>제3조 회원 자격정지 및 탈퇴</strong></p><br>
<p>1. 최종 거래일이 속한 월의 말일 기준으로 60개월간 실적이 없는 회원의 계정은 소멸되며, 기존 포인트 및 거래 실적은 자동 소멸됩니다. 해당 회원에게는 계정 소멸 6개월 전에 전자우편으로 통보합니다.</p><br>
<p>2. 멤버십 재 등록 시에는 신규 회원으로 등록됩니다.</p><br>
<p>3. 회원 탈퇴는 멤버십 서비스 센터 및 멤버십 홈페이지를 통해 요청 가능합니다.</p><br>
<p>4. 탈퇴 접수는 신청 후 24시간 이내에 처리되며, 탈퇴 시 회원이 보유한 계정 및 포인트, 혜택은 자동 소멸됩니다.</p><br>
<p>5. 회원 탈퇴 시 멤버십 카드는 사용할 수 없습니다.</p><br>
<p>6. 회사는 회원에게 다음의 사유가 발생한 경우 회원의 멤버십을 해지하거나 탈퇴시킬 수 있습니다.</p><br>
<p>(1) 위법한 행위를 한 경우</p><br>
<p>(2) 회원이 특전 및 포인트 매매 등 본 약관을 위반한 경우</p><br>
<p>(3) 신청, 등록 내용에 허위, 기재누락, 오기 등이 있는 경우</p><br>
<p>(4) 기타 부당한 행위를 하거나 멤버십 프로그램의 혜택을 남용한 경우</p><br>
<p>(5) 회사에 의해 청구된 금액을 지불하지 못한 경우</p><br>
<p>(6) 사망한 경우</p><br>
<p>7. 사망한 회원의 포인트 및 등급은 자동 소멸되며, 상속, 양도되지 않습니다</p><br>

<p><strong>제4조 양도</strong></p><br>
<p>1. 회원 자격, 멤버십 카드, 등급별 혜택, 보유 포인트는 다른 회원을 포함한 제3자에게 양도가 불가능 합니다.</p><br>
<p>2. 타인에 대한 임의적인 양도 적발 시에는 다음의 페널티가 적용됩니다.</p><br>
<p>(1) 멤버십 자격 양도 : 회원자격 박탈 및 탈퇴 처리</p><br>
<p>(2) 멤버십 카드 및 혜택 양도 : 부여된 혜택에 대한 소멸 처리</p><br>
<p>(3) 포인트 양도 : 양도된 포인트에 대한 무효 처리</p><br>

<p><strong>제5조 멤버십 회원 등급 및 특전</strong></p><br>
<p>1. 회원 등급은 브라운, 실버, 골드, 다이아몬드 총 4 단계로 분류합니다.</p><br>
<p>2. 회원 가입과 동시에 브라운 등급이 부여됩니다.</p><br>
<p>3. 회원 등급의 유지 및 승급에는 회사가 규정한 조건을 충족해야 합니다.</p><br>
<p>4. 회사는 회원의 1년 간 멤버십 프로그램 이용실적(객실의 경우 숙박일수 및 적립 포인트 기준, 식음 영업장의 경우 적립 포인트 기준)을 산출하여 다음의 기준에 따라 회원 등급을 조정합니다.</p><br>

<p class="Inpo_Tmini">신라리워즈 회원등급 조정 기준</p><br>
<p>- 회원 등급 조정은 아래의 조정 기준(연간 숙박일수 또는 연간 적립 포인트) 중 어느 하나의 승급 조건을 우선 충족하는 경우 해당 등급으로 조정됩니다.</p><br>

<table class="tableTypeD_2" border="1" cellspacing="0" cellpadding="0" summary="신라리워즈 회원등급 조정 기준">
	<caption>신라리워즈 회원등급 조정 기준</caption>
	<thead>
		<tr>
			<th class="slash">
				<div>등급</div>조정 기준
			</th>
			<th>브라운</th>
			<th>실버</th>
			<th>골드</th>
			<th>다이아몬드</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>연간 숙박일수</td>
			<td>-</td>
			<td>1 일 이상</td>
			<td>10 일 이상</td>
			<td>50 일 이상</td>
		</tr>
		<tr>
			<td>연간 적립 포인트</td>
			<td>-</td>
			<td>100 포인트 이상</td>
			<td>5만 포인트 이상</td>
			<td>20만 포인트 이상</td>
		</tr>
	</tbody>
</table>

<p>5. 제 4항의 회원 등급 조정 기준과 관련한 연간 숙박일수 및 연간 적립 포인트 인정 세부 조건은 다음과 같습니다.</p><br>
<p>(1) 연간 숙박일수</p><br>
<p>A. 숙박일수는 멤버십 프로그램을 이용하여 가맹호텔 객실을 이용한 일수를 대상으로 인정됩니다.</p><br>
<p>B. 숙박일수는 매년 1월 1일부터 12월 31일까지 적립된 포인트(객실 이용 후 적립되는 포인트에 한하며, 포인트는 체크아웃 익일에 적립됩니다)를 기준으로, 해당 적립 포인트와 관련된 객실 이용 일수가 인정됩니다. (예를 들어 12월 30일부터 12월 31일까지 숙박한 경우, 포인트 적립일 기준으로 다음 년도에 숙박일수가 반영됩니다.) </p><br>
<p>C. 정규 예약을 통한 숙박에 한하여 숙박일수로 인정됩니다.</p><br>
<p>D. 정규 예약이란 신라호텔 예약실, 신라호텔 예약 사이트(홈페이지, 모바일 앱)를 통한 예약을 말합니다. 단, 도매 요금, 무료 객실, House Use 객실, 임직원 특별 요금, 가족 요금, 멤버십 숙박권(Shilla S, 블루클럽, 프리미엄 블루 등 멤버십 가입 시 제공되는 숙박권), 여행사 및 대행사 등을 통한 예약은 제외됩니다.</p><br>
<p>E. 다이아몬드 회원의 경우 당해 년도 50일을 초과하는 숙박일수는 익년도 등급 산정을 위한 숙박실적으로 이월됩니다. 단, 이월된 초과 숙박일수는 다음 년도 숙박실적으로 재 이월되지는 않습니다. (예를 들어, 2021년도 회원의 숙박실적[상기 B항목에 따른 2021년 1월 1일부터 12월 31일까지 적립된 객실 이용 포인트와 관련된 숙박일수로 산정함]이 60박인 경우, 2022년도 등급 숙박실적에 10박이 이월됩니다. 단, 2022년도 실 숙박실적이 50박인 경우 2023년도에 이월되는 숙박실적은 0입니다.) 이월되는 숙박실적은 매년 1월 첫째 주에 반영됩니다.</p><br>
<p>(2) 연간 적립 포인트</p><br>
<p>A. 적립 포인트는 매년 1월 1일부터 12월 31일까지 멤버십 프로그램을 이용하여 가맹호텔의 객실 또는 식음 영업장 이용 시 적립된 포인트를 기준으로 인정됩니다. </p><br>

<p>6. 회원 등급 조정은 승급, 유지, 강등으로 분류합니다.</p><br>
<p>7. 회원 등급 평가 및 조정은 1월 1일부터 12월 31일까지 1년 동안의 이용실적을 기반으로 매년 1월 첫째 주에 반영합니다.</p><br>
<p>8. 회원이 기간 내 어느 때라도 승급 기준에 도달할 경우 즉시 회원 등급을 상향 조정합니다. 조정된 회원 등급은 익년도 12월31일까지 유지됩니다.</p><br>
<p>9. 회원 등급 변동이 있을 시 회사는 회원에게 해당 내용을 전자우편으로 통보합니다.</p><br>
<p>10. 회원 등급별로 차등 서비스 혜택을 제공하며, 회원 등급별 서비스 및 혜택 및 이용 세부 조건은 다음과 같습니다.</p><br>

<p>(1) 회원 등급별 서비스 혜택</p><br>
<table class="tableTypeD_2 tableTypeD_2New" border="0" cellspacing="0" cellpadding="0" summary="회원 등급별 서비스 혜택">
    <colgroup>
        <col width="11%" class="col1">
        <col width="25%" class="col2">
        <col width="8%" class="col3">
        <col width="8%" class="col4">
        <col width="8%" class="col5">
        <col width="11%" class="col6">
        <col width="26%" class="col7">
    </colgroup>
    <thead>
        <tr>
            <th>회원<br>등급</th>
            <th colspan="5">등급별 서비스 혜택</th>
            <th>비고</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td></td>
            <td></td>
            <td>서울<br>신라</td>
            <td>제주<br>신라</td>
            <td>신라<br>스테이</td>
            <td>신라모노그램<br>다낭</td>
            <td></td>
        </tr>

        <tr>
            <td>브라운</td>
            <td>· 포인트 적립<br>(객실 매출의 3%, 식음 매출의 1%)</td>
            <td>●</td>
            <td>●</td>
            <td>●</td>
            <td>●</td>
            <td></td>
        </tr>
        <tr>
            <td rowspan="2">실버</td>
            <td>· 포인트 적립<br>(객실 매출의 3%, 식음 매출의 1%)</td>
            <td>●</td>
            <td>●</td>
            <td>●</td>
            <td>●</td>
            <td></td>
        </tr>
        <tr>
            <td>· 객실 전용 1만 포인트 사용권</td>
            <td>●</td>
            <td>●</td>
            <td></td>
            <td></td>
            <td>· 연 1회 제공<br>
                · 서울/제주 각 1매<br>
                · 정규 예약을 통한 이용에 한정<br>
                · 유효기간 내 사용 (이월 사용 불가)<br>
                · 타쿠폰 및 할인 서비스 등과 중복사용 불가<br>
                · 앱 전용 포인트 사용권으로, 모바일 앱에서 사용권 확인 가능
            </td>
        </tr>
        <tr>
            <td rowspan="7">골드</td>
            <td>· 포인트 적립<br>(객실 매출의 4%, 식음 매출의 1.5%)</td>
            <td>●</td>
            <td>●</td>
            <td>●</td>
            <td>●</td>
            <td></td>
        </tr>
        <tr>
            <td>· 객실 전용 3만 포인트 사용권</td>
            <td>●</td>
            <td>●</td>
            <td></td>
            <td></td>
            <td>
                · 연 1회 제공<br>
                · 정규 예약을 통한 이용에 한정<br>
                · 유효기간 내 사용 (이월 사용 불가)<br>
                · 타쿠폰 및 할인 서비스 등과 중복사용 불가<br>
                · 앱 전용 포인트 사용권으로, 모바일 앱에서 사용권 확인 가능<br>
            </td>
        </tr>
        <tr>
            <td>· 식음업장 5% 할인</td>
            <td>●</td>
            <td>●</td>
            <td>●</td>
            <td>●</td>
            <td></td>
        </tr>
        <tr>
            <td>· 투숙중 Laundry 10% 할인</td>
            <td>●</td>
            <td>●</td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td>
                · 투숙중 무료 Laundry 서비스<br>
                • 서울신라 : 셔츠 1개 다림질<br>
                • 제주신라 : 셔츠 1개 세탁
            </td>
            <td>●</td>
            <td>●</td>
            <td></td>
            <td></td>
            <td>투숙 당 1회 제공<br>* 제주신라 세탁 서비스 혜택은 물세탁이 가능한 셔츠(면티셔츠)에 한하여 제공됩니다.</td>
        </tr>
        <tr>
            <td>· 객실 3회 업그레이드<br>(1회 한하여 스위트 객실 업그레이드 제공)</td>
            <td>●</td>
            <td>●</td>
            <td></td>
            <td>●</td>
            <td>
                · 정규 예약을 통한 이용에 한정<br>
                · 투숙 당 1회(3박 이내) 제공<br>
                (Gold 등급 유효기간 내 3회 한정)
            </td>
        </tr>
        <tr>
            <td>· 72시간 예약 개런티</td>
            <td></td>
            <td></td>
            <td>●</td>
            <td>●</td>
            <td></td>
        </tr>
        <tr>
            <td rowspan="9">다이아몬드</td>
            <td>· 포인트<br>(객실 매출의 5%, 식음 매출의 2%)</td>
            <td>●</td>
            <td>●</td>
            <td>●</td>
            <td>●</td>
            <td></td>
        </tr>
        <tr>
            <td>· 객실 전용 10만 포인트 사용권 </td>
            <td>●</td>
            <td>●</td>
            <td></td>
            <td></td>
            <td>
                · 연 1회 제공<br>
                · 정규 예약을 통한 이용에 한정<br>
                · 유효기간 내 사용 (이월 사용 불가)<br>
                · 타쿠폰 및 할인 서비스 등과 중복사용 불가<br>
                · 앱 전용 포인트 사용권으로, 모바일 앱에서 사용권 확인 가능
            </td>
        </tr>
        <tr>
            <td>· 식음업장 10% 할인</td>
            <td>●</td>
            <td>●</td>
            <td>●</td>
            <td>●</td>
            <td></td>
        </tr>
        <tr>
            <td>· 투숙중 Laundry 15% 할인</td>
            <td>●</td>
            <td>●</td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td>
                · 투숙중 무료 Laundry 서비스<br>
                • 서울신라 : 정장 1벌, 셔츠 1개 다림질<br>
                • 제주신라 : 상, 하의 각 1개 세탁
            </td>
            <td>●</td>
            <td>●</td>
            <td></td>
            <td></td>
            <td>투숙 당 1회 제공<br>* 제주신라 세탁 서비스 혜택은 물세탁이 가능한 셔츠(면티셔츠), 긴바지에 한하여 제공됩니다.</td>
        </tr>
        <tr>
            <td>· 객실5회 업그레이드<br>(1회 한하여 스위트 객실 업그레이드 제공)</td>
            <td>●</td>
            <td>●</td>
            <td></td>
            <td>●</td>
            <td>
                · 정규 예약을 통한 이용에 한정<br>
                · 투숙 당 1회(3박 이내) 제공<br>
                (Diamond 등급 유효기간 내 5회 한정)
            </td>
        </tr>
        <tr>
            <td>· Early Check-In(12시), Late Check-Out (15시)</td>
            <td>●</td>
            <td></td>
            <td>●</td>
            <td>●</td>
            <td>호텔별 예약 상황 등에 따라 서비스 제공이 제한될 수 있습니다.</td>
        </tr>
        <tr>
            <td>· 라운지 무료 이용(본인 포함 2 인까지)</td>
            <td>●</td>
            <td>●</td>
            <td></td>
            <td></td>
            <td>
                · 정규 예약을 통한 이용에 한정<br>
                · 호텔별 예약 상황 등에 따라 서비스 제공이 제한될 수 있습니다.
            </td>
        </tr>
        <tr>
            <td>· 48시간 예약 개런티</td>
            <td>●</td>
            <td></td>
            <td>●</td>
            <td>●</td>
            <td></td>
        </tr>
    </tbody>
</table>

<p>(2) 회원 등급별 서비스 혜택 이용 세부 조건</p><br>
<p>
	①모든 객실 업그레이드 서비스는 신라호텔 예약실 및 신라호텔 예약 사이트(홈페이지, 모바일 앱)를 통해 객실 예약하고, 예약 시점에 해당 투숙 호텔 예약실을 통해 사전에 객실 업그레이드 서비스를 신청하는
	경우에 한하여 제공합니다. 단, 모든 객실 업그레이드 서비스는 투숙 호텔의 객실 사정에 따라 제공이 제한될 수 있습니다.
	<br>② 객실 업그레이드 서비스 제공 시 회원이 예약한 객실의 차상위 객실(스위트 객실 제외)을 제공합니다.
	<br>③ 객실 업그레이드 서비스는 1회 투숙 시 최대 3박까지 제공됩니다. 3박을 초과하는 투숙 시에는 추가 요금을 지불하거나, 업그레이드 이전 객실로 룸체인지를 하여야 합니다.
	<br>④ 스위트 객실 업그레이드 서비스는 서울신라호텔 비즈니스 디럭스 객실, 제주신라호텔 디럭스 객실 등급 이상의 객실 이용 시에 제공하며, 서울신라호텔 슈페리어 스위트 객실과 제주신라호텔의 코너 스위트
	산전망 객실 등급까지 제공합니다. 신라모노그램 다낭은 디럭스 객실 등급 이상의 객실 이용 시, 신라모노그램 코너 스위트 객실 등급까지 스위트 객실 업그레이드 서비스를 제공합니다.
	<br>⑤ 스위트 객실 업그레이드 서비스는 다음과 같은 기간, 일자(체크인 기준)에는 제공하지 않습니다.<br>
	• 서울신라 : 7 ~ 8월, 토요일, 일요일, 공휴일, 12월 24일 및 31일<br>
	• 제주신라 : 7 ~ 8월, 연휴기간, 12월 23일 ~ 31일<br>
	• 신라모노그램 다낭 : 신정, 설 연휴(한국 연휴기준), 6 ~ 8월 , 12월 23 ~ 31일
	<br>⑥ 스위트 객실 업그레이드 서비스는 무료숙박권 및 기타 할인권 등과 함께 사용할 수 없습니다.
	<br>⑦ 당일 예약 및 Walk-in으로 객실 투숙 시 서비스 및 혜택 제공에 제한이 있을 수 있습니다.
	<br>⑧ 가맹 호텔의 서비스 및 혜택은 가맹 호텔의 사정에 따라 다른 서비스로 대체하여 제공되거나 제공이 불가할 수 있습니다. 가맹 호텔의 서비스 및 혜택의 세부 사항은 멤버십 홈페이지, 멤버십 서비스
	센터에 문의 및 확인하시기 바랍니다.
	<br>⑨ 등급별 혜택으로 제공되는 객실 전용 포인트 사용권은 신라호텔 예약실 및 신라호텔 예약 사이트(홈페이지, 모바일 앱)를 통해 객실 예약하고, 결제 시점에 모바일 사용권을 프론트 데스크에
	제시해주셔야 하며, 체크아웃 이후 사용은 불가합니다.
	<br>⑩ 다이아몬드 등급의 라운지 무료 이용 혜택은 회원 본인을 포함한 2인까지(본인을 제외한 1인까지) 이용 가능하며, 라운지 혜택이 포함된 객실을 예약하는 경우 다이아몬드 등급의 라운지 무료 이용
	혜택을 중복 제공하지 않습니다.
	<br>⑪ 회원 등급별 서비스 혜택은 회원 본인이 이용하는 경우에 한하여 제공되며, 이용 쿠폰이 발행되는 경우 해당 쿠폰을 제시하여야 합니다. </p><br>

<p><strong>제6조 포인트 적립</strong></p><br>
<p>1. 회원은 포인트 적립 시 멤버십 카드 및 신분증을 제시하여야 합니다.</p><br>
<p>2. 회원 본인이 이용한 실적 중 정규숙박 및 정규요금 기준의 매출에 기반하여 포인트가 적립됩니다.</p><br>
<p>3. 다음과 같은 항목은 포인트 적립에서 제외입니다.</p><br>
<p>(1) 도매 요금, 무료 객실, House Use 객실, 임직원 특별 요금, 가족 요금, 여행사 및 대행사 등을 통한 예약<br>
	(2) 계약에 포함되지 않은 요금<br>
	(3) 조직, 연회, 협회 등 특정 단체가 결제하는 투숙<br>
	(4) 삼성상품권 구매 금액, 유료 멤버십 가입비 결제금액<br>
	(5) 임대 영업장 내 결제금액<br>
    (6) 인터넷, 미니바, 유료 TV, 객실 핸드폰요금, 객실 내 전화요금, 간이침대 대여비, 소매제품 구매비용, 세금, 비즈니스 센터 이용요금, 세탁비용, 교통비, 피트니스클럽 이용비용, 서울신라호텔 어번 아일랜드 이용비용, 연회비용, No-Show비용, 객실 예약취소 페널티비용
    <br>(7) 식음업장 리테일 제품 및 이벤트 제품(에코백, 키링, 와인 등) 
    <br>(8) 멤버십 숙박권(Shilla S, 블루클럽, 프리미엄 블루 등 멤버십 가입 시 제공되는 숙박권) 투숙

</p><br>
<p>4. 여러 개의 계정으로 포인트를 적립할 수 없습니다.</p><br>
<p>5. 회원 본인이 이용한 경우에 한하여 포인트를 적립할 수 있으며, 타인의 이용 내역에 대해서 포인트를 적립할 수 없습니다. </p> <br>    
<p>6. 포인트는 최종 결제금액을 기준으로 하여 회원 등급별로 차등 적립됩니다.</p> <br>    
<p>객실 매출 및 식음 매출이 함께 포함되어 있는 패키지 상품의 경우 객실 매출 및 식음 매출을 구분하여 위 기준에 따라 포인트를 부여합니다.</p> <br>    
<p>7. 적립된 포인트는 1포인트당 1원의 가치를 가집니다.</p> <br>    
<p>8. 회원 가입 이후 결제금액에 대한 포인트는 적립 가능하나, 회원 가입 이전에 발생한 결제금액에 대해서는 소급하여 적립되지 않습니다.</p> <br>    
<p>9. 1개의 객실에 2명의 회원이 투숙 시, 실제 투숙한 예약명의자인 회원 1인에 한해 적립됩니다.</p> <br>    
<p>10. 회원은 같은 날 최대 3개의 객실까지 포인트를 적립할 수 있습니다.단, 전 객실이 회원 명의로 예약되어야 하고, 그 중 한 객실에 회원이 투숙하며, 해당 회원이 직접 결제한 객실일 경우에 한해서만 적립이 가능합니다.</p> <br>   
<p>11. 포인트의 1회 적립 한도는 없습니다.</p> <br>    
<p>12. 포인트로 결제한 금액에 대한 포인트 적립은 불가합니다.</p> <br>    
<p>13. 포인트는 결제 익일에 일괄 적립됩니다.</p> <br>    
<p>14. 회사는 멤버십 프로그램 포인트가 누락되거나 잘못 적립된 경우 이를 수정하여 재적립 합니다.</p> <br>    
<p>15. 회원이 멤버십 카드 등을 제시하지 못하여 포인트를 적립하지 못한 경우 결제일로부터 6개월 이내에 멤버십 홈페이지의 포인트 조정신청 메뉴 또는 적립요청서를 통해 누락 포인트의 적립을 요청하여야 합니다. (결제증빙 첨부 필수) </p> <br>    
<p>16. 본 약관을 위반하여 적립된 포인트는 취소 또는 사용정지 처리될 수 있습니다.</p> <br>    
<p>17. 적립된 포인트는 멤버십 홈페이지에서 확인이 가능합니다.</p> <br>    

<p><strong>제7조 포인트 사용</strong></p><br>
<p>1. 적립된 포인트는 최소 1포인트(1원의 가치)부터 가맹 호텔에서 현금처럼 사용 가능합니다.</p><br>
<p>2. 포인트 사용 시에는 멤버십 카드와 본인 확인이 가능한 신분증을 반드시 제시하고, 포인트 사용의사를 표명해야 합니다.</p><br>
<p>3. 포인트 사용시점에 해당 사용 포인트는 회원의 계정에서 자동 차감됩니다.</p><br>
<p>4. 차감된 포인트는 반환이 불가합니다.</p><br>
<p>5. 적립된 포인트는 E-Certificate 신청 후 삼성상품권으로 교환 가능합니다.</p><br>

<p><strong>제8조 포인트 소멸</strong></p><br>
<p>
	1. 적립된 포인트는 적립일로부터 5년째 되는 해의 말일에 소멸됩니다.
	예를 들어, 2019년 5월 9일에 적립한 포인트의 유효기간은 2024년 12월 31일까지 입니다.
</p><br>
<p>2. 소멸된 포인트는 반환되거나 사용할 수 없습니다.</p><br>

<p><strong>제9조 E-Certificate</strong></p><br>
<p>1. 회원은 멤버십 홈페이지를 통해 적립된 포인트를 사용하여 E-Certificate의 발행을 신청할 수 있습니다.</p><br>
<p>2. 회원은 기발행된E-Certificate를 호텔 프론트 데스크에서 삼성상품권으로 교환할 수 있습니다.</p><br>
<p>3. 삼성상품권 교환을 위해서는 본인확인이 가능한 신분증, 멤버십 카드, E-Certificate를 프론트 데스크에 제시해야 합니다. (대리수령 불가)</p><br>
<p>4. 발행된 E-Certificate는 회원 본인만 사용 가능하며, 제3자에게 양도되지 않습니다.</p><br>
<p>5. 발행된 E-Certificate는 취소 및 반환되지 않습니다.</p><br>
<p>6. 발행된 E-Certificate의 유효기간은 발행일로부터 6개월입니다.</p><br>
<p>7. 유효기간이 경과된 E-Certificate는 사용이 불가하며, 포인트는 반환되지 않습니다.</p><br>
<p>8. 삼성상품권에 대한 자세한 내용 및 사용처 확인은 <a href="www.samsunggiftcard.net/common/sgc/index.html">www.samsunggiftcard.net/common/sgc/index.html</a>에서 확인할 수
	있습니다.</p><br>
<p>9. 삼성상품권과 관련된 기타의 사항은 삼성상품권 이용약관에 따릅니다.</p><br></div>
				</div>
				<div class="checkAgreeBox">
					<input type="radio" class="checkAgree1 uiform mbrChkY radio" id="checkAgree1_Y" name="membershipUseYn" value="Y" autocomplete="off">
					<label for="checkAgree1_Y">동의함</label>
					<input type="radio" class="checkAgree1 uiform mbrChkN radio" id="checkAgree1_N" name="membershipUseYn" value="N" autocomplete="off">
					<label for="checkAgree1_N">동의하지않음</label>
				</div>
				<hr class="hrstyleA">
				<div class="hTitS">
					<h4 class="tit">개인정보 수집, 이용에 대한 동의 (필수)</h4>
					<div class="info"><a class="btnViewAll" href="#none" onclick="popPrivacyInc(2);" id="privacyIncbutton_2">전체보기</a></div>
				</div>
				<div class="policyBox">
					<div class="box">
					<p><strong>1. 수집 이용 항목</strong></p>
<u><span style="font-size:14px">성명(국문·영문), 생년월일, 성별, 이메일주소, 휴대폰번호, 구매 및 예약내역, 투숙기간, 아이디, 비밀번호, 신라리워즈 번호, IPIN(DI)</span></u><br><br>
<p><strong>2. 수집 이용 목적</strong></p>
<u><span style="font-size:14px">본인 식별, 신라리워즈 서비스 제공 및 민원처리</span></u><br><br>
<p><strong>3. 보유 이용 기간</strong></p>
<u><span style="font-size:14px">회원 탈퇴 시 까지</span></u><br>
<br>※ 관련 법령에서 정한 별도 보유 기한이 있는 경우는 그에 따름.<br>※ 위 사항에 대한 동의를 거부할 수 있으나, 이에 대한 동의가 없을 경우 신라리워즈 회원 가입 및 서비스 이용이 불가합니다.</div>
				</div>
				<div class="checkAgreeBox">
					<input type="radio" class="checkAgree2 uiform mbrChkY radio" id="checkAgree2_Y" name="individualInfoUseYn" value="Y" autocomplete="off">
					<label for="checkAgree2_Y">동의함</label>
					<input type="radio" class="checkAgree2 uiform mbrChkN radio" id="checkAgree2_N" name="individualInfoUseYn" value="N" autocomplete="off">
					<label for="checkAgree2_N">동의하지않음</label>
				</div>
				<hr class="hrstyleA">
				<div class="hTitS">
	                <h4 class="tit">개인정보 제3자 제공에 대한 동의 (필수)</h4>
	                <div class="info"><a href="#none" onclick="popPrivacyInc(6);" id="privacyIncbutton_6" class="btnViewAll">전체보기</a>
	                </div>
	            </div>
	            <div class="policyBox">
	                <div class="box">
	                    <p><strong>1. 제공받는 자</strong></p>
<u><span style="font-size:14px">신라에이치엠㈜</span></u><br><br>
<p><strong>2. 제공받는 자의 이용 목적</strong></p>
<u><span style="font-size:14px">신라리워즈 서비스 제공</span></u><br><br>
<p><strong>3. 제공하는 항목</strong></p>
<u><span style="font-size:14px">성명(국문·영문), 생년월일, 성별, 이메일주소, 휴대폰번호, 구매 및 예약 내역, 투숙기간, 아이디, 신라리워즈 번호</span></u><br><br>
<p><strong>4. 제공받은 자의 보유·이용 기간 :</strong></p>
<u><span style="font-size:14px">회원 탈퇴 시까지</span></u><br>
<br>※위 사항에 대한 동의를 거부할 수 있으나, 이에 대한 동의가 없을 경우 신라리워즈 회원 가입 및 서비스 이용이 불가합니다.</div>
	            </div>
	            <div class="checkAgreeBox">
	                <input type="radio" class="checkAgree6 uiform mbrChkY radio" id="checkAgree6_Y" name="othersInfoUseYn" value="Y" autocomplete="off">
	                <label for="checkAgree6_Y">동의함</label>&nbsp;&nbsp;
	                <input type="radio" class="checkAgree6 uiform mbrChkN radio" id="checkAgree6_N" name="othersInfoUseYn" value="N" autocomplete="off">
	                <label for="checkAgree6_N">동의하지않음</label>
	            </div>
	            <hr class="hrstyleA">
	            <div class="hTitS">
					<h4 class="tit">개인정보 마케팅 활용 동의 (선택)</h4>
					<div class="info"><a href="#none" onclick="popPrivacyInc(4);" id="privacyIncbutton_4" class="btnViewAll">전체보기</a></div>
				</div>
				<div class="policyBox">
					<div class="box">
					<p><strong>1. 수집, 이용 항목</strong></p>
<u><span style="font-size:14px">성명(국문·영문), 생년월일, 성별, 이메일주소, 휴대폰번호, 자택전화, 자택주소, 구매 및 예약 내역, 투숙기간, 아이디, 신라리워즈 번호</span></u><br><br>
<p><strong>2. 수집·이용 목적</strong></p>
<u><span style="font-size:14px">㈜호텔신라 상품 및 서비스 소개(호텔, 면세점 등), 신라에이치엠㈜ 기타 제휴 호텔의 상품 및 서비스 소개, 사은·판촉행사 안내, 만족도 조사, 시장 조사</span></u><br><br>
<p><strong>3. 보유·이용 기간</strong></p>
<u><span style="font-size:14px">회원 탈퇴 시 까지 또는 마케팅 활용 동의 철회시 까지 중 빠른 시점</span></u><br>
<br>※위 사항에 대한 동의를 거부할 수 있으나, 이에 대한 동의가 없을 경우 개인형 맞춤 상품 안내 등 유용한 상품안내를 받아보실 수 없습니다.</div>
				</div>
				<p><br></p>
				
				<div class="checkAgreeBox">
					<input type="radio" class="uiform mbrChkY mktAgree radio" id="checkAgree4_Y" name="marketingUseYn" value="Y" autocomplete="off">
					<label for="checkAgree4_Y">동의함</label>
					<input type="radio" class="uiform mbrChkN mktAgree radio" id="checkAgree4_N" name="marketingUseYn" value="N" autocomplete="off">
					<label for="checkAgree4_N">동의하지않음</label>
				</div>
				
				<div class="opacity" id="mktArea">
					<b>매체별 광고성 정보 수신 동의 (선택)</b><br>
					<input type="checkbox" class="mbrChk checkbox" id="marketingAll" autocomplete="off" disabled=""><label for="marketingAll">전체</label>&nbsp;&nbsp;
					<input type="checkbox" class="mbrChk checkbox" id="marketingSms" name="smsRecvYn" value="Y" autocomplete="off" disabled=""><label for="marketingSms">LMS</label>&nbsp;&nbsp;
					<input type="checkbox" class="mbrChk checkbox" id="marketingNews" name="emailRecvYn" value="Y" autocomplete="off" disabled=""><label for="marketingNews">뉴스레터</label>
					<br>
					※ 통지할 정보가 없거나, 정확하지 않은 정보인 경우 처리결과를 수신하지 못할 수 있음을 알려드립니다.</div>
				
				<hr style="border-bottom:1px dashed #ede4d6;margin:20px 0 20px 0;height:0px;background:transparent;border-top:0;border-right:0;border-left:0;">
				<div class="hTitS">
	                <h4 class="tit">개인정보 제3자 제공 및 국외이전 동의 (선택)</h4>
	                <div class="info"><a href="#none" onclick="popPrivacyInc(7);" id="privacyIncbutton_7" class="btnViewAll">전체보기</a>
	                </div>
	            </div>
	            <div class="policyBox">
	                <div class="box">
	                    <p><strong>1. 이전되는 개인정보 항목 </strong> </p>
<span style="text-decoration: underline;font-size:14px">성명(국문·영문), 생년월일, 성별, 이메일주소, 휴대폰번호, 구매 및 예약 내역, 투숙기간, 아이디 신라리워즈 번호</span>
<br><br>
<p><strong>2. 개인정보가 이전되는 국가, 이전일시 및 이전방법 </strong></p>
<span style="text-decoration: underline;font-size:14px">① 이전되는 국가: 베트남</span>
<br>
<span style="text-decoration: underline;font-size:14px">② 이전 일시 및 방법: 안전한 네트워크를 통하여 개인정보를 업무 필요 시에 제공</span>
<br><br>
<p><strong>3. 개인정보를 이전 받는 자</strong></p>
<table class="tableTypeD_2" border="1" cellspacing="0" cellpadding="0" summary="멤버십 등급 기준 점수표">
    <tbody>
        <tr>
            <td>
                <p align="center">법인명</p>
            </td>
            <td>
                <p align="center">주소</p>
            </td>
            <td>
                <p align="center">정보보호관리책임자 </p>
            </td>
        </tr>
        <tr>
            <td>
                <p align="center"> QUEVIET - QUANGNAM CO., LTD[제휴호텔 : SHILLA<br> MONOGRAM QUANG NAM-DANANG(베트남 다낭)] </p>
            </td>
            <td>
                <p align="center">Lac Long Quan, Dien Ngoc, Dien Ban District, Quang Nam Province, Vietnam </p>
            </td>
            <td>
                <p align="center">privacy@danang.shillamonogram.com </p>
            </td>
        </tr>
    </tbody>
</table>
<br>
<p><strong>4. 개인정보를 이전 받는 자의 개인정보 이용목적 및 보유·이용기간</strong></p>
<span style="text-decoration: underline;font-size:14px">① 이용목적: 신라리워즈 서비스 제공 </span>
<br>
<span style="text-decoration: underline;font-size:14px">② 보유·이용기간: 회원 탈퇴 또는 국외이전 동의 철회 시까지 중 빠른 시점</span>
<br><br>
※ 해외 제휴점 관련 상세내용은 신라리워즈 홈페이지에서 확인할 수 있습니다.
<br>
※ 동의를 거부할 권리 및 동의를 거부할 경우 불이익 사항이 있습니다.
<br>
&nbsp;&nbsp;  - 위 개인정보 제3자 제공 및 국외이전에 대해 동의를 거부할 수 있습니다.
<br>
&nbsp;&nbsp;  - 동의를 거부할 경우 신라리워즈 서비스 가입은 가능하나, 신라리워즈 포인트 적립 및 혜택 등 관련 서비스를 제공 받을 수 없습니다.</div>
	            </div>
	            <div class="checkAgreeBox">
	                <input type="radio" class="checkAgree7 uiform mbrChkY radio" id="checkAgree7_Y" name="transferAgreeYn" value="Y" autocomplete="off">
	                <label for="checkAgree7_Y">동의함</label>&nbsp;&nbsp;
	                <input type="radio" class="checkAgree7 uiform mbrChkN radio" id="checkAgree7_N" name="transferAgreeYn" value="N" autocomplete="off">
	                <label for="checkAgree7_N">동의하지않음</label>
	            </div>
	            <hr class="hrstyleA">
	            </div>
			<!-- 신라 리워즈  약관동의 End -->

			<div class="buttonwrapA">
                <a href="${root }index?formpath=memJoinForm" class="buttonstyleA" onclick="nextStep();">다음</a>&nbsp;&nbsp;<a href="/hotel/" class="buttonstyleA">취소</a>
            </div>
		</div>
	</div>
</div>
</form><div id="emailAdCollectPop" style="display:none"></div><div id="footerEmailLayer" style="display:none"></div><div class="foot foo</div>tHub">
			<script type="text/javascript">
	function openIdInfo() {
		var url = "http://www.ftc.go.kr/bizCommPop.do?wrkr_no=2038143363";
		window.open(url, "bizCommPop", "width=750, height=700, scrollbars=1");
	}
</script>
</div>
<script type="text/javascript" id="">document.all&&!document.addEventListener||window.proxied_alert||(window.proxied_alert=window.alert,window.alert=function(){var a=arguments[0]?arguments[0]:"null";dataLayer.push({event:"alert_showed",alert_message:a});return proxied_alert.apply(this,arguments)});</script><script type="text/javascript" id="">(function(){if(null==sessionStorage.getItem("_PageViewCounter")||void 0==sessionStorage.getItem("_PageViewCounter"))sessionStorage.setItem("_PageViewCounter",1);else{var f=0;f=parseInt(sessionStorage.getItem("_PageViewCounter"));f+=1;sessionStorage.setItem("_PageViewCounter",f)}var v=!0,l=2592E5;if(window.Storage){var c=JSON.parse(localStorage.getItem("_tab_ids"))||[],d=sessionStorage.getItem("_tab_id"),a=JSON.parse(sessionStorage.getItem("_nav_path")),e=document.location.href;f=!1;var w=document.location.origin,
t,p,m,g,u=function(b){return 0===l?b:b.filter(function(h){try{return m=parseInt(h.split("_")[1],10),m>(new Date).getTime()}catch(q){return!1}})};var r=function(b){if(0===l)return b;try{g=b.split("_");m=parseInt(g[1],10);if(m>(new Date).getTime())return b;g=g[0]+"_"+((new Date).getTime()+l);sessionStorage.setItem("_tab_id",g);return g}catch(h){return b}};var x=function(){if(!1===v)return"BACK/FORWARD";if(2>a.length)return"FORWARD";t=a[a.length-2];p=a[a.length-1];return t===e||p===e?"BACK":"FORWARD"},
y=function(){c=JSON.parse(localStorage.getItem("_tab_ids"))||[];d=sessionStorage.getItem("_tab_id");c=u(c);if(c.length&&null!==d){var b=c.indexOf(d);-1<b&&c.splice(b,1);localStorage.setItem("_tab_ids",JSON.stringify(c))}},z=function(){var b=(new Date).getTime();"undefined"!==typeof performance&&"function"===typeof performance.now&&(b+=performance.now());return"xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx".replace(/[xy]/g,function(h){var q=(b+16*Math.random())%16|0;b=Math.floor(b/16);return("x"===h?q:q&3|
8).toString(16)})+(0<l?"_"+((new Date).getTime()+l):"")},A=function(b,h){return!(!0===h&&0!==b&&255!==b)};null===d?(d=z(),f=!0,sessionStorage.setItem("_tab_id",d)):d=r(d);c=u(c);-1===c.indexOf(d)&&(c.push(d),localStorage.setItem("_tab_ids",JSON.stringify(c)));r=c.length;if(window.PerformanceNavigation){a=a||[];var n=window.performance.navigation.redirectCount;if(A(window.performance.navigation.type,f))switch(window.performance.navigation.type){case 0:var k="NAVIGATE";a.push(e);break;case 1:k="RELOAD";
0!==a.length&&a[a.length-1]===e||a.push(e);break;case 2:k=x();"FORWARD"===k?-1<document.referrer.indexOf(w)&&a.push(e):"BACK"===k?p!==e&&a.pop():a.push(e);break;default:k="OTHER",a.push(e)}else a.push(e);sessionStorage.setItem("_nav_path",JSON.stringify(a))}window.addEventListener("beforeunload",y);n={tabCount:r,redirectCount:n,navigationType:k,newTab:!0===f?"New":"Existing",tabId:d.replace(/_.+/,"")};window.google_tag_manager[google_tag_manager["GTM-T3LBJ26"].macro(59)].dataLayer.set("browsingBehavior",n);window.dataLayer.push({event:"custom.navigation",
browsingBehavior:n})}})();</script>
</body></html>