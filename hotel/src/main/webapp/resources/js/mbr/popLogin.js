document.write("<div id='popLoginDiv' class='popLogin' style='display:none' ></div>");

function loginPop(hotlPath , formId, diningYn){
	pc.layerPopup.lockScroll();
	var errorCheck = "success";
    var popLoginDiv = $("#popLoginDiv");
    var url = '/'+hotlPath+'/login/popLogin.do';
    if(diningYn == "Y"){
    	url = '/'+hotlPath+'/login/popLogin.do?diningYn=Y';
    }
    $.ajax(
            {
                url: url,
                type: "post",
                dataType: "html",
                error: function(){
                	errorCheck = "fail";
                	errorCheck = 1;
                },
                success: function( strData ){
                	popLoginDiv.html(strData);
                	popLoginDiv.attr("style","display:");
                	$("#popLoginformId").val(formId);
                	$("#popLoginDiv").attr("tabindex",-1).focus();
                }
            }
     );
     if(errorCheck == "fail"){
  		alert('로딩실패');
     }
}

function cloceLoginPop(){
    /*var popLoginDiv = $("#popLoginDiv");
	popLoginDiv.attr("style","display:none");
	$("#pooLoginbutton").focus();*/
	pc.layerPopup.unLockScroll();
	$(".mdScreen").css("z-index", "1000");
	var popLoginDiv = $("#popLoginDiv");

	popLoginDiv.html("");
	popLoginDiv.attr("style","display:none");
}
