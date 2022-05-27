
/*
 * ---------------------------------------------------------------------------------------------
 * 화면 프린트 
 *
 * @param printDivId the printDivId
	ReportPrint(printDivId );
 * ---------------------------------------------------------------------------------------------
 */

var beforeBody;
var afterBody;
function initPrint(printDivId ) {
	afterBody = document.body.innerHTML;
	$("[class$='location']").hide();
	$("[class^='btn_']").hide();
	beforeBody = $("#"+printDivId).html();
}

function beforePrint() {
	$(document.body).html(beforeBody);
}

function afterPrint() {
	$(document.body).html(afterBody);
}

function reportPrint(printDivId ) {
	initPrint(printDivId );
    window.onbeforeprint = beforePrint;
    window.onafterprint = afterPrint;
    window.print();
}    



/*
 * ---------------------------------------------------------------------------------------------
 * 이미지 업로드 체크
 *
 * @param imgId the imgId
 * @param imgFileCheckValue the imgFileCheckValue
	imgFileCheck(imgId , imgFileCheckValue)
 * ---------------------------------------------------------------------------------------------
 */
function imgFileCheck(imgId , imgFileCheckValue){
	var imgType = imgFileCheckValue.substring(imgFileCheckValue.length-3); 
	imgType = imgType.toUpperCase();
	if(imgType=="PNG" || imgType=="GIF" || imgType=="JPG" || imgType=="JPGE"){ 
		$('#'+imgId).val(imgFileCheckValue);
	}else{ 
	  alertMsg("msg.cmm.img.check"); 
	  return; 
	} 
}
/*
 * ---------------------------------------------------------------------------------------------
 * 시작일 종료일 검색시 1개월,3개월,6개월,12개월,전체 검색에 사용
 *
 * @param perMonth the perMonth
 * @param startDateId the startDateId
 * @param endDateId the endDateId
	searchDateSet('searchStartDt' , 'searchEndDt' , monthNum );
 * ---------------------------------------------------------------------------------------------
 */

function searchDateSet(startDateId , endDateId , monthNum  ){

	if(monthNum == 'All'){
		$('#'+startDateId).val("");
		$('#'+endDateId).val("");
	}else{
		var time = new Date();
		var today = getMonthFromToday(time.getFullYear() , time.getMonth() +1 , time.getDate() ,  0 , "-");
		var monthday = getMonthFromToday(time.getFullYear() , time.getMonth() +1 , time.getDate() ,  monthNum , "-");
		if( monthNum > 0 ){
			$('#'+startDateId).val(today);
			$('#'+endDateId).val(monthday);
		}else{
			$('#'+startDateId).val(monthday);
			$('#'+endDateId).val(today);
		}
		
	}
}

/*
 * ---------------------------------------------------------------------------------------------
 * 오늘 날짜에서 월을 계산하여 날짜를 반환하기.
 *
 * @param months the months
 * @return the month from today
 * var time = new Date();
 * var perDate = getMonthFromToday(time.getFullYear() , time.getMonth() +1 , time.getDate() ,  perMonth , "-");
 * ---------------------------------------------------------------------------------------------
 */
function  getMonthFromToday(yyyy , mm , dd , months , gubun){
	var time = new Date();
	time.setFullYear(yyyy);	
	time.setDate(dd);	
	time.setMonth(mm-1);	
	
	time.setMonth(time.getMonth()+Number(months));	
	var yy1 = time.getFullYear();
	var mm1 = time.getMonth() +1;
	var dd1 = time.getDate();


	 var checkDate = new Date(yyyy,mm+months,0,0,0,0);

	if(checkDate.getMonth()+1 != mm1 ){
		mm1 = checkDate.getMonth()+1;
		dd1 = checkDate.getDate();
	}

	var mmStr = mm1;
	var ddStr = dd1;
	if(mm1 < 10){
		mmStr = "0"+mm1;
	}
	if(dd1 < 10){
		ddStr = "0"+dd1;
	}

	return yy1 + gubun + mmStr + gubun + ddStr;
}



/*
 * ---------------------------------------------------------------------------------------------
 * 시작일 종료일 검색시 몇주 검색에 사용
 *
 * @param perMonth the perMonth
 * @param startDateId the startDateId
 * @param endDateId the endDateId
	searchDateWeekSet('searchStartDt' , 'searchEndDt' , weekNum );
 * ---------------------------------------------------------------------------------------------
 */

