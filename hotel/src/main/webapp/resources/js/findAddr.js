// daumpost(우편번호)
//jsp 파일에 넣어야 할 것-->
//<c:url var="root" value="/" />
//<script src="${root}/resources/check.js"></script>
//<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
function daumPost() {
	    new daum.Postcode({
	        oncomplete: function(data) {
	        	var addr = "";
	        	// R == 도로명 주소, J == 지번 주소
	        	if(data.userSelectedType == "R")
	        		addr = data.roadAddress;
	        	else
	        		addr = data.jibunAddress;
	        	
	        	//우편 번호
	        	document.getElementById('zipcode').value = data.zonecode;
	        	document.getElementById('addr1').value = addr;
	        	document.getElementById('addr2').focus();
	        	
	        }
	    }).open();
	}