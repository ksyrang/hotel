/*
 * ---------------------------------------------------------------------------------------------
 * 객실/패키지/MICE 예약
 * ---------------------------------------------------------------------------------------------
 */

/*
 * ---------------------------------------------------------------------------------------------
 * 성인수, 어린이수 selectbox 옵션 셋팅
 * ---------------------------------------------------------------------------------------------
 */
var webDomain = "";
var stayDomain = "";
var monoDomain = "";
var msgFlag = false;
$(window).load(function(){
	webDomain = $.trim($("#webDomain").text());
	stayDomain = $.trim($("#stayDomain").text());
	monoDomain = $.trim($("#monogramDomain").text());
});

function setGuestCntOpt(type, hotlId) {
	
	var roomCnt  = $("#roomCnt").val();
	var adltCnt = $("#adltCnt").val();
	var chldCnt = $("#chldCnt").val();
	var grRblokId = $("#grRblokId").val();
	var roomCd = $("#roomCd").val();
	
	if(roomCnt != '') {
		
		var param = {'type':type, 
	               	 'hotlId':hotlId,
	               	 'roomCnt':roomCnt,
	               	 'adltCnt':adltCnt,
	               	 'chldCnt':chldCnt,
	               	 'grRblokId':grRblokId,
	               	 'roomCd':roomCd};
		$.ajax({
			  url: URL_PREFIX + "/resv/rpm/memListGuestCntOpt.do",
			  cache: false,
			  type: "POST",
			  data:"data="+encodeURIComponent(JSON.stringify(param))
			}).done(function( html ) {
				
				$("#guestCntOpt").empty();
			  	$("#guestCntOpt").html(html);

			  	$("select").not("#hotlId_selection").uniform();
			  	
				// 예약화면 객실수 정보 표시
				setRoomCntInfo();
				
				$("#coporateCd").focus();
			}).fail(function(jqXHR, textStatus) {
				  alert( "setGuestCntOpt Request failed: " + textStatus );
			}); // end of ajax
			
	}
	
}

/**
 * 숫자 콤마추가
 * @param price
 * ex) 호출 fncAddComma(1234);
 * ex) 반환 1,234
 * @returns
 */
function fncAddComma(price){
	return price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
}

/*
 * ---------------------------------------------------------------------------------------------
 * 객실/패키지/MICE 예약
 * ---------------------------------------------------------------------------------------------
 */

/*
 * ---------------------------------------------------------------------------------------------
 * 성인수, 어린이수 selectbox 옵션 셋팅
 * ---------------------------------------------------------------------------------------------
 */
function setGuestCntOpt2(type, hotlId) {
	
	var roomCnt  = $("#roomCnt").val();
	var adltCnt = $("#adltCnt").val();
	var chldCnt = $("#chldCnt").val();
	var grRblokId = $("#grRblokId").val();
	var roomCd = $("#roomCd").val();
	
	if(roomCnt != '') {
		
		var param = {'type':type, 
				               'hotlId':hotlId,
							   'roomCnt':roomCnt,
							   'adltCnt':adltCnt,
							   'chldCnt':chldCnt,
							   'grRblokId':grRblokId,
							   'roomCd':roomCd};
		$.ajax({
			  url: URL_PREFIX + "/resv/rpm/memListGuestCntOpt.do",
			  cache: false,
			  type: "POST",
			  data:"data="+encodeURIComponent(JSON.stringify(param))
			}).done(function( html ) {
				
				//alert(html);
				$("#guestCntOpt").empty();
			  	$("#guestCntOpt").html(html);

			  	$("select").uniform();
			  	
				// 예약화면 객실수 정보 표시
				setRoomCntInfo();
				
				if($("#roomCnt").size() > 0) {
					$("#roomCnt:eq(0)").focus();
				}
				
			}).fail(function(jqXHR, textStatus) {
				  alert( "setGuestCntOpt Request failed: " + textStatus );
			}); // end of ajax
			
	}
	
}

/*
 * ---------------------------------------------------------------------------------------------
 * 성인수, 어린이수 selectbox 옵션 셋팅 - setstep1용
 * ---------------------------------------------------------------------------------------------
 */
function setGuestCntOpt3(type, hotlId) {
	
	var roomCnt  = $("#roomCnt").val();
	var adltCnt = $("#adltCnt").val();
	var chldCnt = $("#chldCnt").val();
	var grRblokId = $("#grRblokId").val();
	var roomCd = $("#roomCd").val();
	
	type = "";
	hotlId = "";
	roomCnt = "1";
	adltCnt = "";
	chldCnt = "";
	grRblokId = "";
	roomCd = "";
	
	if(roomCnt != '') {
		var param = {'type':type, 
				               'hotlId':hotlId,
							   'roomCnt':roomCnt,
							   'adltCnt':adltCnt,
							   'chldCnt':chldCnt,
							   'grRblokId':grRblokId,
							   'roomCd':roomCd};
		
		$.ajax({
			  url: URL_PREFIX + "/resv/rpm/memListGuestCntOpt.do",
			  cache: false,
			  type: "POST",
			  data:"data="+encodeURIComponent(JSON.stringify(param))
			}).done(function( html ) {
				
				$("#guestCntOpt").empty();
			  	$("#guestCntOpt").html(html);

			  	$("select").uniform();
			  	
				// 예약화면 객실수 정보 표시
				setRoomCntInfo();
				
				$("#tmpCoporateCd").focus();
				
			}).fail(function(jqXHR, textStatus) {
				  alert( "setGuestCntOpt Request failed: " + textStatus );
			}); // end of ajax
			
	}
	
}
function setGuestCntOpt4(type, hotlId) {
	
	var roomCnt  = $("#roomCnt").val();
	var adltCnt = $("#adltCnt").val();
	var chldCnt = $("#chldCnt").val();
	var grRblokId = $("#grRblokId").val();
	var roomCd = $("#roomCd").val();
	
	if(roomCnt != '') {
		var param = {'type':type, 
					 'hotlId':hotlId,
					 'roomCnt':roomCnt,
					 'adltCnt':adltCnt,
					 'chldCnt':chldCnt,
					 'grRblokId':grRblokId,
					 'roomCd':roomCd};
		$.ajax({
			  url: URL_PREFIX + "/resv/rpm/memListGuestCntOpt.do",
			  cache: false,
			  type: "POST",
			  data:"data="+encodeURIComponent(JSON.stringify(param))
			}).done(function( html ) {
				
				$("#guestCntOpt").empty();
			  	$("#guestCntOpt").html(html);

			  	//$("select").uniform();
			  	
				// 예약화면 객실수 정보 표시
				setRoomCntInfo();
				
				if($("#hotlIdSel").size() > 0) {
					$("#hotlIdSel").focus();
				}
				
				
			}).fail(function(jqXHR, textStatus) {
				  alert( "setGuestCntOpt Request failed: " + textStatus );
			}); // end of ajax
			
	}
	
}
/*
 * ---------------------------------------------------------------------------------------------
 * 어린이수 selectbox 옵션 셋팅
 *
 * @param roomIdx 객실index
 * ---------------------------------------------------------------------------------------------
 */
function setChildCntOpt(roomIdx) {
	
	var opt = "";
	var adultCnt = $("select[name='adultCnt"+roomIdx+"']").val();
	
	
	if(adultCnt == '1'){
		for(var i=0;i<3;i++) {
			opt += "<option value='"+i+"'>"+i+"</option>";
		} // end of for
	}else if(adultCnt == '2'){
		 if($("#hotlId").val() == 'S' || $("#hotlId").val() == 'C'){
			for(var i=0;i<3;i++) {
				opt += "<option value='"+i+"'>"+i+"</option>";
			}	 
		 }else{
			for(var i=0;i<2;i++) {
				opt += "<option value='"+i+"'>"+i+"</option>";
			}
		 } 
		
		if('${HOTL_TYPE}' == 'HUB'){
			opt += "<option value='2'>2</option>";
		}
	}else{
		opt += "<option value='0'>0</option>";
	}
	
	$("#childCnt"+roomIdx).empty();
	$("#childCnt"+roomIdx).append(opt);
	
	$("select").not("#hotlId_selection").uniform();
	
	// 예약화면 객실수 정보 표시
	setRoomCntInfo();
	
	if($("select[name='adultCnt"+roomIdx+"']").size() > 0) {
		$("select[name='adultCnt"+roomIdx+"']").focus();
	}
}

function setChildCntOpt2(roomIdx) {
	
	var opt = "";
	var adultCnt = $("select[name='adultCnt"+roomIdx+"']").val();
	
	if('3' == adultCnt) {
		opt += "<option value='0'>0</option>";
	} else if('2' == adultCnt || '1' == adultCnt) {
		
		var _MAX_LOOP_COUNT = 3;
		
		if($("#hotlIdSel").val() == "D" && $("#roomAd1").val() == "2") {
			_MAX_LOOP_COUNT = 2;
		}
		
		for(var i=0;i<_MAX_LOOP_COUNT;i++) {
			opt += "<option value='"+i+"'>"+i+"</option>";
		} // end of for
	} 
	
	$("#roomKid"+roomIdx).empty();
	$("#roomKid"+roomIdx).append(opt);
	
	$("select").uniform();
	
	// 예약화면 객실수 정보 표시
	setRoomCntInfo();
	
	if($("select[name='adultCnt"+roomIdx+"']").size() > 0) {
		$("select[name='adultCnt"+roomIdx+"']:eq(0)").focus();
	}
}

/*
 * ---------------------------------------------------------------------------------------------
 * 예약달력 생성
 *
 * @param today 오늘날짜(yy-mm-dd)
 * ---------------------------------------------------------------------------------------------
 */
function createresvCalendar(options) {
	
	//$("#ckinYmd").val(""); // 체크인날짜
	//$("#ckoutYmd").val("");// 체크아웃 날짜
	//$("#nightCnt").val(""); // 숙박일수
	
	//if($.trim($("#"+options.calDiv).html()) == "") {
		$.resvCalendar.setDefaults(options).createCalendar();
	//}
    
	//$(".calendarReserveBox").show();
} 

/*
 * ---------------------------------------------------------------------------------------------
 * 예약달력 리셋
 *
 * @param today 오늘날짜(yy-mm-dd)
 * ---------------------------------------------------------------------------------------------
 */
function reseteresvCalendar(options) {
	
	$("#ckinYmd").val(""); // 체크인날짜
	$("#ckoutYmd").val("");// 체크아웃 날짜
	$("#nightCnt").val(""); // 숙박일수
	
	$.resvCalendar._resetSelDate();
	
	$.resvCalendar.setDefaults(options).createCalendar();
    
	$(".calendarReserveBox").show();
}

/*
 * ---------------------------------------------------------------------------------------------
 * 예약화면 객실수 정보 표시
 * ---------------------------------------------------------------------------------------------
 */
function setRoomCntInfo() {
	
	// 예약화면이면 객실수 정보 표시
	if($("#roomCntInfo")) {
		
		
		var adltList = [], chldList = [];
		var roomCnt = $("#roomCnt").val();
		var resvTypCd = $("#resvTypCd").val();
		
		$("select[name^='adultCnt']").each(function(index){
			adltList.push($("select[name='adultCnt"+(index+1)+"']").val());
		});
		
		
		//if('M' !=  resvTypCd) {
			$("select[name^='childCnt']").each(function(index){
				chldList.push($("select[name='childCnt"+(index+1)+"']").val());
			});
		//}
		
		var data = { 'resvTypCd':resvTypCd, 
				           'roomCnt':roomCnt, 
				           'adltCnt':adltList.toString(), 
				           'chldCnt':chldList.toString()};
		
		$.ajax({
			  url: URL_PREFIX + "/resv/rpm/memRoomCntInfo.do",
			  cache: false,
			  type: "POST",
			  data:"data="+encodeURIComponent(JSON.stringify(data))
			}).done(function( html ) {
			  	$("#roomCntInfo").html(html);
			  	
			}).fail(function(jqXHR, textStatus) {
				  //alert( "roomCntInfo Request failed: " + textStatus );
			}); // end of ajax
		
	} // end of roomCntInfo
	
}

/*
 * ---------------------------------------------------------------------------------------------
 * 예약정보 초기화
 * ---------------------------------------------------------------------------------------------
 */
function resetResv(step, kind) {
	
	if('A' == kind) {
		$("#ckinYmd").val("");
		$("#ckoutYmd").val("");
		$("#nightCnt").val("");
		$("#roomCnt").val("1");
		$("#adltCnt").val("1");
		$("#chldCnt").val("");
		$("#resvTypCd").val("");
		$("#roomCd").val("");
		$("#spofrId").val("");
		$("#packItNo").val("");
		$("#grRblokId").val("");
		$("#modResvId").val("");
		$("#modMultiResvId").val("");
		$("#coporateCd").val("");
		$("#coporateVal").val("");
	} 
	
	$("#roomCnt").remove();
	$("#adltCnt").remove();
	$("#chldCnt").remove();	

	$('#resvForm').attr('action', URL_PREFIX + "/resv/rpm/memSetStep1.do").submit();
	
}

/*
 * ---------------------------------------------------------------------------------------------
 * 요금상세 레이어 열기
 * ---------------------------------------------------------------------------------------------
 */
function openStayPricDetail(id, isSecured) {
	
	var url = "";
	if(isSecured == 'true') {
		url = URL_PREFIX + "/secu/rpm/stayPricDetail.do";
	} else {
		url = URL_PREFIX + "/resv/rpm/memStayPricDetail.do";
	}
	
	$("#"+id).append('<input type="hidden" id="formId" name="formId" value="'+id+'" />');
	
	
	$.ajax({
		  url: url,
		  cache: false,
		  type: "POST",
		  data:"data="+encodeURIComponent(JSON.stringify($("#"+id).serializeObject()))
		}).done(function( html ) {

			$('body').prepend("<div id='stayPricDetail' style='display:none'></div><div style='display: block;' class='mdScreen'></div>");
			$("#stayPricDetail").html(html);
			$("#stayPricDetail").show();
			$("#stayPricDetail").attr("tabindex",-1).focus();
			
		}).fail(function(jqXHR, textStatus) {
			  alert( "openStayPricDetail Request failed: " + textStatus );
		}); // end of ajax
			
	
}

/*
 * ---------------------------------------------------------------------------------------------
 * 요금상세 레이어 닫기
 * ---------------------------------------------------------------------------------------------
 */
function closeStayPricDetail() {
	
	$("#stayPricDetail").remove();
	$(".mdScreen").remove();
	$("#stayPricDetailBtn").focus();
	$("#formId").remove();
	$("#printYn").remove();
	$("#data").remove();
}

/*
 * ---------------------------------------------------------------------------------------------
 * 달력이동
 * ---------------------------------------------------------------------------------------------
 */
function goResvCalendar(ckinYmd) {
	
	//값이 입력 되지 않으면 진행하지 않는다.
	if(ckinYmd==''){
		return;
	}
	
	//var diffDay = $.resvCalendar._getDiffOfDate($.resvCalendar._defaults.today,ckinYmd);
	//var diffMonth = Math.floor(diffDay/30);
	var today = $.PromotionCalendar._defaults.today;
	var todayYearMonth = today.replace("-", "").substring(0, 6); 
	var ckinYmdYearMonth = ckinYmd.replace("-", "").substring(0, 6);	
	var diffMonth =0;
	
	var fromYear = todayYearMonth.substring(0,4);
	var fromMonth = todayYearMonth.substring(4, 6);
	var toYear = ckinYmdYearMonth.substring(0,4);
	var toMonth = ckinYmdYearMonth.substring(4, 6);
	
	yearDiff = parseInt(toYear) - parseInt(fromYear);
	monthDiff =parseInt(toMonth) - parseInt(fromMonth);
	diffMonth = yearDiff * 12 + monthDiff;
	
	if(diffMonth < 0){
		diffMonth = 0;
	}

	$.PromotionCalendar._refreshCalendar(diffMonth);
}

/**
 * 사용시 from to 순서가 중요함
 * 형태 yyyyMM : String
 * -로 나오는 경우에는 to 과거임
 */
