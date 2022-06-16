<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>kakaoPay</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script>
	/* var req;
	
	function kakaoBtnClick() {
		req = new XMLHttpRequest();
		req.onreadystatechange = printMsg;
		req.open('post', 'kakaoPayProcPost');
		var sendData = {
				paymentNo : ${paymentDTO.paymentNo },
				reservationNo : ${paymentDTO.reservationNo },
				hotelId : ${paymentDTO.hotelId },
				paymentType : ${paymentDTO.paymentType },
				paymentAmount : ${paymentDTO.paymentAmount }
				};
		req.setRequestHeader('Content-Type', "application/json; charset=UTF-8");
		req.send(sendData);
	}
	
	function printMsg() {
		if(req.readyState == 4 && req.status == 200){
			var msg = document.getElementById('msg')
			msg.innerHTML = req.responseText;
			alret("성공!");
		}
	} 
	*/
</script>
</head>
<body>
<div>
	결제번호 : ${paymentDTO.paymentNo }
	예약번호 : ${paymentDTO.reservationNo }
	호텔id : ${paymentDTO.hotelId }
	결제방법 : ${paymentDTO.paymentType }
	결제금액 : ${paymentDTO.paymentAmount }

	<!-- onclick="kakaoBtnClick()" -->
	<button type="button" style="border:none" id="kakaopayBtn">
	<img src="${pageContext.request.contextPath}/resources/images/payment_icon_yellow_medium.png">
	</button>
</div>
<script>
/*
paymentNo : ${paymentDTO.paymentNo },
reservationNo : ${paymentDTO.reservationNo },
hotelId : ${paymentDTO.hotelId },
paymentType : ${paymentDTO.paymentType },
paymentAmount : ${paymentDTO.paymentAmount } 
 
 */
	
	$("#kakaopayBtn").click(function(){
	    // ajax 통신
	    $.ajax({
	        type : "POST",            // HTTP method type(GET, POST) 형식이다.
	        url : "kakaoPayReady",      // 컨트롤러에서 대기중인 URL 주소이다.
	        //contentType:"application/json; charset=UTF-8",
	        data : {
	        	partner_order_id : '${paymentDTO.paymentNo }',
	        	partner_user_id : '${paymentDTO.memberId }',
	        	item_name : '${paymentDTO.hotelId }',
	        	total_amount : ${paymentDTO.paymentAmount }
	    		},
	        success : function(res){ // 비동기통신의 성공일경우 success콜백으로 들어옵니다. 'res'는 응답받은 데이터이다.
	            alert(res.next_redirect_pc_url);
	        },
	        error : function(XMLHttpRequest, textStatus, errorThrown){ // 비동기 통신이 실패할경우 error 콜백으로 들어옵니다.
	            alert("통신 실패.")
	        }
	    });
	});
	
</script>

</body>
</html>