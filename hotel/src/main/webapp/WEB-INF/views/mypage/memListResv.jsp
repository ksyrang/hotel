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
<script type="text/javascript">
	function check() {
		startDt = document.getElementById('startDt');
		endDt = document.getElementById('endDt');
		
		if(startDt.value == "" || endDt.value == "") {
			alert('일자를 확인해주세요.');
			return;
		}
		if(startDt.value > endDt.value) {
			alert('시작일자가 종료일자보다 큽니다.');
			return;
		}
		document.getElementById('f').submit();
	}
</script>
	
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
	            <form>>
			            <div class="selector" id="uniform-searchDateType" style="width: 138px;">
			            	<span style="width: 113px; user-select: none;">예약 완료일 기준</span>
			            	<select name="select">
					            <option value="예약일" selected="">예약 완료일 기준</option>
					            <option value="투숙일">투숙일 기준</option>
			            	</select>
			            </div>
						<input type="date" name="startDt" id="startDt"/>
						~
						<input type="date" name="endDt" id="endDt"/>
				<!-- 		
						<input type="button" value="조회" onclick="check();" class="searchBtn">
				 -->
						<input type="submit" name="searchBtn" value="조회" class="searchBtn">
						<input type="hidden" name="memberId" value="whiteyhl">
				</form>
				
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