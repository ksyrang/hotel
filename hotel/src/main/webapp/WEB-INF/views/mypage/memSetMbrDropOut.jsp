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
								<a href="/membership/mypage/ask/memListAsk.do">
									<span>문의 내역</span>
								</a>
							</li>
							<li class="s4 last">
								<a href="/membership/mypage/mbr/memSetPwDropfm.do?gubun=t" class="on">
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
function dropOutMbrPw(){
		
	if(confirm('신청이 완료되면 취소가 불가능합니다. 계속하시겠습니까?')){
	
		    
			 var string = $("form[name=dropOutForm]").serialize();
			 
			 $.post( "/membership/mypage/mbr/memUpdateMbrDropOut.do", string
			 ).done(function( resultCode ) {
				 if(resultCode == "success"){
					$('#success').css('display','');
					$('#ready').css('display','none');
					 alert('탈회신청이 접수되었습니다.');
					    $('#dropOutForm').attr('action','/membership/login/SSOLogout.do').submit();
				 }else if("fail"){
					alert('처리가 실패하였습니다.');
					return;
				 }else{
					 alert("장시간 이용하지 않아 로그아웃되었습니다. 로그인 후 다시 이용해 주시기 바랍니다. ");
					 $('#dropOutForm').attr('action','/membership/mbr/login/memLogin.do').submit();
				 }
			}).fail(function( jqxhr, textStatus, error ) {
			 	alert('처리가 실패하였습니다.');
			});
			 
	 }
		 
}

function reSetDrop(){
	$('#dropOutForm').attr('action', '/membership/mypage/mbr/memSetPwDropfm.do?gubun=t').submit();
}
//-->
</script>

	<form id="dropOutForm" name="dropOutForm" action="/membership/mypage/mbr/memSetMbrDropOut.do" method="post"><div class="contents" id="contents">
			<div class="ctnMypage ctnMemDis">
			
				<div class="location">
					<p class="list"><span class="crPosit">현재 페이지 위치 : </span> &gt; 마이페이지 &gt; 내정보  &gt; <strong>신라리워즈 탈회요청</strong></p>
				</div>						
				<div class="mySecessionTit">
								<h4 class="tit">신라리워즈 탈회 요청</h4>
							</div>
						<br>
					<div class="memoText">
						<p>탈회를 신청하시기 전에 아래의 유의사항을 한 번 더 확인해 주시기 바랍니다.</p>
						<ul>
							<li class="first">- 탈회를 신청하시면 번복이 불가능하며 보유하신 모든 포인트는 소멸됩니다.</li>
							<li>- 개인정보보호법에 따라 고객님의 호텔 이용기록, 개인정보 및 문의내역 기록도 모두 삭제됩니다</li>
							<li class="last">- 탈회 신청이 완료되면 즉시 홈페이지 로그인이 제한됩니다.</li>
						</ul>
					</div>
					<br>
			
					<div class="breakBox" id="success" style="display: none;">
						<strong>YOONGHEE LEE</strong> 님의 탈회 신청이 완료되었습니다.</div>
				
				<div class="btnList" id="ready">
					<a href="javascript:dropOutMbrPw();" class="btn_application" style="position: absolute; left:45%;"><span>회원탈퇴</span></a>
				</div>
				
			</div>
		</div>
	</form></div>

		</div>
	
	</div>
<%@ include file="common/main_footer.jsp" %>