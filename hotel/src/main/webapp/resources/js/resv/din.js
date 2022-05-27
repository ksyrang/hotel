/*
 * ---------------------------------------------------------------------------------------------
 * 식음 예약
 * ---------------------------------------------------------------------------------------------
 */

function openDinResv(askRestrResvTypCd) {
	$.ajax({
		url: URL_PREFIX + "/resv/din/setDinResv.do?askRestrResvTypCd="+askRestrResvTypCd,
		cache: false,
		  type: "POST",
		  data: { "askRestrResvTypCd": askRestrResvTypCd}
		}).done(function( html ) {
			$('body').prepend("<div id='askLayer' style='display:none'></div><div style='display: block;' class='mdScreen'></div>");
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
 * 예약 레이어 닫기
 * ---------------------------------------------------------------------------------------------
 */
function closeResvLayer(resvIndex) {
	$("#askLayer").empty();
  	$("#askLayer").hide();
  	$(".mdScreen").hide();
  	$("#resvBtn"+resvIndex).focus();
  	popCalendarLayerHide();
}
