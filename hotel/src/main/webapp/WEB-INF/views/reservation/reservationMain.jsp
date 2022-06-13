<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<body class="subBody joinBody"><div id="popCalendarDiv" class="popCalendar" style="display:none"></div><link href="/css/mem/common.css" rel="stylesheet" type="text/css">
<link href="/css/mem/title_ko.css" rel="stylesheet" type="text/css">
<link href="/css/mem/common/print.css" rel="stylesheet" type="text/css" media="print">
<link href="/css/mem/mainImages_ko.css" rel="stylesheet" type="text/css">
<link href="/css/mem/common/reserve_new.css" rel="stylesheet" type="text/css">
<link href="/css/mem/common/lang-ko_N.css" rel="stylesheet" type="text/css">
<link href="/css/mem/common/btn_ko.css" rel="stylesheet" type="text/css">
<link href="/css/common/swiper.min.css" rel="stylesheet" type="text/css">
<script src="/js/json2.js" charset="UTF-8"></script>
<script src="/js/jquery-1.8.3.js" charset="UTF-8"></script>
<script src="/js/uniform.js" charset="UTF-8"></script>
<script src="/js/browser.js" charset="UTF-8"></script>
<script src="/js/style.hub.js" charset="UTF-8"></script>
<script src="/js/swiper.min.js"></script>
<script src="/js/style.advance.js" charset="UTF-8"></script><!-- 개선 : js 추가 -->
<script src="/js/resv/advResvCalendar.js" charset="UTF-8"></script> <!-- [2019_모션추가]3 달력 고도화 -->
<script src="/index.do/secu/messageJs.do" charset="UTF-8"></script>
	<script src="/js/common.js" charset="UTF-8"></script>
<script src="/js/commonEx.js" charset="UTF-8"></script>
<script src="/js/jquery.slides.js" charset="UTF-8"></script>
<script src="/js/mbr/popLogin.js" charset="UTF-8"></script><div id="popLoginDiv" class="popLogin" style="display:none"></div>
<script src="/js/mbr/forIdPwd.js" charset="UTF-8"></script><div id="popForIdPwDiv" style="display:none">0</div>
<script src="/js/mbr/mbshPointRead.js" charset="UTF-8"></script><div id="mbshPotinRead" style="display:none"></div>
<script src="/js/resv/resvCalendar.js" charset="UTF-8"></script><script src="/js/resv/resvPromotionCalendar.js" charset="UTF-8"></script><script src="/js/resv/resv.js" charset="UTF-8"></script><script src="/js/resv/din.js" charset="UTF-8"></script><script src="/js/ask/ask.js" charset="UTF-8"></script><script src="/js/mbr/zipno.js" charset="UTF-8"></script><div id="zipNoLayerDiv" class="popLogin" style="display:none"></div><script src="/js/offers/makeAPlan.js" charset="UTF-8"></script><div id="makeAPlanLayerDiv" class="popLogin" style="display:none"></div><script src="/js/mbr/mbr_join.js" charset="UTF-8"></script><script src="/js/jquery.cookie.js" charset="UTF-8"></script>
<script src="/js/placeholders.js" charset="UTF-8"></script>
<script src="/js/rewards_new2020.js" charset="UTF-8"></script>
<script src="/js/dining_new2020.js" charset="UTF-8"></script>
<!--[if IE 6]><script src="/js/png24.js"></script><![endif]-->

<script type="text/javascript">

	</script>

<!-- 운영인 경우만 Google Analytics 호출 -->
<!-- Google Tag Manager -->
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','GTM-T3LBJ26');</script>
<!-- End Google Tag Manager -->

<!-- Global site tag (gtag.js) - Google Analytics -->

<script async="" src="https://www.googletagmanager.com/gtag/js?id=UA-119797985-1"></script>

<script>

  window.dataLayer = window.dataLayer || [];

  function gtag(){dataLayer.push(arguments);}

  gtag('js', new Date());

 

  gtag('config', 'UA-119797985-1');

</script>



<!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-T3LBJ26"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->

<dl class="skipNavi">
	<dt>THE SHILLA 바로가기 메뉴</dt><dd><a class="goContents" href="#contents">본문으로 바로가기</a></dd></dl>

<div class="subWrap subWrapHub">
	
	<div class="contain">
		<script src="/js/resv/advResvCalendar.js" charset="UTF-8"></script> 
