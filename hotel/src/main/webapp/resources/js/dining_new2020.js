//다이닝 new 2020 pc

$(document).ready(function(){

    //메인 예약 팝업
    $('.rsvBox_wrap .btn').on('click', function(){

        $('.rsvBox_wrap').addClass('on');
        $('.rsvBox_wrap .rsvBox_N').show();
        $('.rsvBox_wrap .newDim').show();
        pc.layerPopup.lockScroll();


        $('.rsvBox_wrap .rsvBox_N .btnClose').on('click', function(){

            $('.rsvBox_wrap').removeClass('on');
            $('.rsvBox_wrap .rsvBox_N').hide();
            $('.rsvBox_wrap .newDim').hide();
            pc.layerPopup.unLockScroll();

        });
    });

    // 예약확인 메뉴
	$(".resvConBox a.btn").on("click",function(e){
		if($(".resvConBox .list").is(":visible")){
			$(".resvConBox .list").hide();
            $(this).parent().removeClass('on');
		}else{
			$(".resvConBox .list").show();
            $(this).parent().addClass('on');
        }
        
        $(".globalBox a.btn").on("click",function(e){
            $(".resvConfirm .resvConBox .list").hide();
            $(".resvConfirm .resvConBox").removeClass('on');
        });
        
        e.stopPropagation();
        e.preventDefault();
    });
	$(document).click(function(){
		$(".resvConBox .list").hide();
        $(".resvConBox").removeClass('on');
    });
    


    //step0
    //step0 호텔 선택 시, 색상 변환
    $('.hotelList2 li a').on('click', function () {
        $('.hotelList2 li a').removeClass('on');
        $(this).addClass('on');
    });
    
    //step0 다이닝 선택 시, 다이닝 정보 영역 활성
    $('#resChoiceBox').on('change', function(){
        var option = $('#resChoiceBox option:selected');
        if ( option == true ){
            $('.beforeSearchDining').hide();
            $('.afterSearchDining').show();
        } else {
            $('.beforeSearchDining').hide();
            $('.afterSearchDining').show();
        }
    });
    //스테이 선택 시, 생상 변환
    $('.diningStay_N .hCon ul li a').on('click', function () {
        $('.diningStay_N .hCon ul li a').removeClass('on');
        $(this).addClass('on');
    });
    //step0 신라스테이 선택 시, 신라스테이 다이닝 목록 팝업활성
    $('.btnCallStay').on('click', function(){
        $('.diningStay_N, .mdScreen').show();
        pc.layerPopup.lockScroll();
    });
    //step0 신라스테이 닫기
    $('.btnStayClose').on('click', function(){
        $('.diningStay_N, .mdScreen').hide();
        pc.layerPopup.unLockScroll();
    });

    // 라디오 버튼 활성화, 비활성화
    $(document).ready(function(){
        $('input[disabled="disabled"]').parents('div.disabled').next('label').css({ 'color':'#aaa'}); //disabled
        $('input[disabled="disabled"]').parents('span').addClass('disabled'); //disabled 아이콘

        // var target = $('.diningAreaCh li');
        // target.on('click', function(){

        //     $(this).find('label').css({ 'color':'#856f56'}); //checked 된 label
        //     target.not( $(this) ).find('label').css({ 'color':'#333'}); //checked 아닌 label
        // });
    });





});

