<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="../common/main_header.jsp" %>
<link href="${pageContext.request.contextPath}/resources/css/mem/title_ko.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/js/s/commonEx.js">
<style>
.lnbAreaMypage .lnbMenu .m2 .sMenu li.s1 a{ background-position:0 0;}
.lnbAreaMypage .lnbMenu .m2 .sMenu li.s2 a{ background-position:0 -22px;}
.lnbAreaMypage .lnbMenu .m2 .sMenu li.s3 a{ background-position:0 -44px;}
.lnbAreaMypage .lnbMenu .m2 .sMenu li.s4 a{ background-position:0 -66px;}
</style>
	
	<div class="contain">
		<div class="container">
			<div class="lnbArea lnbAreaMypage">
				<div class="lnbMenu">
					<h2 class="tit">마이페이지</h2>
					<ul class="menu">
						<li class="m1 first">
							<!-- 선택시 a태그에 class="on" -->
							<a href="/hotel/mypage/memListResv"><span>예약 확인/취소</span>	</a>
						</li>
						<li class="m2 last">
							<a><span>내정보</span></a>
							<ul class="sMenu">
								<li class="s1 first">
									<a href="/hotel/mypage/memSetPwCnfm"><span>프로필 수정</span></a>
								</li>
								<li class="s2">
									<a href="/hotel/mypage/memSetPwMod"><span>비밀번호 변경</span></a>
								</li>
								<li class="s3">
									<a href="/hotel/mypage/memListAsk"><span>문의 내역</span></a>
								</li>
								<li class="s4 last">
									<a href="/hotel/mypage/memSetPwDropfm?gubun=t"><span>탈회요청</span></a>
								</li>
							</ul>
						</li>
					</ul>
				</div> <!-- lnbMenu -->
			</div> <!-- lnbArea lnbAreaMypage -->
		<div class="contents" id="contents">
		
<script type="text/javascript">
jQuery(function() {

	//openCtrlPopup('/membership/inquires/pop/reserveNotice.do','reserveNotice');
	
	//투숙일 조회 시
	if($("#searchDateType").val() == "ARRIVAL_DATE") {
		$(".btnDateNew").css("display","none");
	} 
	
	//selectbox 변경 시
	$("#searchDateType").change(function() {
		$("#searchDateType option:selected").each(function () {
			$("#searchStrtDt, #searchEndDt").val("");
			if($(this).val() == "ARRIVAL_DATE") {
				$(".btnDateNew").css("display","none");
				searchDateSet('searchStrtDt', 'searchEndDt', 3);
			} else {
				$(".btnDateNew").css("display","inline-block");
			}
		});
	});
});

$(function() {
	$("select, input").uniform();
});

function searchResvList() {
	$("#resvId").val("");
	$('#myResvForm').attr('action', '/hotel/mypage/memListResv').submit();	
}

//팝업 오픈
function openPopup(id) {
	jQuery("html, body").stop().animate({scrollTop: 0}, 0);
	jQuery(".dimmed").stop().show();
	jQuery("#" + id).stop().show();
}

// 팝업 닫기
function closePopup(id) {
	jQuery("#" + id).stop().hide();
	jQuery(".dimmed").stop().hide();
}

function goViewRpmResv(resvId, hotlId, source, roomTotalCnt) {
	if(source == "OWS" || source == "WEB" || source == "APP" || source == "SNS" ){
		if(("membership" == "hub") || ("membership" == "seoul" && hotlId != 'S') || ("membership" == "jeju" && hotlId != 'C')) {
			var siteDomain = "";
			$("#roomTotalCnt").val(roomTotalCnt);
			$("#resvId").val(resvId);
			$("#hotlId").val(hotlId);
			$('#myResvForm').attr('action', '/membership/mypage/resv/memViewRpmResv.do').submit();
		} else {
			$("#roomTotalCnt").val(roomTotalCnt);
			$("#resvId").val(resvId);
			$("#hotlId").val(hotlId);
			$('#myResvForm').attr('action', '/mbership/mypage/resv/memViewRpmResv.do').submit();
		}
	}else{
		openPopup('ResvRouteInfo');
	}
}

function dateSearch( monthNum ) {
	//20201113
	//기간 범위 선택 시
	if($("#searchDateType").val() == "BOOKED_DATE") {	//예약일 기준
		monthNum = Number(monthNum) * -1;
	} else if($("#searchDateType").val() == "ARRIVAL_DATE") {	//투숙일 기준
		monthNum = Math.abs(Number(monthNum));
	} 
	searchDateSet('searchStrtDt' , 'searchEndDt' , monthNum );
}
/*
 * ---------------------------------------------------------------------------------------------
 * 시작일 종료일 검색시 1개월,3개월,6개월,12개월,전체 검색에 사용
 *
 * @param perMonth the perMonth
 * @param startDateId the startDateId
 * @param endDateId the endDateId
	searchDateSet('searchStartDt' , 'searchEndDt' , monthNum );
 * ---------------------------------------------------------------------------------------------
 */