<script src="/js/jquery/jquery-ui-1.10.3.min.js" charset="UTF-8"></script>
<script type="text/javascript" src="/js/jquery.ad-gallery.js"></script>
<script src="/js/jquery.flexslider-min.js" charset="UTF-8"></script> 
<style>
.opacity{background-color:#000000; display: block; height: 400%; left: 0; margin: 0; opacity: 0.5; position: absolute; top: 0; width: 100%; z-index: 1100;}
.opacity{-ms-filter: "progid:DXImageTransform.Microsoft.Alpha(Opacity=50)"; /* IE 8 */ filter: progid:DXImageTransform.Microsoft.Alpha(Opacity=50); /* IE 7 and olders */   opacity: .5;}
</style>

<script type="text/javascript">

	// 키워드 선택 해제
	var chldInfoFlag = true; 
	var mgChldInfoFlag = true; 
	// 제주호텔 객실탭 클릭시 노출되는 추천상품 팝업(Member Exclusive) 삭제 = jejuInfoFlag 값을 true에서 false로 변경
	var jejuInfoFlag = false;
	var calOpts;
	var searchFlag = false;
	var multiRoomFlag = true;
	var mgAlertFlag = true;
	
	$(window).on("load", function(){

		/*예약에서 로딩중*/
		var localeLang = "ko";
		if(localeLang == "en"){
			$(".re-loader").attr("style", "z-index:1101; margin-left:-133px; margin-top:-80.5px; position: fixed; top: 50%;left: 50%; display:none;");
		}else if(localeLang == "ja"){
			$(".re-loader").attr("style", "z-index:1101; margin-left:-110px; margin-top:-85px; position: fixed; top: 50%;left: 50%; display:none;");
		}else if(localeLang == "zh"){
			$(".re-loader").attr("style", "z-index:1101; margin-left:-101.5px; margin-top:-70px; position: fixed; top: 50%;left: 50%; display:none;");
		}else{
			$(".re-loader").attr("style", "z-index:1101; margin-left:-101.5px; margin-top:-84px; position: fixed; top: 50%;left: 50%; display:none;");	
		}
		
		if($("#hotlIdArr").val() == ""){ // 호텔 ARR가 없을 경우 버튼 변경
			$("#keywordAreaBtn").attr("src","/images/ko/mem/new_2019/reserve_step1_ok_disable.gif");
			$("#keywordAreaBtn").parent().removeClass();
		}else{
			$("#keywordAreaBtn").attr("src","/images/ko/mem/new_2019/reserve_step1_ok.gif");
			$("#keywordAreaBtn").parent().addClass("btnSubmit");
		}
	});
	
	$(document).ready(function () {
		
		$("#URL_PREFIX").val("/seoul");	// PATH URL
		$("#maxCapaCnt").val("3");	//총 예약 가능 인원
		
		if($("#hotlIdArr").val() == ""){
			$("#resvPosbAheadDyCnt").val("");	//당일예약 가능 여부
		}else{
			$("#resvPosbAheadDyCnt").val("0");	//당일예약 가능 여부
		}
		
		$("#rsvInquireHotlId").val("S");	//객실예약연락처 가져오는 호텔ID
		fncRsvInquire("KR");
		$("select,input").not(".css-checkbox").uniform();
		
		
		hotlListClear();	// 호텔 탭에 데이터 없을 시 이벤트
		
		$(".rooms a").click(function(e){ //객실 별 A태그 버튼 이벤트
            totlCntCalculator();
		});
	
		$(".rsvSubTab").find("li").children("a").click(function(){ // 전체, 객실, 패키지탭 이벤트 바인딩
			var mbrListSize  = $("#mbrList").find("ul").children().length;
			var packListSize = $("#packList").find("ul").children().length;
			var roomListSize = $("#roomList").find("ul").children().length;
			var target = $(this).parent().attr("id"); 
			
			switch (target) {
				
				case "tabMbr"  :
					$("#mbrList").addClass("first");
					$("#mbrList").show();
					$("#packList").hide();
					$("#roomList").hide();
					break;
				case "tabPack" : // 패키지탭
					$("#packList").addClass("first");
					$("#packList").show();
					$("#roomList").hide();
					$("#mbrList").hide();
					break;
				case "tabRoom" : 
					$("#roomList").addClass("first");
					$("#roomList").show();
					$("#packList").hide();
					$("#mbrList").hide();
					if("N" == "N" && "" == "" && "" == ""){
						flag = false;
						if(jejuInfoFlag && "ko" == "ko" && $("#hotlId").val() == "C") {
							jejuInfoPopupOpen();
						}
					}
					break;
				default: return; break;
			}
			
			$(this).parent().parent().addClass("on");
			$(this).parent().parent().siblings().removeClass();
		});

		$("#htBoxInfo .htTabCon li a").bind("click" , function(){ //브랜드별, 권역별 호텔 리스트 클릭 이벤트
			var hotelId = $(this).parent("li").data("hotlid");
			var hotlIdStr = $("#hotlIdArr").val(); //호텔 ID String  ex) S, C, D
			var hotlIdArr = hotlIdStr.split(","); //호텔 ID Array
			var onCount = 0;
			var maxCnt = $(this).closest(".htTabCon").find(".htData").data("maxselcnt");
			$("#htBoxInfo .htTabCon li a").each(function(){
				if($(this).hasClass("on")){
					onCount++;
				}
			});
			
			if(!$(this).hasClass("on")){ //5개 이상 선택시 RETURN
				
				if(onCount == Number(maxCnt)){
					return;
				}
				
				if(hotlIdStr == ""){
					hotlIdStr = hotelId;
					$('#searchBarKeyword').val("");
				}else{
					hotlIdStr += ","+hotelId;
				}
			}else{
				if(hotlIdArr.length == 1){
					hotlIdStr = "";
				}else{
					hotlIdStr = "";
					for(var i = 0;i < hotlIdArr.length; i++){
						if(hotlIdArr[i] != hotelId){
							if(0 == i){
								hotlIdStr = hotlIdArr[i];
							}else{
								if(hotlIdStr == ""){
									hotlIdStr = hotlIdArr[i];
									fnHotlIdSelection(hotlIdArr[i]);
									
								}else{
									hotlIdStr += "," + hotlIdArr[i];	
								}
							}
						}
					}
				}
			}
			if(hotlIdStr != "" && hotlIdStr.split(",").length == 1){
				fnHotlIdSelection(hotlIdStr); // 첫번째로 누른 호텔 정보 GET
			}
			$("#rsvResultTop").html("");
		   	$("#rsvResultCon").html("");
		   	$("#estCharge").hide();
		   	$("#rsvResultWrap").hide();
		   	$("#beforeSearchWrap").show();
		   	$("#emptySearchWrap").hide();
		   	$("#emptyMiceSearchWrap").hide();
			$("#hotlIdArr").val(hotlIdStr);	//호텔ID ARR 데이터

			if(onCount < 1){
				$("#searchBarKeyword").attr('placeholder', "호텔을 선택해주세요.");
			}
			
		});
	
		$("#keywordAreaBtn").click(function(){	// 호텔 키워드 검색 탭
		 	var $ckOptList = $('.htSearch .ckType');
	        var oSelf = this;
	        $ckOptList.each(function(){
	            oSelf.maxSelCnt = $(this).attr('data-maxSelCnt'); //호텔 최대 선택 가능 갯수

	            if(oSelf.maxSelCnt === undefined){
	                if($('.newpromotionWrap').length > 0){ // 프로모션의 경우 1개만 선택 가능
	                    oSelf.maxSelCnt = 1;
	                }else{
	                    oSelf.maxSelCnt = 5;
	                }
	                $(this).attr('data-maxSelCnt', oSelf.maxSelCnt);
	            }
	        });
		});
		$("ul.htTab").find("li").click(function(e){
			
			$("#hotlId").val("");
			$("#hotlIdArr").val("");
			$('.rsvPeople .r_number').trigger('changeClass'); // 검색영역 초기화 트리거
			$("#htBoxInfo .htTabCon li a").each(function(){
				if($(this).hasClass("on")){
					$(this).removeClass("on");
				}
			});
			var keyword = $("#searchBarKeyword").val();
			
			if(keyword.length == 1){
				
			}else{
				if($("#htBrandList .htData").html() == ""){
					$("#htBoxInfo .noData").show();
					$("#htBoxInfo .htTabCon").hide();
				}else{
					var $target = $(e.currentTarget);
		            var tabIdx = $target.index();
		            var $tabCont = $('.htSearch .htTabCon');
		            var $resetBtn = $('.htSearch .btnClear');

		            $tabCont.eq(tabIdx).show();
		            $tabCont.eq(tabIdx).siblings().hide();
		            if($("#htBoxInfo .noti").html() == ""){
		            	$("#htBoxInfo .noti").hide();	
		            }else{
		            	$("#htBoxInfo .noti").show();
		            }
				}
			}
		});
		
		$("#htSchDel").click(function(){
			$("#hotlId").val("");
			$("#searchBarKeyword").val("");
			$("#searchBarKeyword").trigger("keyup");
			$("#hotlIdArr").val("");
			$("#htBoxInfo .noti").hide();
		});
		
		$("#searchBarKeyword").click(function(){
			var chkYn = $("#searchBarKeyword").is(":disabled");
			var hotlIdStr = $("#hotlIdArr").val();
			if(!chkYn){
				if(!$(".ly_reserve.htSearch").is(":visible")){
					$("#htSchDel").trigger("click");
					if(hotlIdArr != ""){
						var hotlIdArr = hotlIdStr.split(","); 
						var hotlNmArr = "";
						var onIdx = 0;
						$(".htSearch .htTab li").each(function(idx){
							if($(this).hasClass("on")){
								onIdx = idx;
							}
						});
						if(onIdx == 0){
							for(var i = 0; i < hotlIdArr.length; i++){
								$("#htRegionList li").each(function(){
									var htSchId = $(this).data("hotlid");
									if(htSchId == hotlIdArr[i]){
										$(this).find("a").addClass("on");
										hotlNmArr += $(this).find("a").text() + ",";
										if(i == 0){
											$("#hotlId").val(hotlIdArr[i]);	
										}
									}
								});	
							}
						}else {
							for(var i = 0; i < hotlIdArr.length; i++){
								$("#htBrandList li").each(function(){
									var htSchId = $(this).data("hotlid");
									if(htSchId == hotlIdArr[i]){
										$(this).find("a").addClass("on");
										hotlNmArr += $(this).find("a").text() + ",";
										if(i == 0){
											$("#hotlId").val(hotlIdArr[i]);	
										}
									}
								});
							}
						}
						hotlNmArr = hotlNmArr.substring(0, hotlNmArr.lastIndexOf(","));
						pc.resvSelHotel.drawSelHtData(hotlNmArr);
						$("#searchBarKeyword").val("");
						$("#hotlIdArr").val(hotlIdArr);
					}
				}
			}
		});
		
		$("input[name='keyword']").click(function () { // 키워드 선택시 볼드처리
			if ($(this).is(":checked")) {
				$(this).parent().find("label").addClass("keyOn");
			} else {
				$(this).parent().find("label").removeClass("keyOn");
			}
		});
	
		$("#searchBarKeyword").delay(1000).keyup(function(e){
			var keyword = $("#searchBarKeyword").val();
			if(!keyupValidation(e.keyCode)){
				return false;
			}
			if($("#resvTypCd").val() == "P"){
				return false;
			}
			if("" == "mbr"){
				return false;			
			}
			var chkIdx = 0;
			$(".htSearch .htTab li").each(function(idx){
				if($(this).hasClass("on")){
					chkIdx = idx;
				}
			});
			if(keyword.trim() != ""){
				$("#htBoxInfo .noti").show();
			}
			if(keyword.trim() == ""){
				$("#htBoxInfo .noti").html("");
				$("#htBoxInfo .noti").hide();
			}
			if("true" == "false"){
				var mbrGBN = "N";	
			}else{
				var mbrGBN = "Y";
			}
			
			if("" != ""){
				var propertyId = "";
			}
			var mappSeq = $("#mappSeq").val();
			
			var param = encodeURIComponent(
							JSON.stringify({
								"keyword" : keyword
								,"propertyId" : propertyId
								,"mappSeq" : mappSeq
								,"mbrGBN" : mbrGBN
								,'isSiteMap':"N"
								,'coporateCd':$("#coporateCd").val()
								,'coporateVal':$("#coporateVal").val()
							}
						)
					);
			var ajaxUrl = "/resv/rpm/searchKeyword.do";
			
			$.ajax({
				url: ajaxUrl,
				data: "data="+param,
				cache: false,
				type: "POST",
				async: false,
				beforeSend : function(){
				},
				success : function(data){
					var jsonObj = jQuery.parseJSON(data);
					var objData = jsonObj.model;
					var resultCnt = objData.FLAG == "00" ? (objData.hotlList.length / 2) : "0";
					var brandHtml = "";
					var regionHtml = "";
					
					var tsHtml = "";
					var stayHtml = "";
					var monoglamHtml = "";
					
					var GNHtml = ""; //강남
					var GBHtml = ""; //강북
					var NWHtml = ""; //전국
					var OSHtml = ""; //해외
					
					$("#hotlId").val(""); //키워드 타이핑 시 초기화
					$("#hotlIdArr").val("");
					$(".btnClear").trigger("click");
					
					if(keyword.length > 1){
						var keywordSearchTxt = "'{0}'에 대한 {1}개의 검색결과";
							keywordSearchTxt = keywordSearchTxt.replace("{0}", keyword);
							keywordSearchTxt = keywordSearchTxt.replace("{1}", resultCnt);
						$("#htBoxInfo .noti").html(keywordSearchTxt);
						$("#htBoxInfo .noti").css("display","block");
					} else {
						$("#htBoxInfo .noti").html("");
						$("#htBoxInfo .noti").css("display","none");
					}
					if(objData.FLAG == "00"){
						if(objData.hotlList.length > 0){
							hotelList = objData.hotlList;
							for(var i = 0; i < hotelList.length; i++){
								var hotelObj = hotelList[i];
								var addClassOn = "";
								var img = "/images/ko/mem/new_2019/bg_check_hotel_default.gif"; 
								if(hotelObj.attFilePath != undefined){ img = "https://www.shilla.net//images/upload/"+hotelObj.attFilePath; } else { img }
								var nm = ""; 
								if(hotelObj.hotlNm != undefined){ nm = hotelObj.hotlNm; }
								var add = ""; 
								if(hotelObj.hotlAddr != undefined){ add = hotelObj.hotlAddr; }
								
								if(hotelObj.brandGroupCd == "TS"){
									tsHtml +="<li data-hotlId=\""+hotelObj.hotlId+"\"data-hoteltitle=\""+ nm +"\" data-addr=\""+ add +"\"data-imgUrl=\""+ img +"\"><a href=\"#none\">"+ nm +"</a></li>";
								}else if(hotelObj.brandGroupCd == "STAY"){
									stayHtml += "<li data-hotlId=\""+hotelObj.hotlId+"\"data-hoteltitle=\"" +nm +"\" data-addr=\""+ add +"\" data-imgUrl=\""+ img +"\"><a href=\"#none\">"+ nm +"</a></li>";
								}else if(hotelObj.brandGroupCd == "MONOGLAM"){
									if("ko" != "ko" && "ko" != "ja"){
										addClassOn = "class=\"monoWidth\"";
									}
									
									monoglamHtml += "<li data-hotlId=\""+hotelObj.hotlId+"\"data-hoteltitle=\""+ nm +"\" data-addr=\""+ add +"\" data-imgUrl=\""+ img +"\"><a "+ addClassOn +"href=\"#none\">"+ nm +"</a></li>";
								}
								if(hotelObj.regionGroupNm == "GN"){
									GNHtml += "<li data-hotlId=\""+hotelObj.hotlId+"\"data-hoteltitle=\""+ nm +"\" data-addr=\""+ add +"\" data-imgUrl=\""+ img +"\"><a href=\"#none\">"+ nm +"</a></li>";
								}else if(hotelObj.regionGroupNm == "GB"){
									GBHtml += "<li data-hotlId=\""+hotelObj.hotlId+"\"data-hoteltitle=\""+ nm +"\" data-addr=\""+ add +"\" data-imgUrl=\""+ img +"\"><a href=\"#none\">"+ nm +"</a></li>";
								}else if(hotelObj.regionGroupNm == "TS"){
									NWHtml += "<li data-hotlId=\""+hotelObj.hotlId+"\"data-hoteltitle=\""+ nm +"\" data-addr=\""+ add +"\" data-imgUrl=\""+ img +"\"><a href=\"#none\">"+ nm +"</a></li>";
								}else if(hotelObj.regionGroupNm =="OS"){
									if("ko" != "ko" && "ko" != "ja"){
										addClassOn = "class=\"monoWidth\"";
									}
									
									OSHtml += "<li data-hotlId=\""+hotelObj.hotlId+"\"data-hoteltitle=\""+ nm +"\" data-addr=\""+ add +"\" data-imgUrl=\""+ img +"\"><a "+ addClassOn+ "href=\"#none\">"+ nm +"</a></li>";
								}
							}
							if(tsHtml != ""){
								brandHtml += "<dl>";
								brandHtml += "	<dt>신라호텔</dt>";
								brandHtml += "	<dd>";
								brandHtml += "		<ul>";
								brandHtml += 			tsHtml;
								brandHtml += 	"	</ul>";
								brandHtml += "	</dd>";
								brandHtml += "</dl>";
							}
							if(monoglamHtml != ""){
								brandHtml += "<dl>";
								brandHtml += "	<dt>신라모노그램</dt>";
								brandHtml += "	<dd>";
								brandHtml += "		<ul>";
								brandHtml += 			monoglamHtml;
								brandHtml += 	"	</ul>";
								brandHtml += "	</dd>";
								brandHtml += "</dl>";
							}
							if(stayHtml != ""){
								brandHtml += "<dl>";
								brandHtml += "	<dt>신라스테이</dt>";
								brandHtml += "	<dd>";
								brandHtml += "		<ul>";
								brandHtml += 			stayHtml;
								brandHtml += 	"	</ul>";
								brandHtml += "	</dd>";
								brandHtml += "</dl>";
							}
							if(GNHtml != "" || GBHtml != "" || NWHtml != ""){
								regionHtml += "<strong class=\"contury\">국내</strong>";						
							}
							
							if(GBHtml != ""){
								regionHtml += "<dl>";
								regionHtml += "	<dt>서울 강북</dt>";
								regionHtml += "	<dd>";
								regionHtml += "		<ul>";
								regionHtml += 			GBHtml;
								regionHtml += 	"	</ul>";
								regionHtml += "	</dd>";
								regionHtml += "</dl>";
							}
							if(GNHtml != ""){
								regionHtml += "<dl>";
								regionHtml += "	<dt>서울 강남</dt>";
								regionHtml += "	<dd>";
								regionHtml += "		<ul>";
								regionHtml += 			GNHtml;
								regionHtml += 	"	</ul>";
								regionHtml += "	</dd>";
								regionHtml += "</dl>";
							}
							if(NWHtml != ""){
								regionHtml += "<dl>";
								regionHtml += "	<dt>전국</dt>"; 
								regionHtml += "	<dd>";
								regionHtml += "		<ul>";
								regionHtml += 			NWHtml;
								regionHtml += 	"	</ul>";
								regionHtml += "	</dd>";
								regionHtml += "</dl>";
							}
							if(OSHtml != ""){
								regionHtml += "<strong class=\"contury\">해외</strong>"; 
								regionHtml += "<dl>";
								regionHtml += "	<dt>베트남</dt>"; 
								regionHtml += "	<dd>";
								regionHtml += "		<ul>";
								regionHtml += 			OSHtml;
								regionHtml += 	"	</ul>";
								regionHtml += "	</dd>";
								regionHtml += "</dl>";
							}
							$("#htBoxInfo .noData").hide();
							$("#htBrandList .htData").html(brandHtml);
							$("#htRegionList .htData").html(regionHtml);
							$(".htSearch .btnClear").show();
							if(chkIdx==0){ //키워드 재검색 시 초기화
								$("#htBrandList").hide();
								$("#htRegionList").show();
							}else{
								$("#htBrandList").show();
								$("#htRegionList").hide();
							}
							$(".htSearch .htTab li").removeClass("on");
							$(".htSearch .htTab li:eq("+chkIdx+")").addClass("on");
							
							$("#htBoxInfo .htTabCon li a").click(function(){ //권역별
								var hotelId = $(this).parent("li").data("hotlid");
								var hotlIdStr = $("#hotlIdArr").val();
								var hotlIdArr = hotlIdStr.split(",");
								var onCount = 0;
								var maxCnt = $(this).closest(".htTabCon").find(".htData").data("maxselcnt");
								
								$("#htBoxInfo .htTabCon li a").each(function(){
									if($(this).hasClass("on")){
										onCount++;
									}
								});
								
								if(!$(this).hasClass("on")){
									if(onCount == Number(maxCnt)){
										return;
									}
									
									if(hotlIdStr == ""){
										hotlIdStr = hotelId;
										$('#searchBarKeyword').val("");
									}else{
										hotlIdStr += ","+hotelId;
									}
								}else{
									if(hotlIdArr.length == 1){
										hotlIdStr = "";
									}else{
										hotlIdStr = "";
										for(var i = 0;i < hotlIdArr.length; i++){
											if(hotlIdArr[i] != hotelId){
												if(0 == i){
													hotlIdStr = hotlIdArr[i];
												}else{
													if(hotlIdStr == ""){
														hotlIdStr = hotlIdArr[i];
														fnHotlIdSelection(hotlIdArr[i]);
														
													}else{
														hotlIdStr += "," + hotlIdArr[i];	
													}
												}
											}
										}
									}
								}
								if(hotlIdStr != "" && hotlIdStr.split(",").length == 1){
									fnHotlIdSelection(hotlIdStr); // ID
									if("N" == "Y"){
										promotionChk(hotlIdStr, 'N', 'N', 'https://www.shilla.net/', 'https://www.shillastay.com/');
									}
								}
								
								$("#rsvResultTop").html("");
							   	$("#rsvResultCon").html("");
							   	$("#estCharge").hide();
							   	$("#rsvResultWrap").hide();
							   	$("#beforeSearchWrap").show();
							   	$("#emptySearchWrap").hide();
							   	$("#emptyMiceSearchWrap").hide();
								$("#hotlIdArr").val(hotlIdStr);
								
								if(hotlIdStr == ""){
									$("#keywordAreaBtn").attr("src","/images/ko/mem/new_2019/reserve_step1_ok_disable.gif");
									$("#keywordAreaBtn").parent().removeClass();
									$("#searchBarKeyword").attr('placeholder', "호텔을 선택해주세요.");
								}else{
									$("#keywordAreaBtn").attr("src","/images/ko/mem/new_2019/reserve_step1_ok.gif");
									$("#keywordAreaBtn").parent().addClass("btnSubmit");
								}
							});
						}else{
							$("#htBrandList .htData").html("");
							$("#htRegionList .htData").html("");
							
							$("#htBoxInfo .noData").css("display","block");
							$("#htBoxInfo .htTabCon").css("display","none");
						}
						/* if(keyword.trim() == "" ){
							$(".htSearch .btnClear").show();
							$("#searchBarKeyword").attr("placeholder", '호텔을 선택해주세요.');
						} */
						if(keyword.trim().length == 1 ){
							$("#htBrandList").hide();
							$("#htRegionList").hide();
							$(".txtErr").show();
							$("#htBoxInfo .noti").html("");
							$("#htBoxInfo .noti").hide();
							$(".htSearch .btnClear").hide();
							$(".noData").html("<p>두 글자 이상 입력해주세요.</p>");
							$(".noData").show();
						}else{
							$(".noData").html("<p>검색 결과가 없습니다.<br>다른 키워드를 선택해주세요.</p>");
							$(".txtErr").hide();
						}
					}else{
						$("#htBrandList .htData").html("");
						$("#htRegionList .htData").html("");
						
						$("#htBoxInfo .noData").show();
						$("#htBoxInfo .htTabCon").hide();
						/* if(keyword.trim() == "" ){
							$(".htSearch .btnClear").show();
							$("#searchBarKeyword").attr("placeholder", '호텔을 선택해주세요.');
						} */
						if(keyword.trim().length == 1 ){
							$("#htBrandList").hide();
							$("#htRegionList").hide();
							$(".txtErr").show();
							$("#htBoxInfo .noti").html("");
							$("#htBoxInfo .noti").hide();
							$(".htSearch .btnClear").hide();
							$(".noData").html("<p>두 글자 이상 입력해주세요.</p>");
							$(".noData").show();
						}else{
							$(".noData").html("<p>검색 결과가 없습니다.<br>다른 키워드를 선택해주세요.</p>");
							$(".txtErr").hide();
						}
					}
				},
				error : function(jqxhr, textStatus, error){
					alert("keywordsSearch request fail : " + error);
				}
			});
		});

		// 초기 데이터 세팅
		var ckinYmd = "";
		var ckoutYmd = "";
		var ymdFlag = false;
		
		if("false" == "true" && chldInfoFlag){
			childInfoPopupOpen();
		}
		if("false" == "true" && mgChldInfoFlag){
			//mgChildInfoPopupOpen();
		}
		pc.resvSelHotel.init();
		
		calOpts = {
			calDiv: "rsvCalendarDate",
			ckinYmdId: "ckinYmd",
			ckoutYmdId: "ckoutYmd",
			nightCntId: "nightCnt",
			resvDateInfoId: "resvDateInfo",
			ckinYmdInfoId: "ckinYmdInfo",
			ckoutYmInfodId: "ckoutYmdInfo",
			nightCntInfoId: "nightCntInfo",
			isMain: false,
			isSiteMap: 'N',
			lang : 'ko',
			today: '2022-06-13' //오늘날짜
		};
	
		$.advResvCalendar.setDefaults(calOpts);
		if(ckinYmd == "" && ckoutYmd == ""){
			ymdFlag = true;
			
			var ckinD = new Date();
			
			ckinD.setDate(ckinD.getDate());	// 날짜	
			var ckinMm = ckinD.getMonth()+1 < 10 ? "0"+(ckinD.getMonth()+1) : ckinD.getMonth()+1; //MM 
			var ckinDd = ckinD.getDate() < 10 ? "0"+ckinD.getDate() : ckinD.getDate();	//DD
			var ckinYmd = ckinD.getFullYear()	+ "-" + ckinMm	+ "-" + ckinDd;	//YYYY-MM-DD
			var ckinYmdD = getDayOfTheWeek(ckinYmd); //요일
			
			var ckoutD = new Date();
				ckoutD.setDate(ckoutD.getDate()+1);	//체크아웃
			
			var ckoutMm = ckoutD.getMonth()+1 < 10 ? "0"+(ckoutD.getMonth()+1) : ckoutD.getMonth()+1; 
			var ckoutDd = ckoutD.getDate() < 10 ? "0"+ckoutD.getDate() : ckoutD.getDate();
			var ckoutYmd = ckoutD.getFullYear()	+ "-" + ckoutMm	+ "-" + ckoutDd;
			var ckoutYmdD = getDayOfTheWeek(ckoutYmd);
			
			$("#ckinDateInfo").text(ckinYmd.replace(/-/gi,".") +" ("+ckinYmdD+")");
			$("#ckoutDateInfo").text(ckoutYmd.replace(/-/gi,".") +" ("+ckoutYmdD+")");
			$("#roomCntTxt").text("1");	//디폴트 객실수
			$("#roomCnt").val("1");
			$("#totlAdltCnt").val("2");	//디폴트 총성인수
			$("#totlChldCnt").val("0");	//디폴트 총어린이수
			$("#totlInfantCnt").val("0");//디폴트 총유아수
			$("#adltCnt").val("2");
			$("#totlAdltCntTxt").text("2");
			$("#chldCnt").val("0");
			$("#infantCnt").val("0");
			
			if("" != "" && "" != ""){ //프로모션을 통해 들어오는 경우
				pc.resvSelHotel.drawSelHtData("서울신라호텔");
				promotionChk("","N", 'N', 'https://www.shilla.net/', 'https://www.shillastay.com/');
			}
			if("true" == "false" && "" != ""){
				if("mbr" != ""){
					fnHotlIdSelection("");
					$("#hotlIdArr").val("");
				}
			}
			if("N" == "Y"){ // 사이트맵에서 들어온 프로모션
				$(".rsvSchHotel").addClass("disabled");
			}
			if(parseInt("32") == 1){
				fnHotlIdSelection("S");
				var hotlNmArr = "";
				$("#htBrandList li").each(function(){
					var htSchId = $(this).data("hotlid");
					if(htSchId == "S"){
						$(this).find("a").addClass("on");
						hotlNmArr += $(this).find("a").text() + ",";
					}
				});		
				hotlNmArr = hotlNmArr.substring(0, hotlNmArr.lastIndexOf(","));
				pc.resvSelHotel.drawSelHtData(hotlNmArr);
				//$("#searchBarKeyword").val(hotlNmArr);
				$("#searchBarKeyword").attr("readonly",true);
				$("#searchBarKeyword").off("click");
				$('.rsvWrap').off('click.showHtSearch');
				$("#hotlIdArr").val("S");
			}
			if("" != "" && "" != ""){
				if("" == "S"){
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
				}
			}
			if("" != ""){
				if("" == "S"){
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
				}
			}
			$("#ckinYmd"	).val( ckinD.getFullYear()	+ "-" + ckinMm	+ "-" + ckinDd	);	// 체크인 날짜( YYYY-MM-DD )
			$("#ckoutYmd"	).val( ckoutD.getFullYear() + "-" + ckoutMm + "-" + ckoutDd	);	// 체크아웃 날짜( YYYY-MM-DD )
			
		}else{
			//모노그램 다낭 날짜 체크 얼럿
			if("false" == "true" && mgAlertFlag){
				//alert("신라모노그램 다낭은 6월 1일부터 예약 가능하오니 투숙일을 변경해주십시오.");
				//mgAlertFlag = false;
			}
			
			
			/** 삼성예약가능 4월1일 */
			var years1 = '2020'; var months1 = '04'; var days1 = '01'; var dates1 = new Date(); dates1.setFullYear(years1, months1-1, days1); dates1.setDate(dates1.getDate());
			var tmpss = $("#tempCkinYmd").val().split("-");
			var years2 = tmpss[0]; var months2 = tmpss[1]; var days2 = tmpss[2]; var dates2 = new Date(); dates2.setFullYear(years2, months2-1, days2); dates2.setDate(dates2.getDate());
			if($("#hotlIdArr").val().indexOf("SAMSS") > -1){ if(dates1.getTime() > dates2.getTime()) { alert("신라스테이 삼성은 4월 1일부터 예약 가능하오니 투숙일을 변경해주십시오."); } }
			
			
			if(parseInt("") > 1 && 
					(parseInt("0") > 0 || parseInt("0") > 0 || parseInt("0") > 0) && multiRoomFlag){
				alert("다중 객실 예약  시, 투숙 인원에 따라 객실별 요금이 상이할 수 있습니다."); 
				multiRoomFlag = false;
			}
			
			searchFlag = true;
			var hotlIdArr = $("#hotlIdArr").val();
			var hotlIdList = hotlIdArr.split(",");
			var lang = "ko";
			var hotlNm = "";
			
			switch (lang) {
				case "ko" : hotlNm = "서울신라호텔"; break;
				case "en" : hotlNm = "The Shilla Seoul"; break;
				case "ja" : hotlNm = "ソウル新羅ホテル"; break;
				case "zh" : hotlNm = "首尔新罗酒店"; break;
				default	  : hotlNm = "서울신라호텔"; break;
			}
			
			if(hotlIdArr != ""){
				var hotlNmArr = "";
				$("#htBrandList li").each(function(idx){
					if($(this).find("a").hasClass("on")){
						hotlNmArr += $(this).find("a").text() + ",";
					}
				});
				pc.resvSelHotel.drawSelHtData(hotlNmArr.substring(0, hotlNmArr.lastIndexOf(",")));
			}else{
				pc.resvSelHotel.drawSelHtData(hotlNm);
			}
			//$("#searchBarKeyword").val(hotlNm);
			$("#comHotlNm").val(hotlNm); // 어권에 맞는 호텔명
			var adltCntArr = "2".split(",");
			var chldCntArr = "".split(",");
			var infantCntArr = "".split(",");
			var roomCnt = $("#roomCnt").val();
			$("#roomCntArea .con").each(function(idx){
				$(this).find(".num:eq(0)").text(adltCntArr[idx]);
				$(this).find(".num:eq(1)").text(chldCntArr[idx]);
				$(this).find(".num:eq(2)").text(infantCntArr[idx]);
				if(idx+1 <= roomCnt){
					$(this).addClass("add");
					if(idx+1 > 1){
						$(this).closest(".r_number").addClass("addRoom"+Number(idx+1));
					}
				}
			});
			
			var ckinYmdD = getDayOfTheWeek(ckinYmd);
			var ckoutYmdD = getDayOfTheWeek(ckoutYmd);
			$("#ckinDateInfo").text(ckinYmd.replace(/-/gi,".") +" ("+ckinYmdD+")");
			$("#ckoutDateInfo").text(ckoutYmd.replace(/-/gi,".") +" ("+ckoutYmdD+")");
			$("#nightCntInfo").text("박");
			totlCntCalculator();
			
			if("" != "" && "" != ""){
				if("" == "S"){
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
				}
			}
			if("" != ""){
				if("" == "S"){
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
				}
			}
			if(parseInt("32") == 1){
				$("#searchBarKeyword").attr("readonly",true);
				$("#searchBarKeyword").off("click");
				$('.rsvWrap').off('click.showHtSearch');
			}
			if("" != "" && "" != ""){
				$(".rsvSchHotel").addClass("disabled");
				promotionChk("","N", 'N', 'https://www.shilla.net/', 'https://www.shillastay.com/');
			}
			if("" != ""){
				$("#searchBarKeyword").prop("disabled",true);
				$(".btnInpSch").remove();
			}
			if("0" == "0" && "0" == "0" && "0" == "0"  ){
				alert("현재 예약가능한 객실이 없습니다."); 	
			}
		}
		$("#ckinYmd, #totlAdltCnt").change(function(){
			totlCntCalculator();
			if(searchFlag){
				   if($("#tempHotlId").val() != $("#hotlId").val() || 
						  $("#tempCkinYmd").val() != $("#ckinYmd").val() || 
						  $("#tempCkoutYmd").val() != $("#ckoutYmd").val() ||
						  $("#tempRoomCnt").val() != $("#roomCnt").val() ||
						  $("#tempAdltCnt").val() != $("#totlAdltCnt").val() ||
						  $("#tempChldCnt").val() != $("#totlChldCnt").val() ||
						  $("#tempInfantCnt").val() != $("#totlInfantCnt").val()
				   ){
						$("#rsvResultTop").html("");
					   	$("#rsvResultCon").html("");
					   	$("#estCharge").hide();
					   	$("#rsvResultWrap").hide();
					   	$("#beforeSearchWrap").show();
					   	$("#emptySearchWrap").hide();
					   	$("#emptyMiceSearchWrap").hide();
				   }
			   } 
		});
		$("#htBrandList li, #htRegionList li, .rsvPeople .r_number").on("changeClass", function(){
			totlCntCalculator();
		   if(searchFlag){
			   if($("#tempHotlId").val() != $("#hotlId").val() || 
					  $("#tempCkinYmd").val() != $("#ckinYmd").val() || 
					  $("#tempCkoutYmd").val() != $("#ckoutYmd").val() ||
					  $("#tempRoomCnt").val() != $("#roomCnt").val() ||
					  $("#tempAdltCnt").val() != $("#totlAdltCnt").val() ||
					  $("#tempChldCnt").val() != $("#totlChldCnt").val() ||
					  $("#tempInfantCnt").val() != $("#totlInfantCnt").val()
			   ){
					$("#rsvResultTop").html("");
				   	$("#rsvResultCon").html("");
				   	$("#estCharge").hide();
				   	$("#rsvResultWrap").hide();
				   	$("#beforeSearchWrap").show();
				   	$("#emptySearchWrap").hide();
				   	$("#emptyMiceSearchWrap").hide();
			   }
		   } 
		});
		$('.tglType2.roomsList .roomCk input').on('click', function(e){
			var $targetWrap  = $(this).closest('li');
			var $roomRelationSlider = $targetWrap.find('.roomRelation .slideBox .flexslider');
			pc.flexslider.roomRelation($roomRelationSlider);
		});
	});
	
	fnHotlIdSelection = function(selectVal){
		var selectObj = selectVal;
		$.ajax({
			url: "/resv/rpm/getHotlInfo.do",
			data : { "hotlId": selectObj },
			cache: false,
			type: "POST",
			async: false,
			success : function(json){
				var data = jQuery.parseJSON(json);
				
				var lang = "ko";
				var hotlNm = "";
				
				switch (lang) {
					case "ko" : hotlNm = data.model.hotlVo.hotlNmKr; break;
					case "en" : hotlNm = data.model.hotlVo.hotlNmEn; break;
					case "ja" : hotlNm = data.model.hotlVo.hotlNmJp; break;
					case "zh" : hotlNm = data.model.hotlVo.hotlNmCn; break;
					default	  : hotlNm = data.model.hotlVo.hotlNmKr; break;
				}
				
				$("#comHotlNm").val(hotlNm); // 어권에 맞는 호텔명
				$("#resvTime").val(data.model.hotlVo.resvTime);
				$("#maxCapaCnt").val(data.model.hotlVo.maxCapaCnt);
				$("#resvPosbAheadDyCnt").val(data.model.hotlVo.resvPosbAheadDyCnt);
				$("#searchBarKeyword").attr('placeholder', hotlNm);
				$("#prtyExpRoom").val(data.model.hotlVo.prtyExpRoom);
				$("#rsvInquireHotlId").val(data.model.hotlId);	//객실예약연락처 가져오는 호텔ID
				$("#hotlId").val(data.model.hotlId);
				$("#hotlUrlPath").val(data.model.hotlVo.hotlUrlPath);
				if("true" == "false" && "" != ""){
					//$("#searchBarKeyword").val(hotlNm);
					$("#searchBarKeyword").off("keyup");
				}
				if(searchFlag){
					$("#htBrandList li").trigger("changeClass");
				}
				$("input[name='keyword']").each(function(){ // 당일 에약 가능 여부 확인 후 날짜 데이터 변경
					$(this).prop("checked", false);
				});
			},
			error : function(){
				alert( "getHotlInfo Request Failed");
			}
		});
	},
	
	fncSearchResvList = function(tabYn){
		totlCntCalculator(); //  데이터 취합
		var result = "02";
		var guestLabel	= "투숙인원을 선택해주세요.";	// 투숙인원을 선택해주세요.
		
		//데이터 초기화
		if("" == "" || "N" == "Y"){
			if("" == ""){
				if("" == ""){
					//if(("" == "" || "" == "")){
						$("#resvTypCd"			).val("");	// 예약구분코드
						$("#roomCd"				).val("");	// 객실코드
						$("#viewCd"				).val("");	// 전망코드
						$("#roomTypCd"			).val("");	// 객실구분코드
						$("#bedTypCd"			).val("");	// 침대구분코드
						$("#ratePlanCode"		).val("");	// rate code
						$("#spofrId"			).val("");	// 스페셜오퍼ID
						$("#packItNo"			).val("");	// 패키지상품번호
						$("#choiceRoomClsCd"	).val("");	// 선택한 룸의 객실클래스코드
						$("#choiceInfantResvYn"	).val("");	// 선택한 룸의 유아예약가능여부
						$("input[name='keyword']:checked").each(function(){
							var keywordId = $(this).attr("id");
							var keywordHotlid = $(this).data("hotlid");
							if(keywordHotlid != $("#hotlId").val()){
								$(this).prop("checked",false);
								$("label[for='"+keywordId+"']").removeClass("keyOn");
							}
						});
					//}
				}else{
					$("#resvTypCd"			).val("");	// 예약구분코드
					$("#roomCd"				).val("");	// 객실코드
					$("#viewCd"				).val("");	// 전망코드
					$("#roomTypCd"			).val("");	// 객실구분코드
					$("#bedTypCd"			).val("");	// 침대구분코드
					$("#ratePlanCode"		).val("");	// rate code
					$("#spofrId"			).val("");	// 스페셜오퍼ID
					$("#packItNo"			).val("");	// 패키지상품번호
					$("#choiceRoomClsCd"	).val("");	// 선택한 룸의 객실클래스코드
					$("#choiceInfantResvYn"	).val("");	// 선택한 룸의 유아예약가능여부
					$("input[name='keyword']:checked").each(function(){
						var keywordId = $(this).attr("id");
						var keywordHotlid = $(this).data("hotlid");
						if(keywordHotlid != $("#hotlId").val()){
							$(this).prop("checked",false);
							$("label[for='"+keywordId+"']").removeClass("keyOn");
						}
					});
				}
			}
		}
		
		fncCpInit('ko');	// 비교함 초기화
		
		var aryPeople = [];
		$('.number > .num').each(function(index) {
	    	aryPeople.push($(this).text());
		});
	    var sumAds = Number(aryPeople[0]) + Number(aryPeople[3]) + Number(aryPeople[6]);
	    var sumKis = Number(aryPeople[1]) + Number(aryPeople[4]) + Number(aryPeople[7]);
	    var sumBbs = Number(aryPeople[2]) + Number(aryPeople[5]) + Number(aryPeople[8]);
	    
	    if(sumAds <= 0){
			alert(guestLabel);
			return;
		} 
	    
		if("N" == "Y"){
			
			if(jQuery("#coporateCd").val() == ""){
				alert(messages["msg.cmm.required"].replaceMsg(['그룹예약타입']));
				return;
			}
			
			if(jQuery("#coporateVal").val() == ""){
				alert(messages["msg.cmm.required"].replaceMsg(['그룹예약코드']));
				$("#coporateVal").focus();
				return;
			}
		}
		if($("#hotlIdArr").val() == ""){
			alert('호텔을 선택해주세요.'); 
			return;
		}
		
		if($("#ckinYmd").val() == '') {
			alert(messages["msg.cmm.selected.required"].replaceMsg(["체크인 날짜"]));
			$("#ckinYmd").focus();
			return;
		} 
		
		if(!isValidYmd($("#ckinYmd").val())) {
			alert(messages["msg.cmm.date2"].replaceMsg(["체크인 날짜"]));
			$("#ckinYmd").focus();
			return;
		}
		
		
		if($("#ckoutYmd").val() =='') {
			alert(messages["msg.cmm.selected.required"].replaceMsg(["체크아웃 날짜"]));
			$("#ckoutYmd").focus();
			return;
		}
		
		if(!isValidYmd($("#ckoutYmd").val())) {
			alert(messages["msg.cmm.date2"].replaceMsg(["체크아웃 날짜"]));
			$("#ckoutYmd").focus();
			return;
		}
		
		if(parseInt($("#totlAdltCnt").val()) < 1){
			alert("투숙인원을 선택해주세요."); 
			return;
		}
		
		if($("#nightCnt").val() =='') { 
			var dayCnt = diffDay($("#ckinYmd").val(), $("#ckoutYmd").val());
			$("#nightCnt").val(dayCnt);
		}
		
		if("" != "" && "" == "COMPANY"){
			$("#coporateCd").val("CORPORATE");
		}
		
		if("N" == "Y"){
			if($("#coporateCd").val() == ""){
				alert(messages["msg.cmm.required"].replaceMsg(['그룹예약타입']));		
				$("#coporateCd").focus();
				return;
			}
			
			if($("#coporateVal").val() == ""){
				alert(messages["msg.cmm.required"].replaceMsg(['그룹예약코드']));
				$("#coporateVal").focus();
				return;	
			}
		}
		
		if($("#coporateCd").val() != "" && $("#coporateVal").val() == ""){
			alert(messages["msg.cmm.required"].replaceMsg(['그룹예약코드']));
			$("#coporateVal").focus();
			return;
		}
		
		if($("#coporateCd").val() == "" && $("#coporateVal").val() != ""){
			alert(messages["msg.cmm.required"].replaceMsg(['그룹예약타입']));		
			jQuery("#coporateCd").focus();
			return;
		}
		
		if($("#coporateCd").val() != "" && $("#coporateVal").val() != ""){
			$("#resvTypCd").val("M");
			$("#coporateCd").prop("disabled", false);
			$("#coporateVal").prop("disabled", false);
		}
		
		var optList = [];
		$("input[name='keyword']:checked").each(function(){
			optList.push($(this).val());
		});
		
		$('.opacity').show();
		pc.layerPopup.lockScroll();
		$('.re-loader').show();
		
		var noResvHotlNm = "";
		var noResvHotlCnt = 0;
		//인원 수 VALIDATION CHECK
		var hotlIdArr = $("#hotlIdArr").val();
		if(hotlIdArr != ""){
			var alertFlag = "";
			//선택된 호텔 ARRAY STRING;
			var hotlIds = hotlIdArr.split(",");
			//선택된 호텔 갯수
			var hotlCnt = hotlIds.length;
			 // 객실당 최대 선택가능한 총인원수
            var maxCnt = 4;
            // 객실당 최대 선택가능한 성인수
            var adltMaxCnt = 3;
            // 객실 별 인원 LIST로 변경
            var adultStr = $("#adltCnt").val();
            var adltList = adultStr.split(",");
            var chldStr = $("#chldCnt").val();
            var chldList = chldStr.split(",");
            var infantStr = $("#infantCnt").val();
            var infantList = infantStr.split(",");
            var roomCnt = $("#roomCnt").val();
            
            for (var i = 0; i < hotlIds.length; i++) {
                if (hotlIds[i] == "D") {
                    //동탄인 경우
                    maxCnt = 3;
                    adltMaxCnt = 2;
                    break;
                } else if(hotlIds[i] == "VDNSM"){
                	if(hotlCnt == 1){
                    	maxCnt = 14;
                    	adltMaxCnt = 10;
                	}else if(hotlCnt == 2 && hotlIdArr.indexOf("HUDSS") > -1){
                		maxCnt = 5;
                        adltMaxCnt = 4;
                	}else if(hotlIdArr.indexOf("HUDSS") > -1 ){
                    	maxCnt = 4;
                    	adltMaxCnt = 2;
                    }else{
                		maxCnt = 4;
                        adltMaxCnt = 3;
                	}
                } else if (hotlIds[i] == "HUDSS") {
                    // 스테이 해운대인 경우
                    if(hotlCnt == 1 || (hotlCnt == 2 && hotlIdArr.indexOf("VDNSM") > -1)) {
                        maxCnt = 5;
                        adltMaxCnt = 4;
                    }else if(hotlIdArr.indexOf("HUDSS") > -1 ){
                    	maxCnt = 4;
                    	adltMaxCnt = 2;
                    }else {
                        maxCnt = 4;
                        adltMaxCnt = 3;
                    }
                    continue;
                }  else if (hotlIds[i] == "S") {
                    // 서울신라호텔인 경우
                    if(hotlCnt == 1 || (hotlCnt == 2 && hotlIdArr.indexOf("VDNSM") > -1) || (hotlCnt == 2 && hotlIdArr.indexOf("HUDSS") > -1) || (hotlCnt == 2 && hotlIdArr.indexOf("SDMSS") > -1) ) {
                        maxCnt = 5;
                        adltMaxCnt = 4;
                    }else if(hotlIdArr.indexOf("S") > -1 ){
                    	maxCnt = 4;
                    	adltMaxCnt = 2;
                    }else {
                        maxCnt = 4;
                        adltMaxCnt = 3;
                    }
                    continue;
                } else {
                	maxCnt = 4;
                    adltMaxCnt = 3;
                }
            }
            var dongtanFlag = false;
            var haewoondaeFlag = false;
            var danangFlag = false;
            var seoulFlag = false;
            for (var i = 0; i < hotlIds.length; i++) {
            	if (hotlIds[i] == "D") {
            		dongtanFlag = true;
            	}
            	if(hotlIds[i] == "HUDSS"){
            		haewoondaeFlag = true;
            	}
            	if(hotlIds[i] == "VDNSM"){
            		danangFlag = true;
            	}
            	if(hotlIds[i] == "S"){
            		seoulFlag = true;
            	}
           }
            //동탄, 해운대, 다낭 호텔 포함 여부 확인
            if(dongtanFlag || haewoondaeFlag || danangFlag || seoulFlag){
            	alertFlag = "";
            	if(dongtanFlag){
            		alertFlag += "D";
            	}
    			if(haewoondaeFlag){
            		alertFlag += "H";
            	}
    			if(danangFlag){
            		alertFlag += "M";
            	}
    			if(seoulFlag){
            		alertFlag += "S";
            	}
            }else{
            	alertFlag = "N";
            }
          //객실 별 인원 체크
            for(var roomIdx = 0; roomIdx < Number(roomCnt); roomIdx++){
            	var adltCnt = adltList[roomIdx]; // 성인 수
            	var chldCnt = chldList[roomIdx]; // 어린이 수
            	var infantCnt = infantList[roomIdx]; // 유아 수
            	var totlCnt = parseInt(adltCnt) + parseInt(chldCnt) + parseInt(infantCnt);
           		if(totlCnt > maxCnt || adltCnt > adltMaxCnt ){
           			if(2 > hotlCnt){
           				if(alertFlag == "N"){
            				//객실 1실당 성인과 소인 동반 시 최대 4인까지만 투숙이 가능합니다.
            				var mag = messages["javascript.fncgoresv.room.alert1"]; 
    				        	mag = mag.replace(/<br\/>/g,"\n");
    	            		alert(mag);
    	            	}else if(alertFlag == "D"){
    	            		//신라스테이 동탄은 객실 1실당 성인과 소인 동반 시 최대 3인까지만 투숙 가능합니다. 
    	            		var mag = messages["javascript.fncgoresv.room.alert2"]; 
    				        	mag = mag.replace(/<br\/>/g,"\n");
    	            		alert(mag);
    	            	}else if(alertFlag == "H"){
    	            		//신라스테이 해운대는 객실 1실당 성인과 소인 동반 시 최대 5인까지 투숙 가능합니다.
    	            		var mag = messages["javascript.fncgoresv.room.alert3"]; 
    				        	mag = mag.replace(/<br\/>/g,"\n");
    	            		alert(mag);
    	            	}else if (alertFlag == "M"){
                        	 //신라모노그램 다낭은 객실 1실당 성인 10인 또는 성인과 소인 동반 시 최대 14인까지 투숙 가능합니다.
                            var mag = messages["javascript.fncgoresv.room.alert12"];
                            mag = mag.replace(/<br\/>/g, "\n");
                            alert(mag);
                        }else if(alertFlag == "S"){
    	            		//서울신라호텔은 객실 1실당 성인과 소인 동반 시 최대 5인까지 투숙 가능합니다.
    	            		var mag = messages["javascript.fncgoresv.room.alert16"]; 
    				        	mag = mag.replace(/<br\/>/g,"\n");
    	            		alert(mag);
    	            	}
           			}else if(hotlCnt == 2){
           				if(alertFlag == "DH"){
    	        			/** 신라스테이 동탄은 객실 1실당 성인과 소인 동반 시 최대 3인까지만 투숙 가능하오니 4인 이상 투숙을 원하시는 경우 동탄 지점을 선택 해제해주십시오.<br/>
    	        			* 신라스테이 해운대는 객실 1실당 성인과 소인 동반 시 최대 5인까지 투숙 가능하오니 투숙을 원하시는 경우 해운대 지점만 선택해주십시오.*/
    	    				var mag = messages["javascript.fncgoresv.room.alert13"]; 
    				        	mag = mag.replace(/<br\/>/g,"\n");
    	            		alert(mag);
    	        		}else if(alertFlag == "DM"){
    	        			/* 신라스테이 동탄은 객실 1실당 성인과 소인 동반 시 최대 3인까지만 투숙 가능하오니 4인 이상 투숙을 원하시는 경우 동탄 지점을 선택 해제해주십시오.<br/>
    	        			* 신라모노그램 다낭은 객실 1실당 성인과 소인 동반 시 최대 14인까지 투숙 가능하오니 투숙을 원하시는 경우 다낭 지점만 선택해주십시오.*/
    	    				var mag = messages["javascript.fncgoresv.room.alert14"]; 
    				        	mag = mag.replace(/<br\/>/g,"\n");
    	            		alert(mag);
    	        		}else if(alertFlag == "HM"){
    	        			/* 신라스테이 해운대는 객실 1실당 성인과 소인 동반 시 최대 5인까지 투숙 가능합니다.<br/>
    	        			* 신라모노그램 다낭은 객실 1실당 성인과 소인 동반 시 최대 14인까지 투숙 가능하오니 투숙을 원하시는 경우 다낭 지점만 선택해주십시오.*/
    	    				var mag = messages["javascript.fncgoresv.room.alert15"]; 
    				        	mag = mag.replace(/<br\/>/g,"\n");
    	            		alert(mag);
    	        		}
           			}else{
    	       			if(alertFlag == "N"){ //객실 1실당 성인과 소인 동반 시 최대 4인까지만 투숙이 가능합니다.
    	            		var mag = messages["javascript.fncgoresv.room.alert1"]; 
    				        mag = mag.replace(/<br\/>/g,"\n");
    	            		alert(mag);
    	            	}else if(alertFlag == "D"){
    	            		/* 객실 1실당 성인과 소인 동반 시 최대 4인까지만 투숙이 가능합니다.  * 신라스테이 동탄은 객실 1실당 성인과 소인 동반 시 최대 3인까지만 투숙 가능하오니 4인 이상 투숙을 원하시는 경우 동탄 지점을 선택 해제해주십시오. */
    	           			var mag = messages["javascript.fncgoresv.room.alert4"]; 
    			        	mag = mag.replace(/<br\/>/g,"\n");
    			        	alert(mag);
    	            	}else if(alertFlag == "H"){
    	            		/* alert("객실 1실당 성인과 소인 동반 시 최대 4인까지만 투숙이 가능합니다.\n" +"\n* 신라스테이 해운대는 객실 1실당 성인과 소인 동반 시 최대 5인까지"  +"\n투숙이 가능하오니 4인 이상 투숙을 원하시는 경우 해운대 지점만 단일 선택해주십시오."); */
    	            		var mag = messages["javascript.fncgoresv.room.alert5"]; 
    				        mag = mag.replace(/<br\/>/g,"\n");
    	            		alert(mag);
    	            	}else if (alertFlag == "M"){
    	            		/*객실 1실당 성인과 소인 동반 시 최대 4인까지만 투숙이 가능합니다.  * 신라모노그램 다낭은 객실 1실당 성인과 소인 동반 시 최대 14인까지 투숙 가능하오니 투숙을 원하시는 경우 다낭 지점만 선택해주십시오.*/
    	                     var mag = messages["javascript.fncgoresv.room.alert11"];
    	                     mag = mag.replace(/<br\/>/g, "\n");
    	                     alert(mag);
    	            	}else if(alertFlag == "S"){
    	            		// 객실 1실당 성인과 소인 동반 시 최대 4인까지만 투숙이 가능합니다.<br/>* 서울신라호텔은 객실 1실당 성인과 소인 동반 시 최대 5인까지 투숙 가능하오니 투숙을 원하시는 경우 서울신라호텔만 선택해주십시오.
    	            		var mag = messages["javascript.fncgoresv.room.alert17"]; 
    				        mag = mag.replace(/<br\/>/g,"\n");
    	            		alert(mag);
    	            	}else if(alertFlag == "DH"){    	                	/*객실 1실당 성인과 소인 동반 시 최대 4인까지만 투숙이 가능합니다.<br/> * 신라스테이 동탄은 객실 1실당 성인과 소인 동반 시 최대 3인까지만 투숙 가능하오니 4인 이상 투숙을 원하시는 경우 동탄 지점을 선택 해제해주십시오.<br/> * 신라모노그램 다낭은 객실 1실당 성인과 소인 동반 시 최대 14인까지 투숙 가능하오니 투숙을 원하시는 경우 다낭 지점만 선택해주십시오.*/
    	            		var mag = messages["javascript.fncgoresv.room.alert6"]; 
    				        mag = mag.replace(/<br\/>/g,"\n");
    	            		alert(mag);
    	            	}else if (alertFlag == "DM"){
    	            		/* 객실 1실당 성인과 소인 동반 시 최대 4인까지만 투숙이 가능합니다.<br/> * 신라스테이 동탄은 객실 1실당 성인과 소인 동반 시 최대 3인까지만 투숙 가능하오니 4인 이상 투숙을 원하시는 경우 동탄 지점을 선택 해제해주십시오.<br/> * 신라모노그램 다낭은 객실 1실당 성인과 소인 동반 시 최대 14인까지 투숙 가능하오니 투숙을 원하시는 경우 다낭 지점만 선택해주십시오. */
    						var mag = messages["javascript.fncgoresv.room.alert8"];
    	            		mag = mag.replace(/<br\/>/g, "\n");
    	            		alert(mag);
    					}else if(alertFlag == "HM"){
    						/*객실 1실당 성인과 소인 동반 시 최대 4인까지만 투숙이 가능합니다.<br/> * 신라스테이 해운대는 객실 1실당 성인과 소인 동반 시 최대 5인까지 투숙 가능합니다.<br/> * 신라모노그램 다낭은 객실 1실당 성인과 소인 동반 시 최대 14인까지 투숙 가능하오니 투숙을 원하시는 경우 다낭 지점만 선택해주십시오.*/
    						var mag = messages["javascript.fncgoresv.room.alert9"];
    						mag = mag.replace(/<br\/>/g, "\n");
    						alert(mag);
    					}else if(alertFlag == "DHM"){
    						/* 객실 1실당 성인과 소인 동반 시 최대 4인까지만 투숙이 가능합니다.<br/> * 신라스테이 동탄은 객실 1실당 성인과 소인 동반 시 최대 3인까지만 투숙 가능하오니 4인 이상 투숙을 원하시는 경우 동탄 지점을 선택 해제해주십시오.<br/> * 신라스테이 해운대는 객실 1실당 성인과 소인 동반 시 최대 5인까지 투숙 가능합니다.<br/> * 신라모노그램 다낭은 객실 1실당 성인과 소인 동반 시 최대 14인까지 투숙 가능하오니 투숙을 원하시는 경우 다낭 지점만 선택해주십시오. */
    						var mag = messages["javascript.fncgoresv.room.alert10"];
    						mag = mag.replace(/<br\/>/g, "\n");alert(mag);
    						
    					}
           			}
           			$('.opacity').hide();
    				pc.layerPopup.unLockScroll();
    				$('.re-loader').hide();
           			return false;
            	}
            }
		}
		//인원 수 VALIDATION CHECK
		if(tabYn == "N"){
			$.ajax({
				url: "/resv/rpm/getHotlInfoList.do",
				data : { "hotlIdStr": $("#hotlIdArr").val() },
				cache: false,
				type: "POST",
				success : function(json){
					var data = jQuery.parseJSON(json);
					var hotlList = data.model.hotlList;
					var lang = "ko";
					
					
					for(var c = 0;c < hotlList.length; c++){
						var hotlObj = hotlList[c];
						var hotlNm = "";
						if(hotlObj.resvPosbAheadDyCnt != "0"){
							aheadDayYnTF = fnResvPosbAheadDyYnTF(hotlObj.resvPosbAheadDyCnt, '2022-06-13');
							if(!aheadDayYnTF){
								switch (lang) {
								case "ko" : hotlNm = hotlObj.hotlNmKr; break;
								case "en" : hotlNm = hotlObj.hotlNmEn; break;
								case "ja" : hotlNm = hotlObj.hotlNmJp; break;
								case "zh" : hotlNm = hotlObj.hotlNmCn; break;
								default	  : hotlNm = hotlObj.hotlNmKr; break;
								}
		
								noResvHotlNm += hotlNm + ", ";
								noResvHotlCnt++; 
							}
						}
					}
				},
				error : function(){
					alert( "getHotlInfoList Request Failed");
				},
				complete : function(){
					if(noResvHotlCnt > 0){
						noResvHotlNm = noResvHotlNm.substring(0, noResvHotlNm.lastIndexOf(","));
						/* alert(noResvHotlNm+"은 당일 예약이 불가하오니 투숙일을 변경해주십시오. 당일 예약을 원하시는 경우 다른 호텔을 선택해주십시오\n"
				        +"\n- 제주신라호텔 : 당일 15시까지 예약 가능\n"
				        +"- 신라스테이 전 지점 : 당일 23시까지 예약 가능"); */
						var mag = messages["javascript.fncgoresv.room.alert7"]; 
							mag = mag.replace('{0}', noResvHotlNm);
							mag = mag.replace(/<br\/>/g,"\n");
							alert(mag);
	
						$('.opacity').hide();
						pc.layerPopup.unLockScroll();
						$('.re-loader').hide();
					}else if(noResvHotlCnt == 0){
						$("#searchOptIdStr").val(optList.toString());
						$("#estCharge").hide();
						
						var urlPath = jQuery("#URL_PREFIX").val()+"/resv/rpm/memIsRoomValid.do";
						var param = encodeURIComponent(
							JSON.stringify(
								{
									'roomCd'		:$(		"#roomCd"		).val()
									, 'resvTypCd'	:$(		"#resvTypCd"	).val()
									, 'ckinYmd'		:$(		"#ckinYmd"		).val()
									, 'ckoutYmd'	:$(		"#ckoutYmd"		).val()
									, 'roomCnt'		:$(		"#roomCnt"		).val()
									, 'adltCnt'		:$(		"#adltCnt"		).val()
									, 'chldCnt'		:$(		"#chldCnt"		).val()
									, 'infantCnt'	:$(		"#infantCnt"	).val()	// 유아수
									, 'coporateCd'	:$(		"#coporateCd"	).val()
									, 'coporateVal'	:$(		"#coporateVal"	).val()
									, 'spofrId'		:$(		"#spofrId"		).val()
									, 'hotlId'		:$(		"#hotlId"		).val()
									, 'hotlIdArr'   :$(		"#hotlIdArr"	).val()
									, 'totlAdltCnt'	:$(		"#totlAdltCnt"	).val()
									, 'totlChldCnt'	:$(		"#totlChldCnt"	).val()
									, 'totlInfantCnt':$(	"#totlInfantCnt").val()
									, 'mappSeq'		:$(		"#mappSeq		").val()
								}
							)
						);
						$.ajax({
							url: urlPath,
							data:"data="+param,
							cache: false,
							type: "POST",
							success : function(json){
								var data = jQuery.parseJSON(json);
								var resultFlag = data.model.resultFlag;
								var hotlIdStr = $(		"#hotlIdArr"	).val();
								var hotlIdArr = hotlIdStr.split(",");
								if("" == "" && "" == "" && $("#resvTypCd").val() != "M"){
									if(resultFlag =='02'){
										$("#beforeSearchWrap").hide();
										$("#rsvResultWrap").hide();
										if(hotlIdArr.length > 1){
											$("#emptySearchWrap").hide();	
											$("#emptyMiceSearchWrap").show();	
										}else{
											$("#emptySearchWrap").show();
											$("#emptyMiceSearchWrap").hide();
											if($("#hotlId").val() == "VDNSM"){
												$("#emptyMiceSearchWrap").show();
												$("#emptySearchWrap").hide();
											}
										}
										alert("현재 예약가능한 객실이 없습니다."); 
									}else if(resultFlag == '01'){
										alert("잘못된 코드입니다."); 
									}else if(resultFlag =='03'){
										$("#rsvResultWrap").hide();
										$("#beforeSearchWrap").hide();
										$("#emptySearchWrap").show();
										if($("#hotlId").val() == "VDNSM"){
											$("#emptyMiceSearchWrap").show();
											$("#emptySearchWrap").hide();
										}
										alert(data.model.resultMsg);
									}else if(resultFlag =='04'){
										alert("예약 시스템과의 통신이 지연되고 있습니다. 잠시 후에 서비스를 이용해 주세요."); 
									}
									
									if(("" == "" || "N" == "Y") && "" == ""){
										if("" == ""){
											if(resultFlag != "00"){
												$("#rsvResultWrap").hide();
												$("#beforeSearchWrap").hide();
												if(hotlIdArr.length > 1){
													$("#emptySearchWrap").hide();	
													$("#emptyMiceSearchWrap").show();	
												}else{
													$("#emptySearchWrap").show();
													$("#emptyMiceSearchWrap").hide();
													if($("#hotlId").val() == "VDNSM"){
														$("#emptyMiceSearchWrap").show();
														$("#emptySearchWrap").hide();
													}
												}
											}
										}
									}else{
										$("#emptySearchWrap").hide();	
										$("#emptyMiceSearchWrap").show();	
									}
								}else{
									if(resultFlag !='00'){
										$("#rsvResultWrap").hide();
										$("#beforeSearchWrap").hide();
										var hotlIdArr = data.model.hotlIdArr.split(",");
										$("#emptyMiceSearchWrap").show();
										$("#emptySearchWrap").hide();
										
									}
								}
								if(resultFlag != "00"){
									$('.opacity').hide();
									pc.layerPopup.unLockScroll();
									$('.re-loader').hide();
								}
								fnHotlIdSelection(data.model.hotlId);
								result = resultFlag;
							},
							error : function(jqxhr, textStatus, error){
								alert("searchList request fail : " + error);
								$('.opacity').hide();
								pc.layerPopup.unLockScroll();
								$('.re-loader').hide();
							},
							complete : function(){
								var url = jQuery("#URL_PREFIX").val()+"/resv/rpm/getSearchResvList.do";
								
								if("" != ""){
									jQuery("#coporateCd").prop("disabled", false);
								}
								
								$.ajax({
									url: url,
									data:$("#resvForm").serialize(),
									cache: false,
									type: "POST",
									beforeSend : function(){
										$('.opacity').show();
										pc.layerPopup.lockScroll();
										$('.re-loader').show();
										$("#beforeSearchWrap").hide();
										$("#emptyMiceSearchWrap").hide();
										$("#emptySearchWrap").hide();
									},
									success : function(data){
										$("#rsvResultCon").html("");
										var jsonObj = jQuery.parseJSON(data);
										var objData = jsonObj.model;
										
										$("#tempHotlId").val($("#hotlId").val());
										$("#tempCkinYmd").val($("#ckinYmd").val());
										$("#tempCkoutYmd").val($("#ckoutYmd").val());
										$("#tempRoomCnt").val($("#roomCnt").val());
										$("#tempAdltCnt").val($("#totlAdltCnt").val());
										$("#tempChldCnt").val($("#totlChldCnt").val());
										$("#tempInfantCnt").val($("#totlInfantCnt").val());
										searchFlag = true;
										var targetTab = "";
										$(".rsvSubTab li").each(function(){ /**탭 유지를 위한 스크립트 */
											if($(this).hasClass("on")){
												targetTab = $(this).attr("id");
											}
										});
										var prtyExpRoom = objData.prtyExpRoom;// 객실/ 패키지 노출 순서 (P : 패키지 우선순위, R : 객실 우선순위, default : 객실우선순위)
										var currencyCd = jsonObj.model.rsResvExVo.currencyCd;
										var hotTelHtml = "";
										var roomHtml = "";
										var packHtml = "";
										var mbrPackHtml = "";
										var tabHtml = "";
										var sortHtml = "";
										var allLabel = "전체"; 
										var packageLabel = "패키지"; 
										var mbrPackageLabel = "회원전용"; 
										var roomLabel = "객실"; 
										var resvLabel = "예약하기"; 
										
										var roomList = typeof objData.availRoomCdList == "undefined" ? new Array() : objData.availRoomCdList;
										var packList = typeof objData.availPackList == "undefined" ? new Array() : objData.availPackList;
										var mbrPackList = typeof objData.mbrPackList == "undefined" ? new Array() : objData.mbrPackList;
										var tapHotlList = typeof  objData.tapHotlList == "undefined" ? new Array() : objData.tapHotlList;
										var keywordList = typeof  objData.keywordList == "undefined" ? new Array() : objData.keywordList;
										var currencyList = typeof  objData.CURRENCY_LIST == "undefined" ? new Array() : objData.CURRENCY_LIST;
					
										var roomCnt = roomList.length;
										var packCnt = packList.length;
										var mbrPackCnt = mbrPackList.length;
										
										var won = "&nbsp;원"; 
										var dong = "&nbsp;VND"; 
										var bak = "박"; 
										if(jsonObj.model.searchOptIdStr != ""){
											roomCnt = 0;
										}
										//모노그램 다낭 날짜 체크 얼럿
										if(jsonObj.model.mgChk == "true" && mgAlertFlag){
											//alert("신라모노그램 다낭은 6월 1일부터 예약 가능하오니 투숙일을 변경해주십시오.");
											//mgAlertFlag = false;
										}
										
										/** 삼성예약가능 4월1일 */
										var years1 = '2020'; var months1 = '04'; var days1 = '01'; var dates1 = new Date(); dates1.setFullYear(years1, months1-1, days1); dates1.setDate(dates1.getDate());
										var tmpss = $("#tempCkinYmd").val().split("-");
										var years2 = tmpss[0]; var months2 = tmpss[1]; var days2 = tmpss[2]; var dates2 = new Date(); dates2.setFullYear(years2, months2-1, days2); dates2.setDate(dates2.getDate());
										if($("#hotlIdArr").val().indexOf("SAMSS") > -1){ if(dates1.getTime() > dates2.getTime()) { alert("신라스테이 삼성은 4월 1일부터 예약 가능하오니 투숙일을 변경해주십시오."); } }
										
										
										if(tapHotlList.length > 0){ /********** 호텔 탭 생성 **********/
											tabHtml += "<div class=\"rsvTab\">";
											tabHtml += "	<ul>";
											for(var i = 0;i < objData.tapHotlList.length; i++){
												var tapHotlListObj = objData.tapHotlList[i];
												tabHtml += "		<li class=\""+tapHotlListObj.tapHighlight+"\"><a href=\"#none\"";
												if(objData.rsResvExVo.hotlId != tapHotlListObj.cdId){ //호텔 ID 가 같을 경우 이벤트 삭제
													tabHtml += "onclick=\"document.getElementById('searchBarKeyword').value='"+tapHotlListObj.cdVa+"';fnTapHotlSelection('"+ tapHotlListObj.cdId +"');\"";
												}
												tabHtml += ">" + tapHotlListObj.cdVa+"</a></li>";
											}
											tabHtml += "	</ul>";
											tabHtml += "</div>";
										}
										tabHtml += "	<div class=\"rsvSubTab\">";
										tabHtml += "		<ul>";
										if(jsonObj.model.rsResvExVo.resvTypCd == "M"){
											if(jsonObj.model.grEvntVo.openType == "P"){
												roomLabel = "패키지"; 
												packageLabel = "객실"; 
											}
										}
										
										var mbrtab = false;
										var packtab = false;
										var roomtab = false;
										
										if(targetTab == "tabMbr"){
											mbrtab = true;
										}else if(targetTab == "tabPack"){
											packtab = true;
										}else if(targetTab == "tabRoom"){
											roomtab = true;
										}else{
											if(mbrPackCnt > 0){
												mbrtab = true;
											}
											if(mbrPackCnt == 0 && packCnt > 0){
												packtab = true;
											}
											if(mbrPackCnt == 0 && packCnt == 0 && roomCnt > 0){
												roomtab = true;
											}
											if(mbrPackCnt == 0 && packCnt == 0 && roomCnt== 0){
												mbrtab = true;
											}
										}
										if(mbrtab){ /** 회원전용 , 패키지 , 객실 탭 */
											tabHtml += "		<li id=\"tabMbr\" class=\"on\"><a href=\"#none\">"+mbrPackageLabel+" ("+mbrPackCnt+")</a></li>";	
										}else{
											tabHtml += "		<li id=\"tabMbr\"><a href=\"#none\">"+mbrPackageLabel+" ("+mbrPackCnt+")</a></li>";
										}
										if(jsonObj.model.rsResvExVo.resvTypCd == "M"){
											if(jsonObj.model.grEvntVo.openType == "P"){
												if(roomtab){
													tabHtml += "		<li id=\"tabRoom\" class=\"on\"><a href=\"#none\">"+roomLabel+" ("+roomCnt+")</a></li>";	
												}else{
													tabHtml += "		<li id=\"tabRoom\"><a href=\"#none\">"+roomLabel+" ("+roomCnt+")</a></li>";
												}
												
												if(packtab){
													tabHtml += "		<li id=\"tabPack\" class=\"on\"><a href=\"#none\">"+packageLabel+" ("+packCnt+")</a></li>";	
												}else{
													tabHtml += "		<li id=\"tabPack\"><a href=\"#none\">"+packageLabel+" ("+packCnt+")</a></li>";
												}
											}else{
												if(packtab){
													tabHtml += "		<li id=\"tabPack\" class=\"on\"><a href=\"#none\">"+packageLabel+" ("+packCnt+")</a></li>";	
												}else{
													tabHtml += "		<li id=\"tabPack\"><a href=\"#none\">"+packageLabel+" ("+packCnt+")</a></li>";
												}
												
												if(roomtab){
													tabHtml += "		<li id=\"tabRoom\" class=\"on\"><a href=\"#none\">"+roomLabel+" ("+roomCnt+")</a></li>";	
												}else{
													tabHtml += "		<li id=\"tabRoom\"><a href=\"#none\">"+roomLabel+" ("+roomCnt+")</a></li>";
												}
											}
										}else{
											if(packtab){
												tabHtml += "		<li id=\"tabPack\" class=\"on\"><a href=\"#none\">"+packageLabel+" ("+packCnt+")</a></li>";	
											}else{
												tabHtml += "		<li id=\"tabPack\"><a href=\"#none\">"+packageLabel+" ("+packCnt+")</a></li>";
											}
											
											if(roomtab){
												tabHtml += "		<li id=\"tabRoom\" class=\"on\"><a href=\"#none\">"+roomLabel+" ("+roomCnt+")</a></li>";	
											}else{
												tabHtml += "		<li id=\"tabRoom\"><a href=\"#none\">"+roomLabel+" ("+roomCnt+")</a></li>";
											}
										}
										tabHtml += "		</ul>";
										tabHtml +=	"	</div>";	
										tabHtml += "<ul class=\"rsvSort\">"; /********** 키워드/환율/정렬 탭 생성 *********/
										if(keywordList.length > 1){
											var keywordOn = "";
											if(jsonObj.model.searchOptIdStr != "" ){
												keywordOn = "on";
											}
											tabHtml += "	<li class=\"sort1 "+keywordOn+"\">";
											tabHtml += "		<a href=\"#none\" class=\"btnkeyword\" title=\"키워드검색 닫기\">키워드</a>"; 
											tabHtml += "			<div class=\"keyWordWrap\">";
											tabHtml += "				<strong class=\"tit\"><img src=\"/images/ko/mem/new_2019/tit_rsv_keyword.gif\" alt=\"키워드 검색\"></strong>"; 
											tabHtml += "				<div class=\"keyWordG\">";
											
											for(var i = 0;i < keywordList.length; i++){
												var keywordObj = keywordList[i];
												var addCls = "";
												var isKeyOn = "";
												if(keywordObj.checked == "1"){
													addCls = "checked='checked'";
													isKeyOn = "keyOn";
												}
												
												tabHtml += "<span>";
												tabHtml += "	<input type=\"checkbox\" id=\""+keywordObj.optId+"\" name=\"keyword\" class=\"css-checkbox checkbox\" value=\""+keywordObj.optId+"\" data-hotlid=\""+objData.rsResvExVo.hotlId+"\" "+addCls+">";
												tabHtml += "	<label for=\""+keywordObj.optId+"\" class=\"css-label "+isKeyOn+"\" >"+keywordObj.optNm+"</label>";
												tabHtml += "</span>";
											}
											tabHtml += "		<span class=\"keywordReset\">";
											tabHtml += "			<a href=\"#none\" onclick=\"fncKeywordReset();\" class=\"btnKeywordReset\">";
											tabHtml += "				<img src=\"/images/ko/mem/new_2019/btn_hotel_clear_txt.png\" alt=\"선택해제\">"; 
											tabHtml += "			</a>";
											tabHtml += "		</span>";
											tabHtml += "		<a href=\"#none\" class=\"btnKeySrch\" onclick=\"fncSearchResvList('N');\"><img src=\"/images/ko/mem/new_2019/reserve_step1_keyword.gif\" alt=\"적용\"></a>"; 
											tabHtml += "		</div>";
											tabHtml += "	</div>";
											tabHtml += "</li>";
										}else{
											tabHtml += "<li class=\"sort1\">";
											tabHtml += "</li>";
										}
										
										tabHtml += "<li class=\"sort2\">";
										tabHtml += "	<div class=\"sortSelect\">";
										tabHtml += "		<select name=\"sortBy\" id=\"sortBy\" title=\"정렬순서 선택\" onchange=\"fncSearchResvList('N');return false;\">";
										if(objData.rsResvExVo.sortBy == "lowPric"){
											tabHtml += "			<option value=\"lowPric\" selected=\"selected\">낮은 가격 순</option>"; 
										}else{
											tabHtml += "			<option value=\"lowPric\">낮은 가격 순</option>"; 
										}
										if(objData.rsResvExVo.sortBy == "highPric"){
											tabHtml += "			<option value=\"highPric\" selected=\"selected\">높은 가격 순</option>"; 
										}else{
											tabHtml += "			<option value=\"highPric\" >높은 가격 순</option>"; 
										}
										if(objData.rsResvExVo.sortBy == "newest"){
											tabHtml += "			<option value=\"newest\" selected=\"selected\">최신 순</option>"; 
										}else{
											tabHtml += "			<option value=\"newest\">최신 순</option>"; 
										}
										if(objData.rsResvExVo.sortBy == "hot"){
											tabHtml += "			<option value=\"hot\" selected=\"selected\">인기 순</option>"; 
										}else{
											tabHtml += "			<option value=\"hot\">인기 순</option>"; 
										}
										if(objData.rsResvExVo.sortBy == "recommended"){
											tabHtml += "			<option value=\"recommended\" selected=\"selected\">추천 순</option>"; 
										}else{
											tabHtml += "			<option value=\"recommended\">추천 순</option>"; 
										}
										tabHtml += "		</select>";
										tabHtml += "	</div>";
										tabHtml += "</li>";
										
										if(currencyList.length > 1 && objData.hotlVo.hotlId == "VDNSM"){ //통화 변경 기능 사용 시 주석 삭제
											tabHtml += "<li class=\"sort3\">";
											tabHtml += "	<div class=\"sortSelect\">";
											tabHtml += "		<select title=\"통화 선택\" name=\"currencyCd\" onchange=\"exchangeRateChange(this, 'Y');\" id=\"currencyCd\">";
											for(var i = 0;i < currencyList.length; i++){
												var currencyObj = currencyList[i];
												var tabOn = "";
												if(currencyObj.currCd == objData.rsResvExVo.currencyCd){
													tabOn = "selected";
												}
												tabHtml += "		<option value=\""+currencyObj.currCd+"\""+tabOn+">"+currencyObj.currNm+"</option>";
											}
											tabHtml += "	</select>";
											tabHtml += "</div>";
											tabHtml += "</li>";
										}else{
											tabHtml += "<input type=\"hidden\" name=\"currencyCd\" id=\"currencyCd\" value=\"KRW\" />";
											// 영역 스타일 적용
											setTimeout(function(){
												
												if("ko" == "ko"){
													$(".new_rsvBox .rsvSort .sort1").prop("style", "padding:0 100px 12px 0");	
												} else if("ko" == "en"){
													$(".new_rsvBox .rsvSort .sort1").prop("style", "padding:0 150px 12px 0");	
												} else {
													$(".new_rsvBox .rsvSort .sort1").prop("style", "padding:0 90px 12px 0");	
												}
												
												$(".new_rsvBox .rsvSort .sort2").prop("style", "right:0");
	        								},0);
										}
										
										tabHtml += "		</ul>";
										tabHtml += "	</div>";
										if(objData.rsResvExVo.resvTypCd == 'M'){ /************ 프로모션으로 들어올 때************/
											$("#grEvntId").val(objData.rsResvExVo.grEvntId);
											$("#grRblokId").val(objData.rsResvExVo.grRblokId);
										}else{
											$("#grEvntId").val("");
											$("#grRblokId").val("");
										}
										hotTelHtml += "<div class=\"rsvInqWrap\">";
										hotTelHtml += "		<p class=\"noti4\">* 할인이 적용된 요금입니다.</p>";
										hotTelHtml += "		<span class=\"phoneNo\">객실예약 연락처 : <span class=\"tel\">";
										var langTypCd = "KR" == "" ? "KR" : "KR";
										if(objData.rsResvExVo.hotlId == "S" || "" == "S"){		
											if(langTypCd == "KR"){
												hotTelHtml += " 02-2230-3310";
											} else {
												hotTelHtml += " +82-2-2230-3310";
											}
										} else if(objData.rsResvExVo.hotlId == "C" || "" == "C"){
											if(langTypCd == "KR"){
												hotTelHtml += " 1588-1142";
											} else {
												hotTelHtml += " +82-1588-1142";
											}
										} else if(objData.rsResvExVo.hotlId == "VDNSM" || "" == "VDNSM"){
											hotTelHtml += " +84-235-3949-779";
											<!-- 2020-02-10 변경 -->
										}else {
											if(langTypCd == "KR"){
												hotTelHtml += " 02-2230-0700";
											} else {
												hotTelHtml += " +82-2-2230-0700";
											}
										}
										
										hotTelHtml += "</span></span>";
										hotTelHtml += "		<a href=\"/membership/inquires/contactus/memSetVoc.do\" target=\"_blank\" class=\"que\">문의하기</a>";
										hotTelHtml += "</div>";
										
										if(roomCnt > 0){
										 	var roomMsg1 = "객실";	// 객실
										 	var roomMsg2 = "할인이 적용된 요금입니다.";	//현재 예약 가능한 객실입니다.
										 	
										 	if(roomtab){
										 		roomHtml += "<div class=\"rsvResultList\" id=\"roomList\">";
										 	}else{
										 		roomHtml += "<div class=\"rsvResultList\" id=\"roomList\" style=\"display: none;\">";
										 	}
										 	roomHtml += "	<ul>";
											
										 	var domain = "";
										 	
										 	if(objData.rsResvExVo.hotlId == "S" || objData.rsResvExVo.hotlId == "C"){
										 		domain = "https://www.shilla.net/images/contents";
										 	}else if(objData.rsResvExVo.hotlId == "VDNSM"){
										 		domain = "https://www.shillamonogram.com/images/contents";
										 	} else {
										 		domain = "https://www.shillastay.com/images/contents";
										 	}
										 	
										 	for(var i = 0; i < roomList.length; i++){
										 		
												var imgSrcKey, imgDcKey, roomInfoKey;
												var ACCMO_STR = "ACCMO_INDEX-accmo"; 
												var LANG_TYP_CD = "KR";
												
												roomObj = roomList[i];
												
												imgSrcKey = ACCMO_STR+roomObj.roomCd+"-"+LANG_TYP_CD+"-12";
												imgDcKey = ACCMO_STR+roomObj.roomCd+"-"+LANG_TYP_CD+"-19";
												roomInfoKey = ACCMO_STR+roomObj.roomCd+"-"+LANG_TYP_CD+"-208-VALUE";
												
												var roomImgViewLabel = "객실 자세히 보기";
												
												if( i == 0 ){
													roomHtml += "	<li class=\"first\">";	
												}else{
													roomHtml += "	<li>";
												}
												roomHtml += "		<dl class=\"roomsInfo\">";								
										 		roomHtml += "			<dt>";	
										 		roomHtml += "				<div class=\"prodName\">"+roomObj.roomNm+"</div>";
										 		roomHtml += "			</dt>";
										 		roomHtml += "			<dd class=\"thumbImg\">";
										 		if("VDNSM" != objData.rsResvExVo.hotlId){
											 		roomHtml += "				<a href=\"#none\" onclick=\"openImgViewPop('"+objData.rsResvExVo.hotlId+"','"+roomObj.roomCd+"', 'KR', 'ko');\">";
											 		roomHtml += "					<img src=\""+domain+objData[imgSrcKey]+"\" style=\"width:260px; height:150px;\" alt=\""+objData[imgDcKey]+"\">";
											 		roomHtml += "				</a>";
										 		}else{
										 			roomHtml += "				<a href=\"https://www.shillamonogram.com/dnmg/introduce.do?lang=ko&tabNm=tab1\" target=\"_blank\">";
											 		roomHtml += "					<img src=\""+domain+objData[imgSrcKey]+"\" style=\"width:260px; height:150px;\" alt=\""+objData[imgDcKey]+"\">";
											 		roomHtml += "				</a>";
										 		}
										 		roomHtml += "			</dd>";
										 		roomHtml += "			<dd class=\"prodCont\">";
										 		roomHtml += "				<ul class=\"roomDInfo\">";
										 		roomHtml += 				objData[roomInfoKey];
										 		roomHtml += "				</ul>";
									 			roomHtml += "				<a href=\"#none\" class=\"btnBenfitInfo\" onClick=\"openImgViewPop('"+objData.rsResvExVo.hotlId+"','"+roomObj.roomCd+"', 'KR', 'ko');\"> <span>"+roomImgViewLabel+"</span></a>";
										 		roomHtml += "			</dd>";
										 		roomHtml += "			<dd class=\"prodDetail\">";					 		
										 		roomHtml += "				<div class=\"priceWrap\">";					 		
										 		roomHtml += "					<div>";					 		
										 		roomHtml += "					<strong class=\"price\" ";
													for(var z = 0;z < roomObj.exchangeRateList.length; z++){
														var exchangeObj = roomObj.exchangeRateList[z];
														roomHtml+= "data-"+	exchangeObj.currCd + "=\""+exchangeObj.exchangePric+"\"";
													}
												if(objData.hotlVo.hotlId == "VDNSM"){
													roomHtml += ">" + fncAddComma(roomObj.minPric)+dong+" ~</strong>";
												}else{
													roomHtml += ">" + fncAddComma(roomObj.minPric)+won+" ~</strong>";
												}
												
												roomHtml += "							<span class=\"days\">1"+bak+"</span>";
												
										 		roomHtml += "					</div>";
										 		roomHtml += "				</div>";
										 		roomHtml += "				<a href=\"#none\" class=\"btnRsv\"><img src=\"/images/ko/mem/new_2019/reserve_step1_rsvopen.gif\" alt=\"예약하기\" onclick=\"setRoomOpt('"+i+"','"+roomObj.roomClsCd+"', '"+roomObj.roomCd+"', '"+roomObj.ratePlanCode+"', '"+roomObj.infantResvYn+"','"+domain+objData[imgSrcKey]+"', 'KR', 'ko');\"></a>";
										 		roomHtml += "				<div class=\"roomRsv\" id=\"roomOpt"+i+"\">";
										 		roomHtml += "				</div>";
										 		roomHtml += "			</dd>";
										 		roomHtml += "		</dl>";
										 		roomHtml += "	</li>";
										 	}
										 	roomHtml += "	</ul>";
										 	roomHtml += "</div>";
										}else{
											roomHtml += "<div class=\"rsvResultList\" id=\"roomList\" style=\"display: none;\">";
											roomHtml +="	<div class=\"rsvDescWrap\">";
											roomHtml +="		<div class=\"rsvDescNone\">";
											if(jsonObj.model.searchOptIdStr != "" ){
												roomHtml +="키워드에 해당되는 객실이 없습니다.";
											}else{
												roomHtml +="			현재 예약가능한 객실이 없습니다.<br/>"; 
												roomHtml +="			호텔 또는 날짜를 다시 선택해주세요."; 
											}
											roomHtml +="		</div>";
											roomHtml +="	</div>";
											roomHtml += "</div>";
											
										}
										
										if(packList.length > 0){
											if(packtab){
												packHtml += "<div class=\"rsvResultList\" id=\"packList\">";
											}else{
												packHtml += "<div class=\"rsvResultList\" id=\"packList\" style=\"display: none;\">";
											}
											packHtml += "	<ul>";
										 	
											for(var j = 0; j < packList.length; j++){
												
												packObj = packList[j];
												
												var availPackVo = packObj.hotlId;
												var imgPath = "";
												
												if(objData.rsResvExVo.hotlId == "S" || objData.rsResvExVo.hotlId == "C"){
													imgPath = "https://www.shilla.net/images/upload/"+packObj.packImgPath;
												}else if(objData.rsResvExVo.hotlId == "VDNSM"){
													imgPath = "https://www.shillamonogram.com/images/upload/"+packObj.packImgPath;
												}else{
													imgPath = "https://www.shillastay.com/images/upload/"+packObj.packImgPath;
												}
												
												if( j == 0 ){
													packHtml += "	<li class=\"first\">";	
												}else{
													packHtml += "	<li>";
												}
												packHtml += "		<dl class=\"roomsInfo\">";
												packHtml += "			<dt>";
												if(typeof packObj.rewardIcons != "undefined" && packObj.rewardIcons != null && packObj.rewardIcons != ""){
													var iconList = packObj.rewardIcons.split(",");
													
													packHtml += "				<span class=\"tagWrap\"> ";
													
													for(var iconNum = 0; iconNum < iconList.length; iconNum++){
														packHtml += "<span class=\"tagico\">"+iconList[iconNum]+"</span>";
													}
													packHtml += " 				</span>";
												}
												
												packHtml += "				<div class=\"prodName\">" + packObj.subj + "</div>";
												packHtml += "			</dt>";
												packHtml += "			<dd style=\"display:none;\">"+packObj.strtYmd + " ~ " + packObj.endYmd+"</dd>";
												packHtml += "			<dd class=\"thumbImg\">";
												packHtml += "				<a href=\"#none\" onclick=\"openFavorUseGuideEx('"+packObj.spofrId+"','"+packObj.packItNo+"', '"+objData.rsResvExVo.hotlId+"', '"+packObj.spcFeeYn+"', '"+false+"');\">";
										 		packHtml += "					<img src=\""+imgPath+"\" style=\"width:260px; height:150px;\" alt=\""+packObj.smryTxt+"\">";
										 		packHtml += "				</a>";
										 		packHtml += "			</dd>";
												packHtml += "			<dd class=\"prodCont\">";
												if(packObj.rewardsMappingYn == "Y"){
												packHtml += "				<div class=\"rewards\">";
												packHtml += "					<img src=\"/images/ko/mem/new_2019/img_badge_rewards.png\" alt=\"추가혜택\">";
												packHtml += "				</div>";
												}
												packHtml += "				<div class=\"editDesc\">";
												if(typeof packObj.packBenefit != "undefined"){
													packHtml += "				<ul class=\"listDot2\">";
													packHtml += 					packObj.packBenefit.replace(/\<br\>/gi,"");
													packHtml += "				</ul>";
												}
												var favorLabel = "혜택 및 이용안내";
												
												packHtml += "					<a href=\"#none\" class=\"btnBenfitInfo\" onclick=\"openFavorUseGuideEx('"+packObj.spofrId+"','"+packObj.packItNo+"', '"+objData.rsResvExVo.hotlId+"', '"+packObj.spcFeeYn+"', '"+false+"');\"><span>"+favorLabel+"</span></a>";
												packHtml += "				</div>";
												
												packHtml += " 			</dd>";
												packHtml += "				<dd class=\"prodDetail\">";
												packHtml += "					<div class=\"priceWrap\">";
												packHtml += "						<div>";
												
												
												packHtml += "					<strong class=\"price\" ";
												for(var z = 0;z < packObj.exchangeRateList.length; z++){
													var exchangeObj = packObj.exchangeRateList[z];
													packHtml+= "data-"+	exchangeObj.currCd + "=\""+exchangeObj.exchangePric+"\"";
												}
												if(objData.hotlVo.hotlId == "VDNSM"){
													packHtml += ">" + fncAddComma(packObj.minPric)+dong+" ~</strong>";
												}else{
													packHtml += ">" + fncAddComma(packObj.minPric)+won+" ~</strong>";
												}
												
												packHtml += "							<span class=\"days\">1"+bak+"</span>";
												packHtml += "						</div>";
												packHtml += "					</div>";
												packHtml += "					<a href=\"#none\" class=\"btnRsv\"><img src=\"/images/ko/mem/new_2019/reserve_step1_rsvopen.gif\" alt=\"예약하기\" onclick=\"setPackOptEx('P','"+j+"', '"+packObj.spofrId+"', '"+packObj.packItNo+"', '"+packObj.ratePlanCode+"', '"+packObj.infantResvYn+"', '"+packObj.spcFeeYn+"', '"+packObj.rewardsMappingYn+"','"+packObj.rewardsMappingId+"','"+packObj.rewardsMappingListDc+"','"+packObj.rewardsMappingUrl+"');\"></a>";
												packHtml += "					<div class=\"roomRsv\" id=\"packOpt"+j+"\">";
												packHtml += "					</div>";
												packHtml += "				</dd>";
												packHtml += "			</dl>";
												packHtml += "		</li>";
											}
											packHtml += "		</ul>";
											packHtml += "		</div>";
										}else{
											packHtml += "<div class=\"rsvResultList\" id=\"packList\" style=\"display: none;\">";
											packHtml +="	<div class=\"rsvDescWrap\">";
											packHtml +="		<div class=\"rsvDescNone\">";
											if(jsonObj.model.searchOptIdStr != "" ){
												packHtml +="키워드에 해당되는 패키지가 없습니다.";
											}else{
												packHtml +="			예약 가능한 패키지 상품이 없습니다.<br>"; 
												packHtml +="			호텔 또는 날짜를 다시 선택해주세요."; 
											}
											packHtml +="		</div>";
											packHtml +="	</div>";
											packHtml += "</div>";
										}
										
										if(mbrPackList.length > 0){
											if(mbrtab){
												mbrPackHtml += "<div class=\"rsvResultList\" id=\"mbrList\">";
											}else{
												mbrPackHtml += "<div class=\"rsvResultList\" id=\"mbrList\" style=\"display:none;\">";
											}
											mbrPackHtml += "	<ul>";
										 	
											for(var j = 0; j < mbrPackList.length; j++){
												
												mbrObj = mbrPackList[j];
												var availMbrVo = mbrObj.hotlId;
												var imgPath = imgPath = "https://www.shillahotels.com/images/upload/"+mbrObj.packImgPath;
												
												if( j == 0 ){
													mbrPackHtml += "	<li class=\"first\">";	
												}else{
													mbrPackHtml += "	<li>";
												}
												
												mbrPackHtml += "		<dl class=\"roomsInfo\" id=\""+mbrObj.spofrId+"M\">";
												mbrPackHtml += "			<dt>";
												if(typeof mbrObj.rewardIcons != "undefined" && mbrObj.rewardIcons != null && mbrObj.rewardIcons != ""){
													var iconList = mbrObj.rewardIcons.split(",");
													
													mbrPackHtml += "				<span class=\"tagWrap\"> ";
													
													for(var iconNum = 0; iconNum < iconList.length; iconNum++){
														mbrPackHtml += "<span class=\"tagico\">"+iconList[iconNum]+"</span>";
													}
													mbrPackHtml += " 				</span>";
												}
												
												mbrPackHtml += "				<div class=\"prodName\">"+mbrObj.subj+"</div>";
												mbrPackHtml += "			</dt>";
												mbrPackHtml += "			<dd style=\"display:none;\">"+mbrObj.strtYmd + " ~ " + mbrObj.endYmd+"</dd>";
												mbrPackHtml += "			<dd class=\"thumbImg\">";
												mbrPackHtml += "				<a href=\"#none\" onclick=\"openFavorUseGuideEx('"+mbrObj.spofrId+"','"+mbrObj.packItNo+"', '"+objData.rsResvExVo.hotlId+"', '"+mbrObj.spcFeeYn+"', '"+false+"');\">";
												mbrPackHtml += "					<img src=\""+imgPath+"\" style=\"width:260px; height:150px;\" alt=\""+mbrObj.smryTxt+"\">";
												mbrPackHtml += "				</a>";
												mbrPackHtml += "			</dd>";
												mbrPackHtml += "			<dd class=\"prodCont\">";
												mbrPackHtml += "				<div class=\"editDesc\">";
												if(typeof mbrObj.packBenefit != "undefined"){
													mbrPackHtml += 				"<ul class=\"listDot2\">";
													mbrPackHtml += 					mbrObj.packBenefit.replace(/\<br\>/gi,"");
													mbrPackHtml += 				"</ul>";
												}
												var favorLabel = "혜택 및 이용안내"; 
												mbrPackHtml += "					<a href=\"#none\" class=\"btnBenfitInfo\" onclick=\"openFavorUseGuideEx('"+mbrObj.spofrId+"','"+mbrObj.packItNo+"', '"+objData.rsResvExVo.hotlId+"', '"+mbrObj.spcFeeYn+"', '"+false+"');\"><span>"+favorLabel+"</span></a>";
												mbrPackHtml += "				</div>";
												mbrPackHtml += " 			</dd>";
												mbrPackHtml += "			<dd class=\"prodDetail\">";
												mbrPackHtml += "				<div class=\"priceWrap\">";
												mbrPackHtml += "					<div>";
												if ( mbrObj.spcFeeYn == "Y"  && "false" == "false" ){
													mbrPackHtml += "						<strong class=\"price secret\">시크릿 특가</strong>"; 
													mbrPackHtml += "						<ul class=\"notiList1\">";
													mbrPackHtml += "							<li class=\"first last\">해당 상품은 로그인 후 이용 가능합니다.</li>";
													mbrPackHtml += "						</ul>";
													mbrPackHtml += "					</div>";
													mbrPackHtml += "				</div>";
												}else if( mbrObj.spcFeeYn == "Y"  && "false" == "true" ){
													
													mbrPackHtml += "					<strong class=\"price secret login\" ";
													for(var z = 0;z < mbrObj.exchangeRateList.length; z++){
														var exchangeObj = mbrObj.exchangeRateList[z];
														mbrPackHtml+= "data-"+	exchangeObj.currCd + "=\""+exchangeObj.exchangePric+"\"";
													}
													if(objData.hotlVo.hotlId == "VDNSM"){
														mbrPackHtml += ">" + fncAddComma(mbrObj.minPric)+dong+" ~</strong>";
													}else{
														mbrPackHtml += ">" + fncAddComma(mbrObj.minPric)+won+" ~</strong>";
													}
													mbrPackHtml += "							<span class=\"days\"><em class=\"secret\">시크릿 특가</em>1"+bak+"</span>"; 
													mbrPackHtml += "					</div>";
													mbrPackHtml += "				</div>";
												}else if(mbrObj.spcFeeYn == "N" || "false" == "true"){
													mbrPackHtml += "					<strong class=\"price\" ";
														for(var z = 0;z < mbrObj.exchangeRateList.length; z++){
															var exchangeObj = mbrObj.exchangeRateList[z];
															mbrPackHtml+= "data-"+	exchangeObj.currCd + "=\""+exchangeObj.exchangePric+"\"";
														}
													if(objData.hotlVo.hotlId == "VDNSM"){
														mbrPackHtml += ">" + fncAddComma(mbrObj.minPric)+dong+" ~</strong>";
													}else{
														mbrPackHtml += ">" + fncAddComma(mbrObj.minPric)+won+" ~</strong>";
													}
													mbrPackHtml += "							<span class=\"days\">1"+bak+"</span>";
													mbrPackHtml += "					</div>";
													mbrPackHtml += "				</div>";
												}
												mbrPackHtml += "				<a href=\"#none\" class=\"btnRsv\"><img src=\"/images/ko/mem/new_2019/reserve_step1_rsvopen.gif\" alt=\"예약하기\" onclick=\"setPackOptEx('M','"+j+"', '"+mbrObj.spofrId+"', '"+mbrObj.packItNo+"', '"+mbrObj.ratePlanCode+"', '"+mbrObj.infantResvYn+"', '"+mbrObj.spcFeeYn+"', '', '', '');\"></a>";
												mbrPackHtml += "				<div class=\"roomRsv\" id=\"mbrOpt"+j+"\">";
												mbrPackHtml += "				</div>";
												mbrPackHtml += "			</dd>";
												mbrPackHtml += "		</dl>";
												mbrPackHtml += "	</li>";
											}
											mbrPackHtml += "		</ul>";
											mbrPackHtml += "		</div>";
										}else{
											mbrPackHtml += "<div class=\"rsvResultList\" id=\"mbrList\" style=\"display: none;\">";
											mbrPackHtml +="	<div class=\"rsvDescWrap\">";
											mbrPackHtml +="		<div class=\"rsvDescNone\">";
											if(jsonObj.model.searchOptIdStr != "" ){
												mbrPackHtml +="			키워드에 해당되는 회원전용상품이 없습니다.";
											}else{
												mbrPackHtml +="			예약 가능한 회원전용 상품이 없습니다.<br>"; 
												mbrPackHtml +="			호텔 또는 날짜를 다시 선택해주세요."; 
											}
											mbrPackHtml +="		</div>";
											mbrPackHtml +="	</div>";
											mbrPackHtml += "</div>";
										}
										
										if("" != "" || objData.rsResvExVo.coporateCd != ""){
											jQuery("#coporateCd").prop("disabled", true);
											jQuery("#coporateVal").prop("disabled", true);
										}
										
										var hotlIdStr = $("#hotlIdArr").val();
										var hotlIdArr = hotlIdStr.split(",");
										
										if(roomList.length < 1 && packList.length < 1 && mbrPackList.length < 1 && 2 > hotlIdArr.length){
											if(objData.rsResvExVo.resvTypCd == "M"){
												$("#rsvResultTop").html(tabHtml);
												$("#emptyMiceSearchWrap").show();
												$("#rsvResultWrap").hide();
											}else{
												
												if(hotlIdArr.length > 1){
													$("#emptyMiceSearchWrap").show();
													$("#emptySearchWrap").hide();
												}else{
													$("#emptyMiceSearchWrap").hide();
													$("#emptySearchWrap").show();
													if(objData.rsResvExVo.hotlId == "VDNSM"){
														$("#emptyMiceSearchWrap").show();
														$("#emptySearchWrap").hide();
													}
												}
												$("#rsvResultTop").html(tabHtml);
												$("#rsvResultWrap").hide();
											}						
										}else{
											$("#rsvResultWrap").show();
											$("#emptySearchWrap").hide();
											$("#rsvResultTop").html(tabHtml);
											
											if(prtyExpRoom == "R"){
												$("#rsvResultCon").html(hotTelHtml+mbrPackHtml+roomHtml+packHtml);
											}else{
												$("#rsvResultCon").html(hotTelHtml+mbrPackHtml+packHtml+roomHtml);
											} 	
											$(".rsvSubTab li").removeClass();
											
											if(mbrPackList.length > 0 && roomList.length < 1 && packList.length < 1){
												$("#mbrList").addClass("first");
												$("#mbrList").show();
												$("#tabMbr").addClass("on");
												$("#roomList").hide();
												$("#packList").hide();
											}else{
												if(mbrtab){
													$("#mbrList").addClass("first");
													$("#mbrList").show();
													$("#tabMbr").addClass("on");
													$("#roomList").hide();
													$("#packList").hide();
												}else if(packtab){
													$("#packList").addClass("first");
													$("#tabPack").addClass("on");
													$("#mbrList").hide();
													$("#roomList").hide();
													$("#packList").show();
												}else if(roomtab){
													$("#roomList").addClass("first");
													$("#tabRoom").addClass("on");
													$("#mbrList").hide();
													$("#roomList").show();
													$("#packList").hide();
												}
											}
											
											if(objData.hotlVo.hotlId == "VDNSM" && objData.rsResvExVo.currencyCd != ""){
												exchangeRateChange($("#currencyCd"), "N");
											}
											
										}
										
										if(jsonObj.model.rsResvExVo.roomCnt > 1
												&& (mbrPackList.length > 0 || packList.length > 0 || roomList.length > 0) 
												&& tabYn != 'Y' && multiRoomFlag){
											alert("다중 객실 예약  시, 투숙 인원에 따라 객실별 요금이 상이할 수 있습니다.");  
											multiRoomFlag = false;
										}
										fncRsvInquire("KR");
										$("select,input").not(".css-checkbox").uniform();
										//$("select#sortBy").val(objData.rsResvExVo.sortBy).trigger("change");
										$(".rsvSubTab").find("li").children("a").click(function(){ /***********전체, 객실, 패키지탭 이벤트 바인딩*******************/
											var mbrListSize  = $("#mbrList").find("ul").children().length;
											var packListSize = $("#packList").find("ul").children().length;
											var roomListSize = $("#roomList").find("ul").children().length;
											var target = $(this).parent().attr("id"); 
											
											switch (target) {
												
												case "tabMbr"  :
													$("#mbrList").addClass("first");
													$("#mbrList").show();
													$("#packList").hide();
													$("#roomList").hide();
													break;
												case "tabPack" : // 패키지탭
													$("#packList").addClass("first");
													$("#packList").show();
													$("#roomList").hide();
													$("#mbrList").hide();
													break;
												case "tabRoom" : 
													$("#roomList").addClass("first");
													$("#roomList").show();
													$("#packList").hide();
													$("#mbrList").hide();
													if("N" == "N" && "" == "" && "" == ""){
														flag = false;
														if(jejuInfoFlag && "ko" == "ko" && $("#hotlId").val() == "C") {
															jejuInfoPopupOpen();
														}
													}
												
													break;
												default: return; break;
											}
											
											$(this).parent().parent().addClass("on");
											$(this).parent().parent().siblings().removeClass();
										});
										$("input[name='keyword']").click(function () { // 키워드 선택시 볼드처리
											
											if ($(this).is(":checked")) {
												$(this).parent().find("label").addClass("keyOn");
											} else {
												$(this).parent().find("label").removeClass("keyOn");
											}
										});
										
										$("#htBrandList li, #htRegionList li").click(function(){
										   if(searchFlag){
											   if($("#tempHotlId").val() != $("#hotlId").val() || 
													  $("#tempCkinYmd").val() != $("#ckinYmd").val() || 
													  $("#tempCkoutYmd").val() != $("#ckoutYmd").val() ||
													  $("#tempRoomCnt").val() != $("#roomCnt").val() ||
													  $("#tempAdltCnt").val() != $("#totlAdltCnt").val() ||
													  $("#tempChldCnt").val() != $("#totlChldCnt").val() ||
													  $("#tempInfantCnt").val() != $("#totlInfantCnt").val()
											   ){
											   	$("#rsvResultTop").html("");
											   	$("#rsvResultCon").html("");
											   	$("#estCharge").hide();
											   }
										   } 
										});
										if(objData.isSearch == "true" && chldInfoFlag){
											childInfoPopupOpen();
										}
										if(objData.mgIsSearch == "true" && mgChldInfoFlag){
											//mgChildInfoPopupOpen();
										}
										$('.opacity').hide(); /************ 성인, 어린이, 유아 +-버튼 이벤트 바인딩*********************/
										pc.layerPopup.unLockScroll();
										$('.re-loader').hide();
										
										//프로모션 이용안내 팝업 2019-09-27
										if(jsonObj.model.rsResvExVo.resvTypCd == "M"){
											if(objData.grEvntVo.noticePopupYN == "Y"){
												$("#SPpromoInfo .popCtn").html(objData.grEvntVo.noticePopupDesc);
												pc.layerPopup.openPop('#SPpromoInfo');
												pc.layerPopup.lockScroll();		
											}
										}
									},
									error : function(jqxhr, textStatus, error){
										alert("getSearchResvList request fail : " + error);
										$('.opacity').hide();
										pc.layerPopup.unLockScroll();
										$('.re-loader').hide();
										
									}
								});
							}
						});
					}				
				}
			});
		}else if(tabYn == "Y"){
			$.ajax({
				url: "/resv/rpm/getHotlInfoList.do",
				data : { "hotlIdStr": $("#hotlIdArr").val() },
				cache: false,
				type: "POST",
				success : function(json){
					var data = jQuery.parseJSON(json);
					var hotlList = data.model.hotlList;
					var lang = "ko";
					
					
					for(var c = 0;c < hotlList.length; c++){
						var hotlObj = hotlList[c];
						var hotlNm = "";
						if(hotlObj.resvPosbAheadDyCnt != "0"){
							aheadDayYnTF = fnResvPosbAheadDyYnTF(hotlObj.resvPosbAheadDyCnt, '2022-06-13');
							if(!aheadDayYnTF){
								switch (lang) {
								case "ko" : hotlNm = hotlObj.hotlNmKr; break;
								case "en" : hotlNm = hotlObj.hotlNmEn; break;
								case "ja" : hotlNm = hotlObj.hotlNmJp; break;
								case "zh" : hotlNm = hotlObj.hotlNmCn; break;
								default	  : hotlNm = hotlObj.hotlNmKr; break;
								}
		
								noResvHotlNm += hotlNm + ", ";
								noResvHotlCnt++; 
							}
						}
					}
				},
				error : function(){
					alert( "getHotlInfoList Request Failed");
				},
				complete : function(){
					if(noResvHotlCnt > 0){
						noResvHotlNm = noResvHotlNm.substring(0, noResvHotlNm.lastIndexOf(","));
						/* alert(noResvHotlNm+"은 당일 예약이 불가하오니 투숙일을 변경해주십시오. 당일 예약을 원하시는 경우 다른 호텔을 선택해주십시오\n"
				        +"\n- 제주신라호텔 : 당일 15시까지 예약 가능\n"
				        +"- 신라스테이 전 지점 : 당일 23시까지 예약 가능"); */
						var mag = messages["javascript.fncgoresv.room.alert7"]; 
							mag = mag.replace('{0}', noResvHotlNm);
							mag = mag.replace(/<br\/>/g,"\n");
							alert(mag);
						$('.opacity').hide();
						pc.layerPopup.unLockScroll();
						$('.re-loader').hide();
					}else if(noResvHotlCnt == 0){
						$("#searchOptIdStr").val(optList.toString());
						$("#estCharge").hide();
						
						var url = jQuery("#URL_PREFIX").val()+"/resv/rpm/getSearchResvList.do";
						
						if("" != ""){
							jQuery("#coporateCd").prop("disabled", false);
						}
						
						$.ajax({
							url: url,
							data:$("#resvForm").serialize(),
							cache: false,
							type: "POST",
							beforeSend : function(){
								$('.opacity').show();
								pc.layerPopup.lockScroll();
								$('.re-loader').show();
								$("#beforeSearchWrap").hide();
								$("#emptyMiceSearchWrap").hide();
								$("#emptySearchWrap").hide();
							},
							success : function(data){
								$("#rsvResultCon").html("");
								var jsonObj = jQuery.parseJSON(data);
								var objData = jsonObj.model;
								
								$("#tempHotlId").val($("#hotlId").val());
								$("#tempCkinYmd").val($("#ckinYmd").val());
								$("#tempCkoutYmd").val($("#ckoutYmd").val());
								$("#tempRoomCnt").val($("#roomCnt").val());
								$("#tempAdltCnt").val($("#totlAdltCnt").val());
								$("#tempChldCnt").val($("#totlChldCnt").val());
								$("#tempInfantCnt").val($("#totlInfantCnt").val());
								searchFlag = true;
								var targetTab = "";
								$(".rsvSubTab li").each(function(){ /**탭 유지를 위한 스크립트 */
									if($(this).hasClass("on")){
										targetTab = $(this).attr("id");
									}
								});
								var prtyExpRoom = objData.prtyExpRoom;// 객실/ 패키지 노출 순서 (P : 패키지 우선순위, R : 객실 우선순위, default : 객실우선순위)
								var currencyCd = jsonObj.model.rsResvExVo.currencyCd;
								var hotTelHtml = "";
								var roomHtml = "";
								var packHtml = "";
								var mbrPackHtml = "";
								var tabHtml = "";
								var sortHtml = "";
								var allLabel = "전체"; 
								var packageLabel = "패키지"; 
								var mbrPackageLabel = "회원전용"; 
								var roomLabel = "객실"; 
								var resvLabel = "예약하기"; 
								
								var roomList = typeof objData.availRoomCdList == "undefined" ? new Array() : objData.availRoomCdList;
								var packList = typeof objData.availPackList == "undefined" ? new Array() : objData.availPackList;
								var mbrPackList = typeof objData.mbrPackList == "undefined" ? new Array() : objData.mbrPackList;
								var tapHotlList = typeof  objData.tapHotlList == "undefined" ? new Array() : objData.tapHotlList;
								var keywordList = typeof  objData.keywordList == "undefined" ? new Array() : objData.keywordList;
								var currencyList = typeof  objData.CURRENCY_LIST == "undefined" ? new Array() : objData.CURRENCY_LIST;
			
								var roomCnt = roomList.length;
								var packCnt = packList.length;
								var mbrPackCnt = mbrPackList.length;
								
								var won = "&nbsp;원"; 
								var dong = "&nbsp;VND"; 
								var bak = "박"; 
								//모노그램 다낭 날짜 체크 얼럿
								if(jsonObj.model.mgChk == "true" && mgAlertFlag){
									//alert("신라모노그램 다낭은 6월 1일부터 예약 가능하오니 투숙일을 변경해주십시오.");
									//mgAlertFlag = false;
								}
								
								/** 삼성예약가능 4월1일 */
								var years1 = '2020'; var months1 = '04'; var days1 = '01'; var dates1 = new Date(); dates1.setFullYear(years1, months1-1, days1); dates1.setDate(dates1.getDate());
								var tmpss = $("#tempCkinYmd").val().split("-");
								var years2 = tmpss[0]; var months2 = tmpss[1]; var days2 = tmpss[2]; var dates2 = new Date(); dates2.setFullYear(years2, months2-1, days2); dates2.setDate(dates2.getDate());
								if($("#hotlIdArr").val().indexOf("SAMSS") > -1){ if(dates1.getTime() > dates2.getTime()) { alert("신라스테이 삼성은 4월 1일부터 예약 가능하오니 투숙일을 변경해주십시오."); } }
								
								
								if(tapHotlList.length > 0){ /********** 호텔 탭 생성 **********/
									tabHtml += "<div class=\"rsvTab\">";
									tabHtml += "	<ul>";
									for(var i = 0;i < objData.tapHotlList.length; i++){
										var tapHotlListObj = objData.tapHotlList[i];
										tabHtml += "		<li class=\""+tapHotlListObj.tapHighlight+"\"><a href=\"#none\"";
										if(objData.rsResvExVo.hotlId != tapHotlListObj.cdId){ //호텔 ID 가 같을 경우 이벤트 삭제
											tabHtml += "onclick=\"document.getElementById('searchBarKeyword').value='"+tapHotlListObj.cdVa+"';fnTapHotlSelection('"+ tapHotlListObj.cdId +"');\"";
										}
										tabHtml += ">" + tapHotlListObj.cdVa+"</a></li>";
									}
									tabHtml += "	</ul>";
									tabHtml += "</div>";
								}
								if(jsonObj.model.searchOptIdStr != ""){ /********** 정렬 순서 **********/
									roomCnt = 0;
								}
								tabHtml += "	<div class=\"rsvSubTab\">";
								tabHtml += "		<ul>";
								if(jsonObj.model.rsResvExVo.resvTypCd == "M"){
									if(jsonObj.model.grEvntVo.openType == "P"){
										roomLabel = "패키지"; 
										packageLabel = "객실"; 
									}
								}
								
								var mbrtab = false;
								var packtab = false;
								var roomtab = false;
								
								if(targetTab == "tabMbr"){
									mbrtab = true;
								}else if(targetTab == "tabPack"){
									packtab = true;
								}else if(targetTab == "tabRoom"){
									roomtab = true;
								}else{
									if(mbrPackCnt > 0){
										mbrtab = true;
									}
									if(mbrPackCnt == 0 && packCnt > 0){
										packtab = true;
									}
									if(mbrPackCnt == 0 && packCnt == 0 && roomCnt > 0){
										roomtab = true;
									}
									if(mbrPackCnt == 0 && packCnt == 0 && roomCnt== 0){
										mbrtab = true;
									}
								}
								if(mbrtab){ /** 회원전용 , 패키지 , 객실 탭 */
									tabHtml += "		<li id=\"tabMbr\" class=\"on\"><a href=\"#none\">"+mbrPackageLabel+" ("+mbrPackCnt+")</a></li>";	
								}else{
									tabHtml += "		<li id=\"tabMbr\"><a href=\"#none\">"+mbrPackageLabel+" ("+mbrPackCnt+")</a></li>";
								}
								if(jsonObj.model.rsResvExVo.resvTypCd == "M"){
									if(jsonObj.model.grEvntVo.openType == "P"){
										if(roomtab){
											tabHtml += "		<li id=\"tabRoom\" class=\"on\"><a href=\"#none\">"+roomLabel+" ("+roomCnt+")</a></li>";	
										}else{
											tabHtml += "		<li id=\"tabRoom\"><a href=\"#none\">"+roomLabel+" ("+roomCnt+")</a></li>";
										}
										
										if(packtab){
											tabHtml += "		<li id=\"tabPack\" class=\"on\"><a href=\"#none\">"+packageLabel+" ("+packCnt+")</a></li>";	
										}else{
											tabHtml += "		<li id=\"tabPack\"><a href=\"#none\">"+packageLabel+" ("+packCnt+")</a></li>";
										}
									}else{
										if(packtab){
											tabHtml += "		<li id=\"tabPack\" class=\"on\"><a href=\"#none\">"+packageLabel+" ("+packCnt+")</a></li>";	
										}else{
											tabHtml += "		<li id=\"tabPack\"><a href=\"#none\">"+packageLabel+" ("+packCnt+")</a></li>";
										}
										
										if(roomtab){
											tabHtml += "		<li id=\"tabRoom\" class=\"on\"><a href=\"#none\">"+roomLabel+" ("+roomCnt+")</a></li>";	
										}else{
											tabHtml += "		<li id=\"tabRoom\"><a href=\"#none\">"+roomLabel+" ("+roomCnt+")</a></li>";
										}
									}
								}else{
									if(packtab){
										tabHtml += "		<li id=\"tabPack\" class=\"on\"><a href=\"#none\">"+packageLabel+" ("+packCnt+")</a></li>";	
									}else{
										tabHtml += "		<li id=\"tabPack\"><a href=\"#none\">"+packageLabel+" ("+packCnt+")</a></li>";
									}
									
									if(roomtab){
										tabHtml += "		<li id=\"tabRoom\" class=\"on\"><a href=\"#none\">"+roomLabel+" ("+roomCnt+")</a></li>";	
									}else{
										tabHtml += "		<li id=\"tabRoom\"><a href=\"#none\">"+roomLabel+" ("+roomCnt+")</a></li>";
									}
								}
								tabHtml += "		</ul>";
								tabHtml +=	"	</div>";	
								
								// 2020-03-30 탭이동시 키워드 검색, 정렬순서, 환율정보 영역 객실정보가 없어도 노출되게 수정
								//if(mbrPackCnt != 0 || packCnt != 0 && roomCnt != 0){
									
									tabHtml += "<ul class=\"rsvSort\">"; /********** 키워드/환율/정렬 탭 생성 *********/
									
									
									if(keywordList.length > 1){
										var keywordOn = "";
										if(jsonObj.model.searchOptIdStr != "" ){
											keywordOn = "on";
										}
										tabHtml += "	<li class=\"sort1 "+keywordOn+"\">";
										tabHtml += "		<a href=\"#none\" class=\"btnkeyword\" title=\"키워드검색 닫기\">키워드</a>"; 
										tabHtml += "			<div class=\"keyWordWrap\">";
										tabHtml += "				<strong class=\"tit\"><img src=\"/images/ko/mem/new_2019/tit_rsv_keyword.gif\" alt=\"키워드 검색\"></strong>"; 
										tabHtml += "				<div class=\"keyWordG\">";
										
										for(var i = 0;i < keywordList.length; i++){
											var keywordObj = keywordList[i];
											var addCls = "";
											var isKeyOn = "";
											if(keywordObj.checked == "1"){
												addCls = "checked='checked'";
												isKeyOn = "keyOn";
											}
											
											tabHtml += "<span>";
											tabHtml += "	<input type=\"checkbox\" id=\""+keywordObj.optId+"\" name=\"keyword\" class=\"css-checkbox checkbox\" value=\""+keywordObj.optId+"\" data-hotlid=\""+objData.rsResvExVo.hotlId+"\" "+addCls+">";
											tabHtml += "	<label for=\""+keywordObj.optId+"\" class=\"css-label "+isKeyOn+"\" >"+keywordObj.optNm+"</label>";
											tabHtml += "</span>";
										}
										tabHtml += "		<span class=\"keywordReset\">";
										tabHtml += "			<a href=\"#none\" onclick=\"fncKeywordReset();\" class=\"btnKeywordReset\">";
										tabHtml += "				<img src=\"/images/ko/mem/new_2019/btn_hotel_clear_txt.png\" alt=\"선택해제\">"; 
										tabHtml += "			</a>";
										tabHtml += "		</span>";
										tabHtml += "		<a href=\"#none\" class=\"btnKeySrch\" onclick=\"fncSearchResvList('N');\"><img src=\"/images/ko/mem/new_2019/reserve_step1_keyword.gif\" alt=\"적용\"></a>"; 
										tabHtml += "		</div>";
										tabHtml += "	</div>";
										tabHtml += "</li>";
									}else{
										tabHtml += "<li class=\"sort1\">";
										tabHtml += "</li>";
									}
									
									
									tabHtml += "<li class=\"sort2\">";
									tabHtml += "	<div class=\"sortSelect\">";
									tabHtml += "		<select name=\"sortBy\" id=\"sortBy\" title=\"정렬순서 선택\" onchange=\"fncSearchResvList('N');return false;\">";
									if(objData.rsResvExVo.sortBy == "lowPric"){
										tabHtml += "			<option value=\"lowPric\" selected=\"selected\">낮은 가격 순</option>"; 
									}else{
										tabHtml += "			<option value=\"lowPric\">낮은 가격 순</option>"; 
									}
									if(objData.rsResvExVo.sortBy == "highPric"){
										tabHtml += "			<option value=\"highPric\" selected=\"selected\">높은 가격 순</option>"; 
									}else{
										tabHtml += "			<option value=\"highPric\" >높은 가격 순</option>"; 
									}
									if(objData.rsResvExVo.sortBy == "newest"){
										tabHtml += "			<option value=\"newest\" selected=\"selected\">최신 순</option>"; 
									}else{
										tabHtml += "			<option value=\"newest\">최신 순</option>"; 
									}
									if(objData.rsResvExVo.sortBy == "hot"){
										tabHtml += "			<option value=\"hot\" selected=\"selected\">인기 순</option>"; 
									}else{
										tabHtml += "			<option value=\"hot\">인기 순</option>"; 
									}
									if(objData.rsResvExVo.sortBy == "recommended"){
										tabHtml += "			<option value=\"recommended\" selected=\"selected\">추천 순</option>"; 
									}else{
										tabHtml += "			<option value=\"recommended\">추천 순</option>"; 
									}
									tabHtml += "		</select>";
									tabHtml += "	</div>";
									tabHtml += "</li>";
									
									if(currencyList.length > 1 && objData.hotlVo.hotlId == "VDNSM"){ //통화 변경 기능 사용 시 주석 삭제
										tabHtml += "<li class=\"sort3\">";
										tabHtml += "	<div class=\"sortSelect\">";
										tabHtml += "		<select title=\"통화 선택\" name=\"currencyCd\" onchange=\"exchangeRateChange(this, 'Y');\" id=\"currencyCd\">";
										for(var i = 0;i < currencyList.length; i++){
											
											var currencyObj = currencyList[i];
											
											var tabOn = "";
											
											if(currencyObj.currCd == objData.rsResvExVo.currencyCd){
												tabOn = "selected";
											}
											
											tabHtml += "		<option value=\""+currencyObj.currCd+"\""+tabOn+">"+currencyObj.currNm+"</option>";
										}
										tabHtml += "	</select>";
										tabHtml += "</div>";
										tabHtml += "</li>";
									}else{
										tabHtml += "<input type=\"hidden\" name=\"currencyCd\" id=\"currencyCd\" value=\"KRW\" />";
										// 영역 스타일 적용
										setTimeout(function(){
											if("ko" == "ko"){
												$(".new_rsvBox .rsvSort .sort1").prop("style", "padding:0 100px 12px 0");	
											} else if("ko" == "en"){
												$(".new_rsvBox .rsvSort .sort1").prop("style", "padding:0 150px 12px 0");	
											} else {
												$(".new_rsvBox .rsvSort .sort1").prop("style", "padding:0 90px 12px 0");	
											}
											
											$(".new_rsvBox .rsvSort .sort2").prop("style", "right:0");
        								},0);
									}
									
									tabHtml += "		</ul>";
								
								//}else{
								//	tabHtml += "<ul class=\"rsvSort\" style=\"height: 24px;\">";
								//	tabHtml += "</ul>";
								//}
								
								tabHtml += "	</div>";
								if(objData.rsResvExVo.resvTypCd == 'M'){ /************ 프로모션으로 들어올 때************/
									$("#grEvntId").val(objData.rsResvExVo.grEvntId);
									$("#grRblokId").val(objData.rsResvExVo.grRblokId);
								}else{
									$("#grEvntId").val("");
									$("#grRblokId").val("");
								}
								hotTelHtml += "<div class=\"rsvInqWrap\">";
								hotTelHtml += "		<p class=\"noti4\">* 할인이 적용된 요금입니다.</p>";
								hotTelHtml += "		<span class=\"phoneNo\">객실예약 연락처 : <span class=\"tel\">";
								var langTypCd = "KR" == "" ? "KR" : "KR";
								if(objData.rsResvExVo.hotlId == "S" || "" == "S"){		
									if(langTypCd == "KR"){
										hotTelHtml += " 02-2230-3310";
									} else {
										hotTelHtml += " +82-2-2230-3310";
									}
								}else if(objData.rsResvExVo.hotlId == "VDNSM"){
									hotTelHtml += "+84-235-625-0088";
									<!-- 2020-02-10 변경 -->
									
								} else if(objData.rsResvExVo.hotlId == "C" || "" == "C"){
									if(langTypCd == "KR"){
										hotTelHtml += " 1588-1142";
									} else {
										hotTelHtml += " +82-1588-1142";
									}
								} else {
									if(langTypCd == "KR"){
										hotTelHtml += " 02-2230-0700";
									} else {
										hotTelHtml += " +82-2-2230-0700";
									}
								}
								
								hotTelHtml += "</span></span>";
								hotTelHtml += "		<a href=\"/membership/inquires/contactus/memSetVoc.do\" target=\"_blank\" class=\"que\">문의하기</a>";
								hotTelHtml += "</div>";
								
								if(roomCnt > 0){
								 	var roomMsg1 = "객실";	// 객실
								 	var roomMsg2 = "할인이 적용된 요금입니다.";	//현재 예약 가능한 객실입니다.
								 	
								 	if(roomtab){
								 		roomHtml += "<div class=\"rsvResultList\" id=\"roomList\">";
								 	}else{
								 		roomHtml += "<div class=\"rsvResultList\" id=\"roomList\" style=\"display: none;\">";
								 	}
								 	roomHtml += "	<ul>";
									
								 	var domain = "";
								 	
								 	if(objData.rsResvExVo.hotlId == "S" || objData.rsResvExVo.hotlId == "C"){
								 		domain = "https://www.shilla.net/images/contents";
								 	}else if(objData.rsResvExVo.hotlId == "VDNSM"){
								 		domain = "https://www.shillamonogram.com/images/contents";
								 	} else {
								 		domain = "https://www.shillastay.com/images/contents";
								 	}
								 	
								 	for(var i = 0; i < roomList.length; i++){
								 		
										var imgSrcKey, imgDcKey, roomInfoKey;
										var ACCMO_STR = "ACCMO_INDEX-accmo"; 
										var LANG_TYP_CD = "KR";
										
										roomObj = roomList[i];
										
										imgSrcKey = ACCMO_STR+roomObj.roomCd+"-"+LANG_TYP_CD+"-12";
										imgDcKey = ACCMO_STR+roomObj.roomCd+"-"+LANG_TYP_CD+"-19";
										roomInfoKey = ACCMO_STR+roomObj.roomCd+"-"+LANG_TYP_CD+"-208-VALUE";
										
										var roomImgViewLabel = "객실 자세히 보기";
										
										if( i == 0 ){
											roomHtml += "	<li class=\"first\">";	
										}else{
											roomHtml += "	<li>";
										}
										roomHtml += "		<dl class=\"roomsInfo\">";								
								 		roomHtml += "			<dt>";	
								 		roomHtml += "				<div class=\"prodName\">"+roomObj.roomNm+"</div>";
								 		roomHtml += "			</dt>";
								 		roomHtml += "			<dd class=\"thumbImg\">";
								 		if("VDNSM" != objData.rsResvExVo.hotlId){
									 		roomHtml += "				<a href=\"#none\" onclick=\"openImgViewPop('"+objData.rsResvExVo.hotlId+"','"+roomObj.roomCd+"', 'KR', 'ko');\">";
									 		roomHtml += "					<img src=\""+domain+objData[imgSrcKey]+"\" style=\"width:260px; height:150px;\" alt=\""+objData[imgDcKey]+"\">";
									 		roomHtml += "				</a>";
								 		}else{
								 			roomHtml += "				<a href=\"https://www.shillamonogram.com/dnmg/introduce.do?lang=ko&tabNm=tab1\" target=\"_blank\">";
									 		roomHtml += "					<img src=\""+domain+objData[imgSrcKey]+"\" style=\"width:260px; height:150px;\" alt=\""+objData[imgDcKey]+"\">";
									 		roomHtml += "				</a>";
								 		}
								 		roomHtml += "			</dd>";
								 		roomHtml += "			<dd class=\"prodCont\">";
								 		roomHtml += "				<ul class=\"roomDInfo\">";
								 		roomHtml += 				objData[roomInfoKey];
								 		roomHtml += "				</ul>";
							 			roomHtml += "				<a href=\"#none\" class=\"btnBenfitInfo\" onClick=\"openImgViewPop('"+objData.rsResvExVo.hotlId+"','"+roomObj.roomCd+"', 'KR', 'ko');\"> <span>"+roomImgViewLabel+"</span></a>";
								 		roomHtml += "			</dd>";
								 		roomHtml += "			<dd class=\"prodDetail\">";					 		
								 		roomHtml += "				<div class=\"priceWrap\">";					 		
								 		roomHtml += "					<div>";					 		
								 		roomHtml += "					<strong class=\"price\" ";
											for(var z = 0;z < roomObj.exchangeRateList.length; z++){
												var exchangeObj = roomObj.exchangeRateList[z];
												roomHtml+= "data-"+	exchangeObj.currCd + "=\""+exchangeObj.exchangePric+"\"";
											}
										if(objData.hotlVo.hotlId == "VDNSM"){
											roomHtml += ">" + fncAddComma(roomObj.minPric)+dong+" ~</strong>";
										}else{
											roomHtml += ">" + fncAddComma(roomObj.minPric)+won+" ~</strong>";
										}
										
										roomHtml += "							<span class=\"days\">1"+bak+"</span>";
										
								 		roomHtml += "					</div>";
								 		roomHtml += "				</div>";
								 		roomHtml += "				<a href=\"#none\" class=\"btnRsv\"><img src=\"/images/ko/mem/new_2019/reserve_step1_rsvopen.gif\" alt=\"예약하기\" onclick=\"setRoomOpt('"+i+"','"+roomObj.roomClsCd+"', '"+roomObj.roomCd+"', '"+roomObj.ratePlanCode+"', '"+roomObj.infantResvYn+"','"+domain+objData[imgSrcKey]+"','KR', 'ko');\"></a>";
								 		roomHtml += "				<div class=\"roomRsv\" id=\"roomOpt"+i+"\">";
								 		roomHtml += "				</div>";
								 		roomHtml += "			</dd>";
								 		roomHtml += "		</dl>";
								 		roomHtml += "	</li>";
								 		
								 		
								 	}
								 	roomHtml += "	</ul>";
								 	roomHtml += "</div>";
								}else{
									roomHtml += "<div class=\"rsvResultList\" id=\"roomList\" style=\"display: none;\">";
									roomHtml +="	<div class=\"rsvDescWrap\">";
									roomHtml +="		<div class=\"rsvDescNone\">";
									if(jsonObj.model.searchOptIdStr != "" ){
										roomHtml +="			키워드에 해당되는 객실이 없습니다.";
									}else{
										roomHtml +="			현재 예약가능한 객실이 없습니다.<br/>"; 
										roomHtml +="			호텔 또는 날짜를 다시 선택해주세요."; 
									}
									roomHtml +="		</div>";
									roomHtml +="	</div>";
									roomHtml += "</div>";
									
								}
								
								if(packList.length > 0){
									if(packtab){
										packHtml += "<div class=\"rsvResultList\" id=\"packList\">";
									}else{
										packHtml += "<div class=\"rsvResultList\" id=\"packList\" style=\"display: none;\">";
									}
									packHtml += "	<ul>";
								 	
									for(var j = 0; j < packList.length; j++){
										
										packObj = packList[j];
										
										var availPackVo = packObj.hotlId;
										var imgPath = "";
										
										if(objData.rsResvExVo.hotlId == "S" || objData.rsResvExVo.hotlId == "C"){
											imgPath = "https://www.shilla.net/images/upload/"+packObj.packImgPath;
										}else if(objData.rsResvExVo.hotlId == "VDNSM"){
											imgPath = "https://www.shillamonogram.com/images/upload/"+packObj.packImgPath;
									 	}else{
											imgPath = "https://www.shillastay.com/images/upload/"+packObj.packImgPath;
										}
										
										if( j == 0 ){
											packHtml += "	<li class=\"first\">";	
										}else{
											packHtml += "	<li>";
										}
										packHtml += "		<dl class=\"roomsInfo\">";
										packHtml += "			<dt>";
										if(typeof packObj.rewardIcons != "undefined" && packObj.rewardIcons != null && packObj.rewardIcons != ""){
											var iconList = packObj.rewardIcons.split(",");
											
											packHtml += "				<span class=\"tagWrap\"> ";
											
											for(var iconNum = 0; iconNum < iconList.length; iconNum++){
												packHtml += "<span class=\"tagico\">"+iconList[iconNum]+"</span>";
											}
											packHtml += " 				</span>";
										}
										
										packHtml += "				<div class=\"prodName\">" + packObj.subj + "</div>";
										packHtml += "			</dt>";
										packHtml += "			<dd style=\"display:none;\">"+packObj.strtYmd + " ~ " + packObj.endYmd+"</dd>";
										packHtml += "			<dd class=\"thumbImg\">";
										packHtml += "				<a href=\"#none\" onclick=\"openFavorUseGuideEx('"+packObj.spofrId+"','"+packObj.packItNo+"', '"+objData.rsResvExVo.hotlId+"', '"+packObj.spcFeeYn+"', '"+false+"');\">";
								 		packHtml += "					<img src=\""+imgPath+"\" style=\"width:260px; height:150px;\" alt=\""+packObj.smryTxt+"\">";
								 		packHtml += "				</a>";
								 		packHtml += "			</dd>";
										packHtml += "			<dd class=\"prodCont\">";
										if(packObj.rewardsMappingYn == "Y"){
										packHtml += "				<div class=\"rewards\">";
										packHtml += "					<img src=\"/images/ko/mem/new_2019/img_badge_rewards.png\" alt=\"추가혜택\">";
										packHtml += "				</div>";
										}
										packHtml += "				<div class=\"editDesc\">";
										if(typeof packObj.packBenefit != "undefined"){
											packHtml += "				<ul class=\"listDot2\">";
											packHtml += 					packObj.packBenefit.replace(/\<br\>/gi,"");
											packHtml += "				</ul>";
										}
										var favorLabel = "혜택 및 이용안내";
										
										packHtml += "					<a href=\"#none\" class=\"btnBenfitInfo\" onclick=\"openFavorUseGuideEx('"+packObj.spofrId+"','"+packObj.packItNo+"', '"+objData.rsResvExVo.hotlId+"', '"+packObj.spcFeeYn+"', '"+false+"');\"><span>"+favorLabel+"</span></a>";
										packHtml += "				</div>";
										
										packHtml += " 			</dd>";
										packHtml += "				<dd class=\"prodDetail\">";
										packHtml += "					<div class=\"priceWrap\">";
										packHtml += "						<div>";
										
										
										packHtml += "					<strong class=\"price\" ";
										for(var z = 0;z < packObj.exchangeRateList.length; z++){
											var exchangeObj = packObj.exchangeRateList[z];
											packHtml+= "data-"+	exchangeObj.currCd + "=\""+exchangeObj.exchangePric+"\"";
										}
										if(objData.hotlVo.hotlId == "VDNSM"){
											packHtml += ">" + fncAddComma(packObj.minPric)+dong+" ~</strong>";	
										}else{
											packHtml += ">" + fncAddComma(packObj.minPric)+won+" ~</strong>";
										}
										
										packHtml += "							<span class=\"days\">1"+bak+"</span>";
										packHtml += "						</div>";
										packHtml += "					</div>";
										packHtml += "					<a href=\"#none\" class=\"btnRsv\"><img src=\"/images/ko/mem/new_2019/reserve_step1_rsvopen.gif\" alt=\"예약하기\" onclick=\"setPackOptEx('P','"+j+"', '"+packObj.spofrId+"', '"+packObj.packItNo+"', '"+packObj.ratePlanCode+"', '"+packObj.infantResvYn+"', '"+packObj.spcFeeYn+"', '"+packObj.rewardsMappingYn+"','"+packObj.rewardsMappingId+"','"+packObj.rewardsMappingListDc+"','"+packObj.rewardsMappingUrl+"');\"></a>";
										packHtml += "					<div class=\"roomRsv\" id=\"packOpt"+j+"\">";
										packHtml += "					</div>";
										packHtml += "				</dd>";
										packHtml += "			</dl>";
										packHtml += "		</li>";
									}
									packHtml += "		</ul>";
									packHtml += "		</div>";
								}else{
									packHtml += "<div class=\"rsvResultList\" id=\"packList\" style=\"display: none;\">";
									packHtml +="	<div class=\"rsvDescWrap\">";
									packHtml +="		<div class=\"rsvDescNone\">";
									if(jsonObj.model.searchOptIdStr != "" ){
										packHtml +="			키워드에 해당되는 패키지가 없습니다.";
									}else{
										packHtml +="			예약 가능한 패키지 상품이 없습니다.<br>"; 
										packHtml +="			호텔 또는 날짜를 다시 선택해주세요."; 
									}
									packHtml +="		</div>";
									packHtml +="	</div>";
									packHtml += "</div>";
								}
								
								if(mbrPackList.length > 0){
									if(mbrtab){
										mbrPackHtml += "<div class=\"rsvResultList\" id=\"mbrList\">";
									}else{
										mbrPackHtml += "<div class=\"rsvResultList\" id=\"mbrList\" style=\"display:none;\">";
									}
									mbrPackHtml += "	<ul>";
								 	
									for(var j = 0; j < mbrPackList.length; j++){
										
										mbrObj = mbrPackList[j];
										var availMbrVo = mbrObj.hotlId;
										var imgPath = imgPath = "https://www.shillahotels.com/images/upload/"+mbrObj.packImgPath;
										
										if( j == 0 ){
											mbrPackHtml += "	<li class=\"first\">";	
										}else{
											mbrPackHtml += "	<li>";
										}
										
										mbrPackHtml += "		<dl class=\"roomsInfo\" id=\""+mbrObj.spofrId+"M\">";
										mbrPackHtml += "			<dt>";
										if(typeof mbrObj.rewardIcons != "undefined" && mbrObj.rewardIcons != null && mbrObj.rewardIcons != ""){
											var iconList = mbrObj.rewardIcons.split(",");
											
											mbrPackHtml += "				<span class=\"tagWrap\"> ";
											
											for(var iconNum = 0; iconNum < iconList.length; iconNum++){
												mbrPackHtml += "<span class=\"tagico\">"+iconList[iconNum]+"</span>";
											}
											mbrPackHtml += " 				</span>";
										}
										
										mbrPackHtml += "				<div class=\"prodName\">"+mbrObj.subj+"</div>";
										mbrPackHtml += "			</dt>";
										mbrPackHtml += "			<dd style=\"display:none;\">"+mbrObj.strtYmd + " ~ " + mbrObj.endYmd+"</dd>";
										mbrPackHtml += "			<dd class=\"thumbImg\">";
										mbrPackHtml += "				<a href=\"#none\" onclick=\"openFavorUseGuideEx('"+mbrObj.spofrId+"','"+mbrObj.packItNo+"', '"+objData.rsResvExVo.hotlId+"', '"+mbrObj.spcFeeYn+"', '"+false+"');\">";
										mbrPackHtml += "					<img src=\""+imgPath+"\" style=\"width:260px; height:150px;\" alt=\""+mbrObj.smryTxt+"\">";
										mbrPackHtml += "				</a>";
										mbrPackHtml += "			</dd>";
										mbrPackHtml += "			<dd class=\"prodCont\">";
										mbrPackHtml += "				<div class=\"editDesc\">";
										if(typeof mbrObj.packBenefit != "undefined"){
											mbrPackHtml += 				"<ul class=\"listDot2\">";
											mbrPackHtml += 					mbrObj.packBenefit.replace(/\<br\>/gi,"");
											mbrPackHtml += 				"</ul>";
										}
										var favorLabel = "혜택 및 이용안내"; 
										mbrPackHtml += "					<a href=\"#none\" class=\"btnBenfitInfo\" onclick=\"openFavorUseGuideEx('"+mbrObj.spofrId+"','"+mbrObj.packItNo+"', '"+objData.rsResvExVo.hotlId+"', '"+mbrObj.spcFeeYn+"', '"+false+"');\"><span>"+favorLabel+"</span></a>";
										mbrPackHtml += "				</div>";
										mbrPackHtml += " 			</dd>";
										mbrPackHtml += "			<dd class=\"prodDetail\">";
										mbrPackHtml += "				<div class=\"priceWrap\">";
										mbrPackHtml += "					<div>";
										if ( mbrObj.spcFeeYn == "Y"  && "false" == "false" ){
											mbrPackHtml += "						<strong class=\"price secret\">시크릿 특가</strong>"; 
											mbrPackHtml += "						<ul class=\"notiList1\">";
											mbrPackHtml += "							<li class=\"first last\">해당 상품은 로그인 후 이용 가능합니다.</li>";
											mbrPackHtml += "						</ul>";
											mbrPackHtml += "					</div>";
											mbrPackHtml += "				</div>";
										}else if( mbrObj.spcFeeYn == "Y"  && "false" == "true" ){
											
											mbrPackHtml += "					<strong class=\"price secret login\" ";
											for(var z = 0;z < mbrObj.exchangeRateList.length; z++){
												var exchangeObj = mbrObj.exchangeRateList[z];
												mbrPackHtml+= "data-"+	exchangeObj.currCd + "=\""+exchangeObj.exchangePric+"\"";
											}
											if(objData.hotlVo.hotlId == "VDNSM"){
												mbrPackHtml += ">" + fncAddComma(mbrObj.minPric)+dong+" ~</strong>";		
											}else{
												mbrPackHtml += ">" + fncAddComma(mbrObj.minPric)+won+" ~</strong>";
											}
											mbrPackHtml += "							<span class=\"days\"><em class=\"secret\">시크릿 특가</em>1"+bak+"</span>"; 
											mbrPackHtml += "					</div>";
											mbrPackHtml += "				</div>";
										}else if(mbrObj.spcFeeYn == "N" || "false" == "true"){
											mbrPackHtml += "					<strong class=\"price\" ";
												for(var z = 0;z < mbrObj.exchangeRateList.length; z++){
													var exchangeObj = mbrObj.exchangeRateList[z];
													mbrPackHtml+= "data-"+	exchangeObj.currCd + "=\""+exchangeObj.exchangePric+"\"";
												}
											if(objData.hotlVo.hotlId == "VDNSM"){
												mbrPackHtml += ">" + fncAddComma(mbrObj.minPric)+dong+" ~</strong>";
											}else{
												mbrPackHtml += ">" + fncAddComma(mbrObj.minPric)+won+" ~</strong>";												
											}
														
											mbrPackHtml += "							<span class=\"days\">1"+bak+"</span>";
											mbrPackHtml += "					</div>";
											mbrPackHtml += "				</div>";
										}
										mbrPackHtml += "				<a href=\"#none\" class=\"btnRsv\"><img src=\"/images/ko/mem/new_2019/reserve_step1_rsvopen.gif\" alt=\"예약하기\" onclick=\"setPackOptEx('M','"+j+"', '"+mbrObj.spofrId+"', '"+mbrObj.packItNo+"', '"+mbrObj.ratePlanCode+"', '"+mbrObj.infantResvYn+"', '"+mbrObj.spcFeeYn+"', '', '', '');\"></a>";
										mbrPackHtml += "				<div class=\"roomRsv\" id=\"mbrOpt"+j+"\">";
										mbrPackHtml += "				</div>";
										mbrPackHtml += "			</dd>";
										mbrPackHtml += "		</dl>";
										mbrPackHtml += "	</li>";
									}
									mbrPackHtml += "		</ul>";
									mbrPackHtml += "		</div>";
								}else{
									mbrPackHtml += "<div class=\"rsvResultList\" id=\"mbrList\" style=\"display: none;\">";
									mbrPackHtml +="	<div class=\"rsvDescWrap\">";
									mbrPackHtml +="		<div class=\"rsvDescNone\">";
									if(jsonObj.model.searchOptIdStr != "" ){
										mbrPackHtml +="			키워드에 해당되는 회원전용상품이 없습니다.";
									}else{
										mbrPackHtml +="			예약 가능한 회원전용 상품이 없습니다.<br>"; 
										mbrPackHtml +="			호텔 또는 날짜를 다시 선택해주세요."; 
									}
									mbrPackHtml +="		</div>";
									mbrPackHtml +="	</div>";
									mbrPackHtml += "</div>";
								}
								
								if("" != "" || objData.rsResvExVo.coporateCd != ""){
									jQuery("#coporateCd").prop("disabled", true);
									jQuery("#coporateVal").prop("disabled", true);
								}
								
								$("#rsvResultWrap").show();
								$("#emptySearchWrap").hide();
								$("#rsvResultTop").html(tabHtml);
								
								if(prtyExpRoom == "R"){
									$("#rsvResultCon").html(hotTelHtml+mbrPackHtml+roomHtml+packHtml);
								}else{
									$("#rsvResultCon").html(hotTelHtml+mbrPackHtml+packHtml+roomHtml);
								} 	
								$(".rsvSubTab li").removeClass();
								
								if(mbrPackList.length > 0 && roomList.length < 1 && packList.length < 1){
									$("#mbrList").addClass("first");
									$("#mbrList").show();
									$("#tabMbr").addClass("on");
									$("#roomList").hide();
									$("#packList").hide();
								}else{
									if(mbrtab){
										$("#mbrList").addClass("first");
										$("#mbrList").show();
										$("#tabMbr").addClass("on");
										$("#roomList").hide();
										$("#packList").hide();
									}else if(packtab){
										$("#packList").addClass("first");
										$("#tabPack").addClass("on");
										$("#mbrList").hide();
										$("#roomList").hide();
										$("#packList").show();
									}else if(roomtab){
										$("#roomList").addClass("first");
										$("#tabRoom").addClass("on");
										$("#mbrList").hide();
										$("#roomList").show();
										$("#packList").hide();
									}
								}
								
								if(jsonObj.model.rsResvExVo.roomCnt > 1 && (roomtab || packtab || mbrtab) && tabYn != 'Y' && multiRoomFlag){
									alert("다중 객실 예약  시, 투숙 인원에 따라 객실별 요금이 상이할 수 있습니다."); 
									multiRoomFlag = false;
								}
								fncRsvInquire("KR");
								$("select,input").not(".css-checkbox").uniform();
								//$("select#sortBy").val(objData.rsResvExVo.sortBy).trigger("change");
								$(".rsvSubTab").find("li").children("a").click(function(){ /***********전체, 객실, 패키지탭 이벤트 바인딩*******************/
									var mbrListSize  = $("#mbrList").find("ul").children().length;
									var packListSize = $("#packList").find("ul").children().length;
									var roomListSize = $("#roomList").find("ul").children().length;
									var target = $(this).parent().attr("id"); 
									
									switch (target) {
										
										case "tabMbr"  :
											$("#mbrList").addClass("first");
											$("#mbrList").show();
											$("#packList").hide();
											$("#roomList").hide();
											break;
										case "tabPack" : // 패키지탭
											$("#packList").addClass("first");
											$("#packList").show();
											$("#roomList").hide();
											$("#mbrList").hide();
											break;
										case "tabRoom" : 
											$("#roomList").addClass("first");
											$("#roomList").show();
											$("#packList").hide();
											$("#mbrList").hide();
											if("N" == "N" && "" == "" && "" == ""){
												flag = false;
												if(jejuInfoFlag && "ko" == "ko" && $("#hotlId").val() == "C") {
													jejuInfoPopupOpen();
												}
											}
										
											break;
										default: return; break;
									}
									
									$(this).parent().parent().addClass("on");
									$(this).parent().parent().siblings().removeClass();
								});
								$("input[name='keyword']").click(function () { // 키워드 선택시 볼드처리
									
									if ($(this).is(":checked")) {
										$(this).parent().find("label").addClass("keyOn");
									} else {
										$(this).parent().find("label").removeClass("keyOn");
									}
								});
								
								$("#htBrandList li, #htRegionList li").click(function(){
								   if(searchFlag){
									   if($("#tempHotlId").val() != $("#hotlId").val() || 
											  $("#tempCkinYmd").val() != $("#ckinYmd").val() || 
											  $("#tempCkoutYmd").val() != $("#ckoutYmd").val() ||
											  $("#tempRoomCnt").val() != $("#roomCnt").val() ||
											  $("#tempAdltCnt").val() != $("#totlAdltCnt").val() ||
											  $("#tempChldCnt").val() != $("#totlChldCnt").val() ||
											  $("#tempInfantCnt").val() != $("#totlInfantCnt").val()
									   ){
									   	$("#rsvResultTop").html("");
									   	$("#rsvResultCon").html("");
									   	$("#estCharge").hide();
									   }
								   } 
								});
								if(objData.isSearch == "true" && chldInfoFlag){
									childInfoPopupOpen();
								}
								if(objData.mgIsSearch == "true" && mgChldInfoFlag){
									//mgChildInfoPopupOpen();
								}
								$('.opacity').hide(); /************ 성인, 어린이, 유아 +-버튼 이벤트 바인딩*********************/
								pc.layerPopup.unLockScroll();
								$('.re-loader').hide();
							},
							error : function(jqxhr, textStatus, error){
								alert("getSearchResvList request fail : " + error);
								$('.opacity').hide();
								pc.layerPopup.unLockScroll();
								$('.re-loader').hide();
								
							}
						});
					}
				}
			});
		}
	},
	
	setRoom = function(roomIdx, bedSeq, mappingCnt, resvTypCd, roomCd, viewCd, roomTypCd, bedTypCd, ratePlanCode, spofrId, packItNo, roomClsCd, infantResvYn, viewNm, resvTyp ) {
		event.preventDefault();
		if(resvTyp == "M"){
			if("false" == "false"){
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
					$("#resvForm").attr("method", "post");
					$("#resvForm").attr("action", loginPath);
					$("#resvForm").submit();
			}
		}
		if(resvTyp != ''){
			$("#resvTypCd").val(resvTyp);
		}else{
			$("#resvTypCd").val(resvTypCd);
		}
		
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
						alert("패밀리 트윈 객실은 3인 1실 기준으로, 유아 포함 최대 4인 투숙 시 공간이 다소 협소할 수 있습니다.");
						alertFlag = false;
					}
				}else if((jQuery("#hotlId").val() != "S" && jQuery("#hotlId").val() != "C") && (parseInt(adltCnt)+parseInt(chldCnt)+parseInt(infantCnt) == 5)) {
					if(roomTypCd == "OSDC"){
						alert("온돌 스위트 객실은 4인 1실 기준으로 유아 포함 최대 5인 투숙 시 공간이 다소 협소할 수 있습니다.");
						alertFlag = false;
					}
			 	}else if((jQuery("#hotlId").val() != "S" && jQuery("#hotlId").val() != "C") && (parseInt(adltCnt)+parseInt(chldCnt)+parseInt(infantCnt) == 3)) {
					if(roomTypCd == "STD" || roomTypCd == "DXD" || roomTypCd == "GDD" || roomTypCd == "STDM" || roomTypCd == "STDC" || roomTypCd == "DXDM"
							|| roomTypCd == "DXDC" || roomTypCd == "GDDC" || roomTypCd == "STDP" || roomTypCd == "DXDP" || roomTypCd == "STDO" || roomTypCd == "DXDO"
							|| roomTypCd == "GSDO" || roomTypCd == "JSDO" || roomTypCd == "PEDC" || roomTypCd == "PEDO" || roomTypCd == "PSDC" || roomTypCd == "PTD"
							|| roomTypCd == "PDD"){
						alert("더블 객실은 2인 1실 기준으로 유아 포함 최대 3인 투숙 시 공간이 다소 협소할 수 있습니다.");
						alertFlag = false;
					}else if(roomTypCd == "STT" || roomTypCd == "STTC" || roomTypCd == "DXTC" || roomTypCd == "STTO" || roomTypCd == "DXTO" || roomTypCd == "PETC"
							|| roomTypCd == "DXT" || roomTypCd == "PTT"){
						alert("트윈 객실은 2인 1실 기준으로 유아 포함 최대 3인 투숙 시 공간이 다소 협소할 수 있습니다.");
						alertFlag = false;
					}
				// 제주신라호텔  테라스 객실  alert 추가
			 	}else if((jQuery("#hotlId").val() == "C") && (roomTypCd == "TEDG" || roomTypCd == "TEFG" || roomTypCd == "PTDG")) {
					alert("테라스(Terrace)룸은 온돌 객실에 침대가 놓여 있는 정원 전망 객실입니다.");
					alertFlag = false;
				// 제주신라호텔 프리미어스위트 객실 alert 추가, 국문만
			 	}else if((jQuery("#hotlId").val() == "C") && (roomTypCd == "PRDG") && ("ko" == "ko")) {
					alert("프리미어스위트 정원전망 객실은 3층~6층에 위치해있으며 3층은 지층과 연결되어있습니다. 객실배정은 체크인 당일 진행됩니다.");
					alertFlag = false;
					//  [서울] 어린이/유아 포함 이그제큐티브 레벨 객실 선택 시 alert 추가
			 	}else if((jQuery("#hotlId").val() == "S") && (roomTypCd == "EBD" || roomTypCd == "EBT" || roomTypCd == "EGD" ) && (parseInt(chldCnt)+parseInt(infantCnt) > 0) ) {
					alert("더 이그제큐티브 라운지는 투숙객 전용 비즈니스 공간으로 만 13세 이상 고객에 한해 출입이 가능합니다.");
					alertFlag = false;
				//  [서울] 어린이/유아 포함 스위트 객실 선택 시 alert 추가
			 	}else if((jQuery("#hotlId").val() == "S") && (roomClsCd == "SUT") && (parseInt(chldCnt)+parseInt(infantCnt) > 0)  ) {
					alert("더 이그제큐티브 라운지는 투숙객 전용 비즈니스 공간으로 만 13세 이상 고객에 한해 출입이 가능합니다. 특정 패키지의 스위트 객실은 더 이그제큐티브 라운지 이용 혜택을 포함하지 않습니다. ");
					alertFlag = false;
			 	}
			}
		}
		var relatedFlag = true;
		if(resvTypCd != "R"){
			$("#related_"+roomIdx+"_"+bedSeq).remove();
		}
		if(mappingCnt > 0 && relatedFlag && resvTypCd == "R"){
			relatedFlag = false;
			if($("#related_"+roomIdx+"_"+bedSeq).find(".slideBox").length == 0 ){
				var param = {
						'hotlId' 		: $("#hotlId").val(),
						'roomCd' 		: roomCd,
						'roomClsCd'	 	: roomClsCd,
						'roomTypCd'		: roomTypCd,
						'bedTypCd'		: bedTypCd,
						'ckinYmd'		:$("#ckinYmd"		).val(), 
						'ckoutYmd'		:$("#ckoutYmd"		).val(),
						'roomCnt'		:$("#roomCnt"		).val(),
						'totlAdltCnt'	:$("#totlAdltCnt"	).val(),
						'totlChldCnt'	:$("#totlChldCnt"	).val(),
						'totlInfantCnt'	:$("#totlInfantCnt"	).val(),
						'currencyCd'	:$("#currencyCd"	).val(),
						'nightCnt'		:$("#nightCnt"		).val(),
						'viewCd'		:viewCd
				}
				var ajaxUrl = "/resv/rpm/roomRelatedProduct.do";
				$.ajax({
					url: ajaxUrl,
					cache: false,
					type: "POST",
					async: false,
					data:"data="+JSON.stringify(param),
					beforeSend : function(){
							$('.opacity').show();
							pc.layerPopup.lockScroll();
							$('.re-loader').show();
					},
					success : function(json){
						var data = $.parseJSON(json);
						var packList = data.model.availPackList;
						var mbrList = data.model.mbrPackList;

						var won = "&nbsp;원";
						var dong = "&nbsp;VND";
						var relationHtml = "";
						relationHtml += "<strong class=\"tit\"><img src=\"/images/ko/mem/new_2019/tit_roomrelation.png\" alt=\"객실 연관 상품\"></strong>";
						relationHtml += "<ul class=\"slideTab\">";
						if(mbrList.length > 0){
							relationHtml += "	<li class=\"on\"><a href=\"#none\">회원전용</a></li>"; 
						}
						if(packList.length > 0){
							if(mbrList.length == 0){
								relationHtml += "	<li class=\"on\"><a href=\"#none\">패키지</a></li>"; 
							}else{
								relationHtml += "	<li><a href=\"#none\">패키지</a></li>"; 
							}
						}
						relationHtml += "</ul>";
						
						if(mbrList.length > 0){
							relationHtml += "<div class=\"slideBox\">";
							relationHtml += "	<strong class=\"hidden\">회원전용 객실 연관 상품</strong>"; 
							relationHtml += "	<div class=\"flexslider\">";
							relationHtml += "		<ul class=\"slides\">";
							
							var depthCnt = 4;
							
							for(var i = 1; i <= mbrList.length; i++){
								
								var mbrObj = mbrList[i-1];
								var packDetail = mbrObj.packBenefit.split("</li>");
								if(i == 1){
									relationHtml += "	<li>";
								}
								relationHtml += "		<a href=\"#none\" class=\"prod\" onclick=\"setRoom('','','0','P','"+roomCd+"','"+viewCd+"','"+roomTypCd+"','"+bedTypCd+"','"+mbrObj.ratePlanCode+"','"+mbrObj.spofrId+"','"+mbrObj.packItNo+"','"+roomClsCd+"','"+mbrObj.infantResvYn+"','"+viewNm+"','M');\">";
								relationHtml += "			<strong class=\"pordName\">"+mbrObj.subj+"</strong>";
								relationHtml += "			<span class=\"prodInfo\">"+packDetail[0].replace("<li>","")+"</span>";
								
								relationHtml += "			<span class=\"prodPrice\"";
								
								for(var z = 0; z < mbrObj.exchangeRateList.length; z++){
									var rateObj = mbrObj.exchangeRateList[z];
									relationHtml += "data-"+rateObj.currCd+"=\""+rateObj.exchangePric+"\"";
								}
								
								relationHtml += ">";
								
								if($("#hotlId").val() == "VDNSM"){
									relationHtml += fncAddComma(mbrObj.minPric) + " " + data.model.currencyCd;
								}else{
									relationHtml += fncAddComma(mbrObj.minPric)+won;
								}
								
								relationHtml += "</span>";
								
								relationHtml += "		</a>";
								//1/4 && 1 != 1
								if(i%depthCnt == 0 && mbrList.length != i){
									relationHtml += "	</li>";
									relationHtml += "	<li>";
								}
								if(mbrList.length == i){
									relationHtml += "	</li>";
								}
							}
							relationHtml += "		</ul>";
							relationHtml += "	</div>";
							relationHtml += "</div>";
						}
						
						if(packList.length > 0){
							if(mbrList.length == 0 ){
								relationHtml += "<div class=\"slideBox\">";	
							}else{
								relationHtml += "<div class=\"slideBox\" style=\"display:none\">";
							}
							relationHtml += "		<strong class=\"hidden\">객실 연관 상품</strong>";
							relationHtml += "		<div class=\"flexslider\">";
							relationHtml += "			<ul class=\"slides\">";
							
							var depthCnt = 4;
							
							for(var i = 1; i <= packList.length; i++){
								
								var packObj = packList[i-1];
								var packDetail = packObj.packBenefit.split("</li>");
								if(i == 1){
									relationHtml += "	<li>";
								}
								relationHtml += "		<a href=\"#none\" class=\"prod\" onclick=\"javascript:setRoom('','','0','P','"+roomCd+"','"+viewCd+"','"+roomTypCd+"','"+bedTypCd+"','"+packObj.ratePlanCode+"','"+packObj.spofrId+"','"+packObj.packItNo+"','"+roomClsCd+"','"+packObj.infantResvYn+"','"+viewNm+"','P');return false;\">";
								relationHtml += "			<strong class=\"pordName\">"+packObj.subj+"</strong>";
								relationHtml += "			<span class=\"prodInfo\">"+packDetail[0].replace("<li>","")+"</span>";
								
								relationHtml += "			<span class=\"prodPrice\"";
								
								for(var z = 0; z < packObj.exchangeRateList.length; z++){
									var rateObj = packObj.exchangeRateList[z];
									relationHtml += "data-"+rateObj.currCd+"=\""+rateObj.exchangePric+"\"";
								}
								
								relationHtml += ">";
								
								if($("#hotlId").val() == "VDNSM"){
									relationHtml += fncAddComma(packObj.minPric) + " " + data.model.currencyCd; 
								}else{
									relationHtml += fncAddComma(packObj.minPric)+won;
								}
								
								relationHtml += "</span>";
								
								relationHtml += "		</a>";
								
								if(i%depthCnt == 0 && packList.length != i){
									relationHtml += "	</li>";
									relationHtml += "	<li>";
								}
								if(packList.length == i){
									relationHtml += "	</li>";
								}
							}
							relationHtml += "		</ul>";
							relationHtml += "	</div>";
							relationHtml += "</div>";
						}
						
						relationHtml += "</div>";
						if(mbrList.length > 0 || packList.length > 0){
							$("#related_"+roomIdx+"_"+bedSeq).html(relationHtml);
							$("#related_"+roomIdx+"_"+bedSeq).show();
							pc.flexslider.roomRelation($("#related_"+roomIdx+"_"+bedSeq+" .slideBox .flexslider"));
						}
						$('.opacity').hide();
						pc.layerPopup.unLockScroll();
						$('.re-loader').hide();
					},
					error : function(jqxhr, textStatus, error){
						alert( "roomRelatedProduct Request failed: " + error);
						$('.opacity').hide();
						pc.layerPopup.unLockScroll();
						$('.re-loader').hide();
					}
				});
			}
		}
		var currencyCd = $("#currencyCd").val(); /**** 예상 요금 조회 데이터 세팅 ****/	
		var param = {
				'hotlId' : $("#hotlId").val(),
				'roomTypCd':roomTypCd, 
				'ratePlanCode':ratePlanCode,
				'resvTypCd' : resvTypCd,
				'spofrId' : spofrId,
				'roomCnt':$("#roomCnt").val(),
				'adltCnt':$("#adltCnt").val(),
				'infantCnt':$("#infantCnt").val(),
				'ckinYmd':$("#ckinYmd").val(), 
				'ckoutYmd':$("#ckoutYmd").val(),
				'chldCnt':$("#chldCnt").val(),
				'coporateCd':$("#coporateCd").val(),
				'coporateVal':$("#coporateVal").val(),
				'totlAdltCnt':$('#totlAdltCnt').val(),
				'totlChldCnt':$('#totlChldCnt').val(),
				'totlInfantCnt':$('#totlInfantCnt').val()
			};
		var flag = true;
		if(flag){
			flag = false;
			$.ajax({
				url: $("#URL_PREFIX").val() +"/resv/rpm/memGetTotPrice.do",
				cache: false,
				type: "POST",
				async: false,
				data:"data="+JSON.stringify(param),
				success : function(html){
					var totPricHtml = "";
					var hotlInfohtml ="";
					var jsonObj = jQuery.parseJSON(html);
					var won = "&nbsp;원";
					var dong = "&nbsp;VND";
					var bak = "박";
					var resultCd = jsonObj.model.resultCd;
					var resultMsg = jsonObj.model.resultMsg;
					/*********************************/
					$("#resvInfoRoomList").html(""); //초기화
					$(".totlAmt").html("");
					$("#rsvInfoPackNm span").html("");
					$("#rsvInfoRoom").find("span.txt").text("");
					$("#rsvInfoTotlCnt").find("span.txt").text("");
					$("#rsvInfoPackNm").hide();
					$("#estCharge").hide();
					/*********************************/
					if(resultCd == "00"){
						if($("#resvTypCd").val() == "P"){
							$("#packItMinNightYn").val(jsonObj.model.spofrVo.packItMinNightYn);
							$("#packItMinNightCnt").val(jsonObj.model.spofrVo.packItMinNightCnt);
						}
						if(jsonObj.model.roomViewCdList.length > 0){
							var allAmt = 0;
							var roomPric = 0;
							var taxSum = 0;
							
							var adltCnt = $("#adltCnt").val();
							var chldCnt = $("#chldCnt").val();
							var infantCnt = $("#infantCnt").val();
							
							var adltCntArr = adltCnt.split(",");
							var chldCntArr = chldCnt.split(",");
							var infantCntArr = infantCnt.split(",");
							for(var x = 0; x < jsonObj.model.roomViewCdList.length; x++){
								var roomDayObj = jsonObj.model.roomViewCdList[x];
								var totlTax = parseInt(roomDayObj.serviceAmt) + parseInt(roomDayObj.taxAmt);
								allAmt += parseInt(roomDayObj.totalAmt);
								roomPric += parseInt(roomDayObj.sumAmt);
								totPricHtml += "<dl>";
								totPricHtml += "	<dt>";
								totPricHtml += "		<strong class=\"tit\">객실"+ Number(x+1); 
								totPricHtml += "&nbsp;<span>(성인&nbsp;" + adltCntArr[x] + "&nbsp;/&nbsp;어린이&nbsp;"+ chldCntArr[x] + "&nbsp;/&nbsp;유아&nbsp;" + infantCntArr[x]+ ")</span></strong>";
								if($("#hotlId").val() == "VDNSM"){
									totPricHtml += "		<span class=\"sum\">" + fncAddComma(Number(roomDayObj.totalAmt)) + dong +  "</span>";
								}else{
									totPricHtml += "		<span class=\"sum\">" + fncAddComma(Number(roomDayObj.totalAmt)) + won +  "</span>";
								}
								totPricHtml += "	</dt>";
								totPricHtml += "	<dd>";
								totPricHtml += "		<dl class=\"con\">";
								totPricHtml += "			<dt>";
								totPricHtml += "				<strong class=\"tit\">객실 요금</strong>";
								if($("#hotlId").val() == "VDNSM"){
									totPricHtml += "				<span class=\"sum\"> "+ fncAddComma(Number(roomDayObj.sumAmt)) + dong +"</span>";
								}else{
									totPricHtml += "				<span class=\"sum\"> "+ fncAddComma(Number(roomDayObj.sumAmt)) + won +"</span>";
								}
								totPricHtml += "			</dt>";
								totPricHtml += "			<dd>";
								totPricHtml += "				<ul>";
								for(var i = 0; i < roomDayObj.roomCdVoList.length; i++){
									var roomViewObj = roomDayObj.roomCdVoList[i];
									
									totPricHtml += "				<li>";
									totPricHtml += "					<strong class=\"tit\">"+roomViewObj.stayYmd.replace(/-/gi,".")+"("+getDayOfTheWeek(roomViewObj.stayYmd)+ ")</strong>";
									if($("#hotlId").val() == "VDNSM"){
										totPricHtml += "					<span class=\"sum\">" + fncAddComma(Number(roomViewObj.stayPric)) + dong + "</span>";
									}else{
										totPricHtml += "					<span class=\"sum\">" + fncAddComma(Number(roomViewObj.stayPric)) + won + "</span>";
									}
									totPricHtml += "				</li>";
								}
								totPricHtml += "			</ul>";
								totPricHtml += "		</dl>";
								totPricHtml += "		<dl class=\"con\">";
								totPricHtml += "			<dt>";
								if($("#hotlId").val() == "VDNSM"){
									totPricHtml += "				<strong class=\"tit\">옵션 사항</strong><span class=\"sum\">0"+dong+"</span>"; 
								}else{
									totPricHtml += "				<strong class=\"tit\">옵션 사항</strong><span class=\"sum\">0"+won+"</span>"; 
								}
								totPricHtml += "			</dt>";
								totPricHtml += "			<dd>";
								totPricHtml += "				<ul>";
								totPricHtml += "				</ul>";
								totPricHtml += "			</dd>";
								totPricHtml += "		</dl>";
								totPricHtml += "		<dl class=\"con\">";
								totPricHtml += "			<dt>";
								if($("#hotlId").val() == "S" || $("#hotlId").val() == "C"){
									if (fnTaxTF()){
										totPricHtml += "				<strong class=\"tit\">부가가치세 및 봉사료</strong><span class=\"sum\">" + fncAddComma(totlTax) + won + "</span>"; 
									}else{
										totPricHtml += "				<strong class=\"tit\">부가가치세</strong><span class=\"sum\">" + fncAddComma(totlTax) + won + "</span>"; 
									}
								}else if($("#hotlId").val() == "VDNSM"){
									totPricHtml += "				<strong class=\"tit\">부가가치세 및 봉사료</strong><span class=\"sum\">" + fncAddComma(totlTax) + dong + "</span>"; 									
								}else{
									totPricHtml += "				<strong class=\"tit\">부가가치세</strong><span class=\"sum\">" + fncAddComma(totlTax) + won + "</span>"; 
								}
								totPricHtml += "			</dt>";
								totPricHtml += "		 </dl>";
								totPricHtml += "	</dd>";
								totPricHtml += "</dl>";
							}
							if($("#hotlId").val() == "S" || $("#hotlId").val() == "C"){
								if (fnTaxTF()){
									$("#totlO .txtTotal2 img").attr("src", "/images/ko/mem/new_2019/tit_est_totalprice3.png");
									totPricHtml += "<p class=\"vatTxt\">* 부가가치세 10% 및 봉사료 10%(합계 21%)가 포함된 금액입니다.</p>";
								}else{
									$("#totlO .txtTotal2 img").attr("src", "/images/ko/mem/new_2019/tit_est_totalprice4.png");
									totPricHtml += "<p class=\"vatTxt\">* 부가가치세 10%가 포함된 금액입니다.</p>";
								}
							}else if($("#hotlId").val() == "VDNSM"){
								$("#totlO .txtTotal2 img").attr("src", "/images/ko/mem/new_2019/tit_est_totalprice3.png");
								
								//2022년도 모노그램 다낭 부가세 한시적으로 8% 적용
								totPricHtml += "<p class=\"vatTxt\">* 부가가치세 "+jsonObj.model.dmstVatPerc+"% 및 봉사료 5%가 포함된 금액입니다.</p>"; 
								
							}else{
								$("#totlO .txtTotal2 img").attr("src", "/images/ko/mem/new_2019/tit_est_totalprice4.png");
								totPricHtml += "<p class=\"vatTxt\">* 부가가치세 10%가 포함된 금액입니다.</p>";
							}
							$("#resvInfoRoomList").html(totPricHtml);
							if($("#hotlId").val() == "VDNSM"){
								$(".totlAmt").html(fncAddComma(allAmt)+ dong) //총 예약 금액(세금 및 봉사료 포함)
							}else{
								$(".totlAmt").html(fncAddComma(allAmt)+ won) //총 예약 금액(세금 및 봉사료 포함)
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
							hotlInfohtml += "<img src=\"https://www.shilla.net//images/upload/"+jsonObj.model.hotlVo.attFilePath+"\" alt=\""+jsonObj.model.hotlVo.hotlNm+"\">";
							
							if(("ko" == "en" || "ko" == "zh") && $("#hotlId").val() == "VDNSM"){
								hotlInfohtml += "<span class=\"lineH13\">"+jsonObj.model.hotlVo.hotlNm+"</span>";						
							}else{
								hotlInfohtml += "<span>"+jsonObj.model.hotlVo.hotlNm+"</span>";	
							}
							
							$("#rsvInfoImg").html(hotlInfohtml);
							$("#rsvInfoCkin").find("span.txt").text($("#ckinYmd").val().replace(/-/gi,".") + "~" + $("#ckoutYmd").val().replace(/-/gi,".") + "(" + $("#nightCnt").val() + bak +")");
							if(resvTypCd == "P"){
								$("#rsvInfoPackNm span").html(jsonObj.model.spofrVo.subj) // 패키지명 세팅
								$("#rsvInfoPackNm").show();	
							}else{
								$("#rsvInfoPackNm").hide();
							}
							$("#rsvInfoRoom").find("span.txt").text(viewNm);
							$("#rsvInfoTotlCnt").find("span.txt").html("성인&nbsp;" + $("#totlAdltCnt").val() +",&nbsp;어린이&nbsp;" +$("#totlChldCnt").val()+",&nbsp;유아 "+$("#totlInfantCnt").val());
							$(".detailRsvPrice .sTit").html("요금상세 ("+$("#nightCnt").val() + bak + ")");
							
							$("#estCharge").show();
							
						}
					}else{
						alert(resultMsg);
						return false;
					}
				}
			});
		}
	},
	
	setPackOptEx = function(packTyp, roomIndex, spofrId, packItNo, ratePlanCode, infantResvYn, spcFeeYn, rewardsMappingYn, rewardsMappingId, rewardsMappingListDc, rewardsMappingUrl) {
		if(spcFeeYn == "Y"){
			if("false" == "false"){
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
					$("#resvForm").attr("method", "post");
					$("#resvForm").attr("action", loginPath);
					$("#resvForm").submit();
			}else{
				setPackOpt(packTyp, roomIndex, spofrId, packItNo, ratePlanCode, infantResvYn, rewardsMappingYn, rewardsMappingId, rewardsMappingListDc, rewardsMappingUrl, 'KR', 'ko');
			}
		}else{
			setPackOpt(packTyp, roomIndex, spofrId, packItNo, ratePlanCode, infantResvYn, rewardsMappingYn, rewardsMappingId, rewardsMappingListDc, rewardsMappingUrl, 'KR', 'ko');	
		}
		
	},
	fncPassChk = function(){
		var resvTyp = $("#resvTyp").val();
		if(resvTyp == "M"){
			if("false" == "false"){
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
				$("#resvForm").attr("method", "post");
				$("#resvForm").attr("action", loginPath);
				$("#resvForm").submit();
				return false;
			}
		}
	},
	fnTaxTF = function(){//[2021-10] 봉사료 정책변경(서울, 제주 봉사료=0 으로 변경)_2021-11-29일 이후 날짜체크
		var ckinYmd = $("#ckinYmd").val();
		var limitYmd = "20211228";
		if(parseInt(limitYmd) >= parseInt(ckinYmd.replace(/-/gi,""))){ 
			return true;
		}else{
			return false;
		}
	}
