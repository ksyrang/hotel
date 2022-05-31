<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="common/main_header.jsp" %>
	
	<div class="contain">
		<div class="container">
			<div class="lnbArea lnbAreaMypage">
			<div class="lnbMenu">
				<h2 class="tit">마이페이지</h2>
				<ul class="menu">
					<li class="m1 first">
						<!-- 선택시 a태그에 class="on" -->
						<a href="/hotel/myPage">
							<span>신라리워즈 등급 및 포인트</span>
						</a>
					</li>
					<li class="m2">
						<a><span>예약 확인/취소</span></a>
						<ul class="sMenu">
							<li class="s1 first">
								<a href="/hotel/memListResv" class="on">
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
	$('#myResvForm').attr('action', '/hotel/memListResv').submit();	
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

</script>

<form name="myResvForm" id="myResvForm" method="post">
<input type="hidden" name="resvId" id="resvId" value="" autocomplete="off"><input type="hidden" name="hotlId" id="hotlId" value="" autocomplete="off">
<input type="hidden" name="roomTotalCnt" id="roomTotalCnt" value="" autocomplete="off">
<input type="hidden" name="legNumber" id="legNumber" value="" autocomplete="off"><div class="ctnMypage ctnMypageRsv ctnMypageRsvRmPack rewards_N">

	<div class="location">
		<p class="list">
			<span class="crPosit">
				현재 페이지 위치 : </span> &gt; 마이페이지 &gt; 예약 확인/취소 &gt;
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
	            <div class="selector" id="uniform-searchDateType" style="width: 138px;"><span style="width: 113px; user-select: none;">예약 완료일 기준</span><select name="searchDateType" id="searchDateType">
		            <option value="BOOKED_DATE" selected="">예약 완료일 기준</option>
		            <option value="ARRIVAL_DATE">투숙일 기준</option>
	            </select></div>
            </div>
			<div class="dateOpt">
				<a class="btnDateNew btn3Mon" href="javascript:dateSearch(3);"><span>3개월</span></a>
                <a class="btnDateNew btn6Mon" href="javascript:dateSearch(6);"><span>6개월</span></a>
                <a class="btnDateNew btn12Mon" href="javascript:dateSearch(12);"><span>12개월</span></a>
				
				<label class="dateStart" for="searchStrtDt">시작일</label>
				
				<input type="text" id="searchStrtDt" name="searchStrtDt" value="2022-02-27" class="dateStart uiform text" autocomplete="off">
				<a class="btnCalendar" href="javascript:popCalendarLayer('searchStrtDt','2022-05-27'); "><span>달력</span></a>
				~
				<label class="dateEnd" for="searchEndDt">종료일</label>
				<input type="text" id="searchEndDt" name="searchEndDt" value="2022-05-27" class="dateEnd uiform text" autocomplete="off">
				<a class="btnCalendar" href="javascript:checkCalendar('searchEndDt','2022-05-27'); "><span>달력</span></a>
			</div>
			<div class="btn"><a class="btnSch" href="javascript:searchResvList();"><span>다음 단계로 이동</span></a></div>
		</div>
		<div class="box boxRoomPack">
			<div class="hTit">
				<h5 class="tit">Room/Package(객실/패키지)</h5>
			</div>
			<div class="bbsTot">Total : 0</div>
			<div class="rsvTableTit"><!-- 20190123 예약내역표 타이틀 밖으로 조정 -->
                <table summary="번호,호텔,상품명,체크인/체크아웃,등록일자,상태로 구성된 게시물 리스트 표" class="bbsList bbsRsvList">
                    <colgroup>
                      <col width="11%" class="col1">
		                    <col width="17%" class="col2">
		                    <col width="*" class="col3">
		                    <col width="8%" class="col4">
		                    <col width="13%" class="col5">
		                    <col width="14%" class="col6">
		                    <col width="12%" class="col7">
						</colgroup>
                    <thead>
                        <tr>
                            <th>예약번호</th>
							<th scope="col">호텔</th>
							<th scope="col">객실/패키지</th>
							<th scope="col">객실 수</th>
							<th scope="col">
								체크인/<br>
								체크아웃</th>
							<th scope="col" class="ListThpd">신라 홈페이지 <br>또는 APP 예약</th>
							<th scope="col">예약상태</th>
                        </tr>
                    </thead>
                </table>
            </div>
			<div class="priceScroll new">
			<table summary="번호,호텔,상품명,체크인/체크아웃,등록일자,상태로 구성된 게시물 리스트 표" class="bbsList bbsRsvList">
				<caption>예약리스트</caption>
				<colgroup>
					<col width="11%" class="col1">
		                    <col width="17%" class="col2">
		                    <col width="*" class="col3">
		                    <col width="8%" class="col4">
		                    <col width="13%" class="col5">
		                    <col width="14%" class="col6">
		                    <col width="12%" class="col7">
						</colgroup>
				<tbody>
					<tr class="trNoList first last">
								<td colspan="6">자료가 없습니다.</td>
							</tr>
						</tbody>
			</table>
			</div>
		</div>
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
	<div class="mdScreen" style="height: 1293px; display: block;"></div>
</div>

<div id="reserveNotice" style="display:none"></div>
</form>
</div>

		</div>
	
	</div>
	
<%@ include file="common/main_footer.jsp" %>