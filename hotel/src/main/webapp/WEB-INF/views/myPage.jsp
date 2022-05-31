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
									<a href="#"><span>다이닝</span></a>
								</li>
							</ul>
						</li>
						<li class="m3">
							<a><span>포인트</span></a>
							<ul class="sMenu">
								<li class="s1 first">
									<a href="#">
										<span>포인트조회</span>
									</a>
								</li>
								<li class="s2">
									<a href="#">
										<span>포인트 조정신청</span>
									</a>
								</li>
								<li class="s3 last">
									<a href="#">
										<span>삼성상품권 교환신청</span>
									</a>
								</li>
							</ul>
						</li>
						<li class="m4">
							<a>쿠폰</a>
							<ul class="sMenu">
								<li class="s1 first">
									<a href="#">
										<span>쿠폰함</span>
									</a>
								</li>
								<li class="s2 last">
									<a href="#">
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
	<input type="hidden" name="resvId" id="resvId" value="" autocomplete="off">
	<input type="hidden" name="legNumber" id="legNumber" value="" autocomplete="off">
	<div class="contents" id="contents">
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
				<!-- by LYH
							<li class="last">
								<span>포인트</span>
								<strong>0<b> P</b></strong>
							</li>
				 -->
						</ul>
					</div>
				</div>
				
				<div class="userInfoTopBoxTit clearfix"><!-- 20201203 레이아웃 변경 -->
					<div class="fl">
						<img src="${pageContext.request.contextPath}/images/ko/mypage/graphTitTxt.gif" alt="등급 현황">
					</div>
			<!-- 
					<div class="fr">
						<a href="#" title="등급별 혜택보기" class="linkTxt">
							등급별 혜택보기</a>
					</div>
			 -->
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
				<!-- 
						<div class="userPointGraph fr">
							<div class="graphTit">
								<img src="${pageContext.request.contextPath}/images/ko/mypage/graphTit2.gif" alt="포인트기준">
							</div>
							<div class="graphInfo">
				-->
								<!-- 포인트 기준 그래프 영역 -->
				<!--
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
				-->
								<!-- BROWN, SILVER, GOLD 등급일 때 -->
				<!-- 
										<p>
											<strong class="userTierTxt">SILVER</strong> 등급까지 <strong class="userNightTxt">100 P</strong> 남았습니다.</p>
									</div>
						</div>
				 -->
					</div>
				</div>
				<!-- 등급별 혜택보기 -->
				<div class="tierNoticeTxt">
					<p>
						※ 등급평가 및 조정은 1월 1일부터 12월 31일까지 (체크아웃기준) 1년간 이용한 실적기준</p>
				</div>
		<!-- by LYH : 포인터 내역 하지 않음
				<div class="pointTableWrap">
					<div class="pointTableTit clearfix">
						<div class="fl">
							<img src="${pageContext.request.contextPath}/images/ko/mypage/boardTitle1.gif" alt="최근 6개월 이내의 포인트 적립/사용 내역을 확인하실 수 있습니다.">
						</div>
						<a href="#" title="포인트 안내보기" class="linkTxt fr">
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
		 -->
			</div>
		</div>
	</div>
	
	<div id="reserveNotice" style="display:none"></div>
	</form>
	</div>
	
			</div>
		
		</div>
	
<%@ include file="common/main_footer.jsp" %>
	
</body>
</html>