</script><form name="resvForm" id="resvForm" method="get" onkeydown="return captureReturnKey(event)">
<input type="hidden" name="hotlIdArr" id="hotlIdArr" value="" autocomplete="off">	<input type="hidden" name="hotlId" id="hotlId" value="S" onchange="hotlIdChangeTrigger();" autocomplete="off">	<input type="hidden" name="modResvId" id="modResvId" value="" autocomplete="off">	<input type="hidden" name="modPackCd" id="modPackCd" value="" autocomplete="off">	<input type="hidden" name="modMultiResvId" id="modMultiResvId" value="" autocomplete="off">	<input type="hidden" name="resvTypCd" id="resvTypCd" value="" autocomplete="off">	<input type="hidden" name="roomCd" id="roomCd" value="" autocomplete="off">	<input type="hidden" name="spofrId" id="spofrId" value="" autocomplete="off">	<input type="hidden" name="packItNo" id="packItNo" value="" autocomplete="off">	<input type="hidden" name="grRblokId" id="grRblokId" value="" autocomplete="off">	<input type="hidden" name="grEvntId" id="grEvntId" value="" autocomplete="off">	<input type="hidden" name="coporateValSub" id="coporateValSub" value="" autocomplete="off">	<input type="hidden" name="resvChkInDate" id="resvChkInDate" value="" autocomplete="off">
<input type="hidden" name="resvChkOutDate" id="resvChkOutDate" value="" autocomplete="off">
<input type="hidden" name="resvChkGbn" id="resvChkGbn" value="N" autocomplete="off">
<input type="hidden" name="resvTime" id="resvTime" value="15" autocomplete="off">
<input type="hidden" name="resvPosbAheadDyCnt" id="resvPosbAheadDyCnt" value="" autocomplete="off">

