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

function start(){
	var button = document.getElementById('button');//동작을 제어할 오브젝트
	button.onclick=send;
}

var req;
function send(){//데이터 송신 메소드
	//alert('onload start');
	req = new XMLHttpRequest();
	req.onreadystatechange = textChang;
	req.open('post','jsontest');
	req.send(null);
}
const hotels =[]; 
function textChang(){//데이터 수신 메소드
	if(req.readyState == 4 && req.status == 200) {
		jDatas = JSON.parse(req.responseText);//json확장자의 파일에서 가져오 데이터 뭉치
		hdata ="";
		for(i=0;i<jDatas.cd.length;i++){//jDatas.length = 대집합의 개수(1개), jDatas.cd.length = cd안에 있는 라인 수
			hotels[i] = jDatas.cd[i].hotelName;
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
 
  const labels = [//가로 축 항목
  	'February',
    'February',
    'March',
    'April',
    'May',
    'June',
  ];

  const data = {//원하는 오브젝트를 넣어햐 할때
    labels: hotels,
    datasets: [
		{
			label: 'data1',
			backgroundColor: 'red',//rgb(255, 99, 132) 사각형과 점 내부 채움
			borderColor: 'red',//사격형과 외부 선의 색
			data: [10, 10, 5, 2, 20, 30],//내부에 들어갈 데이터, 맨 마지막에 하나더 값을 넣으면 세로축 최대값이 지정할 수 있다.
		}
   	]
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

  <%-- 
<center>
<div class="admin_main">
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<canvas id="myChart" width="100" height="50"></canvas>
<script>
const ctx = document.getElementById('myChart').getContext('2d');
const myChart = new Chart(ctx, {
    type: 'bar',
    data: {
        labels: ['Red', 'Blue', 'Yellow', 'Green', 'Purple', 'Orange'],
        datasets: [{
            label: '# of Votes',
            data: [12, 19, 3, 5, 2, 3],
            backgroundColor: [
                'rgba(255, 99, 132, 0.2)',
                'rgba(54, 162, 235, 0.2)',
                'rgba(255, 206, 86, 0.2)',
                'rgba(75, 192, 192, 0.2)',
                'rgba(153, 102, 255, 0.2)',
                'rgba(255, 159, 64, 0.2)'
            ],
            borderColor: [
                'rgba(255, 99, 132, 1)',
                'rgba(54, 162, 235, 1)',
                'rgba(255, 206, 86, 1)',
                'rgba(75, 192, 192, 1)',
                'rgba(153, 102, 255, 1)',
                'rgba(255, 159, 64, 1)'
            ],
            borderWidth: 1
        }]
    },
    options: {
        scales: {
            y: {
                beginAtZero: true
            }
        }
    }
});
</script>
</div>	
</center> --%>