function monthDiff(from, to){
	
	var fromYear = from.substring(0,4);
	var fromMonth = from.substring(4, 6);
	var toYear = to.substring(0,4);
	var toMonth = to.substring(4, 6);
	var diff =0;
	
	try{
		yearDiff = parseInt(toYear) - parseInt(fromYear);
		monthDiff =parseInt(toMonth) - parseInt(fromMonth);
		diff = yearDiff * 12 + monthDiff;
		return diff;
		
	}catch(err){
		//에러가 발생하는 경우
		return 0;
	}
}
/** 
 *  객실 수 및 인원 수 세팅
 * 
 * @returns
 */
 function totlCntCalculator(){
	var totlAdltCnt = 0;
	var totlChldCnt = 0;
	var totlInfantCnt = 0;
	var roomCnt = 0;
	var adltCnt = [],chldCnt = [], infantCnt = [];
	$("#roomCntArea div.add").each(function(){
		adltCnt.push($(this).find(".num:eq(0)").text());
		chldCnt.push($(this).find(".num:eq(1)").text());
		infantCnt.push($(this).find(".num:eq(2)").text());
		
		totlAdltCnt += Number($(this).find(".num:eq(0)").text());
		totlChldCnt += Number($(this).find(".num:eq(1)").text());
		totlInfantCnt += Number($(this).find(".num:eq(2)").text());
		roomCnt++;
	});
	$("#adltCnt").val(adltCnt.toString());
	$("#chldCnt").val(chldCnt.toString());
	$("#infantCnt").val(infantCnt.toString());
	
	$("#roomCnt").val(roomCnt)
	$("#roomCntTxt").text(roomCnt);
	$("#totlAdltCnt").val(totlAdltCnt);
	$("#totlAdltCntTxt").text(totlAdltCnt);
	$("#totlChldCnt").val(totlChldCnt);
	$("#totlChldCntTxt").text(totlChldCnt);
	$("#totlInfantCnt").val(totlInfantCnt);
	$("#totlInfantCntTxt").text(totlInfantCnt);
}
/**
 * 키워드 초기화 버튼
 * 
 */
function keywordClear(localeLang){
	$("#hotlId").val("");
	$("#hotlIdArr").val("");
	$("#searchBarKeyword").val("");
	$("#searchBarKeyword").data("issethtnm", false);
	$("#htBrandList li a").removeClass("on");
	$("#htRegionList li a").removeClass("on");
	
	if($("#hotlIdArr").val() == ""){
		$("#keywordAreaBtn").attr("src","/images/"+localeLang+"/mem/new_2019/reserve_step1_ok_disable.gif");
		$("#keywordAreaBtn").parent().removeClass();
	}else{
		$("#keywordAreaBtn").attr("src","/images/"+localeLang+"/mem/new_2019/reserve_step1_ok.gif");
		$("#keywordAreaBtn").parent().addClass("btnSubmit");
	}
	$("#searchBarKeyword").attr('placeholder', messages["msg.rs.cmm.msg.noselect.hotl"]);
}
/**
 * 비교하기 팝업 띄우기
 * 
 * @returns
 */
function compareProduceView(){
	if($('#comparePop .scroll').data('jsp')){ // 비교하기 레이어팝업 스크롤 초기화
        $('#comparePop .scroll').data('jsp').destroy();
        pc.formEvent.scrollBarJs.init();
    }
	pc.layerPopup.openPop('#comparePop');
}
/**
 * 환율 SELECT 변경 이벤트
 * 
 * @param exchangeRateChange
 * @param rateObj
 * @returns
 */

function exchangeRateChange(rateObj, msgFlagYn){
	
	if(!msgFlag && msgFlagYn == "Y"){
		msgFlag = true;
		alert(messages['javascript.offers.alert.msg']);
	}
	
	var currCd = $(rateObj).val();
	
	$("strong.price").each(function(){
		var exchangePric = $(this).data(currCd.toLowerCase());
		
		if(typeof exchangePric != "undefined"){
			
			var addExt = "";
			
			if($(this).html().indexOf("~") > -1){
				addExt = "&nbsp;~";
			}
			
			if(currCd == "KRW"){
				var won = messages['msg.label.cmm.won']; // 원
				$(this).html(fncAddComma(exchangePric)+ won + addExt);
			}else{
				
				$(this).html(fncAddComma(exchangePric)+ " " + currCd + addExt);
			}
		}
	});
	
	$("span.prodPrice").each(function(){
		
		var exchangePric = $(this).data(currCd.toLowerCase());
		
		if(typeof exchangePric != "undefined"){
			
			var addExt = "";
			
			if($(this).html().indexOf("~") > -1){
				addExt = "nbsp;~";
			}
			
			if(currCd == "KRW"){
				var won = messages['msg.label.cmm.won']; // 원
				$(this).html(fncAddComma(exchangePric)+ won + addExt);
			}else{
				
				$(this).html(fncAddComma(exchangePric) + " " + currCd + addExt);
			}
		}
	});
	
	if($("input:radio[name='selRoom']:checked").length > 0){
		setRoom('0','0','0'
				,$("#resvTypCd").val()
				,$("#roomCd").val()
				,$("#viewCd").val()
				,$("#roomTypCd").val()
				,$("#bedTypCd").val()	
				,$("#ratePlanCode").val()
				,$("#spofrId").val()
				,$("#packItNo").val()
				,$("#choiceRoomClsCd").val()
				,$("#choiceInfantResvYn").val()
				,''
				
		);
		
	}	
}
/**
 * 호텔 리스트 탭 선택 이벤트
 * @param fnTapHotlSelection
 * @param hotlId
 * @returns
 */
function fnTapHotlSelection(hotlId){
	fnHotlIdSelection(hotlId);
	fncSearchResvList('Y');	
}
function fnNearByHotlSelection(hotlId){
	fnHotlIdSelection(hotlId);
	var hotlNmArr = "";
	var onIdx = 0;
	$(".htSearch .htTab li").each(function(idx){
		if($(this).hasClass("on")){
			onIdx = idx;
		}
	});
	if(onIdx == 0){
		$("#htBrandList li").each(function(){
			var htSchId = $(this).data("hotlid");
			if(htSchId == hotlId){
				$(this).find("a").addClass("on");
				hotlNmArr += $(this).find("a").text() + ",";
			}
		});
	}else {
		$("#htRegionList li").each(function(){
			var htSchId = $(this).data("hotlid");
			if(htSchId == hotlId){
				$(this).find("a").addClass("on");
				hotlNmArr += $(this).find("a").text() + ",";
			}
		});	
	}
	hotlNmArr = hotlNmArr.substring(0, hotlNmArr.lastIndexOf(","));
	pc.resvSelHotel.drawSelHtData(hotlNmArr);
	$("#hotlIdArr").val(hotlId);
	
	fncSearchResvList('Y');
}
/**
 * 어린이, 유아가 있을때 뜨는 팝업
 * 
 * @returns
 */
function childInfoPopupOpen(){
	$(".mdScreen").show();
	$("#childInfo").show();
	pc.layerPopup.lockScroll();
	chldInfoFlag = false;
}
/**
 * 모노그램 어린이, 유아가 있을때 뜨는 팝업
 * 
 * @returns
 */
function mgChildInfoPopupOpen(){
	$(".mdScreen").show();
	$("#mgChildInfo").show();
	pc.layerPopup.lockScroll();
	mgChldInfoFlag = false;
}
/**
 * 모노그램 어린이, 유아 팝업 끄기
 * 
 * @returns
 */
function mgChildInfoPopupClose(){
	$(".mdScreen").hide();
	$("#mgChildInfo").hide();
	pc.layerPopup.unLockScroll();
	mgChldInfoFlag = false;
}
/**
 * 어린이, 유아 팝업 끄기
 * 
 * @returns
 */
function childInfoPopupClose(){
	$(".mdScreen").hide();
	$("#childInfo").hide();
	pc.layerPopup.unLockScroll();
	chldInfoFlag = false;
}
/**
 * 
 * 제주 객실 탭 클릭시 팝업
 * @returns
 */
function jejuInfoPopupOpen(){
	$(".mdScreen").show();
	$("#jejuRoomPop").show();
	pc.layerPopup.lockScroll();
	jejuInfoFlag = false;
}
/**
 * 제주 객실 탭 클릭 팝업 끄기
 * 
 * 
 */
function jejuInfoPopupClose(){
	$(".mdScreen").hide();
	$("#jejuRoomPop").hide();
	pc.layerPopup.unLockScroll();
	jejuInfoFlag = false;
}
/**
 * 쌍둥이 상품 띠배너 클릭시 이동 이벤트
 * 
 * @param rewardsMappingId
 * @returns
 */
function goRewardProduct(rewardsMappingId, rewardsMappingUrl){
    if($("#"+rewardsMappingId+"M").length > 0){
        $(".rsvSubTab").find("li a:eq(0)").trigger("click");
        if(!$("#"+rewardsMappingId+"M > .prodDetail > .roomRsv").hasClass("open")){
        	$("#isScrolled").val("true");
            setTimeout(function(){
                $("#"+rewardsMappingId+"M .prodDetail .btnRsv img").trigger("click");
            },500);
        }
        //회원 상품 포커싱
        var imgTop = $("#"+rewardsMappingId+"M").offset().top - 50;
        $('html,body').scrollTop(imgTop);
    }else{
        $(location).attr("href", rewardsMappingUrl);
    }
}

/**
 *  호텔 리스트 클리어 
 */
function hotlListClear(){
	$("#htBrandList dl").each(function(){
		var cnt = $(this).find("dd > ul > li").length;
		if(cnt == 0){
			$(this).remove();
		}
	});
	
	$("#htRegionList dl").each(function(){
		var cnt = $(this).find("dd > ul > li").length;
		if(cnt == 0){
			$(this).remove();
		}
	});
}
/**
 * 
 * 호텔 아이디 변경시 이벤트
 */
function hotlIdChangeTrigger(){
	$('#ckinYmd').trigger('change');
}
/**
 * 비교하기 팝업 띄우기
 * 
 * @returns
 */
function openComparePop(){
	var compareCnt = $("#cpNum").text();
	if(Number(compareCnt) > 1){
		pc.layerPopup.openPop('#comparePop');
	}
}

function setPackOpt(packTyp, roomIndex, spofrId, packItNo, ratePlanCode, infantResvYn, rewardsMappingYn, rewardsMappingId, rewardsMappingListDc, rewardsMappingUrl, langTypCd, localeLang){

	var resvTypCd = "P";
	var isCall = true;
	
	if(packTyp == "P"){
		isCall = $("#packOpt"+roomIndex).find("ul").length > 0 ? false : true;
	}else if(packTyp == "M"){
		isCall = $("#mbrOpt"+roomIndex).find("ul").length > 0 ? false : true;
	}
	
	var currencyCd = $("#currencyCd").val();
	
	if(isCall){
		var param = {
				'hotlId'   :$('#hotlId').val(),					
				'resvTypCd':resvTypCd, 
				'roomIndex':roomIndex, 
				'spofrId':spofrId, 
				'packItNo':packItNo,
				'ratePlanCode':ratePlanCode,
				'currencyCd'	: 	$('#currencyCd').val(),
				'roomCnt':$("#roomCnt").val(),
				'adltCnt':$("#adltCnt").val(),
				'ckinYmd':$("#ckinYmd").val(), 
				'ckoutYmd':$("#ckoutYmd").val(),
				'chldCnt':$("#chldCnt").val(),
				'infantCnt':$("#infantCnt").val(),
				'totlAdltCnt'	:$('#totlAdltCnt'	).val(),
				'totlChldCnt'	:$('#totlChldCnt'	).val(),
				'totlInfantCnt'	:$('#totlInfantCnt'	).val()
			};
		
		$.ajax({
			
			url: $("#URL_PREFIX").val()+"/resv/rpm/memSetPackOpt.do",
			cache: false,
			type: "POST",
			data:"data="+JSON.stringify(param),
			beforeSend : function(){
				$('.opacity').show();
				pc.layerPopup.lockScroll();
				$('.re-loader').show();
			},
			success : function(html){
				var packInfoHtml = "";
				var jsonObj = jQuery.parseJSON(html);
				
				if(jsonObj.model.roomViewCdList.length > 0){
					var packSeq = 0;
					if(rewardsMappingYn == "Y"){
						packInfoHtml += "	<div class=\"rewardsBar\">";
						packInfoHtml += "		<div>";
						packInfoHtml += "			<strong>" + rewardsMappingListDc +"</strong> ";
						packInfoHtml += "		</div>";
						packInfoHtml += "		<a href=\"#none\" class=\"btnLink\" onclick=\"goRewardProduct('"+rewardsMappingId+"', '"+rewardsMappingUrl+"')\">"+messages['msg.resv.shortcut.msg']+"</a>"; /*바로가기*/
						packInfoHtml += "	</div>";
					}
					packInfoHtml += "<ul class=\"tglType1 roomsType\">";
					for(var i = 0; i < jsonObj.model.roomViewCdList.length; i++){
						var roomViewObj = jsonObj.model.roomViewCdList[i];
						packInfoHtml += "	<li class=\"active\">";
						packInfoHtml += "		<dl>";
						packInfoHtml += "			<dt class=\"tgTit\">";
						packInfoHtml += "				<strong>["+roomViewObj.roomClsNm+"]" + roomViewObj.roomNm+"</strong>";
						packInfoHtml += "				<a href=\"#none\" class=\"tgBtn\"><span class=\"hidden\">"+messages['msg.resv.room.img.view']+"</span></a>"; /*객실보기*/
						packInfoHtml += "			</dt>";
						packInfoHtml += "			<dd>";
						packInfoHtml += "				<div class=\"tgCon\">";
						packInfoHtml += "					<ul class=\"roomsList\">";
						var roomCdVoList = roomViewObj.roomCdVoList;
						
						for(var j = 0; j < roomCdVoList.length; j++){
								
							var roomCdVo = roomCdVoList[j];
							
							var bedViewNm = "["+roomViewObj.roomClsNm+"]" + roomViewObj.roomNm;
							
							var roomInfoKey = "ACCMO_INDEX-accmo"+roomCdVo.roomCd+"-"+langTypCd+"-208-VALUE";
							var roomInfo = jsonObj.model[roomInfoKey];
							
							var viewCd = typeof roomCdVo.viewCd == "undefined" ? "" : roomCdVo.viewCd;
							var viewNm = jsonObj.model.HOTL_ID != "S" && jsonObj.model.HOTL_ID != "JEJSS" ? roomCdVo.viewNm+"/"+roomCdVo.bedTypNm : roomCdVo.bedTypNm;
							var label = "radio_"+jsonObj.model.resvTypCd+"_"+roomCdVo.roomCd+"_"+viewCd+"_"+roomCdVo.roomTypCd+"_"+roomCdVo.bedTypCd+"_"+jsonObj.model.packItNo;
							var won = messages["msg.label.cmm.won"];
							var dong = messages["msg.label.cmm.dong"];
							bedViewNm = bedViewNm + "&nbsp;" + viewNm;
							
							var bedTyp = "";
								
								//침대 타입별 아이콘 변경
								if(roomCdVo.bedTypCd == "TW"){ 			// 트윈
									bedTyp = "Twin";
								}else if(roomCdVo.bedTypCd == "DD"){ 	// 더블
									bedTyp = "double";
								}else if(roomCdVo.bedTypCd == "HW"){ 	// 패밀리 트윈
									bedTyp = "familyTwin";
								}else if(roomCdVo.bedTypCd == "STP"){	// 트리플
									bedTyp = "triple";
								}else if(roomCdVo.bedTypCd == "SFD"){ 	// 패밀리 더블
									bedTyp = "familyDouble";
								}else if(roomCdVo.bedTypCd == "TWTD"){	// 트윈 2 더블 
									bedTyp = "familyDouble";
								}else if(roomCdVo.bedTypCd == "TBDS"){	// 2베드룸 (더블, 싱글)
									bedTyp = "bed2Room";
								}else if(roomCdVo.bedTypCd == "TBDD"){	// 2베드룸 (더블, 더블)
									bedTyp = "bed2Room2";
								}else if(roomCdVo.bedTypCd == "FB"){	// 4 베드룸 
									bedTyp = "bed4Room";
								}
								
								packInfoHtml += "		<span style=\"display:none;\">"+roomInfo+"</span>";
								packInfoHtml += "		<li>";
								packInfoHtml += "			<div class=\"roomCk\">";
								packInfoHtml += "				<div class=\"rdForm\">";
								packInfoHtml += "					<input type=\"radio\" id=\""+label+"\" name=\"selRoom\" class=\"tgBtn\" onclick=\"setRoom('','','0','"+jsonObj.model.resvTypCd+"','"+roomCdVo.roomCd+"','"+viewCd+"','"+roomCdVo.roomTypCd+"','"+roomCdVo.bedTypCd+"','"+jsonObj.model.ratePlanCode+"','"+jsonObj.model.spofrId+"','"+jsonObj.model.packItNo+"','"+roomCdVo.roomClsCd+"','"+roomCdVo.infantResvYn+"','"+bedViewNm+"','"+packTyp+"');\">";
								packInfoHtml += "					<label for=\""+label+"\"><span class=\""+bedTyp+"\">"+viewNm+"</span></label>";
								packInfoHtml += "				</div>";

								var cpId = packTyp+"_"+Math.floor(Math.random() * 999999999);
								
								packInfoHtml += "				<a href=\"#none\" class=\"btnCompare\" id=\""+cpId+"\" onclick=\"compareProduce('"+packTyp+"', '"+cpId+"', '"+jsonObj.model.HOTL_ID+"','"+roomCdVo.roomCd+"','"+viewCd+"','"+roomCdVo.roomTypCd+"','"+roomCdVo.bedTypCd+"','"+jsonObj.model.ratePlanCode+"','"+jsonObj.model.spofrId+"','"+jsonObj.model.packItNo+"','"+roomCdVo.roomClsCd+"', '"+roomCdVo.infantResvYn+"', '"+localeLang+"');\">"+messages['msg.resv.add.comparison.msg']+"</a>";	/*비교함 담기*/
								
								packInfoHtml += "				<div class=\"roomsPrice\">";
								packInfoHtml += "					<strong class=\"price\" ";
								
								for(var z = 0; z < roomCdVo.exchangeRateList.length; z++){
										var rateObj = roomCdVo.exchangeRateList[z];
										packInfoHtml += "data-"+rateObj.currCd+"=\""+rateObj.exchangePric+"\"";
								}
								
								if($("#hotlId").val() == "VDNSM"){
									packInfoHtml += "					>"+fncAddComma(roomCdVo.minPric) + " " + jsonObj.model.currencyCd + "</strong>";
								}else{
									packInfoHtml += "					>"+fncAddComma(roomCdVo.minPric)+ won +"</strong>";
								}
								packInfoHtml += "					<a href=\"#none\" class=\"btnOther\" onclick=\"anotherDayPrice('"+ratePlanCode+"','"+roomCdVo.roomTypCd+"','"+jsonObj.model.resvTypCd+"','N');\">"+messages['msg.resv.other.date.msg']+"</a>"; /*다른 날짜 요금*/
								packInfoHtml += "				</div>";
								packInfoHtml += "			</div>";
								packInfoHtml += "		</li>";
								
								packSeq++;
							}
						packInfoHtml += "					</ul>";
						packInfoHtml += "				</div>";
						packInfoHtml += "			</dd>";
						packInfoHtml += "		</dl>";
						packInfoHtml += "	</li>";
					}
					packInfoHtml += "</ul>";
					packInfoHtml += "<a href=\"#none\" class=\"btnRsv close\"><img src=\"/images/"+localeLang+"/mem/new_2019/reserve_step1_rsvclose.gif\" alt=\"닫기\"></a>";
					
					if(packTyp == "P"){
						$("#packOpt"+roomIndex).html(packInfoHtml);
						$("#packOpt"+roomIndex).show();
					}else if(packTyp == "M"){
						$("#mbrOpt"+roomIndex).html(packInfoHtml);
						$("#mbrOpt"+roomIndex).show();	
					}
					
					$("select,input").not(".css-checkbox").uniform();
					$('.opacity').hide();
					pc.layerPopup.unLockScroll();
					$('.re-loader').hide();
					
					var isScrolled = $("#isScrolled").val();
					var targetObj = $("#"+spofrId+"M");
					
					if(targetObj.length > 0 && isScrolled == "true"){
						var offset = $("#"+spofrId+"M").offset();
						$('html').animate({scrollTop : offset.top}, 1000);
						$("#isScrolled").val("");
					}
				}
			},
			error : function(jqxhr, textStatus, error){
				alert( "setPackOpt Request failed: " + error );
				$('.opacity').hide();
				pc.layerPopup.unLockScroll();
				$('.re-loader').hide();
			}
		});
	}
}