<input type="hidden" name="nightCnt" id="nightCnt" value="1" autocomplete="off">	<input type="hidden" name="viewCd" id="viewCd" value="" autocomplete="off">	<input type="hidden" name="bedTypCd" id="bedTypCd" value="" autocomplete="off">	<input type="hidden" name="roomTypCd" id="roomTypCd" value="" autocomplete="off">	<input type="hidden" name="ratePlanCode" id="ratePlanCode" value="" autocomplete="off">	<input type="hidden" name="prtyExpRoom" id="prtyExpRoom" autocomplete="off">
<input type="hidden" name="URL_PREFIX" id="URL_PREFIX" autocomplete="off" value="/seoul">
<input type="hidden" name="maxCapaCnt" id="maxCapaCnt" autocomplete="off" value="3">
<input type="hidden" name="choiceInfantResvYn" id="choiceInfantResvYn" value="0" autocomplete="off">	<input type="hidden" name="choiceRoomClsCd" id="choiceRoomClsCd" value="0" autocomplete="off">	<input type="hidden" name="rsvInquireHotlId" id="rsvInquireHotlId" autocomplete="off" value="S">	<input type="hidden" name="searchOptIdStr" id="searchOptIdStr" value="" autocomplete="off">
<input type="hidden" name="guestNm" id="guestNm" value="" autocomplete="off">
<input type="hidden" name="guestNatCd" id="guestNatCd" value="" autocomplete="off">
<input type="hidden" name="guestMbno" id="guestMbno" value="" autocomplete="off">
<input type="hidden" name="guestEmail" id="guestEmail" value="" autocomplete="off">
<input type="hidden" name="guestEnLnm" id="guestEnLnm" value="" autocomplete="off">
<input type="hidden" name="guestEnFnm" id="guestEnFnm" value="" autocomplete="off">	<input type="hidden" name="guestTitlCd" id="guestTitlCd" value="" autocomplete="off">
<input type="hidden" name="guestPhTypCd" id="guestPhTypCd" value="" autocomplete="off">
<input type="hidden" name="adltCnt" id="adltCnt" value="2" autocomplete="off">
<input type="hidden" name="chldCnt" id="chldCnt" value="0" autocomplete="off">
<input type="hidden" name="infantCnt" id="infantCnt" value="0" autocomplete="off">
<input type="hidden" name="totlAdltCnt" id="totlAdltCnt" value="2" autocomplete="off"><input type="hidden" name="totlChldCnt" id="totlChldCnt" value="0" autocomplete="off"><input type="hidden" name="totlInfantCnt" id="totlInfantCnt" value="0" autocomplete="off"><input type="hidden" name="mappSeq" id="mappSeq" value="" autocomplete="off"><input type="hidden" name="propertyId" id="propertyId" value="" autocomplete="off"><input type="hidden" name="propertyResvYn" id="propertyResvYn" value="N" autocomplete="off"><input type="hidden" id="resvTyp" autocomplete="off">
<input type="hidden" id="hotlUrlPath" name="hotlUrlPath" autocomplete="off">
<input type="hidden" id="tempHotlId" value="S" autocomplete="off">
<input type="hidden" id="tempCkinYmd" value="" autocomplete="off">
<input type="hidden" id="tempCkoutYmd" value="" autocomplete="off">
<input type="hidden" id="tempRoomCnt" value="" autocomplete="off">
<input type="hidden" id="tempAdltCnt" value="" autocomplete="off">
<input type="hidden" id="tempChldCnt" value="" autocomplete="off">
<input type="hidden" id="tempInfantCnt" value="" autocomplete="off">
<input type="hidden" id="comHotlNm" autocomplete="off">
<input type="hidden" id="srvTime" name="srvTime" value="2022-5-13-16" autocomplete="off">
<input type="hidden" id="packItMinNightCnt" value="" autocomplete="off"> <input type="hidden" id="packItMinNightYn" value="" autocomplete="off"> <input type="hidden" id="isScrolled" autocomplete="off">
<div class="container">
	<div id="contents" class="contents">
		<div class="new_rsvBox">
			<div class="cpRoomBox" id="cpRoomBox" style="display:none;">
				<div class="cpRoomBtn">
					<div class="cpRoomBtnCon">
						<span class="num" id="cpNum">0</span>
						<a href="#none" class="tit" id="cpCls1">상품 비교함</a>
					</div>
				</div>
				<div class="cpRoomProd" id="cpCls2">
					<div class="cpRoomCon">
						<ul id="cpArea">
							<li class="first">
								<div class="imgBox"></div>
								<div class="infoTxtBox adRoom">
									<span class="txt">비교상품 추가</span>
								</div>
							</li>
							<li>
								<div class="imgBox"></div>
								<div class="infoTxtBox adRoom">
									<span class="txt">비교상품 추가</span>
								</div>
							</li>
							<li class="last">
								<div class="imgBox"></div>
								<div class="infoTxtBox adRoom">
									<span class="txt">비교상품 추가</span>
								</div>
							</li>
						</ul>
						
						<div class="btnCpBox disabled" id="cpPopBtn">
							<a href="#none" onclick="openComparePop();"><img src="/images/ko/mem/new_2019/btn_compare.png" alt="비교하기"></a>
							<p class="cpRoomNoti">*최대 3개까지 선택 가능</p>
						</div>
						
					</div>
				</div>
			</div>								
			<div class="rsvStepWrap">
				<div class="rsvStepList step1">
					<ul>
						<li class="step1 first"><span>현재단계</span><img src="/images/ko/mem/new_2019/rsv_step1_on.png" alt="Step1. 호텔, 날짜, 인원 선택"></li>
						<li class="step2"><img src="/images/ko/mem/new_2019/rsv_step2_on.png" alt="Step2. 옵션 선택"></li>
						<li class="step3 last"><img src="/images/ko/mem/new_2019/rsv_step3_on.png" alt="Step3. 고객 정보 입력"></li>
					</ul>
				</div>
          </div>
          <input type="hidden" id="coporateCd" name="coporateCd" autocomplete="off">
		<input type="hidden" id="coporateVal" name="coporateVal" autocomplete="off">
	<div class="rsvWrap">
			<div class="rsvSchHotel">
          		<div class="rsvSchCont htSch">
          			<dl>
          				<dt class=""><img src="/images/ko/mem/new_2019/tit_searchhotel01.png" alt="도시 또는 호텔"></dt>
          				<dd class="htSchWrap">
							<input type="text" placeholder="호텔을 선택해주세요." class="inpHtSch text" id="searchBarKeyword" autocomplete="off">
							<a href="#none" class="btnInpSch">검색</a>
							<a href="#none" class="btnDel" id="htSchDel">삭제</a>
							<div class="more">
								<span class="btnHtMore" style="display: none;">
									<strong class="hidden">다중 선택한 호텔 더보기</strong>
									<span>1</span>
									<span class="moreHt"></span>
								</span>
							</div>
							<p class="txtErr" style="display:none;">* 두 글자 이상 입력해주세요.</p>
          				</dd>
          			</dl>
          		</div>
          		<div class="rsvSchCont htCheck">
          			<dl>
          				<dt><img src="/images/ko/mem/new_2019/tit_searchhotel02.png" alt="체크인"></dt>
          				<dd><a href="#none" class="btnCalShow" id="ckinDateInfo">2022.06.13 (월)</a></dd>
          				<input type="hidden" name="ckinYmd" id="ckinYmd" title="체크인 날짜 입력" value="2022-06-13" autocomplete="off">
          			</dl>
          			<dl class="stay">
          				<dt><span class="hidden">숙박</span></dt>
          				<dd id="nightCntInfo">1박</dd>
          			</dl>
          			<dl>
          				<dt><img src="/images/ko/mem/new_2019/tit_searchhotel03.png" alt="체크아웃"></dt>
          				<dd><a href="#none" class="btnCalShow" id="ckoutDateInfo">2022.06.14 (화)</a></dd>
          				<input type="hidden" name="ckoutYmd" id="ckoutYmd" title="체크아웃 날짜 입력" value="2022-06-14" autocomplete="off">
          			</dl>
          		</div>
          		<div class="rsvSchCont htRoom">
          			<dl>
          				<dt><img src="/images/ko/mem/new_2019/tit_searchhotel04.png" alt="객실"></dt>
          				<dd><a href="#none" class="btnRoomshow" id="roomCntTxt">1</a></dd>
         				<input type="hidden" name="roomCnt" id="roomCnt" value="1" autocomplete="off">
          			</dl>
          			<dl>
          				<dt><img src="/images/ko/mem/new_2019/tit_searchhotel05.png" alt="성인"></dt>
          				<dd><a href="#none" class="btnRoomshow" id="totlAdltCntTxt">2</a></dd>
          			</dl>
          			<dl>
          				<dt>
          					<img src="/images/ko/mem/new_2019/tit_searchhotel06.png" alt="어린이">
          					<span class="btnQuestion">
          						<strong class="hidden">안내</strong>
          						<span class="warnBalloonBox" style="width:250px;">37개월 이상 ~ 만 12세 이하 (베트남 : 37개월 이상 ∼ 만 11세까지)</span>
          					</span>
          				</dt>
          				<dd><a href="#none" class="btnRoomshow" id="totlChldCntTxt">0</a></dd>
          			</dl>
          			<dl>
          				<dt>
          					<img src="/images/ko/mem/new_2019/tit_searchhotel07.png" alt="유아">
          					<span class="btnQuestion">
          						<strong class="hidden">안내</strong>
          						<span class="warnBalloonBox">36개월 이하</span>
          					</span>
          				</dt>
          				<dd><a href="#none" class="btnRoomshow" id="totlInfantCntTxt">0</a></dd>
          			</dl>
          		</div>
          		<div class="rsvSchCont btnSearch">
          			<a href="#none"><img src="/images/ko/mem/new_2019/btn_search.gif" alt="검색" onclick="fncSearchResvList('N');"></a>	          				
	          			</div>
			</div>
		            <div class="ly_reserve htSearch"> 
		              <div class="htBoxTop">
		              	<ul class="htTab clearfix">
		              		<li class="tab2 on first"><a href="#none"><span>권역별</span></a></li>
		              		<li class="tab1 last"><a href="#none"><span>브랜드별</span></a></li>
		              	</ul>
		              	<p class="noti2"><img src="/images/ko/mem/new_2019/txt_hotel_seach_noti.png" alt="※ 최대 5개까지 선택 가능"></p>
	              	</div>
	              	<div class="htBox" style="display:block">
			              <div class="htChoice">
			              	<div class="htBoxResult">
				              	<div class="scroll">
				              		<div class="scrollCont" id="htBoxInfo">
				              			<div class="noti" style="display:none;"></div>
						                <div class="noData" style="display:none;">
						                	<p>검색 결과가 없습니다.<br>다른 키워드를 선택해주세요.</p>
						                </div>
						                <div class="htTabCon" style="display:block;" id="htRegionList">
												<strong class="hidden">권역별 검색결과</strong>
						              			<div class="htData ckType" data-maxselcnt="5">
													<strong class="contury">국내</strong>
													<dl>
														<dt>서울 강북</dt>
														<dd>
															<ul>
																<li data-hotlid="S" data-hoteltitle="서울신라호텔" data-addr="서울특별시 중구 장충동 동호로 249<br>(우 : 04605)" data-imgurl="https://www.shilla.net//images/upload/spofrpack/191125/FILEafd876ae8bd11949.jpg" class="first">
																			<a href="#none" class="">서울신라호텔</a>
																		</li>
																	<li data-hotlid="GHMSS" data-hoteltitle="신라스테이 광화문" data-addr="서울특별시 종로구 삼봉로 71<br>(우 : 03150)" data-imgurl="https://www.shilla.net//images/upload/spofrpack/191125/FILE4b37ece45ff6ff30.jpg" class="first">
																			<a href="#none" class="">신라스테이 광화문</a>
																		</li>
																	<li data-hotlid="MAPSS" data-hoteltitle="신라스테이 마포" data-addr="서울특별시 마포구 마포대로 83<br>(우 : 04156)" data-imgurl="https://www.shilla.net//images/upload/spofrpack/191125/FILEb17e753bd928b42c.jpg" class="first">
																			<a href="#none" class="">신라스테이 마포</a>
																		</li>
																	<li data-hotlid="SDMSS" data-hoteltitle="신라스테이 서대문" data-addr="서울특별시 서대문구 충정로 76<br>(우 : 03738)" data-imgurl="https://www.shilla.net//images/upload/spofrpack/191125/FILEb6d9aae60babd074.jpg" class="first last">
																			<a href="#none" class="">신라스테이 서대문</a>
																		</li>
																	</ul>
														</dd>
													</dl>
													<dl>
														<dt>서울 강남</dt>
														<dd>
															<ul>
																<li data-hotlid="YEOSS1" data-hoteltitle="신라스테이 역삼" data-addr="서울특별시 강남구 언주로 517<br>(우 : 06139)" data-imgurl="https://www.shilla.net//images/upload/spofrpack/191125/FILE6c205ba0dfaa3840.jpg" class="first">
																			<a href="#none" class="">신라스테이 역삼</a>
																		</li>
																	<li data-hotlid="SCHSS" data-hoteltitle="신라스테이 서초" data-addr="서울특별시 서초구 효령로 427<br>(우 : 06628)" data-imgurl="https://www.shilla.net//images/upload/spofrpack/191125/FILEadd4692694d6058.jpg" class="first">
																			<a href="#none" class="">신라스테이 서초</a>
																		</li>
																	<li data-hotlid="GURSS" data-hoteltitle="신라스테이 구로" data-addr="서울특별시 동작구 시흥대로 596<br>(우: 07074)" data-imgurl="https://www.shilla.net//images/upload/spofrpack/191125/FILE9804827bb3e6d478.jpg" class="first">
																			<a href="#none" class="">신라스테이 구로</a>
																		</li>
																	<li data-hotlid="SAMSS" data-hoteltitle="신라스테이 삼성" data-addr="서울특별시 영동대로 506<br>(우 : 06173)" data-imgurl="https://www.shilla.net//images/upload/spofrpack/200417/FILE855bdee66122b85f.jpg" class="first last">
																			<a href="#none" class="">신라스테이 삼성</a>
																		</li>
																	</ul>
														</dd>
													</dl>
													<dl>
														<dt>전국</dt>
														<dd>
															<ul>
																<li data-hotlid="C" data-hoteltitle="제주신라호텔" data-addr="제주특별자치도 서귀포시 색달동 중문관광로72번길 75<br>(우 : 63535)" data-imgurl="https://www.shilla.net//images/upload/spofrpack/191125/FILE2ebee8d30d2367.jpg" class="first">
																			<a href="#none" class="">제주신라호텔</a>
																		</li>
																	<li data-hotlid="D" data-hoteltitle="신라스테이 동탄" data-addr="경기도 화성시 노작로 161<br>(우 : 18454)" data-imgurl="https://www.shilla.net//images/upload/spofrpack/191125/FILEb8b7b9d55663afd7.jpg" class="first">
																			<a href="#none" class="">신라스테이 동탄</a>
																		</li>
																	<li data-hotlid="CHASS" data-hoteltitle="신라스테이 천안" data-addr="충청남도 천안시 서북구 동서대로 177<br>(우 : 31110)" data-imgurl="https://www.shilla.net//images/upload/spofrpack/191125/FILE41b0ec043ec9a39b.jpg" class="first">
																			<a href="#none" class="">신라스테이 천안</a>
																		</li>
																	<li data-hotlid="ULSSS" data-hoteltitle="신라스테이 울산" data-addr="울산광역시 남구 삼산로 200<br>(우 : 44718)" data-imgurl="https://www.shilla.net//images/upload/spofrpack/191125/FILE61edff3f57b63b2f.jpg" class="first">
																			<a href="#none" class="">신라스테이 울산</a>
																		</li>
																	<li data-hotlid="HUDSS" data-hoteltitle="신라스테이 해운대" data-addr="부산광역시 해운대구 해운대로570번길 46<br>(우 : 48093)" data-imgurl="https://www.shilla.net//images/upload/spofrpack/191125/FILE73c17a7a85da79d0.jpg" class="first">
																			<a href="#none" class="">신라스테이 해운대</a>
																		</li>
																	<li data-hotlid="SBSSS" data-hoteltitle="신라스테이 서부산" data-addr="부산광역시 강서구 명지국제7로 38<br>(우 : 46726)" data-imgurl="https://www.shilla.net//images/upload/spofrpack/210311/FILEd985a903ff9e1baf.jpg" class="first">
																			<a href="#none" class="">신라스테이 서부산</a>
																		</li>
																	<li data-hotlid="JEJSS" data-hoteltitle="신라스테이 제주" data-addr="제주특별자치도 제주시 노연로 100<br>(우 : 63133)" data-imgurl="https://www.shilla.net//images/upload/spofrpack/191125/FILEb06ff7114282f5bd.jpg" class="first last">
																			<a href="#none" class="">신라스테이 제주</a>
																		</li>
																	</ul>
														</dd>
													</dl>
													<strong class="contury">해외</strong>
													<dl>
														<dt>베트남</dt>
														<dd>
															<ul>
																<li data-hotlid="VDNSM" data-hoteltitle="신라모노그램 다낭" data-addr="Lac Long Quan, Dien Ngoc, Dien Ban District, Quang Nam Province, Vietnam" data-imgurl="https://www.shilla.net//images/upload/spofrpack/200211/FILEf131cac073c2770e.jpg" class="first last">
																			<a href="#none" class="">신라모노그램 다낭</a>
																		</li>
																	</ul>
														</dd>
													</dl>
												</div>
									      </div>
					              		<div class="htTabCon" style="display:none;" id="htBrandList">
						              		<strong class="hidden">브랜드별 검색결과</strong>	
								              <div class="htData ckType" data-maxselcnt="5">
												<dl>
													<dt>신라호텔</dt>
													<dd>
														<ul>
															<li data-hotlid="S" data-hoteltitle="서울신라호텔" data-addr="서울특별시 중구 장충동 동호로 249<br>(우 : 04605)" data-imgurl="https://www.shilla.net//images/upload/spofrpack/191125/FILEafd876ae8bd11949.jpg" class="first">
																		<a href="#none" class="">서울신라호텔</a>
																	</li>
																<li data-hotlid="C" data-hoteltitle="제주신라호텔" data-addr="제주특별자치도 서귀포시 색달동 중문관광로72번길 75<br>(우 : 63535)" data-imgurl="https://www.shilla.net//images/upload/spofrpack/191125/FILE2ebee8d30d2367.jpg" class="first last">
																		<a href="#none" class="">제주신라호텔</a>
																	</li>
																</ul>
													</dd>
												</dl>
												<dl>
													<dt>신라모노그램</dt>
													<dd>
														<ul>
															<li data-hotlid="VDNSM" data-hoteltitle="신라모노그램 다낭" data-addr="Lac Long Quan, Dien Ngoc, Dien Ban District, Quang Nam Province, Vietnam" data-imgurl="https://www.shilla.net//images/upload/spofrpack/200211/FILEf131cac073c2770e.jpg" class="first last">
																		<a class="" href="#none">신라모노그램 다낭</a>
																	</li>
																</ul>
													</dd>
												</dl>
												<dl>
													<dt>신라스테이</dt>
													<dd>
														<ul>
															<li data-hotlid="GHMSS" data-hoteltitle="신라스테이 광화문" data-addr="서울특별시 종로구 삼봉로 71<br>(우 : 03150)" data-imgurl="https://www.shilla.net//images/upload/spofrpack/191125/FILE4b37ece45ff6ff30.jpg" class="first">
																		<a href="#none" class="">신라스테이 광화문</a>
																	</li>
																<li data-hotlid="MAPSS" data-hoteltitle="신라스테이 마포" data-addr="서울특별시 마포구 마포대로 83<br>(우 : 04156)" data-imgurl="https://www.shilla.net//images/upload/spofrpack/191125/FILEb17e753bd928b42c.jpg" class="first">
																		<a href="#none" class="">신라스테이 마포</a>
																	</li>
																<li data-hotlid="SDMSS" data-hoteltitle="신라스테이 서대문" data-addr="서울특별시 서대문구 충정로 76<br>(우 : 03738)" data-imgurl="https://www.shilla.net//images/upload/spofrpack/191125/FILEb6d9aae60babd074.jpg" class="first">
																		<a href="#none" class="">신라스테이 서대문</a>
																	</li>
																<li data-hotlid="YEOSS1" data-hoteltitle="신라스테이 역삼" data-addr="서울특별시 강남구 언주로 517<br>(우 : 06139)" data-imgurl="https://www.shilla.net//images/upload/spofrpack/191125/FILE6c205ba0dfaa3840.jpg" class="first">
																		<a href="#none" class="">신라스테이 역삼</a>
																	</li>
																<li data-hotlid="SCHSS" data-hoteltitle="신라스테이 서초" data-addr="서울특별시 서초구 효령로 427<br>(우 : 06628)" data-imgurl="https://www.shilla.net//images/upload/spofrpack/191125/FILEadd4692694d6058.jpg" class="first">
																		<a href="#none" class="">신라스테이 서초</a>
																	</li>
																<li data-hotlid="GURSS" data-hoteltitle="신라스테이 구로" data-addr="서울특별시 동작구 시흥대로 596<br>(우: 07074)" data-imgurl="https://www.shilla.net//images/upload/spofrpack/191125/FILE9804827bb3e6d478.jpg" class="first">
																		<a href="#none" class="">신라스테이 구로</a>
																	</li>
																<li data-hotlid="SAMSS" data-hoteltitle="신라스테이 삼성" data-addr="서울특별시 영동대로 506<br>(우 : 06173)" data-imgurl="https://www.shilla.net//images/upload/spofrpack/200417/FILE855bdee66122b85f.jpg" class="first">
																		<a href="#none" class="">신라스테이 삼성</a>
																	</li>
																<li data-hotlid="D" data-hoteltitle="신라스테이 동탄" data-addr="경기도 화성시 노작로 161<br>(우 : 18454)" data-imgurl="https://www.shilla.net//images/upload/spofrpack/191125/FILEb8b7b9d55663afd7.jpg" class="first">
																		<a href="#none" class="">신라스테이 동탄</a>
																	</li>
																<li data-hotlid="CHASS" data-hoteltitle="신라스테이 천안" data-addr="충청남도 천안시 서북구 동서대로 177<br>(우 : 31110)" data-imgurl="https://www.shilla.net//images/upload/spofrpack/191125/FILE41b0ec043ec9a39b.jpg" class="first">
																		<a href="#none" class="">신라스테이 천안</a>
																	</li>
																<li data-hotlid="ULSSS" data-hoteltitle="신라스테이 울산" data-addr="울산광역시 남구 삼산로 200<br>(우 : 44718)" data-imgurl="https://www.shilla.net//images/upload/spofrpack/191125/FILE61edff3f57b63b2f.jpg" class="first">
																		<a href="#none" class="">신라스테이 울산</a>
																	</li>
																<li data-hotlid="HUDSS" data-hoteltitle="신라스테이 해운대" data-addr="부산광역시 해운대구 해운대로570번길 46<br>(우 : 48093)" data-imgurl="https://www.shilla.net//images/upload/spofrpack/191125/FILE73c17a7a85da79d0.jpg" class="first">
																		<a href="#none" class="">신라스테이 해운대</a>
																	</li>
																<li data-hotlid="SBSSS" data-hoteltitle="신라스테이 서부산" data-addr="부산광역시 강서구 명지국제7로 38<br>(우 : 46726)" data-imgurl="https://www.shilla.net//images/upload/spofrpack/210311/FILEd985a903ff9e1baf.jpg" class="first">
																		<a href="#none" class="">신라스테이 서부산</a>
																	</li>
																<li data-hotlid="JEJSS" data-hoteltitle="신라스테이 제주" data-addr="제주특별자치도 제주시 노연로 100<br>(우 : 63133)" data-imgurl="https://www.shilla.net//images/upload/spofrpack/191125/FILEb06ff7114282f5bd.jpg" class="first last">
																		<a href="#none" class="">신라스테이 제주</a>
																	</li>
																</ul>
													</dd>
												</dl>
											</div>
									    </div>
						              </div>
						             </div>
					            </div>
			              </div>
			              <div class="ckHotelInfo">									
				              <div class="ckHotel">
				              	<strong class="tit">호텔정보</strong>
					              <div class="slideBox">
					              	<a href="#none" class="ad-prev" style="display: none;">이전</a>
					              	<div class="flexslider">
					                  <ul class="slides">
					                  </ul>
					                </div>
					                <a href="#none" class="ad-next" style="display: none;">다음</a>
					              </div>
					              <div class="ckList">
				                	<ul></ul>
				                </div>
			               	</div>	               	
			              </div>
			            </div>
	               		 <a href="#none" class="btnClear" style="display:block;"><img src="/images/ko/mem/new_2019/btn_hotel_clear_txt.png" alt="선택해제" onclick="keywordClear('ko');"></a>
						<div class="btnList">
			    			<a href="#none" class="" id=""><img src="/images/ko/mem/new_2019/reserve_step1_ok_disable.gif" alt="확인" id="keywordAreaBtn"></a>
	           			</div>
		            </div>
					<div class="ly_reserve rsvCalendarDate new_rsvCal" id="rsvCalendarDate"></div>
					<div class="ly_reserve promotionCalendar new_rsvCal" id="promotionCalendar"></div>
					<div class="ly_reserve rsvPeople" style="display:none;" id="roomCntArea">
						<div class="r_number">
							<div class="con room1 add">
								<dl>
									<dt>객실1</dt>
									<dd>
										<ul>
											<li class="first"><strong class="tit">성인</strong>
												<div class="number">
													<a href="#none" class="minus">감소</a> <span class="num">2</span>
													<a href="#none" class="plus disabled">증가</a>
												</div></li>
											<li><strong class="tit">어린이</strong>
												<div class="number">
													<a href="#none" class="minus">감소</a> <span class="num">0</span>
													<a href="#none" class="plus">증가</a>
												</div></li>
											<li class="last"><strong class="tit">유아</strong>
												<div class="number">
													<a href="#none" class="minus">감소</a> <span class="num">0</span>
													<a href="#none" class="plus">증가</a>
												</div></li>
										</ul>
									</dd>
								</dl>
							</div>
							<div class="con room2">
								<dl>
									<dt>객실2</dt>
									<dd>
										<ul>
											<li class="first"><strong class="tit">성인</strong>
												<div class="number">
													<a href="#none" class="minus">감소</a> 
													<span class="num">2</span>
													<a href="#none" class="plus">증가</a>
												</div></li>
											<li><strong class="tit">어린이</strong>
												<div class="number">
													<a href="#none" class="minus">감소</a> 
													<span class="num">0</span>
													<a href="#none" class="plus">증가</a>
												</div></li>
											<li class="last"><strong class="tit">유아</strong>
												<div class="number">
													<a href="#none" class="minus">감소</a> 
													<span class="num">0</span>
													<a href="#none" class="plus">증가</a>
												</div></li>
										</ul>
									</dd>
									<dd class="rooms">
										<a href="#none" class="btnRooms del2">삭제</a>
										<a href="#none" class="btnRooms add2">추가</a>
									</dd>
								</dl>
							</div>
							<div class="con room3">
								<dl>
									<dt>객실3</dt>
									<dd>
										<ul>
											<li class="first"><strong class="tit">성인</strong>
												<div class="number">
													<a href="#none" class="minus">감소</a> 
													<span class="num">2</span>
													<a href="#none" class="plus">증가</a>
												</div></li>
											<li><strong class="tit">어린이</strong>
												<div class="number">
													<a href="#none" class="minus">감소</a> 
													<span class="num">0</span>
													<a href="#none" class="plus">증가</a>
												</div></li>
											<li class="last"><strong class="tit">유아</strong>
												<div class="number">
													<a href="#none" class="minus">감소</a> 
													<span class="num">0</span>
													<a href="#none" class="plus">증가</a>
												</div></li>
										</ul>
									</dd>
									<dd class="rooms">
										<a href="#none" class="btnRooms del3">삭제</a>
										<a href="#none" class="btnRooms add3">추가</a>
									</dd>
								</dl>
							</div>
		                <ul class="notiList1">
		                	<li class="first">객실은 최대 3개까지 선택 가능합니다.</li>
		                	<li>어린이 : 37개월 이상 ~ 만 12세 이하 (베트남 : 37개월 이상 ∼ 만 11세까지)</li>
		                	<li class="last">유아 : 36개월 이하</li>
		                </ul>
		              </div>
		              	<div class="btnList">
							<a href="#none" class="btnSubmit">
								<img src="/images/ko/mem/new_2019/reserve_step1_ok.gif" alt="확인">
							</a>
		            	</div>
		            </div>
				</div>
				<div class="rsvDescWrap" id="beforeSearchWrap" style="">
	            	<div class="rsvDescDefault">
	      	        	예약을 원하시는 호텔, 날짜, 인원을 선택해주세요.</div>
	         	</div>
	         	<div class="rsvDescWrap" id="emptySearchWrap" style="display:none;">
					<div class="rsvDescNone">
						예약 가능한 객실이 없습니다.<br>검색하신 호텔 주변에 다른 지점을 추천해드릴까요?<br>
							<a href="#none" class="btnRecommend" onclick="fnNearByHotels('ko');">
								<img src="/images/ko/mem/new_2019/reserve_step1_recommend.gif" alt="호텔 추천 받기">
							</a>
						</div>
				</div>
				<div class="rsvDescWrap" id="emptyMiceSearchWrap" style="display:none;">
					<div class="rsvDescNone">
			    		<br>예약 가능한 객실이 없습니다.<br>
			    		호텔 또는 날짜를 다시 선택해주세요.</div>
				</div>
				<script>
					$(document).ready(function(){
						var hotlIdStr = "";
						var hotlIdArr = hotlIdStr.split(",");
						if("" == ""){
							if(hotlIdStr.length == 0){
								$("#beforeSearchWrap").show();
								$("#emptySearchWrap").hide();
								$("#emptyMiceSearchWrap").hide();
								$("#rsvResultWrap").hide();
							}else{
								
							}
						}else{
							if("0" == "0" && "0" == "0" && "0" == "0" && hotlIdArr.length == 1){
								$("#beforeSearchWrap").hide();
								$("#emptySearchWrap").show();
								$("#emptyMiceSearchWrap").hide();
								$("#rsvResultWrap").hide();
								if("S" == "VDNSM"){
									$("#emptySearchWrap").hide();
									$("#emptyMiceSearchWrap").show();
								}
							}else if("0" == "0" && "0" == "0" && "0" == "0" && hotlIdArr.length > 1){
								$("#beforeSearchWrap").hide();
								$("#emptySearchWrap").hide();
								$("#emptyMiceSearchWrap").hide();
								$("#rsvResultWrap").show();
								if("S" == "VDNSM"){
									$("#emptySearchWrap").hide();
									$("#emptyMiceSearchWrap").show();
								}
							}							
						}
					});
				</script>
	         	<div class="rsvResultWrap" style="display: none;" id="rsvResultWrap">
	         		<div class="rsvResulTop" id="rsvResultTop" style="">
		         				<div class="rsvSubTab">								
									<ul>
										<li id="tabMbr" class="first"><a href="#none">회원전용(0)</a></li>
										<li id="tabPack"><a href="#none">패키지(0)</a></li>
										<li id="tabRoom" class="last"><a href="#none">객실(0)</a></li>
									</ul>
								</div>
								<ul class="rsvSort" id="rsvSort" style="">
									<li class="sort1 first" style="padding: 0px 100px 12px 0px;">
									<a href="#none" class="btnkeyword" title="키워드검색 닫기">키워드</a>
					           				<div class="keyWordWrap">
					            				<strong class="tit">
					            					<img src="/images/ko/mem/new_2019/tit_rsv_keyword.gif" alt="키워드 검색">
					            				</strong>
					            				<div class="keyWordG">
						            				<span>
							                				<input type="checkbox" id="489" name="keyword" class="css-checkbox checkbox" value="489" data-hotlid="S" autocomplete="off">
							                				<label for="489" class="css-label">엑스트라 베드</label>
						                				</span>
													<span>
							                				<input type="checkbox" id="27" name="keyword" class="css-checkbox checkbox" value="27" data-hotlid="S" autocomplete="off">
							                				<label for="27" class="css-label">야외수영장</label>
						                				</span>
													<span>
							                				<input type="checkbox" id="28" name="keyword" class="css-checkbox checkbox" value="28" data-hotlid="S" autocomplete="off">
							                				<label for="28" class="css-label">조식</label>
						                				</span>
													<span>
							                				<input type="checkbox" id="29" name="keyword" class="css-checkbox checkbox" value="29" data-hotlid="S" autocomplete="off">
							                				<label for="29" class="css-label">와이너리</label>
						                				</span>
													<span>
							                				<input type="checkbox" id="30" name="keyword" class="css-checkbox checkbox" value="30" data-hotlid="S" autocomplete="off">
							                				<label for="30" class="css-label">스파</label>
						                				</span>
													<span>
							                				<input type="checkbox" id="481" name="keyword" class="css-checkbox checkbox" value="481" data-hotlid="S" autocomplete="off">
							                				<label for="481" class="css-label">라운지 혜택</label>
						                				</span>
													<a href="#none" class="btnKeySrch" onclick="fncSearchResvList('N');">
						                				<img src="/images/ko/mem/new_2019/reserve_step1_keyword.gif" alt="적용">
						                			</a>
					              				</div>								 
											</div>
										</li>
									<li class="sort2" style="right: 0px;">
										<div class="sortSelect" style="">
											<div class="selector" id="uniform-sortBy" style="width: 113.021px;"><span style="width: 88.0214px; user-select: none;">낮은 가격 순</span><select title="정렬순서 선택" id="sortBy" name="sortBy" onchange="fncSearchResvList('N');return false;" style="">
												<option value="lowPric">낮은 가격 순</option>
												<option value="hightPric">높은 가격 순</option>
												<option value="newest">최신 순</option>
												<option value="hot">인기 순</option>
												<option value="recommended">추천 순</option>
											</select></div>
										</div>
									</li>
									
									<input type="hidden" name="currencyCd" id="currencyCd" value="KRW" autocomplete="off">
											<script>
												$(function(){
													// 영역 스타일 적용
													setTimeout(function(){
														if("ko" == "ko"){
															$(".new_rsvBox .rsvSort .sort1").prop("style", "padding:0 100px 12px 0");	
														} else if("ko" == "en"){
															$(".new_rsvBox .rsvSort .sort1").prop("style", "padding:0 150px 12px 0");	
														} else {
															$(".new_rsvBox .rsvSort .sort1").prop("style", "padding:0 90px 12px 0");	
														}
														
														$(".new_rsvBox .rsvSort .sort2").prop("style", "right:0");
			        								},0);
												});
											</script>
										</ul>
							</div>
								
							<div class="rsvResultCon" id="rsvResultCon">		
								<div class="rsvInqWrap">
									<p class="noti4">* 할인이 적용된 요금입니다.</p>
				               		<span class="phoneNo">객실예약 연락처 : 
					               		<span class="tel"> 02-2230-3310</span>
									</span>
				                	<a href="/membership/inquires/contactus/memSetVoc.do" target="_blank" class="que">문의하기</a>
				             	</div>
	              				<div class="rsvResultList" id="mbrList" style="display:none;">
	              							<div class="rsvDescWrap">
												<div class="rsvDescNone">
													예약 가능한 회원전용 상품이 없습니다.<br>
													호텔 또는 날짜를 다시 선택해주세요.</div>
	            							</div>
	              						</div>
	              					<div class="rsvResultList" id="packList" style="display:none;">
											<div class="rsvDescWrap">
												<div class="rsvDescNone">
													예약 가능한 패키지 상품이 없습니다.<br>
													호텔 또는 날짜를 다시 선택해주세요.</div>
	            							</div>
										</div>
									<div class="rsvResultList" id="roomList" style="display:none;">
											<div class="rsvDescWrap">
												<div class="rsvDescNone">
													현재 예약가능한 객실이 없습니다.<br>
													호텔 또는 날짜를 다시 선택해주세요.</div>
	            							</div>
										</div>
									</div>
						</div>
						<div class="cloneEstCharge"></div><div class="estCharge fixedB" id="estCharge" style="display: none;">
							<div class="inner">
								<div class="estRsvTotal">
									<div class="totalPBox">
										<div class="totalP" id="totlO">
											<dl>
												<dt class="txtTotal2"><img src="/images/ko/mem/new_2019/tit_est_totalprice4.png" alt="(부가가치세 포함)"></dt>
												<dd class="bPrice totlAmt"></dd>
											</dl>
										</div>
										<div class="totalP" id="totlC" style="display:none;">
											<dl>
												<dt class="txtTotal3"><img src="/images/ko/mem/new_2019/tit_est_totalprice4.png" alt="총 예약 금액(부가가치세 포함)"></dt>
												<dd class="bPrice totlAmt"></dd>
											</dl>
										</div>
										<div class="btnStepN step1">
												<a href="#none" class="btnN option" onclick="goStep2('ko');"><img src="/images/ko/mem/new_2019/btn_est_option.gif" alt="옵션선택"></a>
											</div>
										<a href="#none" class="btnDetailOpen">예상요금 조회 열기</a>
									</div>
								</div>
								<div class="estRsvDetail">
									<div class="inner">
										<div>
											<div class="detailRsvInfo">
												<h3 class="sTit">예약정보</h3>
												<dl class="r_list1">
													<dt id="rsvInfoImg">
														<img src="/images/ko/mem/new_2019/temp/dummy_hotel_200x113.jpg" alt="">
														<span></span>
													</dt>
													<dd>
														<ul>
															<li id="rsvInfoCkin" class="first">
																<strong class="tit">체크인-체크아웃</strong>
																<span class="txt"></span>
															</li>
															<li id="rsvInfoPackNm" style="display:none;">
																<strong class="tit">패키지명</strong>
																<span class="txt"></span>
															</li>
															<li id="rsvInfoRoom">
																<strong class="tit">객실</strong>
																<span class="txt"></span>
															</li>
															<li id="rsvInfoTotlCnt" class="last">
																<strong class="tit">투숙인원</strong>
																<span class="txt"></span>
															</li>
														</ul>
													</dd>
												</dl>
											</div>
										<div class="detailRsvPrice">
											<h3 class="sTit"></h3>
											<a href="#none" class="btnRsvClear" onclick="clearResv();"><img src="/images/ko/mem/new_2019/btn_rsvclear.png" alt="예약 초기화"></a>
											<div class="scroll">
												<div class="r_list2" id="resvInfoRoomList">
												</div>
											</div>
										</div>
										</div>
									<a href="#none" class="btnDetailClose">예상요금 조회 닫기</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div id="htRecommendPop" style="display:none">
				<div class="popLayer popLayerHtRecommend new_popLayer" tabindex="-1">
					<div class="popHead">
						<h2 class="tit">호텔 추천 받기</h2>
						<div class="btn">
							<a class="btnClose" href="#none" onclick="pc.layerPopup.closePop('#htRecommendPop'); return false;">
								<span>닫기</span>
							</a>
						</div>
					</div>
					<div class="popCtn new_rsvBox">
						<ul class="recommendHt" id="nearByHotlList">
						</ul>
					</div>
					<div class="btnAcc">
						<a class="btnClose" href="#none" onclick="pc.layerPopup.closePop('#htRecommendPop'); return false;">
							<span>닫기</span>
						</a>
					</div>
				</div>
				<div class="mdScreen" style="display: block; height: 1048px;"></div>
			</div>
			<div id="otherDatePop" style="display:none">
				<input type="hidden" id="roomTypCdTmp" value="" autocomplete="off">
				<input type="hidden" id="ratePlanCdTmp" value="" autocomplete="off">
				<input type="hidden" id="resvTypCdTmp" value="" autocomplete="off">
				<input type="hidden" id="startDate" value="" autocomplete="off">
				<input type="hidden" id="endDate" value="" autocomplete="off">
				<div class="popLayer popLayerOtherDate new_popLayer" tabindex="-1">
					<div class="popHead">
						<h2 class="tit">다른 날짜 요금보기</h2>
						<div class="btn">
							<a class="btnClose" href="#none" onclick="pc.layerPopup.closePop('#otherDatePop'); return false;">
								<span>닫기</span>
							</a>
						</div>
					</div>
					<div class="popCtn new_rsvBox">
						<p class="txt1">
							<strong>선택하신 객실의<br>다른 날짜 요금을 안내해드립니다.</strong>
						</p>
						<ul class="otherDate">
						</ul>
						<div class="otherWeek">
							<a href="#none" class="btnPrev" onclick="anotherDayPrice('','','', 'P')">이전 주</a>
							<a href="#none" class="btnNext" onclick="anotherDayPrice('','','', 'N')">다음 주</a>
						</div>
				    </div>
				    <div class="btnAcc">
				    	<a class="btnClose" href="#none" onclick="pc.layerPopup.closePop('#otherDatePop'); return false;">
				    		<span>닫기</span>
				    	</a>
				    </div>
				</div>
				<div class="mdScreen" style="display: block; height: 1048px;"></div>
			</div>
			<div id="comparePop" style="display:none">
				<div class="popLayer popLayerCompare2 new_popLayer" tabindex="-1">
					<div class="popHead">
						<h2 class="tit">비교하기</h2>
						<div class="btn">
							<a class="btnClose" href="#none" onclick="pc.layerPopup.closePop('#comparePop'); return false;">
								<span>닫기</span>
							</a>
						</div>
					</div>
					<div class="popCtn new_rsvBox scroll" style="max-height: 739px;">
						<div class="compareBox">
							<h3 class="tit" id="cpViewHotlNm"></h3>
								<table>
									<caption>비교하기</caption>
									<thead>                  
										<tr id="cpViewArea1"></tr>
									</thead>
				                	<tbody id="cpTbody">
										<tr id="cpViewArea2"></tr>
										<tr id="cpViewArea3"></tr>
										<tr id="cpViewArea4"></tr>
										<tr id="cpViewArea5"></tr>
										<tr class="last" id="cpViewArea6"></tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				<div class="mdScreen" style="display: block; height: 1048px;"></div>
			</div>
