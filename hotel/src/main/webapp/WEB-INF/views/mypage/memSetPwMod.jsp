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
								<a href="/membership/mypage/mbr/memSetPwMod.do" class="on">
									<span>비밀번호 변경</span>
								</a>
							</li>
							<li class="s3">
								<a href="/membership/mypage/ask/memListAsk.do">
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
	function updateMbrPw(){

		if($.trim($('#mbrPw').val()) == ""){
			alert(messages["msg.cmm.required"].replaceMsg(['비밀번호']));
			$('#mbrPw').focus();
			return;
		}

		if($.trim($('#mbrNewPw').val()) == ""){
			alert(messages["msg.cmm.required"].replaceMsg(['비밀번호']));
			$('#mbrNewPw').focus();
			return;
		}

		if($.trim($('#mbrNewPw2').val()) == ""){
			alert(messages["msg.cmm.required"].replaceMsg(['비밀번호 확인']));
			$('#mbrNewPw2').focus();
			return;
		}

		var mbrNewPw = $('#mbrNewPw').val();
		if(!checkPass(mbrNewPw)){
			   return;
		}

		if($.trim($('#mbrNewPw').val()) != $.trim($('#mbrNewPw2').val())){
			alert('비밀번호와 비밀번호확인이 일치하지 않습니다.');
			$('#mbrNewPw2').focus();
			return;
		}
		 
		 var string = $("form[name=mbrJoinForm]").serialize();
		 $.post( "/membership/mypage/mbr/memUpdatePwMod.do", string
		 ).done(function( resultCode ) {
			 if(resultCode == "success"){
				alert('정상적으로 수정되었습니다.');
				$('#mbrJoinForm').attr('action','/membership/mypage/account/listAccount.do').submit();
			 }else if(resultCode == "fail"){
				alert('비밀번호가 일치하지 않습니다.');
				return;
			 }else if(resultCode == "checkPassWord"){
				alert('비밀번호는 영문/숫자 조합 8~20자 이하입니다.');
				return;
			 }else{
				 alert("장시간 이용하지 않아 로그아웃되었습니다. 로그인 후 다시 이용해 주시기 바랍니다. ");
				$('#mbrJoinForm').attr('action','/membership/mbr/login/memLogin.do').submit();
			 }
		}).fail(function( jqxhr, textStatus, error ) {
		 	alert('수정이 실패하였습니다.');
		});
		 
	}
	
function resetPw(){
	$('#mbrPw').val('');
	$('#mbrNewPw').val('');
	$('#mbrNewPw2').val('');
}

//-->
</script>

		<form id="mbrJoinForm" name="mbrJoinForm" action="/membership/mypage/mbr/memSetPwMod.do" method="post"><input type="hidden" id="mbrId" name="mbrId" value="" autocomplete="off">
		<input type="hidden" id="birthYear" name="birthYear" value="" autocomplete="off">
		<input type="hidden" id="mbno1" name="mbno1" value="82-01077211941" autocomplete="off">
	
		
		<div class="contents" id="contents">
			<div class="ctnMypage ctnPwMod">
			
				<div class="location">
					<p class="list"><span class="crPosit">현재 페이지 위치 : </span> &gt; 마이페이지 &gt; 내정보  &gt; <strong>비밀번호 변경</strong></p>
				</div>
				
				<div class="myPasswordmodifyTit">
					<h4 class="tit">비밀번호 변경</h4>
				</div>
			
				<div class="msg">고객님의 정보를 언제든지 확인, 변경하실 수 있습니다.<br>비밀번호 변경 후에는 모바일앱 재로그인이 필요합니다.</div>
				
				<div class="hTitS">
					<h5 class="tit">비밀번호 변경</h5>
				</div>
				<table class="tableTypeA tablePwMod" summary="현재 비밀번호,새비밀번호,새비밀번화확인으로 구성된 테이블">
					<caption>비밀번호 변경</caption>
					<colgroup>
						<col width="15%" class="col1">
						<col class="col2">
					</colgroup>
					<tbody><tr class="first">
						<th scope="row" class="first"><label for="mbrPw" class="pwNow">현재 비밀번호</label></th>
						<td class="first"><input type="password" class="pwNow" id="mbrPw" name="mbrPw" maxlength="20" style="width: 143px;" autocomplete="off"></td>
					</tr>
					<tr>
						<th scope="row"><label for="mbrNewPw" class="pwNew">새 비밀번호</label></th>
						<td>
							<input type="password" class="pwNew uiform" id="mbrNewPw" name="mbrNewPw" maxlength="20" style="width: 143px;" autocomplete="off">
							<div class="pwGuideBox">
								<a href="javascript:;" class="btnPwHelp"><span>비밀번호입력안내</span><em class="icoHelp"></em></a>
								<div class="pwGuide">
									<h4 class="tit">비밀번호 입력 시 아래의 사항을 참고하시어 안전한 정보 입력을 권장합니다.</h4>
									<ul class="list">
										<li class="first"> 아이디 및 아이디를 포함한 문자/숫자는 비밀번호로 사용할 수 없습니다.</li><li> 동일하거나 연속되는 문자 또는 숫자는 사용 불가능합니다.  예) aaa,111</li><li>생일, 주민등록번호 등 타인이 알아내기 쉬운 비밀번호는 사용을 자제해 주시기 바랍니다.	</li><li class="last">비밀번호는 3~6개월에 한번씩 주기적으로 바꾸어 사용	하시는 것이 안전합니다. </li></ul>
									<a href="javascript:;" class="btnClose"><span>닫기</span></a>
								</div>
							</div>
							<script>
								$(document).ready(function() {
									
									$(".pwGuideBox .btnPwHelp").on("click",function(e){
										if($(".pwGuideBox .pwGuide").is(":visible")){
											$(".pwGuideBox .pwGuide").hide();	
										}else{	
											$(".pwGuideBox .pwGuide").show();
										}
										e.stopPropagation();
									}); 
									$(document).click(function(){
										$(".pwGuideBox .pwGuide").hide();
									});
									$(".pwGuideBox .pwGuide").click(function(e){
										e.stopPropagation();
									}); 
									$(".pwGuideBox .pwGuide .btnClose").on("click",function(e){
											$(".pwGuideBox .pwGuide").hide();	
									}); 
								});
							</script>
							<span class="msgCheck">8~20자 이내 영문/숫자 조합(특수문자 입력 가능)</span>
						</td>
					</tr>
					<tr class="last">
						<th scope="row" class="last"><label for="pwNewCom" class="pwNewCom">새 비밀번호 확인</label></th>
						<td class="last">
							<input type="password" class="pwNewCom uiform" id="mbrNewPw2" name="mbrNewPw2" maxlength="20" style="width: 143px;" autocomplete="off">
						</td>
					</tr>
				</tbody></table>
				
				<div class="btnList">
						<a href="javascript:updateMbrPw();" class="btnChange"><span>수정</span></a>
						<a href="javascript:resetPw();" class="btnCancel"><span>취소</span></a>
				</div>
				
			</div>
		</div>
			</form></div>

		</div>
	
	</div>
<%@ include file="common/main_footer.jsp" %>