function setRoomOpt(roomIndex, roomClsCd, roomCd, ratePlanCode, infantResvYn, roomImg, langTypCd, localeLang){
	
	if('S' == jQuery("#hotlId").val() && ('EXE' == roomClsCd || 'SUT' == roomClsCd) && parseInt($("#chldCnt").val()) >= 1) {
		
		alert(messages['msg.rs.efl.no.reservation2']);/*Executive Floor 및 Suite 객실은 어린이 및 유아 동반 투숙이 안되는 점 양해 부탁 드립니다.*/
		$(".room").find(".btnRsv:eq("+roomIndex+")").toggleClass("on");
		return;
	}
	
	if( 'N' == infantResvYn && parseInt($("#infantCnt").val()) >= 1 ) {
		alert(messages['msg.rs.efl.no.reservation2']);/*Executive Floor 및 Suite 객실은 어린이 및 유아 동반 투숙이 안되는 점 양해 부탁 드립니다.*/
		$(".room").find(".btnRsv:eq("+roomIndex+")").toggleClass("on");
		return;
	}

	var isCall = jQuery("#roomOpt"+roomIndex).find("ul").length > 0 ? false : true;
	
	if(isCall){
		var resvTypCd = "";
		var spofrId = "";
		var packItNo = "";

		if($("#resvTypCd").val() == '' || $("#resvTypCd").val() == 'P'){
				resvTypCd = "R";
		}else{
			resvTypCd = $("#resvTypCd").val();
		}
		var currencyCd = $("#currencyCd"	).val();
		var param = {
				'hotlId'		:	$("#hotlId").val(),
				'resvTypCd'		:	resvTypCd, 
				'roomIndex'		:	roomIndex, 
				'spofrId'		:	spofrId, 
				'packItNo'		:	packItNo,
				'roomCd'		:	roomCd,
				'roomClsCd'		:	roomClsCd,
				'ratePlanCode'	:	ratePlanCode,
				'currencyCd'	: 	$("#currencyCd").val(),
				'ckinYmd'		:   $("#ckinYmd").val(), 
				'ckoutYmd'		:   $("#ckoutYmd").val(),
				'grEvntId'		:   $("#grEvntId").val(),
				'grRblokId'		:   $("#grRblokId").val(),
				'roomCnt'		:   $("#roomCnt").val(),
				'adltCnt'		:   $("#adltCnt").val(),
				'chldCnt'		:   $("#chldCnt").val(),
				'coporateCd'	:   $("#coporateCd").val(),
				'infantCnt'		:   $("#infantCnt").val(),
				'coporateVal'	:   $("#coporateVal").val(),
				'totlAdltCnt'	:   $("#totlAdltCnt").val(),
				'totlChldCnt'	:   $("#totlChldCnt").val(),
				'totlInfantCnt'	:   $("#totlInfantCnt").val(),
				'nightCnt'		:   $("#nightCnt").val()
			};
		var ajaxUrl = "/seoul/resv/rpm/memSetRoomOpt.do";
		
		$.ajax({
			url: ajaxUrl,
			cache: false,
			type: "POST",
			data:"data="+JSON.stringify(param),
			beforeSend : function(){
					$('.opacity').show();
					pc.layerPopup.lockScroll();
					$('.re-loader').show();
			},
			success : function(html){
				var roomInfoHtml = "";
				var jsonObj = jQuery.parseJSON(html);
				var roomBenefit = jsonObj.model.roomBenefit;
				
				if(jsonObj.model.roomViewCdList.length > 0){
					roomInfoHtml += "<ul class=\"tglType1 roomsType\">";
					roomInfoHtml += "	<li class=\"active\">";
					roomInfoHtml += "		<dl>";
					roomInfoHtml += "			<dd>";
					roomInfoHtml += "				<div class=\"tgCon\">";
					roomInfoHtml += "					<ul class=\"roomsList\">";
					
					roomInfoHtml += "<span style='display:none'>"+roomBenefit+"</span>";
					
					for(var i = 0; i < jsonObj.model.roomViewCdList.length; i++){
						
						var roomVO = jsonObj.model.roomViewCdList[i];
						
						var viewCd = typeof roomVO.viewCd == "undefined" ? "" : roomVO.viewCd;
						var viewNm = jsonObj.model.HOTL_ID != "S" && jsonObj.model.HOTL_ID != "JEJSS" ? roomVO.viewNm+"/"+roomVO.bedTypNm : roomVO.bedTypNm;
						var label = "radio_"+jsonObj.model.resvTypCd+"_"+roomVO.roomCd+"_"+viewCd+"_"+roomVO.roomTypCd+"_"+roomVO.bedTypCd;
						var won = messages['msg.label.cmm.won'];
						var dong = messages['msg.label.cmm.dong'];
						var bedTyp = "";
						
						var bedViewNm = jsonObj.model.roomViewCdList[i].roomNm + ",&nbsp;"+ viewNm;
						
						//침대 타입별 아이콘 변경
						if(roomVO.bedTypCd == "TW"){ // 트윈
							bedTyp = "Twin";
						}else if(roomVO.bedTypCd == "DD"){ // 더블
							bedTyp = "double";
						}else if(roomVO.bedTypCd == "HW"){ // 패밀리 트윈
							bedTyp = "familyTwin";
						}else if(roomVO.bedTypCd == "STP"){// 트리플
							bedTyp = "triple";
						}else if(roomVO.bedTypCd == "SFD"){ // 패밀리 더블
							bedTyp = "familyDouble";
						}else if(roomVO.bedTypCd == "TWTD"){	// 트윈 2 더블 
							bedTyp = "familyDouble";
						}else if(roomVO.bedTypCd == "TBDS"){	// 2베드룸 (더블, 싱글)
							bedTyp = "bed2Room";
						}else if(roomVO.bedTypCd == "TBDD"){	// 2베드룸 (더블, 더블)
							bedTyp = "bed2Room2";
						}else if(roomVO.bedTypCd == "FB"){	// 4 베드룸 
							bedTyp = "bed4Room";
						}
						
						roomInfoHtml += "		<li>";
						roomInfoHtml += "			<div class=\"roomCk\">";
						roomInfoHtml += "				<div class=\"rdForm\">";
						roomInfoHtml += "					<input type=\"radio\" name=\"selRoom\" class=\"tgBtn\" id=\""+label+"\" onclick=\"setRoom('"+roomIndex+"','"+i+"','"+roomVO.mappingCnt+"','"+jsonObj.model.resvTypCd+"','"+roomVO.roomCd+"','"+viewCd+"','"+roomVO.roomTypCd+"','"+roomVO.bedTypCd+"','"+jsonObj.model.ratePlanCode+"','"+jsonObj.model.spofrId+"','"+jsonObj.model.packItNo+"','"+roomVO.roomClsCd+"','"+roomVO.infantResvYn+"','"+bedViewNm+"','');\">";
						roomInfoHtml += "					<label for=\""+label+"\"><span class=\""+bedTyp+"\">"+viewNm+"</span></label>";
						roomInfoHtml += "				</div>";
						
						var cpId = jsonObj.model.resvTypCd+"_"+Math.floor(Math.random() * 999999999);
						
						roomInfoHtml += "				<a href=\"#none\" class=\"btnCompare\" id=\""+cpId+"\" onclick=\"compareProduce('"+jsonObj.model.resvTypCd+"', '"+cpId+"', '"+jsonObj.model.HOTL_ID+"','"+roomVO.roomCd+"','"+viewCd+"','"+roomVO.roomTypCd+"','"+roomVO.bedTypCd+"','"+jsonObj.model.ratePlanCode+"','"+jsonObj.model.spofrId+"','"+jsonObj.model.packItNo+"','"+roomVO.roomClsCd+"', '"+roomVO.infantResvYn+"', '"+localeLang+"');\">"+messages['msg.resv.add.comparison.msg']+"</a>";
						roomInfoHtml += "				<div class=\"roomsPrice\">";
						roomInfoHtml += "<strong class=\"price\"";
						
						for(var z = 0; z < roomVO.exchangeRateList.length; z++){
							var rateObj = roomVO.exchangeRateList[z];
							roomInfoHtml += "data-"+rateObj.currCd+"=\""+rateObj.exchangePric+"\"";
						}
						
						if($("#hotlId").val() == "VDNSM"){
							roomInfoHtml += "					>"+fncAddComma(roomVO.minPric) + " " + jsonObj.model.currencyCd + "</strong>";
						}else{
							roomInfoHtml += "					>"+fncAddComma(roomVO.minPric)+won+"</strong>";
						}
						roomInfoHtml += "					<a href=\"#none\" class=\"btnOther\" onclick=\"anotherDayPrice('','"+roomVO.roomTypCd+"','"+jsonObj.model.resvTypCd+"','N');\">"+messages['msg.resv.other.date.msg']+"</a>";/*다른 날짜 요금*/
						roomInfoHtml += "				</div>";
						roomInfoHtml += "			</div>";
						roomInfoHtml += "			<div class=\"tgCon roomRelation\" id=\"related_"+roomIndex+"_"+i+"\" style\"display:none;\">";
						roomInfoHtml += "			</div>";
						roomInfoHtml += "		</li>";
						
					}
					roomInfoHtml += "</ul>";
					roomInfoHtml += "<a href=\"#none\" class=\"btnRsv close\"><img src=\"/images/"+localeLang+"/mem/new_2019/reserve_step1_rsvclose.gif\" alt=\"닫기\"></a>";
					$("#roomOpt"+roomIndex).html(roomInfoHtml);
					$("#roomOpt"+roomIndex).show();
					$("select,input").not(".css-checkbox").uniform();						
					$('.opacity').hide();
					pc.layerPopup.unLockScroll();
					$('.re-loader').hide();
				}
			},
			error : function(jqxhr, textStatus, error){
				alert( "setRoomOpt Request failed: " + error);
				$('.opacity').hide();
				pc.layerPopup.unLockScroll();
				$('.re-loader').hide();
			}
		});
	}
}

function promotionChk(hotlId, btnChk, isSiteMap, webdomain, staydomain){
	
	if( $("#coporateCd").val() == ""){
		alert(messages["msg.cmm.required"].replaceMsg([messages['msg.label.cmm.mice.type']]));/*그룹예약타입(은)는 필수입력항목입니다.*/
		return;
	}
	
	if( $("#coporateVal").val() == ""){
		alert(messages["msg.cmm.required"].replaceMsg([messages['msg.label.cmm.mice.id']]));/*그룹예약코드(은)는 필수입력항목입니다.*/
		return;
	}
	
	var coprateVal = $.trim($("#coporateVal").val());
	
	var param = encodeURIComponent(
		JSON.stringify(
			{
				'hotlId' : hotlId
				, 'coporateCd'	: $("#coporateCd").val()
				, 'coporateVal'	: coprateVal
				, 'isSiteMap'	: isSiteMap
			}
		)
	);
	
	var urlPath = $("#URL_PREFIX").val()+"/resv/rpm/promotionChk.do";
	$(".btnClear").remove();
	$(".noti2").remove();
	$.ajax({
		url: urlPath,
		data:"data="+param,
		cache: false,
		type: "POST",
		async: false,
		success : function(json){
			var data = jQuery.parseJSON(json);
			var resultFlag = data.model.FLAG;
			
			if(resultFlag =='00'){
				
				$(".btnInpSch").remove();
				var grEvntBList = data.model.grEvntVo;
				if(grEvntBList.length == 0){
					alert(messages["msg.cmm.resv.avail.code.not.found"]);/*잘못된 코드입니다.*/
					return false;
				}
				if(btnChk == "Y"){
					var btnMsg = messages["msg.resv.promo.chk.msg1"]+"\n"+messages["msg.resv.promo.chk.msg2"];
					alert(btnMsg);
					/*프로모션 코드를 확인했습니다. 호텔, 날짜, 인원을 선택해주세요.*/
				}
				
				if(grEvntBList.length == 1){
					for(var i = 0;i < grEvntBList.length; i++){
						var grEvntB = grEvntBList[i];
						
						var promoHtml = "<div class=\"editWrap\">";
							promoHtml += "	<dl>";
							if(typeof grEvntB.grEvntNm != "undefined"){
								promoHtml += 			"<dt class=\"editpromoTit\">"+grEvntB.grEvntNm+"</dt>";		
							}else{
								promoHtml += "		<dt class=\"editpromoTit\"></dt>";	
							}
							promoHtml += "		<dd>";
							promoHtml += "			<ul class=\"editCont\">";
							if(typeof grEvntB.grEvntDesc != "undefined"){
								promoHtml += 				grEvntB.grEvntDesc.replace(/CRLF/gi,'<br>');
							}
							promoHtml += "			</ul>";
							promoHtml += "		</dd>";
							promoHtml += "	</dl>";
							promoHtml += "</div>";
							
						var imgHtml = "";
						
						if(grEvntB.hotlId == 'MBR'){
							imgHtml += "<img alt=\""+grEvntB.grEvntNm+"\" src=\"/images/upload/"+grEvntB.evntLogoImgPath+"\" style=\"width: 240px; height: 120px;\"/>";
						}else if(grEvntB.hotlId == 'S' || grEvntB.hotlId == 'C' || grEvntB.hotlId == 'VDNSM'){
							imgHtml += "<img alt=\""+grEvntB.grEvntNm+"\" src=\""+webdomain+"images/upload/"+grEvntB.evntLogoImgPath+"\" style=\"width: 240px; height: 120px;\"/>";
						}else{
							imgHtml += "<img alt=\""+grEvntB.grEvntNm+"\" src=\""+staydomain+"images/upload/"+grEvntB.evntLogoImgPath+"\" style=\"width: 240px; height: 120px;\"/>";
						}
					
						//다중 객실 예약 가능 여부 확인 후 객실 추가 삭제
						if(grEvntB.resvTarget == "S"){
							$("#roomCntArea .room2").hide();	
							$("#roomCntArea .room3").hide();
							$("#roomCntArea .notiList1").hide();
							$("#roomCntArea .r_number").removeClass("addRoom2");
							$("#roomCntArea .r_number").removeClass("addRoom3");
							
							$("#roomCntArea .con").each(function(idx){
								if(idx > 0){
									$(this).removeClass("add");
								}
							});
						}else{
							$("#roomCntArea .room2").show();	
							$("#roomCntArea .room3").show();
							$("#roomCntArea .notiList1").show();
						}
						totlCntCalculator();							
						$("#hotlId").val(grEvntB.hotlId);
						$("#hotlIdArr").val(grEvntB.hotlId);
						$(".promoTxt").html(promoHtml);
						$(".promoCont > .editImg").html(imgHtml);
						$("#grEvntId").val(grEvntB.grEvntId);
						$("#searchBarKeyword").val(data.model.hotl_nm);
						if(hotlId == ""){
							$("#searchBarKeyword").prop("disabled",true);
						}
						$(".rsvSchHotel").removeClass("disabled");
						$("#coporateCd").prop("disabled", true);
						$("#coporateVal").prop("disabled", true);
						$(".newpromotionWrap > .promoSch > .btnList").remove();
						fnHotlIdSelection(grEvntB.hotlId);
					}
				}else{
					$(".rsvSchHotel").removeClass("disabled");
					$(".newpromotionWrap > .promoSch > .btnList").remove();
					$("#searchBarKeyword").trigger("keyup");
					$("#searchBarKeyword").prop("readonly",true);
					$("#searchBarKeyword").off("keyup");
					//$("#searchBarKeyword").off("click");
					$("#coporateCd").prop("disabled", true);
					$("#coporateVal").prop("disabled", true);
				}
			}else if(resultFlag == '01'){
				alert(data.model.MSG);
			}else if(resultFlag =='02'){
				alert(messages["msg.cmm.resv.avail.code.not.found"]);
			}else if(resultFlag =='04'){
				alert(messages["msg.rs.ows.service.stop.msg"]);
				$(location).attr("href","/index.do");
			}
			$('.opacity').hide();
			pc.layerPopup.unLockScroll();
			$('.re-loader').hide();
		},
		error : function(jqxhr, textStatus, error){
			alert("promotionChk request fail : " + error);
			$(location).attr("href","/index.do");
		}
	});
}