<div id="viewLoading" class="re-loader" style="z-index:1101; margin-left:-101.5px; margin-top:-84px; position: fixed; top: 50%;left: 50%; display:none;">
	 <img src="/images/ko/common/loadingAnimation.gif" alt="">
</div>
<div class="opacity" style="display: none;"></div>
</form>

<div id="childInfo" style="display: none;">
	<div class="popLayer childinfo" tabindex="-1">
		<div class="popHead">
			<h2 class="tit">어린이, 유아 이용안내</h2>
			<div class="btn"><a class="btnClose" href="#none" onclick="childInfoPopupClose();"><span>닫기</span></a></div>
		</div>
		<div class="popCtn">
			<p>- 더 이그제큐티브 라운지는 투숙객 전용 비즈니스 공간으로 만 13세 이상부터 이용 가능합니다.</p>
					<p>- 안전상의 이슈로 실내 수영장 및 실내 사우나는 만 13세 이상, 체련장은 만 16세 이상 이용 가능합니다.<br>&nbsp;(단, 실내 수영장은 주말 및 공휴일에 성인 보호자의 보호 하에 만 13세 미만인 고객 입장 가능)</p>
				</div>
		<div class="btnAcc">
			<a class="btnClose" href="#none" onclick="pc.layerPopup.closePop('#childInfo');"><span>닫기</span></a>
		</div>
	</div>
	<div class="mdScreen" style="display: none; height: 1048px;"></div>
