/*
 * ---------------------------------------------------------------------------------------------
 * 고객문의
 * ---------------------------------------------------------------------------------------------
 */


var path2 = "";
function openAsk(askTypCd, typCd, hotlId ) {
	path2 = "mbsh";

	var url = "";
	if('ROOM_PAC' == askTypCd) {
		url = "/membership/contact/room/memSetRoomPack.do";
	} else if('RESTR' == askTypCd) {
		url = "/membership/contact/din/memSetDining.do?typCd="+typCd;
	} else if('WEDD' == askTypCd) {
		url = "/membership/contact/wedd/memSetWedd.do";
	} else if('MBSH' == askTypCd) {
		url = "/membership/contact/mbsh/memSetMbsh.do?typCd="+typCd;
	} else if('SITE_USE' == askTypCd) {
		url = "/membership/contact/site/memSetSiteUse.do";
	} else if('BANQ' == askTypCd) {
		url = "/membership/contact/banq/memSetBanq.do";
	}else if('ECC' == askTypCd) {
		url = URL_PREFIX + "/contact/ecc/setEcc.do";
	}else if('S_REWARDS' == askTypCd) {
		url = "/membership/contact/rewards/memSetRewards.do";
	}else if('ETC' == askTypCd) {
		url = "/membership/contact/etc/memSetEtc.do";
	}
	
	$.ajax({
		  url: url,
		  cache: false,
		  type: "POST",
		  data: { "askTypCd": askTypCd,
			  	  "hotlId": hotlId,
		  		}
		}).done(function( html ) {
			$('body').prepend("<div id='askLayer' style='display:none'></div><div style='display: block;' id='mdScreen' class='mdScreen'></div>");
			$("#askLayer").html(html.replace(/&lt;br\s*\&gt;/g,'<br/>'));
		  	$("#askLayer").show();
		  	$("#askLayer").attr("tabindex",-1).focus();
		  	
			//첨부파일 선택 UI 공통
			$(".uiAttachFile .fileInput").on("change", function(){ 
				$("#askLayer .fileLocation").val(this.value);
			});	
			
		}).fail(function(jqXHR, textStatus) {
			  alert( "Request failed: " + textStatus );
		}).always(function() { 
			$("select, input").not(".fileInput").uniform(); 
		});
}


function openAskSecu(askTypCd, typCd) {

	path2 = "secu";
	
	url = URL_PREFIX + "/contact/secu/setMbsh.do?typCd="+typCd;
	$.ajax({
		  url: url,
		  cache: false,
		  type: "POST",
		  data: { "askTypCd": askTypCd}
		}).done(function( html ) {
			$('body').prepend("<div id='askLayer' style='display:none'></div><div style='display: block;' id='mdScreen' class='mdScreen'></div>");
			$("#askLayer").html(html.replace(/&lt;br\s*\&gt;/g,'<br/>'));
		  	$("#askLayer").show();
		  	$("#askLayer").attr("tabindex",-1).focus();
		  	
			//첨부파일 선택 UI 공통
			$(".uiAttachFile .fileInput").on("change", function(){ 
				$("#askLayer .fileLocation").val(this.value);
			});	
			
		}).fail(function(jqXHR, textStatus) {
			  alert( "Request failed: " + textStatus );
		}).always(function() { 
			$("select, input").not(".fileInput").uniform(); 
		});
}


/*
 * ---------------------------------------------------------------------------------------------
 * 문의 레이어 닫기
 * ---------------------------------------------------------------------------------------------
 */
function closeAskLayer() {
  	$("#askLayer").remove();
	$(".mdScreen").remove();
	$("#askBtn").focus();
}