function anotherDayPrice(ratePlanCd ,roomCd, resvTypCd, weekCd){ /** 다른 날짜 검색  */
	var b,c,d;	
	
	if(resvTypCd == ""){
		resvTypCd = $("#resvTypCdTmp").val();
	}else{
		$('#roomTypCdTmp').val("");
		$('#ratePlanCdTmp').val("");
		$('#resvTypCdTmp').val("");
		$('#startDate').val("");
		$('#endDate').val("");
	}
	
	if(resvTypCd == "R"){
		if(roomCd == ""){
			roomCd = $('#roomTypCdTmp').val();
		}else{
			$('#roomTypCdTmp').val(roomCd);
		}
	}else if(resvTypCd == "P"){
		if(ratePlanCd == "" || roomCd == ""){
			roomCd = $('#roomTypCdTmp').val();
			ratePlanCd = $('#ratePlanCdTmp').val();
		}else{
			$('#ratePlanCdTmp').val(ratePlanCd);
			$('#roomTypCdTmp').val(roomCd);
		}
	}
	if($('#startDate').val() == "" && $('#endDate').val() == ""){
		$('#endDate').val($("#ckinYmd").val());
	}else{
		if(weekCd == "P"){
			b = $('#startDate').val();
			c = new Date(b),
			d = c.getDate();
			c.setDate(d-1);
			
			d=10>c.getMonth()+1?"0"+(c.getMonth()+1):c.getMonth()+1;
			var e=10>c.getDate()?"0"+c.getDate():c.getDate();
			
			c=c.getFullYear()+"-"+d+"-"+e;
			$('#startDate').val(c);
		}else if(weekCd =="N"){
			b = $('#endDate').val();
			c = new Date(b),
			d = c.getDate();
			c.setDate(d+1);
			
			d=10>c.getMonth()+1?"0"+(c.getMonth()+1):c.getMonth()+1;
			var e=10>c.getDate()?"0"+c.getDate():c.getDate();
			
			c=c.getFullYear()+"-"+d+"-"+e;
			$('#endDate').val(c);
		}
	}
	if(weekCd == "P"){
		b = $('#startDate').val();
		c = new Date(b),
		d = c.getDate();
		c.setDate(d-6); //이전 주
		d=10>c.getMonth()+1?"0"+(c.getMonth()+1):c.getMonth()+1;
		var e=10>c.getDate()?"0"+c.getDate():c.getDate();
		c=c.getFullYear()+"-"+d+"-"+e;
		startDate = c;
		endDate = b;
	}else if(weekCd =="N"){
		b = $('#endDate').val();
		c = new Date(b),
		d = c.getDate();
		c.setDate(d+6); //다음 주
		d=10>c.getMonth()+1?"0"+(c.getMonth()+1):c.getMonth()+1;
		var e=10>c.getDate()?"0"+c.getDate():c.getDate();
		c=c.getFullYear()+"-"+d+"-"+e;
		startDate = b;
		endDate = c;
	}
	var ckinday = $("#ckinYmd").val(); /** 체크인 날짜 1달 후 **/
	var ckinYmd1 = new Date(ckinday);
	var ckinYmd2 = new Date(ckinday);
	
	var lastDayofLastMonth = ( new Date( ckinYmd1.getYear(), ckinYmd1.getMonth(), 0) ).getDate();
	if(ckinYmd1.getDate() > lastDayofLastMonth) {
		ckinYmd1.setDate(lastDayofLastMonth);
	}
	
	var month_next = ckinYmd1.getMonth() +1;
	ckinYmd1.setMonth(month_next);
	var nextLimitMonth = 10 > ckinYmd1.getMonth()+1 ? "0" + (ckinYmd1.getMonth()+1) : ckinYmd1.getMonth()+1;
	var nextLimitDay = 10 > ckinYmd1.getDate() ? "0" + ckinYmd1.getDate() : ckinYmd1.getDate();
	var nextLimitYmd = ckinYmd1.getFullYear() + "-" + nextLimitMonth + "-" + nextLimitDay;
	
	var month_prev = ckinYmd2.getMonth() -1;
	ckinYmd2.setMonth(month_prev);
	var prevLimitMonth = 10 > ckinYmd2.getMonth()+1 ? "0" + (ckinYmd2.getMonth()+1) : ckinYmd2.getMonth()+1;
	var prevLimitDay = 10 > ckinYmd2.getDate() ? "0" + ckinYmd2.getDate() : ckinYmd2.getDate();
	var prevLimitYmd = ckinYmd2.getFullYear() + "-" + prevLimitMonth + "-" + prevLimitDay;
	
	var nowDate = new Date();
	var nowlimitMonth = 10 > nowDate.getMonth()+1 ? "0" + (nowDate.getMonth()+1) : nowDate.getMonth()+1;
	var nowlimitDay = 10 > nowDate.getDate() ? "0" + nowDate.getDate() : nowDate.getDate();
	var nowlimitYmd = nowDate.getFullYear() + "-" + nowlimitMonth + "-" + nowlimitDay;
	
	var today = nowlimitYmd;
	if(startDate.replace(/-/gi,"") <= today.replace(/-/gi,"") || startDate.replace(/-/gi,"") <= prevLimitYmd.replace(/-/gi,"")){
		if(startDate.replace(/-/gi,"") <= today.replace(/-/gi,"")){
			startDate = today;
		}else if(startDate.replace(/-/gi,"") <= prevLimitYmd.replace(/-/gi,"")){
			startDate = prevLimitYmd;
		}
		$("#otherDatePop .otherWeek").find(".btnPrev").addClass("disabled");
		$("#otherDatePop .otherWeek").find(".btnPrev").attr("onclick", "");
	}else{
		$("#otherDatePop .otherWeek").find(".btnPrev").removeClass("disabled");
		$("#otherDatePop .otherWeek").find(".btnPrev").attr("onclick", "anotherDayPrice('','','', 'P')");
	}
	if(endDate.replace(/-/gi,"") >= nextLimitYmd.replace(/-/gi,"")){
		endDate = nextLimitYmd;
		$("#otherDatePop .otherWeek").find(".btnNext").addClass("disabled");
		$("#otherDatePop .otherWeek").find(".btnNext").attr("onclick", "");
	}else{
		$("#otherDatePop .otherWeek").find(".btnNext").removeClass("disabled");
		$("#otherDatePop .otherWeek").find(".btnNext").attr("onclick", "anotherDayPrice('','','', 'N')");
	}
	
	var currency = $("#currencyCd").val();
	var adltCnt = $("#adltCnt").val();
	var chldCnt = $("#chldCnt").val();
	var infantCnt = $("#infantCnt").val();
	var roomCnt = $("#roomCnt").val();
	var param = {
			"hotlId" : $('#hotlId').val(),
			"roomTypCd" : roomCd,
			"ratePlanCd" : ratePlanCd,
			"resvTypCd": resvTypCd,
			"startDate" : startDate,
			"endDate" : endDate,
			"currencyCd" : currency,
			"adltCnt" : adltCnt,
			"chldCnt" : chldCnt,
			"infantCnt" : infantCnt,
			"roomCnt"	: roomCnt
	}
	
	var ajaxUrl = "/resv/rpm/anotherDayPrice.do";
	
	$.ajax({
		url: ajaxUrl,
		data:"data="+JSON.stringify(param),
		cache: false,
		type: "POST",
		async: true,
		beforeSend : function(){
			
		},
		success : function(data){
			var jsonObj = jQuery.parseJSON(data);
			var objData = jsonObj.model;
			var won = messages['msg.label.cmm.won'];
			var dong = messages['msg.label.cmm.dong'];
			var calendarHtml = "";
			$("#otherDatePop .otherDate").html(""); //다른날짜 금액 조회 레이어 초기화
			if(objData.FLAG == "00"){ 
				if(objData.CalendarList.length > 0){
					for(var i = 0; i < objData.CalendarList.length; i++){
						var calendarVO = objData.CalendarList[i];
						var choiceYn = "";
						if(calendarVO.date.replace(/-/gi,"") == $("#ckinYmd").val().replace(/-/gi,"")){
							choiceYn = "class=\"choice\"";
						}
						calendarHtml += "<li "+choiceYn+">";
						calendarHtml += "	<strong class=\"date\">"+calendarVO.date.replace(/-/gi,".") +"(" + getDayOfTheWeek(calendarVO.date)+")</strong>";
						if(typeof calendarVO.price != "undefined" ){
							if($('#hotlId').val() == "VDNSM"){
								calendarHtml += "	<span class=\"price\">"+fncAddComma(calendarVO.price)+" " + objData.currencyCd +"&nbsp;~</span>";
							}else{
								calendarHtml += "	<span class=\"price\">"+fncAddComma(calendarVO.price)+won+"&nbsp;~</span>";
							}
						}else{
							calendarHtml += "	<span class=\"price\">-</span>";
						}
						calendarHtml += "</li>";
					}
					$("#otherDatePop .otherDate").html(calendarHtml);
					pc.layerPopup.openPop('#otherDatePop');
				}
				
				$("#startDate").val(startDate);
				$("#endDate").val(endDate);
				$("#resvTypCdTmp").val(resvTypCd);
				
			}else{
				alert("anotherDayPrice response Exception Code : " + objData.FLAG);
			}
		},
		error : function(jqxhr, textStatus, error){
			alert("anotherDayPrice request fail : " + error);
		}
	});
}

// 비교함 담기
function compareProduce(resvTypCd, cpId, hotlId, roomCd, viewCd, roomTypCd, bedTypCd, ratePlanCode, spofrId, packItNo, roomClsCd, infantResvYn, localeLang){
	var idx = 0;
	$("#cpArea > li").each(function(){
		if($(this).find("div:first").html() != ""){
			idx++;
		}
	});
	if(idx < 3){
		var addIdx = 0;
		var addFlag = true;
		$("#cpArea > li").each(function(){
			if($(this).find("a").length < 1 && addFlag){
				addIdx = $(this).index();
				addFlag = false;
			}
		});
		var roomTypTxt = "";
		var roomInfo = "";
		var benefit = "";
		var resvYmd = "";
		if(resvTypCd == "R"){
			roomTypTxt = messages['msg.label.cmm.room'];
			benefit = $("#"+cpId).parent().parent().parent().find("span:first").html();
			roomInfo = $("#"+cpId).parent().parent().parent().parent().parent().parent().parent().parent().parent().parent().parent().find("ul:first").html();
			resvYmd = messages['msg.resv.all.year.msg'];
		}else if(resvTypCd == "P"){
			roomTypTxt = messages['msg.mbr.mbl.mypage.resv.dtl.msg61'];
			benefit = $("#"+cpId).parent().parent().parent().parent().parent().parent().parent().parent().parent().parent().parent().find("ul:first").html();
			roomInfo = $("#"+cpId).parent().parent().parent().find("span:first").html();
			resvYmd = $("#"+cpId).parent().parent().parent().parent().parent().parent().parent().parent().parent().parent().parent().find("dd:first").text();
		}else{
			roomTypTxt = messages['msg.rs.rewards.txt'];
			benefit = $("#"+cpId).parent().parent().parent().parent().parent().parent().parent().parent().parent().parent().parent().find("ul:first").html();
			roomInfo = $("#"+cpId).parent().parent().parent().find("span:first").html();
			resvYmd = $("#"+cpId).parent().parent().parent().parent().parent().parent().parent().parent().parent().parent().parent().find("dd:first").text();
		}
		var roomPrice = $("#"+cpId).parent().find("strong:first").text();
		var roomTypNm = $("#"+cpId).parent().find("label:first").text();
		var imgPath = $("#"+cpId).parent().parent().parent().parent().parent().parent().parent().parent().parent().parent().parent().find("img:first").attr("src");
		var title = $("#"+cpId).parent().parent().parent().parent().parent().parent().parent().parent().parent().parent().parent().find("dt:first > div").text();
		
		var addHtml  = "<div class=\"imgBox\">";
	 		addHtml += "	<img src='"+imgPath+"' style=\"width:120px; height:70px;\" alt=\""+title+"\">";
			addHtml += "</div>";
			addHtml += "<div class=\"infoTxtBox\">";
			addHtml += "	<span class=\"type\"><em>"+roomTypTxt+"</em></span>";
			addHtml += "	<strong class=\"name\">"+title+"</strong>";
			addHtml += "	<span class=\"info\">"+roomTypNm+"</span>";
			addHtml += "</div>";
			addHtml += "<a href=\"#none\" onclick=\"fncRemoveCp('"+resvTypCd+"','"+cpId+"','"+hotlId+"', '"+roomCd+"', '"+viewCd+"', '"+roomTypCd+"', '"+bedTypCd+"', '"+ratePlanCode+"', '"+spofrId+"', '"+packItNo+"', '"+roomClsCd+"', '"+infantResvYn+"', '"+localeLang+"');\" class=\"prDel\">"+messages['msg.resv.del.comparison.msg']+"</a>"; // 비교함 빼기
		
		$("#cpArea > li:eq("+addIdx+")").html("");
		$("#cpArea > li:eq("+addIdx+")").html(addHtml);
		$("#cpArea > li:eq("+addIdx+")").attr("role", cpId);
		$("#cpViewHotlNm").text($("#comHotlNm").val());
		
		var cpNum = 0;
		
		$("#cpArea > li").each(function(){
			if($(this).find("div:first").html() != ""){
				cpNum++;
			}
		});
		
		$("#cpNum").text(cpNum);
		
		if(cpNum > 1){
			$("#cpPopBtn").removeClass("disabled");
		}else{
			$("#cpPopBtn").addClass("disabled");
		}
		
		$("#"+cpId).text(messages["msg.resv.del.comparison.msg"]); //비교함 빼기
		$("#"+cpId).addClass("del");
		$("#"+cpId).removeAttr("onclick");
		$("#"+cpId).attr("onclick", "fncRemoveCp('"+resvTypCd+"','"+cpId+"','"+hotlId+"', '"+roomCd+"', '"+viewCd+"', '"+roomTypCd+"', '"+bedTypCd+"', '"+ratePlanCode+"', '"+spofrId+"', '"+packItNo+"', '"+roomClsCd+"', '"+infantResvYn+"', '"+localeLang+"');");

		// 비교하기 레이어팝업 Write
		var	cpViewArea1Html  = "<th scope=\"col\" role=\""+cpId+"\">";
			cpViewArea1Html += "	<div class=\"img\">";
			cpViewArea1Html += "		<img src='"+imgPath+"' alt=\""+title+"\">";
			cpViewArea1Html += "		<a href=\"#none\" onclick=\"fncRemoveCp('"+resvTypCd+"','"+cpId+"','"+hotlId+"', '"+roomCd+"', '"+viewCd+"', '"+roomTypCd+"', '"+bedTypCd+"', '"+ratePlanCode+"', '"+spofrId+"', '"+packItNo+"', '"+roomClsCd+"', '"+infantResvYn+"', '"+localeLang+"');\" class=\"btnDel\"><span>상품 삭제</span></a>";
			cpViewArea1Html += "	</div>";
			cpViewArea1Html += "	<div class=\"roomInfo\">";
			cpViewArea1Html += "		<div class=\"tagWrap\">";
			cpViewArea1Html += "			<span class=\"tagico\">"+roomTypTxt+"</span>";
			cpViewArea1Html += "		</div>";
			cpViewArea1Html += "		<strong class=\"tit\">"+title+"</strong>";
			cpViewArea1Html += "	</div>";
			cpViewArea1Html += "</th>";
		$("#cpViewArea1").append(cpViewArea1Html);
		
		var cpViewArea2Html  = "<td role=\""+cpId+"\">";
			cpViewArea2Html += "	<div class=\"roomInfo\">";
			cpViewArea2Html += "		<span class=\"sum\">"+roomPrice+"</span>";
			cpViewArea2Html += "		<span class=\"txt\">"+messages['msg.resv.room.per.day.msg']+"</span>"; //1인 1객실 기준
			cpViewArea2Html += "	</div>";
			cpViewArea2Html += "</td>";
		$("#cpViewArea2").append(cpViewArea2Html);
			
		var cpViewArea3Html   = "<td role=\""+cpId+"\">";
			cpViewArea3Html  += "	<strong class=\"sTit\">"+messages['msg.resv.reservation.period.msg']+"</strong>"; //예약 가능 기간
			cpViewArea3Html  += "	<p>"+resvYmd+"</p>";
			cpViewArea3Html  += "</td>";
		$("#cpViewArea3").append(cpViewArea3Html);
		
		var cpViewArea4Html  = "<td role=\""+cpId+"\">";
			if(resvTypCd == "R"){
				cpViewArea4Html += "	<strong class=\"sTit\">"+messages['msg.resv.included.item.msg']+"</strong>"; //포함사항
			}else{
				cpViewArea4Html += "	<strong class=\"sTit\">"+messages['msg.resv.key.benefits.msg']+"</strong>"; //주요혜택
			}
			cpViewArea4Html += "	<div class=\"dataIn\">";
			cpViewArea4Html += "		<ul>";
			cpViewArea4Html += 				benefit;
			cpViewArea4Html += "		</ul>";
			cpViewArea4Html += "	</div>";
			cpViewArea4Html += "</td>";
		$("#cpViewArea4").append(cpViewArea4Html);
			
		var cpViewArea5Html  = "<td role=\""+cpId+"\">";
			cpViewArea5Html += "	<strong class=\"sTit\">"+messages['msg.resv.accom.info.msg']+"</strong>"; // 객실정보
			cpViewArea5Html += "	<strong class=\"sTit_s\">"+roomTypNm+"</strong>";
			cpViewArea5Html += "	<div class=\"dataIn\">";
			cpViewArea5Html += "		<ul>";
			cpViewArea5Html += 				roomInfo;
			cpViewArea5Html += "		</ul>";
			cpViewArea5Html += "	</div>";
			cpViewArea5Html += "</td>";
		$("#cpViewArea5").append(cpViewArea5Html);
		
		var cpViewArea6Html   = "<td role=\""+cpId+"\">";
			cpViewArea6Html  += "	<a href=\"#none\" onclick=\"fncCpGoStep2('"+resvTypCd+"', '"+roomCd+"', '"+viewCd+"', '"+roomTypCd+"', '"+bedTypCd+"', '"+ratePlanCode+"', '"+spofrId+"', '"+packItNo+"', '"+roomClsCd+"', '"+infantResvYn+"', '"+localeLang+"');\" class=\"btnRsv\">";
			cpViewArea6Html  += "		<img src=\"/images/"+localeLang+"/mem/new_2019/reserve_step1_compare.gif\" alt=\"예약하기\" />";
			cpViewArea6Html  += "	</a>";
			cpViewArea6Html  += "</td>";
		$("#cpViewArea6").append(cpViewArea6Html);
		
		pc.domEvent.cpRoomBox.isSetStyle(true);
		
		// 상품 비교함 열기
		$("#cpCls1").addClass("on");
		$("#cpCls2").addClass("on");
		
		var widthHalf;
        var popCon;

        // 비교하기 레이어 팝업 리사이징
        widthHalf = parseInt($("#comparePop .popLayer").width() / 2);
        
        $("#comparePop .popLayer").css({
            'marginLeft': - widthHalf
        });
      
	}else{
		alert(messages["msg.resv.exceeds.num.prod.msg"]); //비교 가능한 상품 개수를 초과하였습니다.
	}
}