</div>
<div id="mgChildInfo" style="display: none;">
	<div class="popLayer childinfo" tabindex="-1">
		<div class="popHead">
			<h2 class="tit">어린이, 유아 이용안내</h2>
			<div class="btn"><a class="btnClose" href="#none" onclick="mgChildInfoPopupClose();"><span>닫기</span></a></div>
		</div>
		<div class="popCtn clearfix">
			<p>- 어린이 : 37개월 이상 ~ 만 12세 이하 (베트남 : 37개월 이상 ∼ 만 11세까지)		</p>
			<p>- 유아 : 36개월 이하</p>
		</div>
	</div>
	<div class="mdScreen" style="display: none; height: 1048px;"></div>
</div>
<!--  스페셜 오퍼 이용안내 팝업 -->

<div id="jejuRoomPop" style="display: none;">
	<div class="popLayer jejuRoomPop" tabindex="-1">
		<div class="popHead">
			<div class="btn"><a class="btnClose" href="#none" onclick="jejuInfoPopupClose();"><span>닫기</span></a></div>
		</div>
		<div class="popCtn">
			<p>신라리워즈 회원 전용 패키지인 <b>‘Member Exclusive’ 패키지</b>로 예약하실 경우<br><span style="color: rgb(129, 57, 22);"><b>박당 1만 포인트를 추가 적립</b></span>하여 드립니다.<br></p>
			<div class="buttonwrapA">
            	<a href="https://www.shillahotels.com/membership/offers/pack/memViewRewardsPack.do?spofrId=12977" class="buttonstyleA" onclick="nextStep();">Member Exclusive 자세히 보기</a>&nbsp;&nbsp;
        	</div>	
		</div>
		<div class="btnAcc">
			<a class="btnClose" href="#none" onclick="jejuInfoPopupClose();"><span>닫기</span></a>
		</div>
	</div>
	<div class="mdScreen" style="height: 1048px; display: block;"></div>