function searchDateWeekSet(startDateId , endDateId , weekNum  ){

	if(weekNum == 'All'){
		$('#'+startDateId).val("");
		$('#'+endDateId).val("");
	}else{
		var time = new Date();
		var today = getWeekFromToday(time.getFullYear() , time.getMonth()  , time.getDate() ,  0 , "-");
		var monthday = getWeekFromToday(time.getFullYear() , time.getMonth()  , time.getDate() ,  weekNum*7 , "-");
		if( weekNum > 0 ){
			$('#'+startDateId).val(today);
			$('#'+endDateId).val(monthday);
		}else{
			$('#'+startDateId).val(monthday);
			$('#'+endDateId).val(today);
		}
		
	}
}
/*
 * ---------------------------------------------------------------------------------------------
 * 오늘 날짜에서 주를 계산하여 날짜를 반환하기.
 *
 * @param months the months
 * @return the month from today
 * var time = new Date();
 * var perDate = getMonthFromToday(time.getFullYear() , time.getMonth() +1 , time.getDate() ,  perMonth , "-");
 * ---------------------------------------------------------------------------------------------
 */
function  getWeekFromToday(yyyy , mm , dd , week , gubun){
	var time = new Date();
	time.setFullYear(yyyy);	
	time.setMonth(mm-1);	
	time.setDate(dd);	
	
	time.setDate(time.getDate()+Number(week));	
	var yy1 = time.getFullYear();
	var mm1 = time.getMonth() +1;
	var dd1 = time.getDate();


	 var checkDate = new Date(yyyy,mm,dd+week,0,0,0);

	if(checkDate.getMonth()+1 != mm1 ){
		mm1 = checkDate.getMonth()+1;
		dd1 = checkDate.getDate();
	}

	var mmStr = mm1;
	var ddStr = dd1;
	if(mm1 < 10){
		mmStr = "0"+mm1;
	}
	if(dd1 < 10){
		ddStr = "0"+dd1;
	}

	return yy1 + gubun + mmStr + gubun + ddStr;
}
// Dialog 열기
function openDialog(id, title, url, width, height , resizable){
	setContextPath();
	if(resizable == null){
		resizable = false;
	}
	$(function(){
		 $('<div id="'+id+'" />').dialog({
			 	resizable:resizable,
	            modal: true,
	            open: function (){ $(this).load(toContextURL(url), function complete(responseText, textStatus, XMLHttpRequest){$(".contents").prepend("<div tabIndex='1'></div>");}); },
	            height: height,
	            width: width,
	            title: title,
	            close: function (){ $('#'+id).remove(); }
		 });
	});
}
// Dialog 닫기
function closeDialog(id){
	$('#'+id).dialog('close');
}

/**
 * 첨부파일 다운로드
 * @param attFileId 첨부파일 ID
 * @param attFileSeq 첨부파일 일련번호
 */
function downAttFile( attFileId , attFileSeq){
	if(attFileId != '' && attFileSeq != '') {
		$('#dataform').attr("method" , "post");
		$('#dataform').attr("target" , "hidden_frame");
		$('#dataform').attr("action","./downAttFile.do?attFileId="+attFileId+"&attFileSeq="+attFileSeq).submit();
	}
}

/**
 * 첨부파일 삭제
 * @param attFileId 첨부파일 ID
 * @param attFileSeq 첨부파일 일련번호
 */
function deleteAttFile(uri, formId ,  attFileId , attFileSeq){
	if(uri != '' && attFileId != '' && attFileSeq != '') {
		var param = new ParamMap();
		param.put("attFileId", attFileId);
		param.put("attFileSeq", attFileSeq);
		callAjax("./deleteAttFile.do", param, function(data){
			alertMsg("msg.cmm.success.delete");
			$('#'+formId).attr("method" , "get");
		    $('#'+formId).attr('action',uri).submit();
		}); // end of callAjax
	}
}

//팝업 윈도우 모두 닫기
var g_open_index = 1;
var g_win_array = [];
function openWin(url, options){
	g_win_array.push(window.open(url, "pop"+g_open_index++, options));
}
function closeWins(){
	for(var i=0;i<g_win_array.length;i++){
		try{ g_win_array.close(); }
		catch(e){}
	}
}