// 비교함 빼기
function fncRemoveCp(resvTypCd, cpId, hotlId, roomCd, viewCd, roomTypCd, bedTypCd, ratePlanCode, spofrId, packItNo, roomClsCd, infantResvYn, localeLang){
	
	$("#"+cpId).text(messages['msg.resv.add.comparison.msg']); //비교함담기
	$("#"+cpId).attr("onclick", "compareProduce('"+resvTypCd+"','"+cpId+"','"+hotlId+"', '"+roomCd+"', '"+viewCd+"', '"+roomTypCd+"', '"+bedTypCd+"', '"+ratePlanCode+"', '"+spofrId+"', '"+packItNo+"', '"+roomClsCd+"', '"+infantResvYn+"', '"+localeLang+"');");
	$("#"+cpId).removeClass("del");
	
	// 비교함 해당 상품 제거
	$("#cpArea > li").each(function(){
		if($(this).attr("role") == cpId){
			var	tempHtml  = "<div class=\"imgBox\"></div>";
				tempHtml += "	<div class=\"infoTxtBox adRoom\">";
				tempHtml += "		<span class=\"txt\">"+messages['msg.rs.resv.compare.produce.msg2']+"</span>"; // 비교상품 추가
				tempHtml += "	</div>";
				tempHtml += "</div>";
				
			$(this).html(tempHtml);
			$(this).removeAttr("role");
		}
	});
	
	var liArr = [];
	var liId = [];
	var i = 0;
	
	// 상품 비교함 재정렬하기 위한 값 셋팅 
	$("#cpArea > li").each(function(){
		if(typeof $(this).attr("role") != "undefined"){
			liArr[i] = $(this).html();
			liId[i] = $(this).attr("role");
			i++;
		}
	});
	
	if(liArr.length > 0){
		var liNum = 0;
		$("#cpArea").html("");
		// 상품비교함 재정렬
		for(var i = 0; i < 3; i++){
			if(typeof liArr[i] != "undefined"){
				var	tempHtml  = "<li role='"+liId[i]+"'>";
					tempHtml += liArr[i];
					tempHtml += "</li>";
				$("#cpArea").append(tempHtml);
				liNum++;
			}else{
				
				var	tempHtml  = "<li>";
					tempHtml += "	<div class=\"imgBox\"></div>";
					tempHtml += "		<div class=\"infoTxtBox adRoom\">";
					tempHtml += "			<span class=\"txt\">"+messages['msg.rs.resv.compare.produce.msg2']+"</span>"; // 비교 상품 추가
					tempHtml += "		</div>";
					tempHtml += "	</div>";
					tempHtml += "</li>";
				$("#cpArea").append(tempHtml);
			}
		}
		
		// 상품 비교함에 담긴 상품 갯수셋팅 
		$("#cpNum").text(liNum);
		
		// 해당상품 비교하기 레이어에서 제거 
		$("#cpViewArea1").children().each(function(){
			if($(this).attr("role") == cpId){
				$(this).remove();
			}
		});
		
		// 해당상품 비교하기 레이어에서 제거 
		$("#cpTbody").children().each(function(){
			$(this).children().each(function(){
				if($(this).attr("role") == cpId){
					$(this).remove();
				}
			});
		});
		
		var widthHalf;
        var popCon;

        // 비교하기 레이어 넓이 리사이징
        widthHalf = parseInt($("#comparePop .popLayer").width() / 2);
        
        $("#comparePop .popLayer").css({
            'marginLeft': - widthHalf
        });

        // 비교하기 레이어에 담긴 상품 갯수
        var compareCnt = $("#cpViewArea1").children().length;
        
        if (compareCnt <= 1) {
        	// 비교하기 레이어팝업 닫기
        	pc.layerPopup.closePop('#comparePop');
        }else{
        	// 비교하기 레이어팝업 스크롤 초기화
        	if($('#comparePop .scroll').data('jsp')){
                $('#comparePop .scroll').data('jsp').destroy();
                pc.formEvent.scrollBarJs.init();
            }
        }
        
        // 비교하기 버튼 활성화 & 비활성화
        if(Number(liNum) <= 1){
        	$("#cpPopBtn").addClass("disabled");
		}else{
			$("#cpPopBtn").removeClass("disabled");
		}
        pc.layerPopup._alignCenterPop($('#comparePop .new_popLayer'));
	}else{
		
		// 비교함에 담긴 상품갯수 초기화
		$("#cpNum").text("0");
		
		// 비교함 상세보기 초기화
		$("#cpViewArea1").children().each(function(){
			$(this).remove();
		});
		
		// 비교함 상세보기 초기화
		$("#cpTbody").children().each(function(){
			$(this).children().each(function(){
				$(this).remove();
			});
		});
		pc.layerPopup._alignCenterPop($('#comparePop .new_popLayer'));
		// 비교함 닫기
		pc.domEvent.cpRoomBox.isSetStyle(false);
	}
}

// 비교하기 상세화면 예약버튼
function fncCpGoStep2(resvTypCd, roomCd, viewCd, roomTypCd, bedTypCd, ratePlanCode, spofrId, packItNo, roomClsCd, infantResvYn, localeLang){
	
	var adltCntList = $("#adltCnt").val().split(",");
	var chldCntList = $("#chldCnt").val().split(",");
	var infantCntList = $("#infantCnt").val().split(",");
	
	var roomCnt = $("#roomCnt").val();
	var alertFlag = true;
	for(var x = 0; x < parseInt(roomCnt);x++){
		var adltCnt = adltCntList[x];
		var chldCnt = chldCntList[x];
		var infantCnt = infantCntList[x];
		
		// 신라스테이이면서, 총이용인원수가 4명일때
		if(alertFlag){
			if((jQuery("#hotlId").val() != "S" && jQuery("#hotlId").val() != "C") && (parseInt(adltCnt)+parseInt(chldCnt)+parseInt(infantCnt) == 4)) {
				// 패밀리트윈객실의 경우 안내문구
				if(roomTypCd == "STF" || roomTypCd == "STFC" || roomTypCd == "STFO" || roomTypCd == "DXF" || roomTypCd == "DXFC" || roomTypCd == "DXFO"){
					alert("<spring:message code='msg.rs.efl.no.reservation3' />");// 패밀리 트윈 객실은 3인 1실 기준으로, 유아 포함 최대 4인 투숙 시 공간이 다소 협소할 수 있습니다.
					alertFlag = false;
				}
			}else if((jQuery("#hotlId").val() != "S" && jQuery("#hotlId").val() != "C") && (parseInt(adltCnt)+parseInt(chldCnt)+parseInt(infantCnt) == 5)) {
				if(roomTypCd == "OSDC"){
					alert("<spring:message code='msg.rs.efl.no.reservation4' />");// 온돌 스위트 객실은 4인 1실 기준으로 유아 포함 최대 5인 투숙 시 공간이 다소 협소할 수 있습니다.
					alertFlag = false;
				}
		 	}else if((jQuery("#hotlId").val() != "S" && jQuery("#hotlId").val() != "C") && (parseInt(adltCnt)+parseInt(chldCnt)+parseInt(infantCnt) == 3)) {
				if(roomTypCd == "STD" || roomTypCd == "DXD" || roomTypCd == "GDD" || roomTypCd == "STDM" || roomTypCd == "STDC" || roomTypCd == "DXDM"
						|| roomTypCd == "DXDC" || roomTypCd == "GDDC" || roomTypCd == "STDP" || roomTypCd == "DXDP" || roomTypCd == "STDO" || roomTypCd == "DXDO"
						|| roomTypCd == "GSDO" || roomTypCd == "JSDO" || roomTypCd == "PEDC" || roomTypCd == "PEDO" || roomTypCd == "PSDC" || roomTypCd == "PTD"
						|| roomTypCd == "PDD"){
					alert("<spring:message code='msg.rs.efl.no.reservation5' />");// 더블 객실은 2인 1실 기준으로 유아 포함 최대 3인 투숙 시 공간이 다소 협소할 수 있습니다.
					alertFlag = false;
				}else if(roomTypCd == "STT" || roomTypCd == "STTC" || roomTypCd == "DXTC" || roomTypCd == "STTO" || roomTypCd == "DXTO" || roomTypCd == "PETC"
						|| roomTypCd == "DXT" || roomTypCd == "PTT"){
					alert("<spring:message code='msg.rs.efl.no.reservation6' />");// 트윈 객실은 2인 1실 기준으로 유아 포함 최대 3인 투숙 시 공간이 다소 협소할 수 있습니다.
					alertFlag = false;
				}
		 	}
		}
	}
	
	if(resvTypCd == "M"){
		resvTypCd = "P";	
	}
	
	$("#resvTypCd"			).val(resvTypCd		);	// 예약구분코드
	$("#roomCd"				).val(roomCd		);	// 객실코드
	$("#viewCd"				).val(viewCd		);	// 전망코드
	$("#roomTypCd"			).val(roomTypCd		);	// 객실구분코드
	$("#bedTypCd"			).val(bedTypCd		);	// 침대구분코드
	$("#ratePlanCode"		).val(ratePlanCode	);	// rate code
	$("#spofrId"			).val(spofrId		);	// 스페셜오퍼ID
	$("#packItNo"			).val(packItNo		);	// 패키지상품번호
	$("#choiceRoomClsCd"	).val(roomClsCd		);	// 선택한 룸의 객실클래스코드
	$("#choiceInfantResvYn"	).val(infantResvYn	);	// 선택한 룸의 유아예약가능여부
	
	goStep2(localeLang);
}

// 비교함 초기화
function fncCpInit(localeLang){
	
	var prdtCompHtml = "";
	
	prdtCompHtml += "<div class=\"cpRoomBtn\">";
	prdtCompHtml += "	<div class=\"cpRoomBtnCon\">";
	prdtCompHtml += "		<span class=\"num\" id=\"cpNum\">0</span>";
	prdtCompHtml += "		<a href=\"#none\" class=\"tit\" id=\"cpCls1\">"+messages['msg.resv.comparison.box.msg']+"</a>"; //상품비교함
	prdtCompHtml += "	</div>";
	prdtCompHtml += "</div>";
	prdtCompHtml += "<div class=\"cpRoomProd\" id=\"cpCls2\">";
	prdtCompHtml += "	<div class=\"cpRoomCon\">";
	prdtCompHtml += "		<ul id=\"cpArea\">";
	prdtCompHtml += "			<li>";
	prdtCompHtml += "				<div class=\"imgBox\"></div>";
	prdtCompHtml += "				<div class=\"infoTxtBox adRoom\">";
	prdtCompHtml += "					<span class=\"txt\">"+messages['msg.resv.add.cmp.prdt.msg']+"</span>"; //비교상품 추가
	prdtCompHtml += "				</div>";
	prdtCompHtml += "			</li>";
	prdtCompHtml += "			<li>";
	prdtCompHtml += "				<div class=\"imgBox\"></div>";
	prdtCompHtml += "				<div class=\"infoTxtBox adRoom\">";
	prdtCompHtml += "					<span class=\"txt\">"+messages['msg.resv.add.cmp.prdt.msg']+"</span>"; //비교상품 추가
	prdtCompHtml += "				</div>";
	prdtCompHtml += "			</li>";
	prdtCompHtml += "			<li>";
	prdtCompHtml += "				<div class=\"imgBox\"></div>";
	prdtCompHtml += "				<div class=\"infoTxtBox adRoom\">";
	prdtCompHtml += "					<span class=\"txt\">"+messages['msg.resv.add.cmp.prdt.msg']+"</span>"; //비교상품 추가
	prdtCompHtml += "				</div>";
	prdtCompHtml += "			</li>";
	prdtCompHtml += "		</ul>";
	prdtCompHtml += "		<div class=\"btnCpBox disabled\" id=\"cpPopBtn\">";
	prdtCompHtml += "			<a href=\"#none\" onclick=\"openComparePop();\"><img src=\"/images/"+localeLang+"/mem/new_2019/btn_compare.png\" alt=\"비교하기\"></a>";
	prdtCompHtml += "			<p class=\"cpRoomNoti\">*"+messages['msg.resv.mbl.maxselect.txt']+"</p>";//* 최대 3개까지 선택 가능
	prdtCompHtml += "		</div>";
	prdtCompHtml += "	</div>";
	prdtCompHtml += "</div>";
	
	$("#cpRoomBox").html(prdtCompHtml);
	$("#cpRoomBox").hide();
	
	var compHtml = "";
	
	compHtml += "<div class=\"popLayer popLayerCompare2 new_popLayer\" tabindex=\"-1\">";
	compHtml += "	<div class=\"popHead\">";
	compHtml += "		<h2 class=\"tit\">"+messages['msg.resv.compare.txt.msg']+"</h2>"; //비교하기
	compHtml += "		<div class=\"btn\">";
	compHtml += "			<a class=\"btnClose\" href=\"#none\" onclick=\"pc.layerPopup.closePop('#comparePop'); return false;\">";
	compHtml += "				<span>"+messages['msg.btn.cmm.close']+"</span>"; // 닫기
	compHtml += "			</a>";
	compHtml += "		</div>";
	compHtml += "	</div>";
	compHtml += "	<div class=\"popCtn new_rsvBox scroll\">";
	compHtml += "		<div class=\"compareBox\">";
	compHtml += "			<h3 class=\"tit\" id=\"cpViewHotlNm\"></h3>";
	compHtml += "			<table>";
	compHtml += "				<caption>"+messages['msg.resv.compare.txt.msg']+"</caption>"; //비교하기
	compHtml += "				<thead>";
	compHtml += "					<tr id=\"cpViewArea1\"></tr>";
	compHtml += "				</thead>";
	compHtml += "				<tbody id=\"cpTbody\">";
	compHtml += "					<tr id=\"cpViewArea2\"></tr>";
	compHtml += "					<tr id=\"cpViewArea3\"></tr>";
	compHtml += "					<tr id=\"cpViewArea4\"></tr>";
	compHtml += "					<tr id=\"cpViewArea5\"></tr>";
	compHtml += "					<tr class=\"last\" id=\"cpViewArea6\"></tr>";
	compHtml += "				</tbody>";
	compHtml += "			</table>";
	compHtml += "		</div>";
	compHtml += "	</div>";
	compHtml += "</div>";
	compHtml += "<div class=\"mdScreen\" style=\"display:block\"></div>";
	
	$("#comparePop").html(compHtml);
	$("#comparePop").hide();
}