</div>
<!-- 이용안내 -->
<div id="SPpromoInfo" style="display:none">
    <div class="popLayer SpPromoinfo new_popLayer" tabindex="-1">
        <div class="popHead">
            <h2 class="tit">이용안내</h2>
            <div class="btn"><a class="btnClose" href="#none" onclick="SPpromoInfoPopupClose();"><span>닫기</span></a></div>
        </div>
        <div class="popCtn">
            <p>   </p>
        </div>
        <div class="btnAcc">
            <a class="btnClose" href="#none" onclick="SPpromoInfoPopupClose();"><span>닫기</span></a>
        </div>
    </div>
    <div class="mdScreen" style="display: none; height: 1048px;"></div>
</div>
<!-- 이용안내 -->

<div id="accViewPop" style="display:none">
	<div class="popLayer popLayererAccImgView">
		<div class="popHead">
			<h2 class="tit">
			<img alt="이미지보기 - 팝업" src="/images/ko/mem/main/accImgViewTitle.gif"></h2>
			<div class="btn"><a id="accViewPopCloseBtn" class="btnClose" href="#none" onclick="fncLayerClose('accViewPop', 'roomViewMd');"><span>닫기</span></a></div>
		</div>
		<div class="popCtn" id="accView"></div>
		<div class="btnAcc"><a class="btnClose" href="#none" onclick="fncLayerClose('accViewPop', 'roomViewMd');"><span>닫기</span></a></div>
	</div>
	
	<div class="mdScreen" style="display: block; height: 1048px;" id="roomViewMd"></div>
