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

<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script>
window.onload= chartUpdate;
const texttest = 'test';
const monthlyTitle = 'Monthly salses chart';

var jDatas;
function chartUpdate(){//데이터 송신 메소드
	//alert('onload start');	
	xhr = new XMLHttpRequest();
	xhr.onreadystatechange = function(){
		if(xhr.readyState == 4 && xhr.status == 200) {
			jDatas = xhr.responseText;
			//콜백함수이기 때문에 현재 위치 이외에 있으면 데이터의 회신을 기다리지 않고 동작하기때문에 null값이라고 표현한다.
			google.charts.load('current', {'packages':['bar']}); //차트의 형상을 지정 하단 코드들도 맞춰서 수정해줘야함
			google.charts.setOnLoadCallback(drawChart);
		}
	};
	xhr.open('post','chartUpdates');
	xhr.setRequestHeader('Content-Type','application/json; charset=utf-8');//보내고자 하는 데이터의 자료형을 알려주는것
	var select = document.getElementById('chartSelect').value;
	xhr.send(select);
}

  function drawChart() {
 	 var data = new google.visualization.DataTable(jDatas);//ajax로 온 데이터 를 입력

    var options = {//차트의 특정 옵션 설정
      chart: {
       //title: monthlyTitle,
        //titlePosition: 'in',
        //subtitle: 'Sales, Expenses, and Profit: 2014-2017',
      }
    };

    var chart = new google.charts.Bar(document.getElementById('columnchart_material'));//차트 생성 아이디에 해당하는 div에 생성 

    chart.draw(data, google.charts.Bar.convertOptions(options));//차트의 옵션을 입력
  }
</script>
    
    
<body>
 <div class="admin_main">
	<select name="chartSelect" id="chartSelect" onchange="chartUpdate()">
		<option value="">전체</option>
		<option value="curMthSalses">현월 매출</option>
		<option value="preMthSalses">전월 매출</option>
		<option value="yearSalses">금년 매출</option>
	</select>
   <div id="columnchart_material" style="width: 800px; height: 500px;"></div>
 </div>
</body>