function fnNearByHotels(localeLang){
	
	var hotel_id = $("#hotlId").val();
	var url = "/resv/rpm/getNearByHotels.do";
	var currencyCd = typeof $("#currencyCd").val() != "undefined" ? $("#currencyCd").val() : "KRW";
	var param = encodeURIComponent(
			JSON.stringify({
				"hotlId" : hotel_id,
				"ckinYmd" : $('#ckinYmd').val(),
				"ckoutYmd" : $('#ckoutYmd').val(),
				"roomCnt" : $('#roomCnt').val(),
				"adltCnt" : $('#adltCnt').val(),
				"chldCnt" : $('#chldCnt').val(),
				"infantCnt" : $('#infantCnt').val(),
				"currencyCd" : currencyCd
				}
			)
		);
	
	$.ajax({
		url: url,
		data:"data="+param,
		cache: false,
		type: "POST",
		async: true,
		beforeSend : function(){
			$('.opacity').show();
			pc.layerPopup.lockScroll();
			$('.re-loader').show();
		},
		
		success : function(data){
			$('.opacity').hide();
			pc.layerPopup.unLockScroll();
			$('.re-loader').hide();
			var jsonObj = jQuery.parseJSON(data);
			var objData = jsonObj.model;
			var currCd = objData.currCd;
			var nearByHtml = "";
			$("#nearByHotlList").html("");
			
			if(objData.FLAG == "00"){
				
				var hotlList = objData.hotlList;
				var won = messages["msg.label.cmm.won"];
				var dong = messages["msg.label.cmm.dong"];
				for(var i = 0; i < hotlList.length; i++){
					var hotlObj = hotlList[i];
					nearByHtml += "	<li>";
					nearByHtml += "		<div class=\"imgBox\">";
					nearByHtml += "			<img src=\""+webDomain+"/images/upload/"+hotlObj.attFilePath+"\" alt=\""+hotlObj.hotlNm+"\" style=\"width: 283px;height: 160px;\" >";
					nearByHtml += "		</div>";
					nearByHtml += "		<dl class=\"htInfo\">";
					nearByHtml += "			<dt>"+hotlObj.hotlNm+"</dt>";
					nearByHtml += "			<dd>";
					nearByHtml += "				<strong>"+messages["msg.rs.resv.nearby.hotl.distance.txt"]+"</strong>&nbsp;<span>"+hotlObj.distance+"</span>"; // 선택한 호텔과의 거리 
					nearByHtml += "			</dd>";
					nearByHtml += "			<dd>";
					nearByHtml += "				<strong>"+messages["msg.rs.resv.lowprice.txt"]+"</strong>"; // 최저가
					if(typeof hotlObj.minPric != "undefined"){
						if(hotlObj.hotlId == "VDNSM"){
							nearByHtml += "<span class=\"price\">"+ fncAddComma(parseInt(hotlObj.minPric)) + dong + "&nbsp;~</span>";	
						}else{
							nearByHtml += "<span class=\"price\">"+ fncAddComma(parseInt(hotlObj.minPric)) + won + "&nbsp;~</span>";
						}
					}
					nearByHtml += "			</dd>";
					nearByHtml += "			<dd class=\"btnList\">";
					nearByHtml += "				<a href=\"#none\" class=\"btnChoice\"><img src=\"/images/"+localeLang+"/mem/new_2019/reserve_step1_pop_choice.gif\" alt=\"호텔선택\" onclick=\"document.getElementById('searchBarKeyword').value='"+hotlObj.hotlNm+"';fnNearByHotlSelection('"+ hotlObj.hotlId+"');pc.layerPopup.closePop('#htRecommendPop');\" ></a>";
					nearByHtml += "			</dd>";
					nearByHtml += "		</dl>";
					nearByHtml += "	</li>";
				}
				$("#nearByHotlList").html(nearByHtml);
				pc.layerPopup.openPop('#htRecommendPop');
			}else if(objData.FLAG == "01"){
				alert(messages["msg.rs.ows.service.stop.msg"]); // 예약 시스템과의 통신이 지연되고 있습니다. 잠시 후에 서비스를 이용해 주세요.
				return;
			}else if(objData.FLAG == "02"){
				alert(messages["msg.resv.step1.nearby.hotl.msg"]); // 예약 가능한 호텔이 없습니다.
				return
			}else if(objData.FLAG == "03"){
				alert(messages["msg.resv.step1.nearby.hotl.msg"]); //
				return;
			}
		},
		
		error : function(jqxhr, textStatus, error){
			alert("fnNearByHotels request fail : " + error);
			$('.opacity').hide();
			pc.layerPopup.unLockScroll();
			$('.re-loader').hide();
		}
	});
}

function goStep2(localeLang){
	//fncPassChk();
	totlCntCalculator();
	var hotlId		= $("#hotlId").val();	//호텔ID
	var roomClsCd	= $("#choiceRoomClsCd").val();	//선택한 룸의 객실클래스코드 
	var infantResvYn= $("#choiceInfantResvYn").val();	//선택한 룸의 유아예약가능여부
	var chldCnt		= $("#totlChldCnt").val();	//어린이수
	var infantCnt	= $("#totlInfantCnt").val();	//유아수
	var packItMinNightYn = $("#packItMinNightYn").val(); // 패키지 최소 숙박 세팅 여부
	var packItMinNightCnt = $("#packItMinNightCnt").val(); // 패키지 최소 숙박일
	
	// 서울 && ( 이그제큐티브 || 스위트 ) && 어린이 선택 시 진행 불가
	if( hotlId == "S"  && ( roomClsCd == "EXE" || roomClsCd == "SUT" ) && chldCnt > 0 ) {
		alert(messages["msg.rs.efl.no.reservation2"]); // Executive Floor 및 Suite 객실은 어린이 및 유아 동반 투숙이 안되는 점 양해 부탁 드립니다.
		return;
	}

	// 라디오버튼으로 선택한 룸의 유아예약가능여부가 불가( N )인데 유아수가 0보다 크면 진행 불가
	if ( infantResvYn == "N" && infantCnt > 0 ) {
		alert(messages["msg.rs.efl.no.reservation2"]); // Executive Floor 및 Suite 객실은 어린이 및 유아 동반 투숙이 안되는 점 양해 부탁 드립니다.
		return;
	}
	// 체크인 날짜
	if($("#ckinYmd").val() == '') {
		alert(messages["msg.cmm.selected.required"].replaceMsg([messages["msg.label.cmm.checkin.date"]]));// 체크인 날짜(를)을 선택하세요.
		$("#ckinYmd").focus();
		return;
	} 

	if(!isValidYmd($("#ckinYmd").val())) {
		alert(messages["msg.cmm.date2"].replaceMsg([messages["msg.label.cmm.checkin.date"]]));// 체크인 날짜이(가) 입력 형식이 잘못되었습니다. 2013-01-01 형식으로 입력해주세요.
		$("#ckinYmd").focus();
		return;
	}
	
	if(packItMinNightYn == "Y" && $("#resvTypCd").val() == "P"){
		var nightCnt = $("#nightCnt").val();
		if(parseInt(packItMinNightCnt) > parseInt(nightCnt)){
			var packMinMsg = messages["msg.cmm.fail.resv.minPeriod"]; // 해당 패키지는 {0}박 이상 예약 가능한 상품입니다.
				packMinMsg = packMinMsg.replace("{0}", packItMinNightCnt);
				alert(packMinMsg);
				return;
		}
	}
	
	var resultResv = true;
	var resultCon = true;

	if($("#resvPosbAheadDyCnt").val() == 0){
		
		var today = $("#srvTime").val();
		today = today.split("-");
		var today2 = new Date(today[0],today[1],today[2],today[3]);
		
		var beforCkinYmd = $("#ckinYmd").val().split("-");
		beforCkinYmd = new Date(beforCkinYmd[0], (beforCkinYmd[1]-1), beforCkinYmd[2]);
		beforCkinYmd.setDate(beforCkinYmd.getDate());
		
		var todayStr = today2.getFullYear() +"-" + (today2.getMonth()) + "-" + today2.getDate();
		var beforCkinYmdStr = beforCkinYmd.getFullYear() +"-" + (beforCkinYmd.getMonth()) + "-" + beforCkinYmd.getDate();
		
		if(beforCkinYmdStr == todayStr){
			
			var resvTime = $("#resvTime").val();	
			var today3 = today2.getHours();
			today3 *=1;
				
			if(resvTime !=null && resvTime.length > 0){
				resvTime *=1;
				if(resvTime <= today3){
					resultResv = false;	
					switch (localeLang) {
						case 'ko' : confirm('홈페이지 및 앱을 통한 예약은 당일 '+resvTime+'시까지 가능하며, 이후로는 전화 문의 부탁드립니다.'); break;
						case 'en' : confirm('Reservations can be made online at the website & app until '+resvTime+':00 on the day.\nPlease contact the hotel in order to book thereafter.'); break;
						case 'ja' : confirm('ホームページ及びアプリによる予約は当日'+resvTime+'時まで可能です。\nその以降は電話にてお問い合わせください。'); break;
						case 'zh' : confirm('网站和应用预订日期限制为'+resvTime+':00前。\n'+resvTime+':00以后，请向酒店电话咨询。'); break;
						default: confirm('홈페이지 및 앱을 통한 예약은 당일 '+resvTime+'시까지 가능하며, 이후로는 전화 문의 부탁드립니다.'); break;
					}
				}else{
					switch (localeLang) {
						case 'ko' : resultCon = confirm('홈페이지 및 앱을 통한 예약은 당일 '+resvTime+'시까지 가능하며,\n이후로는 전화 문의 부탁드립니다.\n예약을 계속 진행하시겠습니까?'); break;
						case 'en' : resultCon = confirm('Reservations can be made online at the website & app until '+resvTime+':00 on the day.\nPlease contact the hotel in order to book thereafter.\nAre you sure to continue?'); break;
						case 'ja' : resultCon = confirm('ホームページ及びアプリによる予約は当日'+resvTime+'時まで可能です。\nその以降は電話にてお問い合わせください。\nご予約を引き続き行われますか？'); break;
						case 'zh' : resultCon = confirm('网站和应用预订日期限制为'+resvTime+':00前。\n'+resvTime+':00以后，请向酒店电话咨询。继续预订吗?'); break;
						default : resultCon = confirm('홈페이지 및 앱을 통한 예약은 당일 '+resvTime+'시까지 가능하며,\n이후로는 전화 문의 부탁드립니다.\n예약을 계속 진행하시겠습니까?'); break;
					}
				}
			}
		}
		
	}else if($("#resvPosbAheadDyCnt").val() == 1){
		var today = $("#srvTime").val();
		today = today.split("-");
		var today2 = new Date(today[0],today[1],today[2],today[3]);
		
		var beforCkinYmd = $("#ckinYmd").val().split("-");
		beforCkinYmd = new Date(beforCkinYmd[0], (beforCkinYmd[1]-1), beforCkinYmd[2]);
		beforCkinYmd.setDate(beforCkinYmd.getDate()-1);
		
		var todayStr = today2.getFullYear() +"-" + (today2.getMonth()) + "-" + today2.getDate();
		var beforCkinYmdStr = beforCkinYmd.getFullYear() +"-" + (beforCkinYmd.getMonth()) + "-" + beforCkinYmd.getDate();
		
		if(beforCkinYmdStr == todayStr){

			var resvTime = $("#resvTime").val();
				
			var today3 = today2.getHours();
			today3 *=1;
				
			if(resvTime !=null && resvTime.length > 0){
				resvTime *=1;
				if(resvTime <= today3){
					resultResv = false;	
					switch (localeLang) {
						case 'ko' : confirm('홈페이지 및 앱을 통한 예약은 당일 '+resvTime+'시까지 가능하며, 이후로는 전화 문의 부탁드립니다.'); break;
						case 'en' : confirm('Reservations can be made online at the website & app until '+resvTime+':00 on the day.\nPlease contact the hotel in order to book thereafter.'); break;
						case 'ja' : confirm('ホームページ及びアプリによる予約は当日'+resvTime+'時まで可能です。\nその以降は電話にてお問い合わせください。'); break;
						case 'zh' : confirm('网站和应用预订日期限制为'+resvTime+':00前。\n'+resvTime+':00以后，请向酒店电话咨询。'); break;
						default: confirm('홈페이지 및 앱을 통한 예약은 당일 '+resvTime+'시까지 가능하며, 이후로는 전화 문의 부탁드립니다.'); break;
					}
				}else{
					switch (localeLang) {
						case 'ko' : resultCon = confirm('홈페이지 및 앱을 통한 예약은 당일 '+resvTime+'시까지 가능하며,\n이후로는 전화 문의 부탁드립니다.\n예약을 계속 진행하시겠습니까?'); break;
						case 'en' : resultCon = confirm('Reservations can be made online at the website & app until '+resvTime+':00 on the day.\nPlease contact the hotel in order to book thereafter.\nAre you sure to continue?'); break;
						case 'ja' : resultCon = confirm('ホームページ及びアプリによる予約は当日'+resvTime+'時まで可能です。\nその以降は電話にてお問い合わせください。\nご予約を引き続き行われますか？'); break;
						case 'zh' : resultCon = confirm('网站和应用预订日期限制为'+resvTime+':00前。\n'+resvTime+':00以后，请向酒店电话咨询。继续预订吗?'); break;
						default : resultCon = confirm('홈페이지 및 앱을 통한 예약은 당일 '+resvTime+'시까지 가능하며,\n이후로는 전화 문의 부탁드립니다.\n예약을 계속 진행하시겠습니까?'); break;
					}
				}
			}
		}
	}
	var url = "";
	
	if(resultCon && resultResv){
		// 체크아웃 날짜
		if($("#ckoutYmd").val() =='') {
			alert(messages["msg.cmm.selected.required"].replaceMsg([messages["msg.label.cmm.checkout.date"]]));// 체크아웃 날짜(를)을 선택하세요.
			$("#ckoutYmd").focus();
			return;
		}
	
		if(!isValidYmd($("#ckoutYmd").val())) {
			alert(messages["msg.cmm.date2"].replaceMsg([messages["msg.label.cmm.checkout.date"]]));// 체크아웃 날짜이(가) 입력 형식이 잘못되었습니다. 2013-01-01 형식으로 입력해주세요.
			$("#ckoutYmd").focus();
			return;
		}
	
		// 숙박일수
		if($("#nightCnt").val() =='') {
			var dayCnt = diffDay($("#ckinYmd").val(), $("#ckoutYmd").val());
			$("#nightCnt").val(dayCnt);
		}
	
		if($("#roomCd").val() == "" || $("#roomTypCd").val() == "" || $("#bedTypCd").val() == ""){
			alert(messages["msg.rs.step2.go.next.fail"]);// 객실 타입을 먼저 선택해주세요.
			return;		
		}
		
		var ckoutYmd = $("#ckoutYmd").val();
		var ckinD = new Date(ckoutYmd);
		
		ckinD.setDate(ckinD.getDate()-1);	// 날짜	
		var ckinMm = ckinD.getMonth()+1 < 10 ? "0"+(ckinD.getMonth()+1) : ckinD.getMonth()+1; //MM 
		var ckinDd = ckinD.getDate() < 10 ? "0"+ckinD.getDate() : ckinD.getDate();	//DD
		ckoutYmd = ckinD.getFullYear()	+ "-" + ckinMm	+ "-" + ckinDd;	//YYYY-MM-DD
		
		var param = encodeURIComponent(
			JSON.stringify(
				{	'hotlId':$("#hotlId").val()
					, 'startDate':$("#ckinYmd").val()
					, 'endDate':ckoutYmd
					, 'roomCnt':$("#roomCnt").val()
					, 'adltCnt':$("#adltCnt").val()
					, 'chldCnt':$("#chldCnt").val()			// 어린이수
					, 'ratePlanCd':$("#ratePlanCode").val()
					, 'roomTypCd':$("#roomTypCd").val()
				}
			)
		);

		var urlPath = "/resv/rpm/selectRoomResvYn.do";
	
		$.getJSON(urlPath,  
				 "data="+param
		).done(function( json ) {
			var resultFlag = json.model.FLAG
			var resvFlag = json.model.resvFlag;
			if(resultFlag =='00'){
				if(resvFlag == "true"){
					if($("#coporateVal").val() != ""){
						$("#coporateCd").attr("disabled", false);
						$("#coporateVal").attr("disabled", false);
					}
					$("#hotlIdArr").val($("#hotlId").val());
					$('#resvForm').attr('action', $("#URL_PREFIX").val()+'/resv/rpm/memSetStep2Pric.do').submit();
				}else{
					alert(messages["msg.recomm.hotl.msg"]);
				}
			}else if(resultFlag =='01'){
				alert(messages["msg.cmm.resv.avail.room.not.found"]);
			}else if(resultFlag =='02'){
				alert(messages["msg.rs.ows.service.stop.msg"]);
				history.back();
			}
		}).fail(function( jqxhr, textStatus, error ) {
			alert( "selectRoomResvYn Request Failed: " + error);
		});
	}
}

