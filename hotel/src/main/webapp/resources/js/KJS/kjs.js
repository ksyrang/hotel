

var req;
function send(){//데이터 송신 메소드
	req = new XMLHttpRequest();
	req.onreadystatechange = textChang;
	req.open('post','chartUpdate');
	
	var searchTitle = document.getElementById('searchTitle').value;// 콤보박스 값 가져오기
	data ={searchTitle:searchTitle}//json 형식 데이터 만들기
	jdata = JSON.stringify(data);//json 형식으로 데이터 입력
	
	req.setRequestHeader('content-Type','application/json; charset=utf-8')
	//보내고자 하는 데이터의 자료형을 알려주는것
	req.send(jdata);
}

function textChang(){//데이터 수신 메소드
		if(req.readyState == 4 && req.status == 200) {
			data = "";
			if(req.responseText != '') {
				jDatas = JSON.parse(req.responseText);//json확장자의 파일에서 가져오 데이터 뭉치	
				
				for(i=0;i<jDatas.cd.length;i++){//jDatas.length = 대집합의 개수(1개), jDatas.cd.length = cd안에 있는 라인 수
					data = data + "<tr>";//행 선언
					data = data + "<td>"+jDatas.cd[i].title+"</td>";//열에 데이터 입력
					data = data + "<td>"+jDatas.cd[i].artist+"</td>";//열에 데이터 입력
					data = data + "<td>"+jDatas.cd[i].price+"</td>";//열에 데이터 입력
					data = data + "</tr>";//행 선언 닫기
				}
				var tbody = document.getElementById('tbody');//테이블 태그 안 tbody의 객체 정보
				tbody.innerHTML = data; // 데이터 입력!
			}else{
				var tbody = document.getElementById('tbody');//테이블 태그 안 tbody의 객체 정보
				tbody.innerHTML = data; // 데이터 입력!
			}
		}	
	
	}