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
						<a href="/hotel/myPage"><span>예약 확인/취소</span>	</a>
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
								<a href="/hotel/mypage/memListAsk" class="on"><span>문의 내역</span></a>
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

<form name="mypageAskForm" id="mypageAskForm" method="post">
	<input type="hidden" id="askNo" name="askNo" value="" autocomplete="off">
	<input type="hidden" id="cmtSeq" name="cmtSeq" value="" autocomplete="off">
	<input type="hidden" id="hotlId" name="hotlId" value="MBR" autocomplete="off">
	<input type="hidden" id="askTypCd" name="askTypCd" value="" autocomplete="off">
	
	<div class="contents" id="contents">
				<div class="ctnMypage ctnQna">
					<div class="location">
						<p class="list">
							<span class="crPosit">현재 페이지 위치 : </span> &gt; 마이페이지 &gt; 내정보 &gt; 
							<strong>문의내역</strong>
						</p>
					</div>
					
					<div class="myInquiryTit">
						<h4 class="tit">문의내역</h4>
					</div>
					
					<div class="msg">회원님께서 문의하신 내역과 답변을 확인하실 수 있습니다.</div>
					<div class="tabBox">
						<div class="schBox">
							<div class="dateOpt">
								<strong class="tit">조회기간</strong>
									<a href="javascript:dateWeekSearch( -1 );" class="btnDate btnDateWeek"><span>1주</span></a>
									<a href="javascript:dateSearch( -1 );" class="btnDate btnDate1Mon"><span>1개월</span></a>
									<a href="javascript:dateSearch( -3 );" class="btnDate btnDate3Mon"><span>3개월</span></a>
									<a href="javascript:dateSearch( -6 );" class="btnDate btnDate6Mon"><span>6개월</span></a>
									<a href="javascript:dateSearch( 'All' );" class="btnDate btnDateAll"><span>전체</span></a>
								
							<label for="searchStrtDt" class="dateStart">시작일</label>
							<input type="text" class="dateStart uiform" id="searchStrtDt" name="searchStrtDt" value="" readonly="" onclick="popCalendarLayer('searchStrtDt','2022-05-30'); return false;" autocomplete="off">
							<a href="javascript:popCalendarLayer('searchStrtDt','2022-05-30'); " class="btnCalendar"><span>달력</span></a>
							
							<label for="searchEndDt" class="dateEnd">종료일</label>
							<input type="text" class="dateEnd uiform" id="searchEndDt" name="searchEndDt" value="" readonly="" onclick="popCalendarLayer('searchEndDt','2022-05-30'); return false;" autocomplete="off">
							<a href="javascript:checkCalendar('searchEndDt','2022-05-30'); " class="btnCalendar"><span>달력</span></a>
							</div>
							<div class="btn"><a href="javascript:selectListAsk();" class="btnSch"><span>다음 단계로 이동</span></a></div>
						</div>
						<div class="bbsTotal">
							<div class="count">Total : 0</div>
						</div>
						
						<table class="bbsList bbsQnaList" summary="번호,문의유형,제목,문의일자,답변여부로 구성된 게시물 리스트 표">
							<caption>1:1문의내역리스트입니다.</caption>
							<colgroup>
							   <col width="8%" class="col1">
							   <col width="16%" class="col2">
							   <col width="15%" class="col3">
							   <col width="*%" class="col4">
							   <col width="13%" class="col5">
							   <col width="10%" class="col6">
							</colgroup>
							<thead>
								<tr>
									<th class="num" scope="col">NO</th>
									<th class="cate" scope="col">호텔</th>
									<th class="cate" scope="col">문의유형</th>
									<th class="tit" scope="col">제목</th>
									<th class="date" scope="col">문의일자</th>
									<th class="status" scope="col">답변여부</th>
								</tr>
							</thead>
							<tbody>
							
								<tr class="trNoList first last">               
											<td colspan="6">자료가 없습니다.</td>
										</tr>
						            </tbody>
						</table>
						
					</div>
				</div>
			</div>
</form>
		</div> <!-- contents -->
	</div> <!-- container -->
</div> <!-- contain -->
<%@ include file="../common/main_footer.jsp" %>