function openImgViewPop(id, cd, langTypCd, localeLang){
	try{
		
		$.ajax({
			url: "/resv/rpm/roomImgViewPop.do",
			cache: false,
			type: "POST",
			data:"imgHotlId="+id+"&imgRoomCd="+cd,
			beforeSend : function(){
				$('#roomViewMd').show();
			},
			success : function(html){
				
				var tempObj = jQuery.parseJSON(html);
				var key = cd+"-accmoImageSet-"+langTypCd+"-";
				var imgObj, bigImgPath, thumbImgPath, imgDc;
				
				var domain = "";
				
				if(id == "S" || id == "C"){
					domain = webDomain+"images/contents";
				}else if(id == "VDNSM"){
					domain = monoDomain+"images/contents";
				} else {
					domain = stayDomain+"images/contents";
				}
				
				var showFlag = false;
				var imgHtml = "";
				
				imgHtml += "<div class=\"slidePhotoBox\">";
				imgHtml += "	<div id=\"gallery\" class=\"ad-gallery\">";
				imgHtml += "		<div class=\"ad-image-wrapper\"></div>";
				imgHtml += "		<div class=\"ad-controls\"></div>";
				imgHtml += "		<div class=\"ad-nav\">";
				imgHtml += "		<div class=\"ad-thumbs\">";
				imgHtml += "			<ul class=\"ad-thumb-list\">";
				
				for(var i=1; i<=10; i++){
					var bigImgPath  = tempObj.model[key+i+"1"];
					var thumbImgPath  = tempObj.model[key+i+"2"];
					var imgDc = tempObj.model[key+i+"9"];
					
					if(bigImgPath != "" && thumbImgPath != "" && imgDc != ""){
						
						showFlag = true;

						imgHtml += "<li>";
						imgHtml += "	<a href=\""+domain+bigImgPath+"\">";
						imgHtml += "		<img alt=\""+imgDc+"\" src=\""+domain+thumbImgPath+"\" class=\"image"+i+"\"><span class=\"mask\"></span>";
						imgHtml += "	</a>";
						imgHtml += "</li>";
					}
				}
				
				imgHtml += "			</ul>";
				imgHtml += "		</div>";
				imgHtml += "	</div>";
				imgHtml += "</div>";
				
				imgHtml += "<div class=\"btmCon\">";
				imgHtml += "	<div class=\"leftArea\">";
				imgHtml += "		<div class=\"topTxtwrap\">";
				// 탑 이미지
				imgHtml += "			<div class=\"topTxt\">";
				
				var topTxtKey = cd+"-"+tempObj.model.ptContViewDVo.contSetupId+"EditorImg-"+langTypCd+"-";
				var topTxtImgPath = tempObj.model[topTxtKey+"11"];
				var topTxtImgAlt = tempObj.model[topTxtKey+"19"];
				
				imgHtml += "				<img src=\""+domain+topTxtImgPath+"\" alt=\""+topTxtImgAlt+"\">";
				imgHtml += 					tempObj.model.topTxtHiddenHtml;
				imgHtml += "			</div>";
				imgHtml += "		</div>";
				
				imgHtml += "		<table summary=\"In Room,In Hotel,Room Service로 구성된 테이블 입니다.\" class=\"tableTypeB tableRoomInfor\">";
				imgHtml += "			<caption>"+tempObj.model.contTypNm+"</caption>";
				imgHtml += "			<colgroup>";
				imgHtml += "				<col width=\"20%\" class=\"col1\">";
				imgHtml += "				<col width=\"*\" class=\"col2\">";
				imgHtml += "			</colgroup>";
				imgHtml += "			<tbody>";
				imgHtml += "				<tr class=\"first\">";
				imgHtml += "					<th scope=\"row\">";
				imgHtml += "						<img src=\""+webDomain+"images/"+localeLang+"/seoul/accommodation/inRoom.gif\" alt=\"In Room\">";
				imgHtml += "					</th>";
				imgHtml += "					<td>";
				imgHtml += "						<div class=\"introList\">";
				imgHtml +=								tempObj.model.inRoomHtml;
				imgHtml += "						</div>";
				imgHtml += "					</td>";
				imgHtml += "				</tr>";
				imgHtml += "				<tr>";
				imgHtml += "					<th scope=\"row\"><img src=\""+webDomain+"images/"+localeLang+"/seoul/accommodation/inHotel.gif\" alt=\"In Hotel\"></th>";
				imgHtml += "					<td>";
				imgHtml += "						<div class=\"introList\">";
				imgHtml += 								tempObj.model.inHotelHtml;
				imgHtml += "						</div>";
				imgHtml += "					</td>";
				imgHtml += "				</tr>";
				
				if(id == "S" || id == "C" || id == "VDNSM"){
					imgHtml += "				<tr>";
					imgHtml += "					<th scope=\"row\"><img src=\""+webDomain+"images/"+localeLang+"/seoul/accommodation/roomService.gif\" alt=\"roomService\"></th>";
					imgHtml += "					<td>";
					imgHtml += "						<div class=\"introList\">";
					imgHtml += 								tempObj.model.inService;
					imgHtml += "						</div>";
					imgHtml += "					</td>";
					imgHtml += "				</tr>";  
				}	
				imgHtml += "			</tbody>";
				imgHtml += "		</table>";
				imgHtml += "	</div>";
				imgHtml += "	<div class=\"rightArea\">";
				imgHtml += "		<div class=\"HotelInfoBox newMgt\">";
				imgHtml += "			<div class=\"HotelBoxTop\">";
				imgHtml += 					tempObj.model.hotlInfoHtml;
				imgHtml += "			</div>";
				imgHtml += "		</div>";
				imgHtml += "	</div>";
				imgHtml += "</div>";
				
				if(showFlag){ 
					
					$("#accView").html(imgHtml);
					$(".ad-gallery").adGallery();
					$(".slidePhotoBox .btnFullScreen").remove();
					$(".slidePhotoBox .ad-back").remove();
					$(".slidePhotoBox .ad-forward").remove();
					
					var sTop = $(document).scrollTop();
					var sLef = $(document).scrollLeft();
					var widthHalf = jQuery(".popLayer").width()/2;
					$(".popLayer").css("top" , sTop<130 ? 50 : sTop+70);
					var diff = parseInt($(window).width()/2 - widthHalf);
					$(".popLayer").css("left",sLef + widthHalf + (diff<15 ? 15 : diff) );
					$("#accViewPop").show();
					pc.layerPopup.lockScroll();
					$(".popCtn").scrollTop(0);
				}
			},
			error : function(jqxhr, textStatus, error){
				alert( "openImgViewPop Request failed: " + error);
			}
		});
		
	} catch(e){
		alert(e.message);
	}
}

function openFavorUseGuideEx(spofrId, packItNo, hotlId, spcFeeYn, isLogin){
	if ( spcFeeYn == "Y" ){
		if(isLogin == "false"){
			var loginPath = "/membership/mbr/login/memLogin.do?path=";
			loginPath += $("#URL_PREFIX").val();
			loginPath += "&hotlId=" + $("#hotlId").val();
			loginPath += "&hotlIdArr=" + $("#hotlIdArr").val();
			loginPath += "&message=step1";
			loginPath += "&ckinYmd=" + $("#ckinYmd").val();
			loginPath += "&ckoutYmd=" + $("#ckoutYmd").val();
			loginPath += "&adltCnt=" + $("#adltCnt").val(); 
			loginPath += "&chldCnt=" + $("#chldCnt").val();
			loginPath += "&infantCnt=" + $("#infantCnt").val();
			loginPath += "&roomCnt=" + $("#roomCnt").val();
			loginPath += "&totlAdltCnt=" + $("#totlAdltCnt").val();		              
			loginPath += "&totlChldCnt=" + $("#totlChldCnt").val();		              
			loginPath += "&totlInfantCnt=" + $("#totlInfantCnt").val();
			loginPath += "&nightCnt=" + jQuery("#nightCnt").val();
			
			$("#resvForm").attr("method", "post");
			$("#resvForm").attr("action", loginPath);
			$("#resvForm").submit();
		}else{
			openFavorUseGuide(spofrId, packItNo, hotlId);
		}
	}else{
		openFavorUseGuide(spofrId, packItNo, hotlId);
	}
}

