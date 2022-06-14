<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:url var="root" value="/" />
<link href="${pageContext.request.contextPath}/resources/css/admin/amdin_memberList.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/css/admin/amdin_memberList.css" rel="stylesheet" type="text/css">
 <!--
통계에서 보여줘야 할것들?
호텔별 매출 그래프 일, 월, 년
호텔별 예약 그래프 일, 월, 년 
예약 대비 결제 비율?(막대? 선형? 파이?
 --> 
 
<script>
window.onload= send;


var req;
function send(){//데이터 송신 메소드
	//alert('onload start');	
	
	req = new XMLHttpRequest();
	req.onreadystatechange = textChang;
	req.open('post','chartUpdate');
	req.send(null);
}

const hotelsName =[]; 

function textChang(){//데이터 수신 메소드
	console.log('test');
	if(req.readyState == 4 && req.status == 200) {
		jDatas = JSON.parse(req.responseText);//json확장자의 파일에서 가져오 데이터 뭉치
		console.log(jDatas);
		for(i=0;i<jDatas.cd.length;i++){//jDatas.length = 대집합의 개수(1개), jDatas.cd.length = cd안에 있는 라인 수
			hotelsName[i] = jDatas.cd[i].hotelName;
		}
	}

} 
 </script>

 <center>
<div class="admin_main">
	<select name="searchTitle" class="searchTitle"  style="height: 25px;"><!-- onchange="send()" -->
		<option value="">전체</option>
	<c:forEach var="List" items="${sessionScope.hotelList }">
		<option value="${List.hotelId }">${List.hotelName }</option>
	</c:forEach>
	</select>

	<canvas id="myChart"></canvas>

</div>
</center>

<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script>

  const data = {//원하는 오브젝트를 넣어햐 할때
    labels: hotelsName,
    datasets: [{
        label: 'My First dataset',
        backgroundColor: 'rgb(255, 99, 132)',
        borderColor: 'rgb(255, 99, 132)',
        data: [0, 10, 5, 2, 20, 30, 45],
      }]
  };

  const config = {
    type: 'bar',//그래프의 형태를 결정 짓는 다
    data: data,
    options: {
    	title :{
    		display: true,
  			text: 'test'
    	}
    }
  };

  const myChart = new Chart(
    document.getElementById('myChart'),
    config
  );

  
  </script>