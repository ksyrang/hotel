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
								<a href="/membership/mypage/mbr/memSetPwCnfm.do" class="on">
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
$(document).ready(function() { 
	$("select, input").uniform();
	
// 	var meYn = 'Y';
	
// 	if(meYn != 'N'){
// 		alert("잘못된 접근 방식입니다.");
// 		$('#mbrJoinForm').attr('action',"/membership/mypage/mbr/memSetPwCnfm.do").submit();
// 	}

	if($("#marketingUseYnN").is(":checked")){
		$("#emailRecvYnY").prop("disabled", true);
		$("#emailRecvYnN").prop("disabled", true);
		$("#smsRecvY").prop("disabled", true);
		$("#smsRecvN").prop("disabled", true);
	}
	
	// 개인정보 마케팅 활용 "아니오" 선택 시
	$("#marketingUseYnN").click(function(){
		if($(this).is(":checked")){
			$("#emailRecvYnY").prop("checked", false);
			$("#emailRecvYnN").prop("checked", true);
			$("#smsRecvY").prop("checked", false);
			$("#smsRecvN").prop("checked", true);

			$("#emailRecvYnY").prop("disabled", true);
			$("#emailRecvYnN").prop("disabled", true);
			$("#smsRecvY").prop("disabled", true);
			$("#smsRecvN").prop("disabled", true);
		}
	});
	
	// 개인정보 마케팅 활용 "예" 선택 시
	$("#marketingUseYnY").click(function(){
		if($(this).is(":checked")){
			$("#emailRecvYnY").prop("disabled", false);
			$("#emailRecvYnN").prop("disabled", false);
			$("#smsRecvY").prop("disabled", false);
			$("#smsRecvN").prop("disabled", false);
		}
	});
}); 



function fn_setGoldMbshReqrNo(goldReqrNo){
	$("#goldMbshReqrNo").val(goldReqrNo);
}

//이메일 수신 동의/철회 메일 발송 여부
function setAgreeEmail(checkVal) {
	//20150302 김동욱
	//이메일 수신여부를 변경 시 기존 정보와 변경된 경우 수신 또는 철회 메일 전송을 위한 구분자를 세팅한다.
	if(checkVal != "Y" ) {
		if(checkVal == "Y") {
			$('#emailAgreeSendType').val("Y");
		} else {
			$('#emailAgreeSendType').val("N");
		}
	} else {
		$('#emailAgreeSendType').val("");
	}
}

function setAnnv(){
	
	debugger;
	var annvList = [];
	var annvTypCdList = [];
	var sclcCdList = [];
	var annvNmList = [];
	
	$("input[name^='mbrAnnvMVo_annv_']").each(function(index){
		annvList.push($(this).val());
	});
	$("input[name^='mbrAnnvMVo_annvTypCd_']").each(function(index){
		annvTypCdList.push($(this).val());
	});
	$("input[name^='mbrAnnvMVo_sclcCd_']").each(function(index){
		sclcCdList.push($(this).val());
	});
	$("input[name^='mbrAnnvMVo_annvNm_']").each(function(index){
		annvNmList.push($(this).val());
	});
	
	
	var length = annvList.length;
	
	for(var i=0; i < length; i++){
		annvList[i];
		annvTypCdList[i];
		sclcCdList[i];
		annvNmList[i];
		var cnt = i+1;
		var inputName1 = "annySclcCd_"+cnt;
		var inputName2 = "annvTypCd_"+cnt;
		
		var inputName3 = "annvNm_"+cnt;
		
		var inputYy= "annvYear_"+cnt;
		var inputMm= "annvMonth_"+cnt;
		var inputDd= "annvDay_"+cnt;
		
		
		var yy = annvList[i].substr(0,4);
		var mm = annvList[i].substr(5,2);
		var dd = annvList[i].substr(8,2);
		
		$("#"+inputName2).val(annvTypCdList[i]);//결혼기념일, 생일 //select
		$("#"+inputName2).focus();
		$("#"+inputName1).val(sclcCdList[i]);//양력음력 //radio
		$("#"+inputName1).focus();
		$("#"+inputName3).val(annvNmList[i]);//이름 //input text
		$("#"+inputDd).val(dd);//일  // select
		$("#"+inputMm).val(mm);//월  // select
		$("#"+inputYy).val(yy);//년  // annvYear_1
		
		
		
	}
	
	
}