</div> 
<div class="popLayer popLayerInfo" style="display: none;" id="popLayerInfo">
</div>
<div class="mdScreen" style="display: none; height: 1048px;" id="packMd"></div>

<div id="webDomain" style="display: none;">
 
 http://www.shilla.net/
</div> 
<div id="stayDomain" style="display: none;">
 
http://www.shillastay.com/
</div>
<div id="monogramDomain" style="display: none;">
 
http://www.shillamonogram.com/
</div>
<div id="emailAdCollectPop" style="display:none"></div><div id="footerEmailLayer" style="display:none"></div><div class="foot footHub">
			<script type="text/javascript">
	function openIdInfo() {
		var url = "http://www.ftc.go.kr/bizCommPop.do?wrkr_no=2038143363";
		window.open(url, "bizCommPop", "width=750, height=700, scrollbars=1");
	}
</script>
<div class="localBox">
	<div class="localBoxer">
		<div class="compInfo">
			<h2 class="logo">THE SHILLA SEOUL</h2>
		</div>
		<!-- 20191218 MG -->
		<div class="brandWrap">
			<div class="brand"><dl><dt><a href="/index.do">The Shilla</a></dt></dl></div>
			<div class="brandMono"><a href="https://www.shillamonogram.com/mghub/index.do?lang=ko">신라모노그램</a></div>
			<div class="brandStay"><a href="https://www.shillastay.com/stayhub/index.do">신라스테이</a></div>
		</div>
		<div class="linkInfo">
			<dl class="introduction">
				<dd class="d1"><a href="/membership/inquires/aboutShilla/memOverView.do"><span>호텔신라 소개</span></a></dd> 
				<dd class="d2"><a href="/membership/inquires/contactus/memIndex.do"><span>고객문의</span></a></dd>
				<dd class="d3"><a href="/membership/inquires/aboutShilla/memSiteMap.do"><span>사이트맵</span></a></dd>
				<dd class="d4"><a href="/membership/inquires/memChangeRewards.do"><span>신라리워즈 전환 안내</span></a></dd>
				<dd class="d5"><a href="http://www.theshillashop.com/catalog/index.html" target="_blank"><span>The Shilla shop</span></a></dd>
					<dd class="d6"><a href="https://www.samsunggiftcard.net/common/sgc/index.html" target="_blank"><span>삼성상품권</span></a></dd>
					<dd class="d7"><a href="#" onclick="oldHopenO('oldHpopup'); return false;"><span>신라리워즈 전환 안내</span></a></dd>
				</dl>
			<dl class="inquiries">
				<!-- <dt class="dt">Coonect with us</dt> -->
				<dd class="d1"><a title="Facebook - popup" target="_blank" href="http://www.facebook.com/theshillahotels"><span>Facebook</span></a></dd>
				<dd class="d2"><a title="Instagram - popup" target="_blank" href="https://www.instagram.com/shillahotels/"><span>인스타그램</span></a></dd>
				<dd class="d4"><a title="Google+ - popup" href="https://plus.google.com/116571259877956708092" rel="publisher" target="_blank"><span>Google+</span></a></dd>
				<dd class="d3"><a title="Weibo - popup" target="_blank" href="http://weibo.com/shillahotel"><span>Weibo</span></a></dd>
			</dl>
			
			<dl class="ContactInfo">
				<dd class="d1"><span>서울신라호텔 02-2233-3131</span></dd> 
				<dd class="d2"><span>제주신라호텔 064-735-5114</span></dd>
				<dd class="d3"><span>신라스테이 02-2230-0700</span></dd>
				<dd class="d4"><span>신라리워즈 02-2230-5528</span></dd>
			</dl>
		</div>
	</div>
</div>
<div class="footer">
	<div class="linkBox">
		<ul>
			<li class="link1 first"><a href="/membership/memFooter/memAgreement.do">신라리워즈 약관</a></li>
			<li class="link2"><a href="/membership/memFooter/memIndividualPolicy.do">개인정보처리방침</a></li>
			<li class="link3"><a href="/membership/memFooter/pop/memEmailAdCollectPop.do" onclick="openCtrlPopup('/seoul/memFooter/pop/memEmailAdCollectPop.do','emailAdCollectPop');  return false;">이메일무단수집금지</a></li>
			<li class="link4"><a href="https://www.shillaaudit.com/audit/inf_information.do" target="_blank">윤리경영</a></li>
			<li class="link5 last"><a href="/membership/memFooter/pop/memSafeMngPop.do" onclick="openCtrlPopup('/seoul/memFooter/pop/memSafeMngPop.do','emailAdCollectPop');  return false;">건축/시설물 안전관리</a></li>  </ul>
	</div>
	<div class="selectLang">
		<ul>
			<li class="en first"><a href="/hub/cmm/setLang.do?lang=en">English</a></li>
					<li class="ja"><a href="/hub/cmm/setLang.do?lang=ja">日本語</a></li>
					<li class="zh last"><a href="/hub/cmm/setLang.do?lang=zh">简体中文</a></li>
					</ul>
	</div> 
	<div class="adressBox">
		<p>㈜호텔신라 서울특별시 중구 동호로 249 (우: 04605)  Tel: 02-2233-3131 Fax: 02-2230-3769 사업자등록번호: 203-81-43363 통신판매신고번호: 중구00272호 대표이사 이부진    호스팅서비스제공자 삼성SDS㈜    서울객실예약 shilla.reserve@samsung.com  제주객실예약 jejushilla@samsung.com</p>
		<a class="footLinkbtn" href="#" onclick="openIdInfo(); return false;">사업자 정보 확인</a>
		</div>
	<div class="copyright"><p>COPYRIGHT © HOTEL SHILLA CO., LTD. ALL RIGHTS RESERVED.</p></div>
</div>
				<!-- 17.03.28 popup 추가 -->
		            <div id="oldHpopup">
						<div class="oldHback" style="z-index:999;"></div>
						<div class="oldHwrap" style="z-index:999;">
						<div class="ctnTitle">
							<img alt="명품고택 소개" src="/images/ko/hub/main/oldHpoptit.gif">
						<div class="close"><a href="#" onclick="oldHopenC('oldHpopup'); return false;">
							<img src="/images/ko/mem/reservation/step1Infoclose.gif" alt="닫기"></a>
						</div>
						</div>
						<div class="ctnWrap">
							<img src="/images/ko/hub/main/oldHctn.jpg">
                            	<p>경북 명품고택</p>
                            	<p>호텔신라가 문화체육관광부에서 선정한 경상북도 명품 고택을 소개하여 드립니다.</p>
                            	<p>여행 테마에 따라 우리나라 전통문화와 선조들의 멋과 정신을 오롯이 체험하실 수 있습니다.</p>
                            	<p>* 호텔신라는 고택 예약 서비스를 직접 운영하지 않으며, 본 사이트는 고택 소개 정보만을 제공하고 있음을 알려드립니다.</p>
                            	<p>신라호텔 고객의 문의 및 의견과 관련하여 귀사가 아래와 같이 본인의 개인정보를 수집 및 이용하는데 동의합니다.</p>
						<div class="btnCtn">
							<a class="oldHbtn" href="http://gyeongbukgotaek.modoo.at" target="_blank">자세히 보기</a></div>
						</div>
						</div>
						</div>
						<script>
						function oldHopenO(IdName) {
							var pop = document.getElementById(IdName);
							pop.style.display = "block";
							$('html, body').animate({scrollTop: 0 }, 'fast');
							return false;
						}

						function oldHopenC(IdName) {
							var pop = document.getElementById(IdName);
							pop.style.display = "none";
							return false;
						}
						</script>
				<iframe id="hidden_frame" name="hidden_frame" style="display:none" title="빈 프레임"> </iframe></div>
	</div>
</div><script type="text/javascript" id="">document.all&&!document.addEventListener||window.proxied_alert||(window.proxied_alert=window.alert,window.alert=function(){var a=arguments[0]?arguments[0]:"null";dataLayer.push({event:"alert_showed",alert_message:a});return proxied_alert.apply(this,arguments)});</script>



<script type="text/javascript" id="">var prd_array=[],room_cnt=document.getElementById("tempRoomCnt").getAttribute("value");room_cnt=Number(room_cnt);for(var i=0;i<room_cnt;i++)prd_array.push({item_name:google_tag_manager["GTM-T3LBJ26"].macro(58),item_id:google_tag_manager["GTM-T3LBJ26"].macro(59)+"_Room"+(i+1),quantity:google_tag_manager["GTM-T3LBJ26"].macro(60)});var dataLayer=window.dataLayer||[];
window.dataLayer.push({event:"eec.list",hotel:google_tag_manager["GTM-T3LBJ26"].macro(61),checkInDate:google_tag_manager["GTM-T3LBJ26"].macro(62),checkOutDate:google_tag_manager["GTM-T3LBJ26"].macro(63),numberOfNights:google_tag_manager["GTM-T3LBJ26"].macro(64),timeDifference:google_tag_manager["GTM-T3LBJ26"].macro(65),numberOfRooms:google_tag_manager["GTM-T3LBJ26"].macro(66),numberOfGuests:google_tag_manager["GTM-T3LBJ26"].macro(67),ecommerce:{items:prd_array}});</script>
<script type="text/javascript" id="">(function(){if(null==sessionStorage.getItem("_PageViewCounter")||void 0==sessionStorage.getItem("_PageViewCounter"))sessionStorage.setItem("_PageViewCounter",1);else{var f=0;f=parseInt(sessionStorage.getItem("_PageViewCounter"));f+=1;sessionStorage.setItem("_PageViewCounter",f)}var v=!0,l=2592E5;if(window.Storage){var c=JSON.parse(localStorage.getItem("_tab_ids"))||[],d=sessionStorage.getItem("_tab_id"),a=JSON.parse(sessionStorage.getItem("_nav_path")),e=document.location.href;f=!1;var w=document.location.origin,
t,p,m,g,u=function(b){return 0===l?b:b.filter(function(h){try{return m=parseInt(h.split("_")[1],10),m>(new Date).getTime()}catch(q){return!1}})};var r=function(b){if(0===l)return b;try{g=b.split("_");m=parseInt(g[1],10);if(m>(new Date).getTime())return b;g=g[0]+"_"+((new Date).getTime()+l);sessionStorage.setItem("_tab_id",g);return g}catch(h){return b}};var x=function(){if(!1===v)return"BACK/FORWARD";if(2>a.length)return"FORWARD";t=a[a.length-2];p=a[a.length-1];return t===e||p===e?"BACK":"FORWARD"},
y=function(){c=JSON.parse(localStorage.getItem("_tab_ids"))||[];d=sessionStorage.getItem("_tab_id");c=u(c);if(c.length&&null!==d){var b=c.indexOf(d);-1<b&&c.splice(b,1);localStorage.setItem("_tab_ids",JSON.stringify(c))}},z=function(){var b=(new Date).getTime();"undefined"!==typeof performance&&"function"===typeof performance.now&&(b+=performance.now());return"xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx".replace(/[xy]/g,function(h){var q=(b+16*Math.random())%16|0;b=Math.floor(b/16);return("x"===h?q:q&3|
8).toString(16)})+(0<l?"_"+((new Date).getTime()+l):"")},A=function(b,h){return!(!0===h&&0!==b&&255!==b)};null===d?(d=z(),f=!0,sessionStorage.setItem("_tab_id",d)):d=r(d);c=u(c);-1===c.indexOf(d)&&(c.push(d),localStorage.setItem("_tab_ids",JSON.stringify(c)));r=c.length;if(window.PerformanceNavigation){a=a||[];var n=window.performance.navigation.redirectCount;if(A(window.performance.navigation.type,f))switch(window.performance.navigation.type){case 0:var k="NAVIGATE";a.push(e);break;case 1:k="RELOAD";
0!==a.length&&a[a.length-1]===e||a.push(e);break;case 2:k=x();"FORWARD"===k?-1<document.referrer.indexOf(w)&&a.push(e):"BACK"===k?p!==e&&a.pop():a.push(e);break;default:k="OTHER",a.push(e)}else a.push(e);sessionStorage.setItem("_nav_path",JSON.stringify(a))}window.addEventListener("beforeunload",y);n={tabCount:r,redirectCount:n,navigationType:k,newTab:!0===f?"New":"Existing",tabId:d.replace(/_.+/,"")};window.google_tag_manager[google_tag_manager["GTM-T3LBJ26"].macro(128)].dataLayer.set("browsingBehavior",n);window.dataLayer.push({event:"custom.navigation",
browsingBehavior:n})}})();</script>
</body>