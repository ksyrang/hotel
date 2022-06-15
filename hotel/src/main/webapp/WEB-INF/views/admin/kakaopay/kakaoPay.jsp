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
	$(function(){
		$('#kakaopayBtn').click(function(){
			$.ajax({
				url:'kakaoPayProcPost',
				dataType:'json',
				success:function(data){
					alert(data);
				},
				error:function(error) {
					alert(error);
				}
			})
		})
	})
</script>
</head>
<body>

결제번호 : ${paymentDTO.paymentNo }
예약번호 : ${paymentDTO.reservationNo }
호텔id : ${paymentDTO.hotelId }
고객id : ${paymentDTO.memberId }
결제수단 : ${paymentDTO.paymentType }
결제금액 : ${paymentDTO.paymentAmount }

<form>
	<button type="button" style="border:none" id="kakaopayBtn">
	<img src="${pageContext.request.contextPath}/resources/images/payment_icon_yellow_medium.png">
	</button>
</form>

</body>
</html>