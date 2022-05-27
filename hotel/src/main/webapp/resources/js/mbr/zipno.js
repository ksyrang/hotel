
document.write("<div id='zipNoLayerDiv' class='popLogin' style='display:none' ></div>");

var path2 = "";

function popZipNoSearch( zipNo1 , zipNo2 , adr , detlAdr , newAdr , newDetlAdr ){
	
	path2 = "zipno";
	var zipNoLayerDiv = $("#zipNoLayerDiv");
	$.ajax(
            {
                url: '/mem/mbr/zipno/selectZipNo.do',
                type: "post",
                data: { 
                	"dong": $("#Parceldong").val() , 
                	"zipNo1": zipNo1 , 
                	"zipNo2": zipNo2 , 
                	"adr": adr , 
                	"detlAdr": detlAdr , 
                	"newAdr": newAdr , 
                	"newDetlAdr": newDetlAdr  
                	},
                dataType: "html",
                error: function(){
                },
                success: function( strData ){
                	zipNoLayerDiv.html(strData);
                	zipNoLayerDiv.show();
                	$("#zipNoLayerDiv").attr("tabindex",-1).focus(); 
                }
            }                           
     );
}



function popZipNoSecuSearch( zipNo1 , zipNo2 , adr , detlAdr , newAdr , newDetlAdr ){
	var zipNoLayerDiv = $("#zipNoLayerDiv");
	path2 = "secu";
	
	$.ajax(
            {
                url: '/mem/mbr/secu/selectZipNo.do',
                type: "post",
                data: { 
                	"dong": $("#Parceldong").val() , 
                	"zipNo1": zipNo1 , 
                	"zipNo2": zipNo2 , 
                	"adr": adr , 
                	"detlAdr": detlAdr , 
                	"newAdr": newAdr , 
                	"newDetlAdr": newDetlAdr 
                	},
                dataType: "html",
                error: function(){
                },
                success: function( strData ){
                	zipNoLayerDiv.html(strData);
                	zipNoLayerDiv.show();
                	$("#zipNoLayerDiv").attr("tabindex",-1).focus(); 
                }
            }                           
     );
}