function popMbrIdDup(){

	if($.trim($('#mbrId').val()) == ""){
		alert(messages["msg.cmm.required"].replaceMsg(['신라리워즈 번호 또는 아이디']));
		$('#mbrId').focus();
		return;
	}
	
	if(!checkID($('#mbrId'))){
		   return;
	}
	
	var errorCheck = "";
	var mbrJoinLayer = $("#mbrJoinLayer");
	$.ajax(
            {
                url: './selectMbrIdDup.do',
                type: "post",
                data: { "mbrId": $("#mbrId").val() },
                dataType: "html",
                error: function(){
                	errorCheck = "fail";
                },
                success: function( strData ){
                	mbrJoinLayer.html(strData);
                }
            }                           
     );
     if(errorCheck == "fail"){
  		alert('조회에 실패하였습니다.');
     }
}


function saveMbrJoinForm( ) {
	
	if($.trim($('#email1').val()) == ""){
		alert(messages["msg.cmm.required"].replaceMsg(['이메일 ']));
		$('#email1').focus();
		return;
	}
	if($.trim($('#email2').val()) == ""){
		alert(messages["msg.cmm.required"].replaceMsg(['이메일도메인 ']));
		$('#email2').focus();
		return;
	}

	if($.trim($('#mbno').val()) == ""){
		alert(messages["msg.cmm.required"].replaceMsg(['휴대전화 ']));
		$('#mbno').focus();
		return;
	}
	
	if(!checkedLognId) {
		alert(messages["msg.cmm.required"].replaceMsg(['아이디 중복확인을 해주세요.']));
		$('#lognId').focus();
		return;
	}
	
	$("#email").val($("#email1").val()+"@"+$("#email2").val());
	
	if($("#email").val() != $("#orgEmail").val()){
		if(!checkedEmail) {
			alert('이메일 중복확인을 해주세요.');
			$('#email1').focus();
			return;
		}
	}
	
	if($("#marketingUseYnY").is(":checked")){
		if(!$("#emailRecvYnY").is(":checked") && !$("#smsRecvY").is(":checked")){
			alert('정보 수신 여부의 수신 채널을 선택해주세요.');
			$('#marketingUseYnN').focus();
			return;
		}
	}
	
	$("#emailRecvYnY").prop("disabled", false);
	$("#emailRecvYnN").prop("disabled", false);
	$("#smsRecvY").prop("disabled", false);
	$("#smsRecvN").prop("disabled", false);
	
	
	var string = $("form[name=mbrJoinForm]").serialize();
	$.post( "/membership/mypage/mbr/memUpdateMbrInfo.do", string).done(function( resultCode ) {
		if(resultCode == "success"){
			alert('정상적으로 수정되었습니다.');
			$('#mbrJoinForm').attr('action','./memSetMbrInfo.do').submit();
		}else if(resultCode == "false"){
			alert('수정이 실패하였습니다.');
			return;
		}else if(resultCode == "noJoinCd"){
			alert('입력하신 프로모션 코드는 유효하지 않습니다.');
			return;
		}
		else{
			alert("장시간 이용하지 않아 로그아웃되었습니다. 로그인 후 다시 이용해 주시기 바랍니다. ");
			$('#mbrJoinForm').attr('action','/membership/mbr/login/memLogin.do').submit();
		}
	}).fail(function( jqxhr, textStatus, error ) {
		alert('수정이 실패하였습니다.');
	});
}

var checkedEmail = false;
function checkDuplicateEmail() {

	$('#email').val($('#email1').val() + "@" + $('#email2').val());
	var string = $("form[name=mbrJoinForm]").serialize();
	$.post( "/mem/mbr/join/memCheckDuplicateEmail.do", string).done(function( resultCode ) {
		$('.opacity').hide();
		$('.re-loader').hide();

		if(resultCode == "notExistEmail"){
			checkedEmail = true;			 
			alert('사용 가능한 이메일입니다.');
		}else if(resultCode == "emailOverlap"){
			checkedEmail = false;
			alert('이미 가입된 email 주소입니다.');
		}else if(resultCode == "mssDupl") {
			checkedEmail = false;
			alert('이미 가입된 email 주소입니다.');
		}else{
			checkedEmail = false;
			alert('이메일 형식이 아닙니다.');
		}
	}).fail(function( jqxhr, textStatus, error ) {
		$('.opacity').hide();
		$('.re-loader').hide();
		alert('생성이 실패하였습니다.');
	});
}

