<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="../common/main_header.jsp" %>
<c:url var="root" value="/" />
<c:url var="mypage" value="/mypage/" />
<link href="${pageContext.request.contextPath}/resources/css/mem/title_ko.css" rel="stylesheet" type="text/css">
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
		
<form name="myResvForm" id="myResvForm" method="post">
	<input type="hidden" name="resvId" id="resvId" value="" autocomplete="off">
	<input type="hidden" name="hotlId" id="hotlId" value="" autocomplete="off">
	<div class="ctnMypage ctnMypageRsv ctnMypageRsvRmPack rewards_N">
		<div class="location">
			<p class="list">
				<span class="crPosit">현재 페이지 위치 : </span> &gt; 마이페이지 &gt; 
				<strong>예약 확인/취소</strong>
			</p>
		</div>

		<div class="myRservationTit">
			<h4 class="tit">예약확인/취소</h4>
		</div>

		<div class="topMsg">객실 및 패키지, 스파, 다이닝 예약 내역을 확인하실 수 있습니다.</div>

		<div class="mypageWrap">
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
		                    <col width="12%" class="col7">
						</colgroup>
	                    <thead>
	                        <tr>
	                            <th>예약번호</th>
								<th scope="col">호텔</th>
								<th scope="col">객실</th>
								<th scope="col">숙박 인원</th>
								<th scope="col">체크인/<br>체크아웃</th>
								<th scope="col">예약상태</th>
								<th scope="col">취소</th>
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
		                    <col width="12%" class="col7">
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
													<td scope="col"><input type="button" value="취소" class="listBtn" 
														onclick="location.href='${mypage}memCnclResvProc?memberId=${resvList.memberId}&reservationNo=${resvList.reservationNo}'"></td>
												</c:when>
												<c:when test="${resvList.reservationStatus eq '1'}">
													<td scope="col">CHECK_IN</td>
													<td scope="col"><input type="button" value="취소" class="listBtn" 
														onclick="location.href='${mypage}memCnclResvProc?memberId=${resvList.memberId}&reservationNo=${resvList.reservationNo}'"></td>
												</c:when>
												<c:when test="${resvList.reservationStatus eq '2'}">
													<td scope="col">CHECK_OUT</td>
													<td scope="col"></td>
												</c:when>
												<c:when test="${resvList.reservationStatus eq '9'}">
													<td scope="col" style="color: red">CANCEL</td>
													<td scope="col"></td>
												</c:when>
												<c:otherwise>
													<td scope="col" style="color: red">?????</td>
													<td scope="col"></td>
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
</form>
		</div> <!-- contents -->
	</div> <!-- container -->
</div> <!-- contain -->
<%@ include file="../common/main_footer.jsp" %>