function searchDateSet(startDateId , endDateId , monthNum  ){

	if(monthNum == 'All'){
		$('#'+startDateId).val("");
		$('#'+endDateId).val("");
	}else{
		var time = new Date();
		var today = getMonthFromToday(time.getFullYear() , time.getMonth() +1 , time.getDate() ,  0 , "-");
		var monthday = getMonthFromToday(time.getFullYear() , time.getMonth() +1 , time.getDate() ,  monthNum , "-");
		if( monthNum > 0 ){
			$('#'+startDateId).val(today);
			$('#'+endDateId).val(monthday);
		}else{
			$('#'+startDateId).val(monthday);
			$('#'+endDateId).val(today);
		}
		
	}
}
function dateWeekSearch( weekNum ) {
	searchDateWeekSet('searchStrtDt' , 'searchEndDt' , weekNum );
}

function goRpmPage (pageNo) {
	$('#rpmCurPageNo').val(pageNo);
	$('#myResvForm').attr('action','/membership/mypage/resv/listResv.do').submit();
}

function goDinSpaPage (pageNo) {
	$('#dinSpaCurPageNo').val(pageNo);
	$('#myResvForm').attr('action','/membership/mypage/resv/listResv.do').submit();
}

function openRpmResvCanclPolcy() {
	$.ajax({
		url: URL_PREFIX + "/mypage/resv/rpmResvCanclPolcy.do",
		cache: false,
		type: "POST",
		data:"data="
	}).done(function( html ) {
		$('body').prepend("<div id='rpmResvCanclPolcy' style='display:none'></div><div style='display: block;' class='mdScreen'></div>");
		$("#rpmResvCanclPolcy").html(html);
		$("#rpmResvCanclPolcy").show();
		$("#rpmResvCanclPolcy").attr("tabindex",-1).focus();
	}).fail(function(jqXHR, textStatus) {
		alert( "openRpmResvCanclPolcy Request failed: " + textStatus );
	}); // end of ajax
}

function closeRpmResvCanclPolcy() {
	$("#rpmResvCanclPolcy").remove();
	$(".mdScreen").remove();
	$("#rpmResvCanclPolcyBtn").focus();
}

