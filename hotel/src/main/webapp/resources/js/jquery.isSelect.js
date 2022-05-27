/*
 * jsSelect loose (dohoons, 201011, 201105, 201112)
 *
 * example	: <select class="jsSelect:className" style="width:150px;">
 * event	: onclick, onchange
 * reset	: target.jsSelect();
 * remove	: target.jsSelect('remove');
 *
 * jquery 1.7.1
 * http://dohoons.com/
 */
$(document).ready(function() {
	$('select[class*="jsSelect:"]').each(function() {
		$(this).jsSelect(); // Run
	});
});

$.fn.jsSelect = function (mode) {

	if(mode == "remove") { // 삭제 모드
		this.next().remove();
		this.remove();
		return false;
	}

	var _this = this;
	var className = (function(t) { // 클래스이름
		var classArray = t.split(' ');
		for(var i = 0; i < classArray.length; i++) {
			if(classArray[i].indexOf('jsSelect:') != -1) t = classArray[i].replace(/jsSelect:/,'');
		}
		return t;
	})(this.attr("class"));

	//this.addClass("hide"); // 셀렉트박스 가리기 (display:none 시키지 않고 멀리 보냄)
	this.hide(); // 셀렉트박스 가리기

	if(className == this.next().attr("class")) { // 기존에 존재한다면 제거하고 다시 생성
		this.next().remove();
	}

	// 셀렉트박스 뒤에 에뮬레이트 엘리먼트 추가
	this.after(
		'<div class="' + className + '"><a href="javascript:void(0)" role="button" class="trigger" aria-label="Select your option">' +
		'<div class="bg_left"></div><div class="bg_right"></div>' +
		'<div class="value"></div></a><div class="itemList">' +
		'<div class="bg_lt"></div><div class="bg_rt"></div><div class="bg_lb"></div><div class="bg_rb"></div>' +
		'<ul></ul></div></div>'
	);

	var obj = this.next(); // 생성된 객체
	var checked = this.get(0).selectedIndex; // 셀렉트박스 인덱스
	var inputVal = obj.find("div.value"); // value division

	obj.css("width", this.get(0).style.width); // 가로길이 지정

	// 셀렉트박스 옵션 내용대로 항목 추가
	this.find("option").each(function () {
		obj.find(".itemList ul").append('<li><a href="#">' + $(this).html() + '</a></li>');
	});

	if(Boolean(checked)) { // 값이 이미 선택되어 있으면
		inputVal.html(this.find("option").eq(checked).html()); // 해당값을 value division 에 추가
	} else { // 선택값이 없다면
		inputVal.html(this.find("option").eq(0).html()); // 첫번째 값을 value division 에 추가하고
		_this.get(0).selectedIndex = 0; // 셀렉트박스 인덱스도 첫번째 값으로 변경
	}

	// 셀렉트박스 토글
	obj.toggle(function() {
		$(this).toggleClass("jsSelect_on");
	}, function() {
		$(this).toggleClass("jsSelect_on");
	});

	// 아이템 항목 클릭
	obj.find(" .itemList ul li a").bind("click", function() {
		change_value($(this).parent().index());

		_this.change(); // 셀렉트박스 이벤트 실행
		obj.find('.trigger').focus();
		obj.toggleClass("jsSelect_on"); // 셀렉트박스 토글

		return false;
	});

	// 아이템 항목 롤오버
	obj.find(" .itemList ul li").bind("mouseenter mouseleave", function(e) {
		if(e.type == "mouseenter") {
			$(this).addClass("on");
		} else {
			$(this).removeClass("on");
		}
	});

	// 셀렉트박스 값 변경되면
	_this.bind("change", function(e) {
		change_value(this.selectedIndex);
	});

	// 셀렉트박스 클릭
	obj.find('.trigger').bind("click", function() {
		_this.click(); // 셀렉트박스 이벤트 실행
	});

	// 항목 변경
	function change_value(i) {
		_this.get(0).selectedIndex = i; // 셀렉트박스 인덱스 변경
		obj.find("div.value").html(_this.find("option").eq(i).html()); // value division 값 변경
	}

	return false;
};