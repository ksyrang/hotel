// JavaScript Document
////////////// 팝업들 /////////////////

function popupSample() {// 샘플팝업
	window.open('../COMMON/popup.html','popupSample','scrollbars=no,width=800,height=540,left=100,top=100,resizable=yes');
}

$(document).ready(function () {

	$(".head").addClass("headHub");
	$(".mainWrap").addClass("mainWrapHub");
	$(".subWrap").addClass("subWrapHub");
	$(".foot").addClass("footHub");

	$("input:disabled").addClass("disabled");
	$("textarea:disabled").addClass("disabled");
	$("input:checkbox").addClass("checkbox");
	$("input:radio").addClass("radio");

	$("input:text").add("input:password").add("textarea").on({
	  focus: function() {
		$(this).addClass("focus");
	  },
	  blur: function() {
		$(this).removeClass("focus");
	  },
	  mouseover: function() {
		$(this).addClass("hover");
	  },
	  mouseout: function() {
		$(this).removeClass("hover");
	  }
	});

	//입력폼에 자동완성차단
	uiAutocompleteOff = function(){
		$("input").attr("autocomplete","off");
		$("textarea").attr("autocomplete","off");
	}
	uiAutocompleteOff();

	//기본 UL태그  첫li.first  끝li.last
	ulListSet = function(){
		var ulList= $('ul');
		ulList.find("li:first-child").addClass("first");
		ulList.find("li:last-child").addClass("last");
	}
	ulListSet();


	tableTypeA = function(){
	var tableTypeA = $('.tableTypeA');
	tableTypeA.find(" tbody tr:first").addClass("first");
	tableTypeA.find(" tbody tr:last").addClass("last");

	tableTypeA.find("tr td:first").addClass("first");
	tableTypeA.find("tr td:last").addClass("last");
	tableTypeA.find("tr th:first").addClass("first");
	tableTypeA.find("tr th:last").addClass("last");
	}
	tableTypeA();


	tableTypeD = function(){
	var tableTypeD = $('.tableTypeD');
	tableTypeD.find(" tbody tr:first").addClass("first");
	tableTypeD.find(" tbody tr:last").addClass("last");
	var tableTypeDtr = $('.tableTypeD tr');
	tableTypeDtr.find("td:first").addClass("first");
	tableTypeDtr.find("td:last").addClass("last");
	tableTypeDtr.find("th:first").addClass("first");
	tableTypeDtr.find("th:last").addClass("last");
	}
	tableTypeD();

	tableCol = function(){
	var tableCol = $('table colgroup');
	tableCol.find("col:eq(0)").addClass("col1");
	tableCol.find("col:eq(1)").addClass("col2");
	tableCol.find("col:eq(2)").addClass("col3");
	tableCol.find("col:eq(3)").addClass("col4");
	tableCol.find("col:eq(4)").addClass("col5");
	tableCol.find("col:eq(5)").addClass("col6");
	tableCol.find("col:eq(6)").addClass("col7");
	tableCol.find("col:eq(7)").addClass("col8");
	tableCol.find("col:eq(8)").addClass("col9");
	tableCol.find("col:eq(9)").addClass("col10");
	}
	tableCol();


	// UiForm 적용 클래스들..
	//$("select.uiform , input.uiform , textarea.uiform").uniform();


	//모달 윈도우 배경//
	$(".mdScreen").height($(document).height() );
	$(window).resize(function() {
	 	$(".mdScreen").height($(document).height() )  ;
	});



	//헤더 탑바로가기 메뉴
	$(".destination a.btn").on("click",function(e){
		if($(".destination .list").is(":visible")){
			$(".destination .list").hide();
		}else{
			$(".destination .list").show();
		}
		e.stopPropagation();
	});
	$(document).click(function(){
		$(".destination .list").hide();
	});
	$(".destination .list").click(function(e){
		e.stopPropagation();
	});


	//한글 영어 일본어 중국어 메뉴
	$(".globalBox a.btn").on("click",function(e){
		if($(".globalBox .list").is(":visible")){
			$(".globalBox .list").hide();
			$(this).parent().removeClass('on');
		}else{
			$(".globalBox .list").show();
			$(this).parent().addClass('on');
		}

		$(".resvConBox a.btn").on("click",function(e){
            $(".language .globalBox .list").hide();
            $(".language .globalBox").removeClass('on');
		});
		
		e.stopPropagation();
        e.preventDefault();
	});
	$(document).click(function(){
		$(".globalBox .list").hide();
		$(".globalBox").removeClass('on');
	});
	// $(".globalBox .list").click(function(e){
	// 	e.stopPropagation();
	// });


	//find a hotel 메뉴
	$(".hotelBox a.btn").on("click",function(e){
		if($(".hotelBox .list").is(":visible")){
			$(this).parent().removeClass('on');
			$(".hotelBox .list").slideUp();
		}else{
			$(this).parent().addClass('on');
			$(".hotelBox .list").slideDown();
		}
		e.stopPropagation();
	});
	$(document).click(function(){
		$(".hotelBox .list").hide();
		$(".hotelBox").removeClass('on');
	});
	/*$(".hotelBox .list").click(function(e){
		e.stopPropagation();
	});*/

	//find a hotel 메뉴
	$(".hotelBox2 a.btn").on("click",function(e){
		if($(".hotelBox2 .list").is(":visible")){
			$(".hotelBox2 .list").hide();
		}else{
			$(".hotelBox2 .list").show();
		}
		e.stopPropagation();
	});
	$(document).click(function(){
		$(".hotelBox2 .list").hide();
	});
	$(".hotelBox2 .list").click(function(e){
		e.stopPropagation();
	});

	var bbsList = $('.bbsList');
	bbsList.find(" tbody tr:first").addClass("first");
	bbsList.find(" tbody tr:last").addClass("last");

	// 게시판리스트
	$(".bbsListLine tbody tr").hover(
		function() {
			$(this).addClass("hover");
		},
		function() {
			$(this).removeClass("hover");
		}
	);


	////gnbMenu 스크립트////
	var gnbMenuSm = $('.gnbMenu .sm ul');
	gnbMenuSm.find("li:last").addClass("last");

	var gnbMenu = $('.gnbMenu');
	gnbMenu.find('>ul>li>a')
	.mouseover(function(){
		gnbMenu.find('>ul>li>.sm:visible').hide()
		$(this).next('.sm').show()

		gnbMenu.find('>ul>li>a').removeClass("over")
		$(this).addClass("over");
		gnbMenu.find('>ul>li>a.on .sm').show()
	})
	.focus(function(){
		$(this).mouseover();
	})
	gnbMenu.find('>ul>li>.on')
	.mouseover(function(){
		$(this).next('.sm').show()
	})

	.focus(function(){
		$(this).mouseover();
	})
	.end()

	$('.gnbMenu .menu').mouseleave(function(){
		$('.gnbMenu ul li>a').next().hide();
		$('.gnbMenu ul li>a.on').next().show();
	});

	$(".btnGnbReservation").on("click",function(e){
		if($(".gnbReservationBox").is(":visible")){
			$(".gnbReservationBox").hide();
			$(this).attr("title" , "예약패널열기");
		}else{
			$(".gnbReservationBox").show();
			$(this).attr("title" , "예약패널닫기");
		}
		e.stopPropagation();
	});
	$(document).click(function(){
		$(".gnbReservationBox").hide();
	});
	$(".gnbReservationBox").click(function(e){
		e.stopPropagation();
	});



	$(".btnGnbReservation").on("mouseover focus",function(e){
		if($(".gnbReservationBox").is(":visible")){
			$(".btnGnbReservation").removeClass("on");
		}else{
			$(".gnbReservationBox").show();
			$(this).attr("title" , "예약패널닫기");
			$(".btnGnbReservation").addClass("on");
		}
		e.stopPropagation();
	});
	$(document).mouseover(function(){
		$(".gnbReservationBox").hide();
		$(".btnGnbReservation").removeClass("on");
	});
	$(".gnbReservationBox").mouseover(function(e){
		e.stopPropagation();
	});




	//푸터에있는 뉴스레터신청폼
	$(".newsLetter input.newsEmail").val("");
	$(".newsLetter input.newsEmail").on("focus", function(){
		var $idTxt = $(this).val();
		if ( $idTxt ==("") ) {
			$(this).addClass("uiFocus");
		}
	});
	$(".newsLetter input.newsEmail").on("blur", function(){
		var $idTxt = $(this).val();
		if ( $idTxt ==("") ) {
			$(this).val("");
			$(this).removeClass("uiFocus")
		}
	});


	/////////////////////////////////////



//	var bbsList = $('.bbsList');
//	bbsList.find("tbody tr:odd").addClass("odd");
//	bbsList.find(" tbody tr:first").addClass("first");
//	bbsList.find(" tbody tr:last").addClass("last");




/// 셀렉트메뉴 스크립 ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

	// Common
	var select_root = $('div.uiSelectA');
	var select_value = $('.myValue');
	var select_a = $('div.uiSelectA>ul>li>a');
	var select_input = $('div.uiSelectA>ul>li>input[type=radio]');
	var select_label = $('div.uiSelectA>ul>li>label');

	// Radio Default Value
	$('div.myValue').each(function(){
		var default_value = $(this).next('.iList').find('input[checked]').next('label').text();
		$(this).append(default_value);
	});

	// Line
	select_value.bind('focusin',function(){$(this).addClass('outLine');});
	select_value.bind('focusout',function(){$(this).removeClass('outLine');});
	select_input.bind('focusin',function(){$(this).parents('div.uiSelectA').children('div.myValue').addClass('outLine');});
	select_input.bind('focusout',function(){$(this).parents('div.uiSelectA').children('div.myValue').removeClass('outLine');});

	// Show
	function show_option(){
		$(this).parents('div.uiSelectA:first').toggleClass('open');
	}

	// Hover
	function i_hover(){
		$(this).parents('ul:first').children('li').removeClass('hover');
		$(this).parents('li:first').toggleClass('hover');
	}

	// Hide
	function hide_option(){
		var t = $(this);
		setTimeout(function(){
			t.parents('div.uiSelectA:first').removeClass('open');
		}, 1);
	}

	// Set Input
	function set_label(){
		var v = $(this).next('label').text();
		$(this).parents('ul:first').prev('.myValue').text('').append(v);
		$(this).parents('ul:first').prev('.myValue').addClass('selected');
	}

	// Set Anchor
	function set_anchor(){
		var v = $(this).text();
		$(this).parents('ul:first').prev('.myValue').text('').append(v);
		$(this).parents('ul:first').prev('.myValue').addClass('selected');
	}

	// Anchor Focus Out
	$('*:not("div.uiSelectA a")').focus(function(){
		$('ul').parent('.uiSelectA').removeClass('open');
	});

	select_value.click(show_option);
	select_root.find('ul').css('position','absolute');
	select_root.removeClass('open');
	select_root.mouseleave(function(){$(this).removeClass('open');});
	select_a.click(set_anchor).click(hide_option).focus(i_hover).hover(i_hover);
	select_input.change(set_label).focus(set_label);
	select_label.hover(i_hover).click(hide_option);

	// Form Reset
	$('input[type="reset"], button[type="reset"]').click(function(){
		$(this).parents('form:first').find('.myValue').each(function(){
			var origin = $(this).next('ul:first').find('li:first label').text();
			$(this).text(origin).removeClass('selected');
		});
	});


/// 셀렉트메뉴 스크립 끝////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////



	//첨부파일 선택 UI 공통
	$(".uiAttachFile .fileInput").on("change", function(){
		$(this).parent().parent().children(".fileLocation").val(this.value);
	});


		$('.btnRsvInner').on('click', function(){
		$(this).find('.btnRsv').toggleClass('on');
		$(this).parent('.rsvPriceWrap').next('.tab-menu').toggleClass('on');
	});


	$('.tab-list a').on('click', function(){
		$(this).toggleClass('on');
		$(this).siblings('.tab-content').toggleClass('active');
	});



	$('.addTit').on('click', function(){
	  $(this).removeClass('active');
	  $(this).parent().toggleClass('on');
	});

	//special offer
	/*var duration = 200;
	var $slideDesc = $('.pck .slideDesc');
	$('.pck a')
	.on('mouseover', function(){
		$(this).find('.slideDesc').stop().animate({
			opacity:1,
			top:'0'
		}, duration);
	})
	.on('mouseout', function(){
		$(this).find('.slideDesc').stop().animate({
			opacity:0,
			top:'0'
		}, duration);
	});*/

	//main resevation selArea
	$('.selArea ul li').on('click', function(){

		if(!jQuery(this).hasClass("rsvInput")){
			if(jQuery(".rsvCalendarDate").is(":visible")){
				jQuery(".rsvCalendarDate").toggleClass('on');
			}
			$(this).addClass('on').siblings().removeClass('on').children().removeClass('jsSelect_on');
		}else{
			$(this).addClass('on').siblings().removeClass('on').children().removeClass('jsSelect_on');
		}
	});

	/*footer brand*/
	// $('.brand dt').on('mouseenter', function(){
	// 	$(this).parent().addClass('on');
	// 	$('.brand dd').fadeIn();
	// });
	// $('.brand dl').on('mouseleave', function(){
	// 	$(this).removeClass('on');
	// 	$('.brand dd').fadeOut();
	// });

	/*guideText*/
	$('.guideText').each(function(){
		var guideText = this.defaultValue;
		var element = $(this);
		element.focus(function(){
			if(element.val()===guideText){
				element.val('');
				element.removeClass('guide');
			}
		});
		element.blur(function(){
			if(element.val()===''){
				element.val(guideText);
				element.addClass('guide');
			}
		});
		if(element.val()===guideText){
			element.addClass('guide');
		}
	});

	$('.warnBalloon').on('mouseover', function(){
		$(this).children('.warnBalloonInner').addClass('on')
	}).on('mouseout', function(){
		$(this).children('.warnBalloonInner').removeClass('on')
	});
	
	$('.btnQuestion').on('mouseover', function(){
		$(this).children('.warnBalloonBox').addClass('on')
	}).on('mouseout', function(){
		$(this).children('.warnBalloonBox').removeClass('on')
	});
});