var checkedLognId = true;
function checkDuplicateLognId() {
	 var string = $("form[name=mbrJoinForm]").serialize();
	 $.post( "/mem/mbr/join/memCheckDuplicateLognId.do", string).done(function( resultCode ) {
		$('.opacity').hide();
		$('.re-loader').hide();
		
		 if(resultCode == "lognIdOverlap"){
			 checkedLognId = false;			 
			 alert('이미 사용중인 ID입니다. 다른 ID를 설정해 주세요.');
		 }else if(resultCode == "notExistLognId"){
			 checkedLognId = true;
			 alert('사용 가능한 ID입니다.');
		 }else{
			 checkedLognId = false;		
			 alert('아이디 형식이 아닙니다.');
		 }

	}).fail(function( jqxhr, textStatus, error ) {
		$('.opacity').hide();
		$('.re-loader').hide();
		alert('생성이 실패하였습니다.');
	});
}

function creditCardInfoDel(rewardNo) {
	var url = '/membership/mypage/point/memCardInfoDel.do';

//		if (confirm('취소 하시겠습니까?')) {
	if (confirm("저장된 카드정보를 삭제하시겠습니까?")) {

		$.ajax({
			"url"	: url,
			method	: "post",
			data	: {"rewardNo" : rewardNo},

			success	: function(data) {
				var jObj = JSON.parse(data);

				if (jObj.resultCode === "200") {
					

					location.href = "/membership/mypage/mbr/memSetMbrInfo.do";
				} else {
					alert("삭제에 실패하였습니다.");
				}
			}
		})
	}

}

function popPrivacyInc(number){
	var privacyIncLayerDiv = $("#privacyIncLayerDiv");
	$.ajax(
			{
				url: '/membership/mbr/join/memViewPrivacyInc.do?number='+number,
				type: "post",
				dataType: "html",
				error: function(){
				},
				success: function( strData ){
					privacyIncLayerDiv.html(strData);
					privacyIncLayerDiv.show();
					$(".popLayer").attr("tabindex",-1);
					$(".popLayer").attr("style","top:250px");
					$(".popLayer").focus();
				}
			}
	);
}
//-->
</script>
<div id="privacyIncLayerDiv" class="popLogin" style="display:none"></div>

		<form id="mbrJoinForm" name="mbrJoinForm" action="/membership/mypage/mbr/memSetMbrInfo.do" method="post"><input type="hidden" id="hotlUsePupsCd" name="hotlUsePupsCd" autocomplete="off">
			<input type="hidden" id="foodKindTypCd" name="foodKindTypCd" autocomplete="off">
			
			<input type="hidden" id="goldMbshReqrNo" name="goldMbshReqrNo" value="" autocomplete="off">
			<input type="hidden" id="annvTypCd" name="annvTypCd" value="" autocomplete="off">
			<input type="hidden" id="annvNm" name="annvNm" value="" autocomplete="off">
			<input type="hidden" id="annvYear" name="annvYear" value="" autocomplete="off">
			<input type="hidden" id="annvMonth" name="annvMonth" value="" autocomplete="off">
			<input type="hidden" id="annvDay" name="annvDay" value="" autocomplete="off">
			<input type="hidden" id="cnt" name="cnt" value="7" autocomplete="off">
			<input type="hidden" id="annySclcCd" name="annySclcCd" value="" autocomplete="off">	
			<input type="hidden" id="dmstYn" name="dmstYn" value="" autocomplete="off">
			<input type="hidden" id="phonNatCd" name="phonNatCd" value="82" autocomplete="off">
			<input type="hidden" id="email" name="email" autocomplete="off">