function checkCalendar(searchEndDt,today){
	if($("#searchStrtDt").val()!=null || $("#searchStrtDt").val().length !=0){
		popCalendarLayer(searchEndDt,$("#searchStrtDt").val());
	}else{
		popCalendarLayer(searchEndDt,today);
	}
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
  
var DATE_ID = "";
function popCalendarLayer(dateId , today){
	DATE_ID = dateId;
	if(today != '2022-06-02'){
		today = today.split("-");
		var originToday = "2022-06-02".split("-");
		
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
</script>

<form name="myResvForm" id="myResvForm" method="post">
	<input type="hidden" name="resvId" id="resvId" value="" autocomplete="off">
	<input type="hidden" name="hotlId" id="hotlId" value="" autocomplete="off">
	<input type="hidden" name="roomTotalCnt" id="roomTotalCnt" value="" autocomplete="off">
	<input type="hidden" name="legNumber" id="legNumber" value="" autocomplete="off">
	<div class="ctnMypage ctnMypageRsv ctnMypageRsvRmPack rewards_N">
		<div class="location">
			<p class="list">
				<span class="crPosit">현재 페이지 위치 : </span> &gt; 마이페이지 &gt; 예약 확인/취소 &gt;
				<strong>객실/패키지</strong>
			</p>
		</div>

		<div class="myRservationTit">
			<h4 class="tit">예약확인/취소</h4>
		</div>

		<div class="topMsg">객실 및 패키지, 스파, 다이닝 예약 내역을 확인하실 수 있습니다.</div>

		<div class="mypageWrap">
			<div class="schBox">
				<div class="selectWrap_rewards"><!-- 20201113 -->
		            <div class="selector" id="uniform-searchDateType" style="width: 138px;">
		            	<span style="width: 113px; user-select: none;">예약 완료일 기준</span>
		            	<select name="searchDateType" id="searchDateType">
				            <option value="BOOKED_DATE" selected="">예약 완료일 기준</option>
				            <option value="ARRIVAL_DATE">투숙일 기준</option>
		            	</select>
		            </div>
	            </div>
				<div class="dateOpt">
					<a class="btnDateNew btn3Mon" href="javascript:dateSearch(3);"><span>3개월</span></a>
	                <a class="btnDateNew btn6Mon" href="javascript:dateSearch(6);"><span>6개월</span></a>
	                <a class="btnDateNew btn12Mon" href="javascript:dateSearch(12);"><span>12개월</span></a>
					
					<label class="dateStart" for="searchStrtDt">시작일</label>
					<input type="text" id="searchStrtDt" name="searchStrtDt" value="${searchStrtDt}" class="dateStart uiform text" autocomplete="off">
					<a class="btnCalendar" href="javascript:popCalendarLayer('searchStrtDt','2022-06-02'); "><span>달력</span></a>
					~
					<label class="dateEnd" for="searchEndDt">종료일</label>
					<input type="text" id="searchEndDt" name="searchEndDt" value="${searchEndDt}" class="dateEnd uiform text" autocomplete="off">
					<a class="btnCalendar" href="javascript:checkCalendar('searchEndDt','2022-06-02'); "><span>달력</span></a>
				</div>
				<div class="btn">
					<a class="btnSch" href="javascript:searchResvList();"><span>다음 단계로 이동</span></a>
				</div>
			</div> <!-- schBox -->
			
			<div class="box boxRoomPack">
				<div class="hTit">
					<h5 class="tit">Room/Package(객실/패키지)</h5>
				</div>
				<div class="bbsTot">Total : ${sessionScope.reservationCount }</div>
				<div class="rsvTableTit"><!-- 20190123 예약내역표 타이틀 밖으로 조정 -->
	                <table summary="번호,호텔,상품명,체크인/체크아웃,등록일자,상태로 구성된 게시물 리스트 표" class="bbsList bbsRsvList">
	                    <colgroup>
	                      	<col width="12%" class="col1">
		                    <col width="*" class="col2">
		                    <col width="10%" class="col3">
		                    <col width="10%" class="col4">
		                    <col width="20%" class="col5">
		                    <col width="12%" class="col6">
						</colgroup>
	                    <thead>
	                        <tr>
	                            <th>예약번호</th>
								<th scope="col">호텔</th>
								<th scope="col">객실</th>
								<th scope="col">숙박 인원</th>
								<th scope="col">체크인/<br>체크아웃</th>
								<th scope="col">예약상태</th>
	                        </tr>
	                    </thead>
	                </table>
	            </div> <!-- rsvTableTit -->
	            
				<div class="priceScroll new">
					<table summary="번호,호텔,상품명,체크인/체크아웃,등록일자,상태로 구성된 게시물 리스트 표" class="bbsList bbsRsvList">
						<caption>예약리스트</caption>
						<colgroup>
							<col width="12%" class="col1">
		                    <col width="*" class="col2">
		                    <col width="10%" class="col3">
		                    <col width="10%" class="col4">
		                    <col width="20%" class="col5">
		                    <col width="12%" class="col6">
						</colgroup>
						<tbody>
							<c:choose>
								<c:when test="${sessionScope.reservationCount gt 0}">
									<c:forEach var="resvList" items="${sessionScope.reservationList }">
										<tr>
											<td scope="col">${resvList.reservationNo }</td>
											<td scope="col">${resvList.hotelName }</td>
											<td scope="col">${resvList.roomId }</td>
											<td scope="col">${resvList.guestNumber }</td>
											<td scope="col">${resvList.checkinDate }/<br>${resvList.checkoutDate }</td>
											<c:choose>
												<c:when test="${resvList.reservationStatus eq '0'}">
													<td scope="col" style="color: blue">RESERVATION</td>
												</c:when>
												<c:when test="${resvList.reservationStatus eq '1'}">
													<td scope="col">CHECK_IN</td>
												</c:when>
												<c:when test="${resvList.reservationStatus eq '2'}">
													<td scope="col">CHECK_OUT</td>
												</c:when>
												<c:when test="${resvList.reservationStatus eq '9'}">
													<td scope="col" style="color: red">CANCEL</td>
												</c:when>
												<c:otherwise>
													<td scope="col" style="color: red">?????</td>
												</c:otherwise>
											</c:choose>
										</tr>
									</c:forEach>
								</c:when>
								<c:otherwise>
									<tr class="trNoList first last">
										<td colspan="6">자료가 없습니다.</td>
									</tr>
								</c:otherwise>
							</c:choose>
						</tbody>
					</table>
					<br>
					<!-- 페이징 -->
					<div align="center">
						${sessionScope.page }
					</div>
				</div> <!-- priceScroll new -->
			</div> <!-- box boxRoomPack -->
		</div> <!-- mypageWrap -->
	</div> <!-- ctnMypage ctnMypageRsv ctnMypageRsvRmPack rewards_N -->
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
		<div class="mdScreen" style="height: 1293px; display: block;"></div>
	</div>
	
	<div id="reserveNotice" style="display:none"></div>
</form>
		</div> <!-- contents -->
	</div> <!-- container -->
</div> <!-- contain -->
<%@ include file="../common/main_footer.jsp" %>