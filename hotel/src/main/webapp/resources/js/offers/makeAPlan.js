
document.write("<div id='makeAPlanLayerDiv' class='popLogin' style='display:none' ></div>");

var path2 = "";
var popMakeAPlanSearchButtonName = "popMakeAPlanSearchButton1";

function popMakeAPlanSearchForm( hotlPath , popMakeAPlanSearchButton ){
	path2 = "makeaplan";
	popMakeAPlanSearchButtonName = popMakeAPlanSearchButton;
	var makeAPlanLayerDiv = $("#makeAPlanLayerDiv");
	$.ajax(
            {
                url: '/'+hotlPath+'/offers/makeaplan/viewMakeAPlan.do',
                type: "post",
                dataType: "html",
                error: function(){
                },
                success: function( strData ){
                	makeAPlanLayerDiv.html(strData);
                	makeAPlanLayerDiv.show();
                	$("#makeAPlanLayerDiv").attr("tabindex",-1).focus(); 
                }
            }                           
     );
}


function popMakeAPlanSecuSearchForm( hotlPath , popMakeAPlanSearchButton ){
	path2 = "secu";
	popMakeAPlanSearchButtonName = popMakeAPlanSearchButton;
	var makeAPlanLayerDiv = $("#makeAPlanLayerDiv");
	$.ajax(
            {
                url: '/'+hotlPath+'/offers/'+path2+'/viewMakeAPlan.do',
                type: "post",
                dataType: "html",
                error: function(){
                },
                success: function( strData ){
                	makeAPlanLayerDiv.html(strData);
                	makeAPlanLayerDiv.show();
                	$("#makeAPlanLayerDiv").attr("tabindex",-1).focus(); 
                }
            }                           
     );
}



function popCloaeMakeAPlan(){
	var makeAPlanLayerDiv = $("#makeAPlanLayerDiv");
	makeAPlanLayerDiv.html("");
	makeAPlanLayerDiv.hide();
	$("#"+popMakeAPlanSearchButtonName).focus();
	$("#popCalendarDiv").hide();
}