<!-- 			<input type="text" id="phonNatCd"     name="phonNatCd" value="82"  /> -->
			
			<input type="hidden" id="emailAgreeSendType" name="emailAgreeSendType" value="" autocomplete="off">
			
			<div class="contents" id="contents">
			<div class="ctnMypage ctnUserInfo2">
			
				<div class="location">
					<p class="list"><span class="crPosit">현재 페이지 위치 : </span> &gt; 마이페이지 &gt; 내정보 &gt; <strong>프로필 수정</strong></p>
				</div>
				
				<div class="myProfilemodifyTit">
					<h4 class="tit">프로필 수정</h4>
				</div>
				
				<div class="msg">고객님의 정보를 언제든지 확인, 변경하실 수 있습니다.</div>
				
				<div class="hTitS">
						<h5 class="tit">기본정보</h5>
				</div>
					<table class="tableTypeA tableJoinForm tableUserInfo2" summary="성명(한글),성명(영문),아이디,비밀번호,비밀번호확인,생년월일,이메일,휴대전화,자택전화,주소,SMS수신여부,기념일로 구성된테이블입니다." border="1">
						<caption>프로필 수정</caption>
					<colgroup>
						<col width="13%" class="col1">
						<col class="col2">
					</colgroup>
					
					<tbody><tr class="first">
						<th scope="row" class="first">성명(국문)</th>
						<td class="first">
							<label for="titlCd" class="nameH">경칭</label>
							<div class="selector disabled" id="uniform-titlCd" style="width: 67px;"><span style="width: 42px; user-select: none;">Mr.</span><select id="titlCd" class="nameH uiform" name="titlCd" disabled="">
								<option value="Miss." title="Ms.">Ms.</option>
								<option value="Mr." title="Mr." selected="">Mr.</option>
								<option value="Dr." title="Dr.">Dr.</option>
								</select></div>
							<span class="name">이융희</span> 
						</td>
					</tr>
					
					<tr>
						<th scope="row">성명(영문)</th>
						<td>
							LEE&nbsp;YOONGHEE</td>
					</tr>
					
					<tr>
						<th scope="row">아이디</th>
						<td>
						whiteyhl</td>
					</tr>
					<tr>
						<th scope="row">이메일 </th>
						<td>
							<label class="emailId" for="email1">이메일아이디 </label>
							<input id="email1" name="email1" class="emailId uiform text" type="text" value="whiteyhl" onkeyup="this.value=this.value.replace(/[^a-z0-9_-.]/gi,'');" maxlength="40" autocomplete="off">
							<span class="at">@</span>
							<label class="emailDomain" for="email2">이메일도메인 </label>
							<input id="email2" name="email2" class="emailDomain uiform text" type="text" value="hanmail.net" onkeyup="this.value=this.value.replace(/[^a-z0-9_-.]/gi,'');" style="width:170px; " maxlength="40" autocomplete="off">
							<label class="emailDomainSel" for="emailSelect">이메일도메인선택</label>
							<div class="selector" id="uniform-emailSelect" style="width: 125px;"><span style="width: 100px; user-select: none;">직접입력</span><select id="emailSelect" name="emailSelect" class="emailDomainSel uiform" onchange="javascript:$('#email2').val(this.value)">
								<option value="">직접입력</option>
								<option value="naver.com" title="naver.com">naver.com</option>
								<option value="hanmail.net" title="hanmail.net">hanmail.net</option>
								<option value="hotmail.com" title="hotmail.com">hotmail.com</option>
								<option value="nate.com" title="nate.com">nate.com</option>
								<option value="yahoo.co.kr" title="yahoo.co.kr">yahoo.co.kr</option>
								<option value="empas.com" title="empas.com">empas.com</option>
								<option value="dreamwiz.com" title="dreamwiz.com">dreamwiz.com</option>
								<option value="freechal.com" title="freechal.com">freechal.com</option>
								<option value="lycos.co.kr" title="lycos.co.kr">lycos.co.kr</option>
								<option value="korea.com" title="korea.com">korea.com</option>
								<option value="gmail.com" title="gmail.com">gmail.com</option>
								<option value="hanmir.com" title="hanmir.com">hanmir.com</option>
								<option value="paran.com" title="paran.com">paran.com</option>
								</select></div>
							<span class="emailConfirm" style="margin-left: 10px;"><a href="#none" onclick="checkDuplicateEmail();">이메일 중복확인</a></span>
							<input type="hidden" id="orgEmail" name="orgEmail" value="whiteyhl@hanmail.net" autocomplete="off">
							</td>
					</tr>
					<tr>
						<th scope="row">휴대전화 </th>
						<td>
							<input type="text" class="uiform phoneNum3 text" style="width: 200px;" id="mbno" name="mbno" maxlength="18" value="01077211941" onkeyup="this.value=this.value.replace(/[^\d\ ]/g, '')" autocomplete="off">
							</td>
					</tr>
					<!--마케팅 활용 동의 S-->
					<tr>
						<th scope="row" rowspan="3">개인정보<br>마케팅<br>활용 동의</th>
						<td>
							<div class="marketingUseBox">
								<span class="msgCheck msgCheck3">호텔신라와 신라스테이 및 기타 제휴 호텔에서의 개인정보 마케팅 활용에 동의하시겠습니까?</span> <a class="btnViewAllPro" href="#none" onclick="popPrivacyInc(4);" id="privacyIncbutton_2">약관 확인</a><br>
								<div class="radio" id="uniform-marketingUseYnY"><span class="checked"><input type="radio" name="marketingUseYn" class="uiform radio" id="marketingUseYnY" value="Y" checked="checked" autocomplete="off"></span></div>
								<label for="marketingUseYnY" class="emailRecep1">예</label>
								<div class="radio" id="uniform-marketingUseYnN"><span><input type="radio" name="marketingUseYn" class="uiform radio" id="marketingUseYnN" value="N" autocomplete="off"></span></div>
								<label for="marketingUseYnN" class="emailRecep2">아니오</label>
							</div>
						</td>
					</tr>
					<tr>
						<td>
						<span>매체별 광고성 정보 수신 동의</span><br>
							<div class="emailRecepBox">
								<span class="msgCheck msgCheck3 rcvTerm" style="margin-top:5px">· 뉴스레터 수신 여부</span>
								<div class="radio" id="uniform-emailRecvYnY"><span class="checked"><input type="radio" name="emailRecvYn" class="uiform emailRecep1 radio" id="emailRecvYnY" value="Y" checked="checked" autocomplete="off"></span></div>
								<label for="emailRecvYnY" class="emailRecep1">예</label>
								<div class="radio" id="uniform-emailRecvYnN"><span><input type="radio" name="emailRecvYn" class="uiform emailRecep2 radio" id="emailRecvYnN" value="N" autocomplete="off"></span></div>
								<label for="emailRecvYnN" class="emailRecep2">아니오</label>
							</div>
							<div class="emailRecepBox">
								<span class="msgCheck msgCheck3 rcvTerm">· LMS 수신 여부</span>
								<div class="radio" id="uniform-smsRecvY"><span class="checked"><input type="radio" name="smsRecvYn" class="uiform emailRecep1 radio" id="smsRecvY" value="Y" checked="checked" autocomplete="off"></span></div>
								<label for="smsRecvY" class="emailRecep1">예</label>
								<div class="radio" id="uniform-smsRecvN"><span><input type="radio" name="smsRecvYn" class="uiform emailRecep2 radio" id="smsRecvN" value="N" autocomplete="off"></span></div>
								<label for="smsRecvN" class="emailRecep2">아니오</label>
							</div>
						</td>
					</tr>
					<tr>
						<td style="color:#666">※ 통지할 정보가 없거나, 정확하지 않은 정보인 경우 처리결과를 수신하지 못할 수 있음을 알려드립니다.</td>
					</tr>
					<!--마케팅 활용 동의 E-->
					<tr class="last">
						<th scope="row" class="last">프로모션 코드</th>
                        <td class="last"><input type="text" id="joinCd" name="joinCd" class="uiform text" maxlength="60" autocomplete="off" style="width:130px;text-transform: uppercase;">&nbsp; <em class="btnPwHelp"><span>이벤트 참여 시 제공받은 코드를 입력해주시기 바랍니다. </span></em></td>
                        </tr>
                   
                   
                   </tbody></table>
				
				<div class="btnList">
						<a href="javascript:saveMbrJoinForm();" class="btnChange"><span>수정</span></a>
						<a href="/hotel/memSetPwCnfm" class="btnCancel"><span>취소</span></a>
				</div>
			</div>
		</div>
		</form><div id="mbrJoinLayer"></div></div>

		</div>
	
	</div>
<%@ include file="common/main_footer.jsp" %>