//혜택 및 유의사항 조회 
function openFavorUseGuide(spofrId, packItNo, hotlId){
	
	$('.hotelList li a').each(function(){
        if($(this).hasClass('on')===true){
            $('#hotlId_selection_span').text($(this).text());
        }
    });
		              		
	$.ajax({
		url: "/resv/rpm/packFavorUseGuide.do",
		cache: false,
		type: "POST",
		beforeSend : function(){
			$('#packMd').show();
		},
		data:"spofrId="+spofrId+"&packItNo="+packItNo+"&hotlId="+hotlId,
		
		success : function(html){
			
			var tempObj = jQuery.parseJSON(html);
			var dataObj = tempObj.model;
			
			if(dataObj.FLAG == "success"){

				var domain = "";
				var favorLabel = messages["msg.resv.favor.use.guide"]; /*혜택 및 이용안내*/
				var closeLabel = messages["btn.cmm.close"];				/* 닫기 */
				
				var titleImgPath = "";
				var titleImgAlt = "";
				
				for(var i = 0; i < dataObj.bbAttFileSList.length; i++){
					if(dataObj.bbAttFileSList[i].attFileTypCd == "SPOFR_PACK_DETAIL_PACK"){
						titleImgPath = dataObj.bbAttFileSList[i].fileWebPath;
						titleImgAlt = dataObj.bbAttFileSList[i].attFileTypNm == null ? "titleImage" : dataObj.bbAttFileSList[i].attFileTypNm;
					}
				}
				
				if(dataObj.spofrExVo.hotlId == "S" || dataObj.spofrExVo.hotlId == "C"){
					titleImgPath = webDomain+"images/upload/"+titleImgPath;
					domain = webDomain+"images/upload/";
				}else if(dataObj.spofrExVo.hotlId == "MBR"){
					titleImgPath = "/images/upload/"+titleImgPath;
					domain = "/images/upload/";
				}else if(dataObj.spofrExVo.hotlId == "VDNSM"){
					titleImgPath = monoDomain+"images/upload/"+titleImgPath;
					domain = monoDomain + "images/upload/";
				}else{
					domain = stayDomain+"images/upload/";
					titleImgPath = stayDomain+"images/upload/"+titleImgPath;
				}
				
				var tempHtml = "";
				
				tempHtml += "<div class=\"popHead\">";
				tempHtml += "	<h2 class=\"tit\">"+favorLabel+"</h2>";
				tempHtml += "	<div class=\"btn\">";
				tempHtml += "		<a class=\"btnClose\" href=\"#none\" onclick=\"fncLayerClose('popLayerInfo','packMd');\">";
				tempHtml += "			<span>"+closeLabel+"</span>";
				tempHtml += "		</a>";
				tempHtml += "	</div>";
				tempHtml += "</div>";
				tempHtml += "<div class=\"popCtn\">";
				tempHtml += "	<div class=\"packViewContent\">";
				tempHtml += "		<p class=\"packageTopTit\">";
				tempHtml += "			<img src=\""+titleImgPath+"\" alt=\""+titleImgAlt+"\">";
				tempHtml += "		</p>";
				tempHtml += "		<div class=\"packViewDesc\">";
				tempHtml += 			dataObj.spofrExVo.packDesc;
				tempHtml += "		</div>";
				tempHtml += "	</div>";
				
				tempHtml += "	<div class=\"packProductDesc\">";
				
				if(typeof dataObj.spofrExVo["firstDetail0"] != "undefined"){
					tempHtml += "				<dl>";
					tempHtml += "					<dd>";
					tempHtml +=	"						<div class=\"benefitTbl\">";
					for(var i = 0; i < 6; i++){
						var firstDetail = dataObj.spofrExVo["firstDetail"+i];
						var secondDetail = dataObj.spofrExVo["secondDetail"+i];
						var thirdDetail = dataObj.spofrExVo["thirdDetail"+i];
						
						if(typeof firstDetail != "undefined" && typeof secondDetail == "undefined"){
							tempHtml += "						<table>";
							tempHtml += "							<caption>"+favorLabel+"</caption>";
							tempHtml += "							<colgroup>";
							tempHtml += "								<col width=\"25%\" class=\"col1\">";
							tempHtml += "								<col width=\"*\" class=\"col2\">";
							tempHtml += "							</colgroup>";
							tempHtml += "							<tbody>";
							tempHtml += "								<tr>";
							tempHtml += "									<th>"+firstDetail+"</th>";
							tempHtml += "									<td>";
							tempHtml += "										<ul class=\"tblList\">";
							tempHtml += 											thirdDetail;
							tempHtml += "										</ul>";
							tempHtml += "									</td>";
							tempHtml += "								</tr>";
							tempHtml += "							</tbody>";
							tempHtml += "						</table>";
						} else if(typeof firstDetail != "undefined" && typeof secondDetail != "undefined"){
							tempHtml += "						<table>";
							tempHtml += "							<caption>"+favorLabel+"</caption>";
							tempHtml += "							<colgroup>";
							tempHtml += "								<col width=\"23%\" class=\"col1\">";
							tempHtml += "								<col width=\"20%\" class=\"col2\">";
							tempHtml += "								<col width=\"*\" class=\"col3\">";
							tempHtml += "							</colgroup>";
							tempHtml += "							<tbody>";
							tempHtml += "								<tr>";
							tempHtml += "									<th>"+firstDetail+"</th>";
							tempHtml +="									<td>";
							tempHtml +="										<p class=\"tblPrice\">";
							tempHtml +=											secondDetail;
							tempHtml +="										</p>";
							tempHtml +="									</td>";
							tempHtml += "									<td>";
							tempHtml += "										<ul class=\"tblList\">";
							tempHtml += 											thirdDetail;
							tempHtml += "										</ul>";
							tempHtml += "									</td>";
							tempHtml += "								</tr>";
							tempHtml += "							</tbody>";
							tempHtml += "						</table>";
						}
					}
					
					tempHtml += "					</div>";
					tempHtml += "				</dd>";
					tempHtml += "			</dl>";
				}
				
				if(dataObj.spofrExVo.promotionInfo != "<p></p>" && dataObj.spofrExVo.promotionInfo != "<p><br></p>"){
					
					tempHtml += "	<dl>";
					tempHtml += "		<div class=\"packContact\">";
					tempHtml += "			<dl>";
					tempHtml +=					dataObj.spofrExVo.promotionInfo;
					tempHtml += "			</dl>";
					tempHtml += "		</div>";
					tempHtml += "	</dl>";
				}
				if(dataObj.spofrExVo.rewardsMappingYn == "Y"){
					tempHtml += "<div class=\"packProductDesc new_2019\">";
					tempHtml += "	<dl>";
					tempHtml += "		<div class=\"packContact new_2019\">";
					tempHtml += "			<div class=\"packTit\">";
					tempHtml += 		 		messages["msg.benefit.rewardsmapping.txt"];
					tempHtml += "			</div>";
					tempHtml += "			<div class=\"editBox\">";
					tempHtml += 				dataObj.spofrExVo.rewardsMappingDesc;
					tempHtml += "			</div>";
					tempHtml += "		</div>";
					tempHtml += "	</dl>";
					tempHtml += "</div>";
				}
				for(var k = 0; k < 9; k++){
				
					var includeBenefit = dataObj.spofrExVo["includeBenefit"+k];
					var firstBenefit = dataObj.spofrExVo["firstBenefit"+k];
					var firstBenefitAlt = dataObj.spofrExVo["firstBenefitAlt"+k];
					var firstBenefitDetail = dataObj.spofrExVo["firstBenefitDetail"+k];
					var secondBenefit = dataObj.spofrExVo["secondBenefit"+k];
					var secondBenefitAlt = dataObj.spofrExVo["secondBenefitAlt"+k];
					var secondBenefitDetail = dataObj.spofrExVo["secondBenefitDetail"+k];
					
					if(includeBenefit == 1){
						if(typeof firstBenefit != "undefined"){
							
							tempHtml += "			<dl>";
							tempHtml += "				<dt>"+firstBenefit+"</dt>";
							tempHtml += "				<dd>";
							tempHtml += "					<ul class=\"packProductList\">";
							
							for(var firstBenefitNum = 0; firstBenefitNum < dataObj.bbAttFileSList.length; firstBenefitNum++){
								var firstFileId = "SPOFR_PACK_FIRST_IMG"+k;
								if(firstFileId == dataObj.bbAttFileSList[firstBenefitNum].attFileTypCd){
									tempHtml += "				<li class=\"first\"><img src=\""+domain+dataObj.bbAttFileSList[firstBenefitNum].fileWebPath+"\" alt=\""+firstBenefitAlt+"\"></li>";
								}
							}
							
							for(var secondBenefitNum = 0; secondBenefitNum < dataObj.bbAttFileSList.length; secondBenefitNum++){
								var secondFileId = "SPOFR_PACK_SECOND_IMG"+k;
								if(secondFileId == dataObj.bbAttFileSList[secondBenefitNum].attFileTypCd){
									tempHtml += "				<li class=\"last\"><img src=\""+domain+dataObj.bbAttFileSList[secondBenefitNum].fileWebPath+"\" alt=\""+secondBenefitAlt+"\"></li>";
								}
							}
							
							tempHtml += "					</ul>";
							tempHtml += "				</dd>";
							tempHtml += "				<dd>";
							tempHtml += "					<p class=\"packProductWarn\">";
							tempHtml += 						secondBenefitDetail;
							tempHtml += "					</p>";
							tempHtml += "				</dd>";
							tempHtml += "			</dl>";
						}
					} else if(includeBenefit == 2){
						if(typeof firstBenefit != "undefined"){
							
							tempHtml += "			<div class=\"packProductDesc\">";
							tempHtml += "				<ul>";
							tempHtml += "					<li class=\"first\">";
							tempHtml += "						<dl>";
							tempHtml += "							<dt>"+firstBenefit+"</dt>";
							tempHtml += "							<dd class=\"descImg\">";
							
							for(var firstBenefitNum = 0; firstBenefitNum < dataObj.bbAttFileSList.length; firstBenefitNum++){
								var firstFileId = "SPOFR_PACK_FIRST_IMG"+k;
								if(firstFileId == dataObj.bbAttFileSList[firstBenefitNum].attFileTypCd){
									tempHtml += "						<img src=\""+domain+dataObj.bbAttFileSList[firstBenefitNum].fileWebPath+"\" alt=\""+firstBenefitAlt+"\">";
								}
							}
							tempHtml += "							</dd>";
							tempHtml += "							<dd class=\"descTxt\">"+firstBenefitDetail+"</dd>";
							tempHtml += "						</dl>";
							tempHtml += "					</li>";
							
							if(typeof secondBenefit != "undefined"){
								tempHtml += "					<li class=\"last\">";
								tempHtml += "						<dl>";
								tempHtml += "							<dt>"+secondBenefit+"</dt>";
								tempHtml += "							<dd class=\"descImg\">";
								
								for(var secondBenefitNum = 0; secondBenefitNum < dataObj.bbAttFileSList.length; secondBenefitNum++){
									var secondFileId = "SPOFR_PACK_SECOND_IMG"+k;
									if(secondFileId == dataObj.bbAttFileSList[secondBenefitNum].attFileTypCd){
										tempHtml += "						<img src=\""+domain+dataObj.bbAttFileSList[secondBenefitNum].fileWebPath+"\" alt=\""+secondBenefitAlt+"\">";
									}
								}
								tempHtml += "							</dd>";
								tempHtml += "							<dd class=\"descTxt\">"+secondBenefitDetail+"</dd>";
								tempHtml += "						</dl>";
								tempHtml += "					</li>";
							}
							
							tempHtml += "				</ul>";
							tempHtml += "			</div>";
						}
					}else if(includeBenefit == 3){
						if(typeof firstBenefit != "undefined"){
							
							
							tempHtml += "			<dl>";
							tempHtml += "				<dt>"+firstBenefit+"</dt>";
							tempHtml += "				<dd>";
							tempHtml += "					<ul class=\"packProductList\">";
							tempHtml += "						<li class=\"first\">";
							for(var firstBenefitNum = 0; firstBenefitNum < dataObj.bbAttFileSList.length; firstBenefitNum++){
								var firstFileId = "SPOFR_PACK_FIRST_IMG"+k;
								if(firstFileId == dataObj.bbAttFileSList[firstBenefitNum].attFileTypCd){
														tempHtml += "<img src=\""+domain+dataObj.bbAttFileSList[firstBenefitNum].fileWebPath+"\" alt=\""+firstBenefitAlt+"\">";
								}
							}
							tempHtml += "							<dd>";
							tempHtml += "								<p class=\"packProductWarn\">";
							tempHtml += 									firstBenefitDetail;
							tempHtml += "								</p>";
							tempHtml += "							</dd>";
							tempHtml += "						</li>";
							tempHtml += "						<li class=\"last\">";
							for(var secondBenefitNum = 0; secondBenefitNum < dataObj.bbAttFileSList.length; secondBenefitNum++){
								var secondFileId = "SPOFR_PACK_SECOND_IMG"+k;
								if(secondFileId == dataObj.bbAttFileSList[secondBenefitNum].attFileTypCd){
									tempHtml += "					<img src=\""+domain+dataObj.bbAttFileSList[secondBenefitNum].fileWebPath+"\" alt=\""+secondBenefitAlt+"\">";
								}
							}
							tempHtml += "							<dd>";
							tempHtml += "								<p class=\"packProductWarn\">";
							tempHtml += 									secondBenefitDetail;
							tempHtml += "								</p>";
							tempHtml += "							</dd>";
							tempHtml += "						</li>";
							tempHtml += "					</ul>";
							tempHtml += "				</dd>";
							tempHtml += "			</dl>";
						}
					}
				}
				
				for(var infoSubNum = 0; infoSubNum < 2; infoSubNum++){
					var infoSub = dataObj.spofrExVo["infoSub"+infoSubNum];
					var infoSubAlt = dataObj.spofrExVo["infoSubWebAlt"+infoSubNum];
					if(typeof infoSub != "undefined"){
						tempHtml += "			<dl>";
						tempHtml += "				<dt>"+infoSub+"</dt>";
						tempHtml += "				<dd>";
						for(var infoSubImgNum = 0; infoSubImgNum < dataObj.bbAttFileSList.length; infoSubImgNum++){
							var infoSubFileId = "SPOFR_PACK_INFO_WEBIMG"+infoSubNum;
							if(infoSubFileId == dataObj.bbAttFileSList[infoSubImgNum].attFileTypCd){
								tempHtml += "			<img src=\""+domain+dataObj.bbAttFileSList[infoSubImgNum].fileWebPath+"\" alt=\""+infoSubAlt+"\">";
							}
						}
						tempHtml += "				</dd>";
						tempHtml += "			</dl>";
					}
				}
				tempHtml += "		</div>";
				tempHtml += "		<div class=\"useInfo\">";
				tempHtml += 			dataObj.spofrExVo.useGuideTxt;
				tempHtml += "		</div>";
				tempHtml += "		<div class=\"tab-menu tgMenu1 new_2019\">";
				tempHtml += "			<ul class=\"tab-list\">";
				tempHtml += "				<li class=\"first\"> <a href=\"#none\" class=\"roomBtn\">"+messages["msg.cancel.refund.policy.msg"]+"</a>";
				tempHtml += "					<ul class=\"tab-content active\">";
				tempHtml += "						<li class=\"noticeList1 first last\">";
				tempHtml += 							dataObj.resvCanclPolcy;
				tempHtml += "						</li>";
				tempHtml += "					</ul>";
				tempHtml += "				</li>";
				tempHtml += "			</ul>";
				tempHtml += "		</div>";
				tempHtml += "	</div>";
				tempHtml += "</div>";
				jQuery("#popLayerInfo").html(tempHtml);
				
				 $('.tab-list a').on('click', function () {
	                $(this).toggleClass('on');
	                $(this).siblings('.tab-content').toggleClass('active');
	            });
				 
				var sLef = $(document).scrollLeft();
				var winInnerH = $(window).innerHeight() / 2;
				var popH = $("#popLayerInfo").height() / 2;
				
				var sTop = $(document).scrollTop() + winInnerH - popH;

				var widthHalf = jQuery(".popLayer").width()/2;
				jQuery(".popLayer").css("top" , sTop);
				var diff = parseInt($(window).width()/2 - widthHalf);
				jQuery(".popLayer").css("left",sLef + widthHalf + (diff<15 ? 15 : diff) );
				openLayer('popLayerInfo');
			}
		},	
		error : function(jqxhr, textStatus, error){
			alert( "openImgViewPop Request failed: " + error);
		}
	});
}

function openLayer(objId){
	$(".popLayerInfo").show();
	pc.layerPopup.lockScroll();
}

function clearResv(){
	$(location).attr("href", '/seoul/resv/rpm/memSetStep1.do');
}

function fncLayerClose(objId, mdId){
	jQuery("#"+objId).hide();
	$("#"+mdId).hide();
	pc.layerPopup.unLockScroll();
}

function fncRsvInquire(langTypCd){
	
	$("#rsvInquireHotlId").val($("#hotlId").val());
	var rsvInquireHotlId = jQuery("#hotlId").val();
	
	if(rsvInquireHotlId == "S"){		
		if(langTypCd == "KR"){
			$(".phoneNo .tel").text(" 02-2230-3310");
		} else {
			$(".phoneNo .tel").text(" +82-2-2230-3310");
		}
	} else if(rsvInquireHotlId == "C"){
		if(langTypCd == "KR"){
			$(".phoneNo .tel").text(" 1588-1142");
		} else {
			$(".phoneNo .tel").text(" +82-1588-1142");
		}
	} else if(rsvInquireHotlId == "VDNSM"){
		$(".phoneNo .tel").text(" +84-235-3949-779");
	} else {
		if(langTypCd == "KR"){
			$(".phoneNo .tel").text(" 02-2230-0700");
		} else {
			$(".phoneNo .tel").text(" +82-2-2230-0700");
		}
	}
}
function keyupValidation(key){
	var result = true;
	if(key == 9 || key == 13 || key == 16 || key == 17 || key == 18 
			|| key == 19 || key == 20 || key == 27 || key == 33 || key == 34 
			|| key == 35 || key == 36 || key == 37 || key == 38 || key == 39 
			|| key == 40 || key == 45 || key == 46 || key == 91 || key == 92
			|| key == 93 || key == 144 || key ==  145 || key == 186 || key == 187 
			|| key == 188 || key == 189 || key == 190 || key == 191 || key == 192 
			|| key == 219 || key == 220 || key == 221 || key == 222){
		result = false;
	}
	return result;
}

/**
 * 
 * 스페셜 오퍼 이용안내 팝업 닫기 
 * 
 * @returns
 */
function SPpromoInfoPopupClose(){
	$('#SPpromoInfo').hide();
	$('.opacity').hide();
	pc.layerPopup.unLockScroll();
	$('.re-loader').hide();
}

function fncSearchListMappSeq(){
	if($("#mappSeq").val() != "" && $("#hotlId").val() != "" ){
		
		var searchFlag = true;
		var param = encodeURIComponent(
			JSON.stringify(
				{	'hotlId':$("#hotlId").val()
					, 'mappSeq' : $("#mappSeq").val()
				}
			)
		);
		
		$.ajax({
			url: "/resv/rpm/getPackItMinNight.do",
			data : "data="+param,
			cache: false,
			type: "POST",
			success : function(json){
				var data = jQuery.parseJSON(json);
				var spofrVo = data.model.spofrVo;
				var packItMinNightYn = spofrVo.packItMinNightYn;
				var packItMinNightCnt = spofrVo.packItMinNightCnt;
				
				if(packItMinNightYn == "Y" && $("#resvTypCd").val() == "P"){
					var nightCnt = $("#nightCnt").val();
					if(parseInt(packItMinNightCnt) > parseInt(nightCnt)){
						var packMinMsg = messages["msg.cmm.fail.resv.minPeriod"]; // 해당 패키지는 {0}박 이상 예약 가능한 상품입니다.
							packMinMsg = packMinMsg.replace("{0}", packItMinNightCnt);
							alert(packMinMsg);
							searchFlag = false;
							return;
					}
				}
			},
			error : function(){
				alert( "getPackItMinNight Request Failed");
			},
			complete : function(){
				if(searchFlag){
					fncSearchResvList('N');
				}
			}
		});
	}else{
		var packItMinNightYn = $("#packItMinNightYn").val()
		var packItMinNightCnt = $("#packItMinNightCnt").val();
		
		if(packItMinNightYn == "Y" && $("#resvTypCd").val() == "P"){
			var nightCnt = $("#nightCnt").val();
			if(parseInt(packItMinNightCnt) > parseInt(nightCnt)){
				var packMinMsg = messages["msg.cmm.fail.resv.minPeriod"]; // 해당 패키지는 {0}박 이상 예약 가능한 상품입니다.
					packMinMsg = packMinMsg.replace("{0}", packItMinNightCnt);
					alert(packMinMsg);
					searchFlag = false;
					return;
			}
		}
		
		fncSearchResvList('N');
	}
}

function getDayOfTheWeek(nowDate){ // 해당 날짜의 요일을 계산
	var week = [
		messages["javascript.calendar.table.col.sun"],
		messages["javascript.calendar.table.col.mon"],
		messages["javascript.calendar.table.col.tue"],
		messages["javascript.calendar.table.col.wed"],
		messages["javascript.calendar.table.col.thu"],
		messages["javascript.calendar.table.col.fri"],
		messages["javascript.calendar.table.col.sat"],
		];
	var dayOfWeek = week[new Date(nowDate).getDay()];
	return dayOfWeek;
}

function captureReturnKey(e){
	if(e.keyCode==13 && e.srcElement.type != 'textarea'){
		return false;
	}
}

function fncKeywordReset(){ //키워드 해제
	$("input[name='keyword']").each(function(){
		$(this).prop("checked", false);
		$(this).parent().find("label").removeClass("keyOn");
	});
}

function fnResvPosbAheadDyYnTF(resvPosbAheadDyCnt, nowdate){ //호텔별 당일 예약 가능 여부 체크
	var ckinYmd = $("#ckinYmd").val();
	var afterInYmd = "";
	var aheadDayYnTF = true;
	var limitDay = new Date(nowdate);
	limitDay.setDate(limitDay.getDate()+parseInt(resvPosbAheadDyCnt));
	var limitMm = limitDay.getMonth()+1 < 10 ? "0"+(limitDay.getMonth()+1) : limitDay.getMonth()+1; 
	var limitDd = limitDay.getDate() < 10 ? "0"+limitDay.getDate() : limitDay.getDate();
	var limitYmd = limitDay.getFullYear()+""+limitMm+""+limitDd;
	if(parseInt(limitYmd) >= parseInt(ckinYmd.replace(/-/gi,""))){ //예약가능일 체크인 선택 날짜 비교 후 체크인 날짜 변경
		var ckinD = new Date();
		ckinD.setDate(ckinD.getDate()+parseInt(resvPosbAheadDyCnt));
		var ckinMm = ckinD.getMonth()+1 < 10 ? "0"+(ckinD.getMonth()+1) : ckinD.getMonth()+1; 
		var ckinDd = ckinD.getDate() < 10 ? "0"+ckinD.getDate() : ckinD.getDate();
		
		afterInYmd = ckinD.getFullYear()	+ "" + ckinMm	+ "" + ckinDd; // 변경된 체크인 날짜( YYYY-MM-DD )
	}else{
		afterInYmd = ckinYmd;
	}
	
	if(parseInt(ckinYmd.replace(/-/gi,"")) < parseInt(afterInYmd.replace(/-/gi,""))){
		aheadDayYnTF = false;
	}
	
	return aheadDayYnTF;
}