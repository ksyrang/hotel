<%@ page contentType="text/html; charset=UTF-8"%>

<html lang="ko" class="webkit chrome win  retina ratio1_25 js portrait tablet"><head>
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="${pageContext.request.contextPath}/resources/css/mem/common.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/css/mem/common/print.css" rel="stylesheet" type="text/css" media="print">
<link href="${pageContext.request.contextPath}/resources/css/mem/mainImages_ko.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/css/mem/common/reserve_new.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/css/mem/common/lang-ko_N.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/css/common/swiper.min.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/css/kjs.css" rel="stylesheet" type="text/css">
</head>
<body>



<div id="emailAdCollectPop" style="display:none"></div><div id="footerEmailLayer" style="display:none"></div><div class="foot footHub">
      <script type="text/javascript">
   function openIdInfo() {
      var url = "http://www.ftc.go.kr/bizCommPop.do?wrkr_no=2038143363";
      window.open(url, "bizCommPop", "width=750, height=700, scrollbars=1");
   }
</script>
<%-- <div class="localBox">
   <div class="localBoxer">
       <div class="footer_logo">
         <a href="${root }"><img  class="logo" src="${pageContext.request.contextPath}/resources/images/hotelBLogo.GIF"></a>
      </div>
   </div>
</div>
</div> --%>

<div class="footer">
   <div class="linkBox">
      <ul>
         <li class="link1 first"><a href="/membership/memFooter/memAgreement.do">신난다리워즈 약관</a></li>
         <li class="link2"><a href="/membership/memFooter/memIndividualPolicy.do">개인정보처리방침</a></li>
         <li class="link3"><a href="/membership/memFooter/pop/memEmailAdCollectPop.do" onclick="openCtrlPopup('/index.do/memFooter/pop/memEmailAdCollectPop.do','emailAdCollectPop');  return false;">이메일무단수집금지</a></li>
         <li class="link4"><a href="https://www.shillaaudit.com/audit/inf_information.do" target="_blank">윤리경영</a></li>
         <li class="link5 last"><a href="/membership/memFooter/pop/memSafeMngPop.do" onclick="openCtrlPopup('/index.do/memFooter/pop/memSafeMngPop.do','emailAdCollectPop');  return false;">건축/시설물 안전관리</a></li>  </ul>
   </div>
   <div class="selectLang">
      <ul>
         <li class="en first"><a href="/hub/cmm/setLang.do?lang=en">English</a></li>
               <li class="ja"><a href="/hub/cmm/setLang.do?lang=ja">日本語</a></li>
               <li class="zh last"><a href="/hub/cmm/setLang.do?lang=zh">简体中文</a></li>
               </ul>
   </div> 
   <div class="adressBox">
      <p>㈜호텔신난다 서울특별시 중구 동호로 249 (우: 04605)  Tel: 02-2233-3131 Fax: 02-2230-3769 사업자등록번호: 203-81-43363 통신판매신고번호: 중구00272호 대표이사 이부진    호스팅서비스제공자 삼성SDS㈜    서울객실예약 shilla.reserve@samsung.com  제주객실예약 jejushilla@samsung.com</p>
      <a class="footLinkbtn" href="#" onclick="openIdInfo(); return false;">사업자 정보 확인</a>
      </div>
   <div class="copyright"><p>COPYRIGHT © HOTEL SHINNANDA CO., LTD. ALL RIGHTS RESERVED.</p></div>
</div>
</body>
</html>
