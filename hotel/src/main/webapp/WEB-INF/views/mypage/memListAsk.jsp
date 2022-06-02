<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="../common/main_header.jsp" %>

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
								<a href="/membership/mypage/mbr/memSetPwCnfm.do">
									<span>프로필 수정</span>
								</a>
							</li>
							<li class="s2">
								<a href="/membership/mypage/mbr/memSetPwMod.do">
									<span>비밀번호 변경</span>
								</a>
							</li>
							<li class="s3">
								<a href="/membership/mypage/ask/memListAsk.do" class="on">
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




function selectAskTypCd(askTypCd){
    $('#askTypCd').val(askTypCd);
    $('#curPageNo').val("1");
    $('#mypageAskForm').attr('action','./listAsk.do').submit();
}

function selectHotlId(hotlId){
    $('#hotlId').val(hotlId);
    $('#curPageNo').val("1");
    $('#mypageAskForm').attr('action','./listAsk.do').submit();
}

function selectViewAsk(hotlId, askNo , cmtSeq){
    $('#hotlId').val(hotlId);
    $('#askNo').val(askNo);
    $('#cmtSeq').val(cmtSeq);
	$('#mypageAskForm').attr('action', '/membership/mypage/ask/memViewAsk.do').submit();
    
}

function selectListAsk(){
    $('#mypageAskForm').attr('action','/membership/mypage/ask/memListAsk.do').submit();
}

/** 페이징 조회 */
function goPage(pageNo){
    $('#curPageNo').val(pageNo);
    $('#mypageAskForm').attr('action','/membership/mypage/ask/memListAsk.do').submit();
}

/** 날짜 셋팅 */
function dateSearch( monthNum ) {
	searchDateSet('searchStrtDt' , 'searchEndDt' , monthNum );
}

/** 날짜 셋팅 */
function dateWeekSearch( weekNum ) {
	searchDateWeekSet('searchStrtDt' , 'searchEndDt' , weekNum );
}

function checkCalendar(searchEndDt,today){
	if($("#searchStrtDt").val()!=null || $("#searchStrtDt").val().length !=0){
		popCalendarLayer(searchEndDt,$("#searchStrtDt").val());
	}else{
		popCalendarLayer(searchEndDt,today); 
	}
}
//-->
</script>

<form name="mypageAskForm" id="mypageAskForm" method="post">
	<input type="hidden" id="askNo" name="askNo" value="" autocomplete="off">
	<input type="hidden" id="cmtSeq" name="cmtSeq" value="" autocomplete="off">
	<input type="hidden" id="hotlId" name="hotlId" value="MBR" autocomplete="off">
	<input type="hidden" id="askTypCd" name="askTypCd" value="" autocomplete="off">
	
	<div class="contents" id="contents">
				<div class="ctnMypage ctnQna">
					<div class="location">
						<p class="list"><span class="crPosit">현재 페이지 위치 : </span> &gt; 마이페이지 &gt; 내정보 &gt; <strong>문의내역</strong></p>
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
</div>

		</div>
	
	</div>
<%@ include file="../common/main_footer.jsp" %>