// LEFT 메뉴 펼치기 / 닫기
function toggleLeftMnu(groupId, mnuId){
	var ul;
	$("#left").find("[id^='"+groupId+"']").each(function(index){
		ul = $(this);
		if(ul.attr('id').indexOf(mnuId)>0){
			ul.css("display","");
		} else {
			ul.css("display","none");
		}
	});
}
// 행추가
function addRowHtml(tbodyId){
	var trArr=[];
	$("#"+tbodyId+" tr").each(function(index){trArr[index] = $(this); });
	var html = trArr[trArr.length-1].html().replace(/#no/gi,trArr.length-1);
	trArr[trArr.length-2].removeClass("end");
	trArr[trArr.length-2].after("<tr class=\"end\">\n"+html+"\n</tr>");
}
// 행삭제
function deleteRowHtml(tbodyId, checkName){
	var attrId, p, trArr=[], delIdxs=[], delNos=[];
	$("#"+tbodyId+" tr").each(function(index){trArr[index] = $(this); });
	$("#"+tbodyId+" [name="+checkName+"]:checkbox:checked").each(function(index){
		attrId = $(this).attr("id");
		delIdxs.push(parseInt(attrId.substring(attrId.indexOf('-')+1)));
		if($(this).val()!="") delNos.push($(this).val());
	});
	if(trArr.length-1==delIdxs.length){
		alertMsg("msg.cmm.notselect.all"); return null;
	}
	if(delIdxs.length==0){
		alertMsg("msg.cmm.noselect"); return null;
	}
	var i, copyToIdx=-1;
	for(i=0;i<trArr.length-1;i++){
		if(!delIdxs.contains(i)){
			copyToIdx++;
			if(i!=copyToIdx){
				p = new ParamMap().getDataFromObj(trArr[i]);
				p.setDataToObj(trArr[copyToIdx]);
				trArr[copyToIdx].find(":checked").attr("checked",false);
				trArr[copyToIdx].find(":input[type=text][readonly='readonly']").each(function(index){
					copyFromObj = trArr[i].find(":input[name='"+$(this).attr("name")+"']");
					if(copyFromObj.attr('readonly')!='readonly'){
						$(this).removeAttr("readonly");
						$(this).removeClass("readonly_box");
					}
				});
			}
		}
	}
	if(!trArr[copyToIdx].hasClass()) trArr[copyToIdx].addClass("end");
	for(i=copyToIdx+1;i<trArr.length-1;i++){
		trArr[i].remove();
	}
	return delNos;
}
// 중복제거 스트링 더하기(삭제목록관리)
function appendArrayToString(srcTxt, appendArr){
	if(appendArr==null) return srcTxt;
	if(srcTxt==null || srcTxt=="") return appendArr.join(",");
	var i, arr = srcTxt.split(",");
	for(i=0;i<appendArr.length;i++){
		if(!arr.contains(appendArr[i])) arr.push(appendArr[i]);
	}
	return arr.join(",");
}
// selector 해당하는 JQuery배열 리턴, option<0 면 앞에서(option>0 면 뒤에서) 부터 해당 갯수는 제거함
function getJObjArray(selector, option){
	var arr = [], returnArr = [];
	$(selector).each(function(index){arr.push($(this));});
	if(option==null||option==0) return arr;
	var i = option<0 ? - option : 0;
	var size = option>0 ? arr.length-option : arr.length;
	for(;i<size;i++) returnArr.push(arr[i]);
	return returnArr;
}
//행 단위로 필수값 체크, madatoryNames:필수값 명(Array)
function validateRows(tbodyId, madatoryNames){
	var i, p, name, title, trObjs = getJObjArray("#"+tbodyId+" tr", 1);
	var handlerProcesser = function(k, va, args){
		var id = k+"-"+args;
		var h = validator.getHandler(id);
		if(h!=null && h(id, va)==false){
			$("#"+id).focus();
			return false;
		}
	};
	for(i=0;i<trObjs.length;i++){
		p = new ParamMap().getDataFromObj(trObjs[i]);
		name = p.getNotHaveAll(madatoryNames);
		if(name!=null){
			title = validator.getTitle(name+"-"+i);
			if(title!=null){
				alertMsg("tag.input.check.needInput", [title]);
			} else {
				alertMsg("tag.input.check.notInput");
			}
			trObjs[i].find("[name='"+name+"']").focus();
			return false;
		}
		if(p.action(handlerProcesser, i)==false){
			return false;
		}
	}
	return true;
}
// 최소 한행의 데이터가 입력되었는지 체크, madatoryName:체크항목명
function valdateHaveOne(tbodyId, madatoryName){
	var firstObj=null, hasValue=false;
	$("#"+tbodyId+" [name='"+madatoryName+"']").each(function(index){
		if(firstObj==null) firstObj = $(this);
		if($(this).val()!=null && $(this).val().trim()!=""){
			hasValue = true;
			return false;
		}
	});
	if(!hasValue){
		alertMsg("msg.cmm.input.atleastOne.row");
		firstObj.focus();
	}
	return hasValue;
}

//체크박스 전체선택, 전체해제
function checkAll(obj) {
	//크롬, 사파리에서는 한번만 동작하고 그 이후에는 동작하지 않음
	//$('input[name='+obj.value+']').attr('checked', $(obj).is(':checked'));
	
	var objList = document.getElementsByName(obj.value);
	for(var i = 0; i < objList.length; i++) {
		objList[i].checked = obj.checked;
	}
}

/**
 * 이메일 유효성체크
 * @param email 이메일
 * @return true 성공
 */
function validateEmail(email) {
	var emailReg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
	if( !emailReg.test( email ) ) {
		return false;
	} else {
		return true;
	}
}

//행삭제(선택한 행을 바로 삭제, ID값 조절)
function deleteRowDirect(tbodyId, checkName, exceptStr){
	var delNoArr=[];
	if($("#"+tbodyId+" tr").length-1 == $('#'+tbodyId+' input[name='+checkName+']:checked').length) addRowHtml(tbodyId);
	$('#'+tbodyId+' input[name='+checkName+']:checked').each(function(index){
		var currObj = $(this).closest('tr');
 		currObj.find('~tr:not(:last)').each(function(index){
 			$(this).find('input[id]').each(function(index){
				var id = $(this).attr('id');
				var prefix = id.substring(0, id.lastIndexOf('-')+1);
				var idx = id.substring(id.lastIndexOf('-')+1,id.length)-1;
				$(this).attr('id', prefix+idx);
			});	
		});
		
		if($(this).val()!=null && $(this).val()!=''&& $(this).val()!=exceptStr){
			delNoArr.push($(this).val());
		}
		currObj.remove();
	});	 
 	return delNoArr;
}

function setFileValue(id, value){
	var p = value.lastIndexOf('\\');
	if(p>0) value = value.substring(p+1);
	$("#"+id+"_View").val(value);
}
function removeFileValue(id){
	$("#"+id+"_Value").css("display","none");
	$("#"+id+"_Del").val("Y");
	return false;
}
function returnFalse(){
	return false;
}



/*
 * ---------------------------------------------------------------------------------------------
 * 년월에 해당하는 날짜 select에 넣기
 *
 * @param printDivId the printDivId
	ReportPrint(printDivId );
 * ---------------------------------------------------------------------------------------------
 */
function getDaysInMonth(year, month) {
  return [31,((!(year % 4 ) && ( (year % 100 ) || !( year % 400 ) ))?29:28),31,30,31,30,31,31,30,31,30,31][month-1];
}
function daySelect(year , month , day){
	for(var i = $("#"+day+" option").size() ; i >= -1; i -- ){
		$("#"+day+" option:eq("+i+")").remove();
	}
	var daysInMonth = getDaysInMonth($("#"+year).val(), $("#"+month).val());
	for (var i = 1 ; i <= daysInMonth ; i++ ){
		$("#"+day).append("<option value='"+i+"'>"+i+"</option>");
	}
	$("#"+day+" option:eq(0)").attr("selected", "selected");
	$("select").uniform();
}

function daySelect2(year , month , day){
	for(var i = $("#"+day+" option").size() ; i >= -1; i -- ){
		$("#"+day+" option:eq("+i+")").remove();
	}
	var daysInMonth = getDaysInMonth($("#"+year).val(), $("#"+month).val());
	for (var i = 1 ; i <= daysInMonth ; i++ ){
		$("#"+day).append("<option value='"+LPad(i, 2, '0')+"'>"+LPad(i, 2, '0')+"</option>");
	}
	$("#"+day+" option:eq(0)").attr("selected", "selected");
	$("select").uniform();
}

function daySelect3(year , month , day){
	for(var i = $("#"+day+" option").size() ; i > 0; i -- ){
		$("#"+day+" option:eq("+i+")").remove();
	}
	var daysInMonth = getDaysInMonth($("#"+year).val(), $("#"+month).val());
	for (var i = 1 ; i <= daysInMonth ; i++ ){
		$("#"+day).append("<option value='"+i+"'>"+i+"</option>");
	}
	$("#"+day+" option:eq(0)").attr("selected", "selected");
	$("select").uniform();
}

//SNS 연동
function openSNS(snsType, contUrl, title){
	var href='';									          
	var ptitle = encodeURI(title);				
	var url = encodeURIComponent(contUrl);					
	
	if(snsType == 'twitter'){           
		href = "http://twitter.com/share?url="+url+"&text=["+ptitle+"]";           
	} else if(snsType == 'facebook'){           
		href = "http://www.facebook.com/sharer/sharer.php?s=100&p[url]="+url+"&p[title]=["+ptitle+"]&p[summary]="+url;
	}
	window.open(href, snsType, 'width=600,height=420,resizable=yes');
}

function setMainSlide(slideId, prevName, nextName){
	$('#'+slideId).slidesjs({
		width: 1980,
		height:450,
		start: 1,
		play: {
			//active: true,
			auto: false,
			effect: "fade",
			interval: 3000,
			swap: false,
			pauseOnHover: true,
			restartDelay: 2000
		},
		navigation: {
			effect: "fade"
		},
		pagination: {
			active: true,
			effect: "fade"
		},
		effect: {
			fade: {
				speed: 400,
				crossfade: true
			}
		}
	});
	$("#"+slideId+" .slidesjs-previous").text(prevName).attr("title",prevName);
	$("#"+slideId+" .slidesjs-next").text(nextName).attr("title",nextName);
}

function setMainSubSlide(slideId){
	$('#'+slideId).slidesjs({
		width:340,
		height:253,
		start: 1,
		play: {
			//active: true,
			auto: false,
			effect: "fade",
			interval: 3000,
			swap: false,
			pauseOnHover: true,
			restartDelay: 2000
		},
		navigation: {
			active:false
		},
		pagination: {
			active: true,
			effect: "fade"
		}
	});
}

/*
 * ---------------------------------------------------------------------------------------------
 * 날짜 유효성 체크
 * 
 * @param dateString 날짜(yy-mm-dd)
 * @param imgFileCheckValue the imgFileCheckValue
	imgFileCheck(imgId , imgFileCheckValue)
 * ---------------------------------------------------------------------------------------------
 */
function isValidYmd(dateString) {
    // First check for the pattern
    if(!/^\d{4}\-\d{2}\-\d{2}$/.test(dateString))
        return false;

    // Parse the date parts to integers
    var parts = dateString.split("-");
    var year = parseInt(parts[0], 10);
    var month = parseInt(parts[1], 10);
    var day = parseInt(parts[2], 10);

    // Check the ranges of month and year
    if(year < 1000 || year > 3000 || month == 0 || month > 12)
        return false;

    var monthLength = [ 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 ];

    // Adjust for leap years
    if(year % 400 == 0 || (year % 100 != 0 && year % 4 == 0))
        monthLength[1] = 29;

    // Check the range of the day
    return day > 0 && day <= monthLength[month - 1];
}

/*
 * ---------------------------------------------------------------------------------------------
 * 숫자형에 콤마 추가하기
 * ---------------------------------------------------------------------------------------------
 */
Number.prototype.addCommas = function(){
    if(this==0) return 0;
 
    var reg = /(^[+-]?\d+)(\d{3})/;
    var n = (this + '');
 
    while (reg.test(n)) n = n.replace(reg, '$1' + ',' + '$2');
 
    return n;
};
 

/*
 * ---------------------------------------------------------------------------------------------
 * 문자형에 콤마 추가하기
 * ---------------------------------------------------------------------------------------------
 */
String.prototype.addCommas = function(){
    var num = parseFloat(this);
    if( isNaN(num) ) return "0";
 
    return num.format();
};

var g_pop_areaId = null;
function closeOpenPop(){
	if(g_pop_areaId!=null){
		$("#"+g_pop_areaId).hide();
		g_pop_areaId = null;
	}
}
//Call Controller Popup
function openCtrlPopup(popUrl, areaId, classId) {
	try{
		closeOpenPop();
		callHtmlPop(popUrl, null, function(data){
			var area = $("#"+areaId);
			if(classId == null) classId= "popLayer";
			area.html(data.trim());
			
			var sTop = $(document).scrollTop();
			var sLef = $(document).scrollLeft();
			
			var widthHalf = area.find("."+classId).width()/2;
			area.find("."+classId).css("top" , sTop+70<200 ? 200 : sTop+70);
			var diff = parseInt($(window).width()/2 - widthHalf);
			
			var _left = parseInt(($(window).width()/2) - widthHalf);
			
			area.find("."+classId).css("left",sLef + widthHalf + (diff<15 ? 15 : diff) );
			
			if(areaId == "actDrinkPop") {
				area.find("."+classId).css("left",sLef + (_left * 2));
			}
			
			area.show();
			area.find("."+classId).attr("tabindex",-1).focus();
			$(document).scrollTop(sTop);
			$(document).scrollLeft(sLef);
			g_pop_areaId = areaId;
		}, false);
	} catch(e){
		alert(e.message);
	}
}

function openDrinkPopup(areaId, classId) {
	
	try{
		closeOpenPop();
		var area = $("#"+areaId);
		if(classId == null) classId= "popLayer";
		
		var sTop = $(document).scrollTop();
		var sLef = $(document).scrollLeft();
		
		var widthHalf = area.find("."+classId).width()/2;
		area.find("."+classId).css("top" , sTop+70<200 ? 200 : sTop+70);
		var diff = parseInt($(window).width()/2 - widthHalf);
		
		var _left = parseInt(($(window).width()/2) - widthHalf);
		
		area.find("."+classId).css("left",sLef + widthHalf + (diff<15 ? 15 : diff) );
		
		if(areaId == "actDrinkPop") {
			area.find("."+classId).css("left",sLef + (_left * 2));
		}
		
		area.show();
		area.find("."+classId).attr("tabindex",-1).focus();
		$(document).scrollTop(sTop);
		$(document).scrollLeft(sLef);
		g_pop_areaId = areaId;
	} catch(e){
		alert(e.message);
	}
}

function openEConPopup(popUrl, areaId, classId) {
	try{
		closeOpenPop();
		callHtmlPop(popUrl, null, function(data){
			var area = $("#"+areaId);
			if(classId == null) classId= "popLayer";
			area.html(data.trim());
			
			var sTop = $(document).scrollTop();
			var sLef = $(document).scrollLeft();
			
			var widthHalf = area.find("."+classId).width()/2;
			
			var popArea = area.find("."+classId);
			//popArea.css("top" , sTop+70<200 ? 200 : sTop+70);
			popArea.css("top" , sTop-50<100 ? 100 : sTop-50);
			var diff = parseInt($(window).width()/2 - widthHalf);
			popArea.find(".popCtn").css("left",sLef + widthHalf + (diff<15 ? 15 : diff) );
			area.show();
			area.find("."+classId).attr("tabindex",-1).focus();
			$(document).scrollTop(sTop);
			$(document).scrollLeft(sLef);
			g_pop_areaId = areaId;
		}, false);
	} catch(e){
		alert(e.message);
	}
}

function callHtmlPop(url, param, handler, async){
	$.ajax({
		url:url,
		async:(async==true),
		cache:false,
		type:"GET",
		success:function(data){
			handler(data);
		},
		error: function (xhr, ajaxOptions, thrownError) {
			var errCd = xhr.status;
			if(errCd!='12029'){
				var msgCd = errCd=='404' ? "error.fileNotFoundException.desc" : errCd=='403' ? 'msg.cmm.errors.'+errCd : 'msg.cmm.errors.500';
				alertMsg(msgCd, [errCd]);
			}
		}});
}

//Controller 를 거치지 않은 팝업열기
function openDivPopup(areaId, classId)
{
	closeOpenPop();
	var area = $("#"+areaId);
	if(classId == null) classId= "popLayer";
	var sTop = $(document).scrollTop();
	var sLef = $(document).scrollLeft();
	var widthHalf = area.find("."+classId).width()/2;
	area.find("."+classId).css("top" , sTop<130 ? 200 : sTop+70);
	var diff = parseInt($(window).width()/2 - widthHalf);
	area.find("."+classId).css("left",sLef + widthHalf + (diff<15 ? 15 : diff) );
	area.show();
	area.find("."+classId).attr("tabindex",-1).focus();
	$(document).scrollTop(sTop);
	$(document).scrollLeft(sLef);
	g_pop_areaId = areaId;
}

//팝업 닫기
function closePopup(areaId)
{
	var area = $("#"+areaId);
	area.hide();
	$("#"+areaId+"Btn").focus();
}

/**
 * form 데이터를 json 객체로 변환한다.
 * return : 성공시에는 객체(JSON)을 리턴한다. 실패시에는 null을 리턴한다.
 */
jQuery.fn.serializeObject = function() {
    var obj = null;
    try {
        if ( this[0].tagName && this[0].tagName.toUpperCase() == "FORM" ) {
            var arr = this.serializeArray();
            if ( arr ) {
                obj = {};
                jQuery.each(arr, function() {
                    obj[this.name] = this.value;
                });
            }//if ( arr ) {
        }
    }
    catch(e) {alert(e.message);}
    finally  {}
    
    return obj;
};

/*
 * ---------------------------------------------------------------------------------------------
 * Left Padding
 *
 * @param str 문자
 * @param n 채워넣을 문자 길이
 * @param ch pad 문자
	ReportPrint(printDivId );
 * ---------------------------------------------------------------------------------------------
 */
function LPad(str,n,ch) {
	str = String(str);
	var result = "";
	var len = str.length;
	if ( len < n ) {
		 for ( var i=0; i<(n-len); i++ ) {
			 result += ch;
		 }
		 result += str;
	} else {
		 result = str;
	}
	
	return result;
}

/*
 * ---------------------------------------------------------------------------------------------
 * 두 날짜 일수 계산
 *
 * @param sDate 시작일자
 * @param eDate 종료일자
 * ---------------------------------------------------------------------------------------------
 */
function diffDay(sDate, eDate) {
	
	var sDateArray = sDate.split("-");  
	var eDateArray = eDate.split("-");  
	  
	var sDateObj = new Date(sDateArray[0], Number(sDateArray[1])-1, sDateArray[2]);  
	var eDateObj = new Date(eDateArray[0], Number(eDateArray[1])-1, eDateArray[2]);  
	  
	return (eDateObj.getTime() - sDateObj.getTime())/1000/60/60/24;  
	
}


/*
 * ---------------------------------------------------------------------------------------------
 * 문자 길이 반환 (영문 1byte, 한글 3byte 계산)
 * ---------------------------------------------------------------------------------------------
 */
function getLen(str) {
	var len;
    var temp;

    len = str.length;
    var tot_cnt = 0;

    for(k=0;k < len;k++){
    	temp = str.charAt(k);
    	if(escape(temp).length > 4)
    		tot_cnt += 3;
    	else
    		tot_cnt++;
    }
    return tot_cnt;
}

//공통 이메일 보내기

function openEmailPop(areaId,  cUrl, contNm, urlPrefix){
	
	var popUrl ;
	popUrl = urlPrefix+"/mail/accEmailPop.do?cUrl="+encodeURIComponent(cUrl)+"&contNm="+encodeURIComponent(contNm);
	openCtrlPopup(popUrl, areaId, "popLayer");
}

//상단 back to 삭제후 
function closeMapBar() {
	$.ajax({
		url:"/membership/memFooter/memCloseMapBar.do",
		type:"GET",
		success:function(data){
			return ;
		},
		error: function (xhr, ajaxOptions, thrownError) {
			var errCd = xhr.status;
			if(errCd!='12029'){
				var msgCd = errCd=='404' ? "error.fileNotFoundException.desc" : errCd=='403' ? 'msg.cmm.errors.'+errCd : 'msg.cmm.errors.500';
				alertMsg(msgCd, [errCd]);
			}
		}});
}