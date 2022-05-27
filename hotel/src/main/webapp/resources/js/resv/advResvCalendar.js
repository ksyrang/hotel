(function ($, undefined) {

	$.extend($.ui, { advResvCalendar: { version: "1.10.0" } });

	var dpuuid = new Date().getTime();

	function AdvResvCalendar() {
		this._today = null; // today date
		this._prevDate = null; // prev date
		this._prevYear = null; // prev year(yy)
		this._prevMonth = null; // pre month(mm)
		this._nextDate = null; // next date
		this._nextYear = null; // next year(yy)
		this._nextMonth = null; // next month(mm)
		this._isMain = null;
		this._clickCnt = 0; // click count
		this._selCkInDate = null; // selected ckin
		this._selCkOutDate = null; // selected ckout
		this._tmpCkIndate = null; //select chkin
		this._tmpCkOutdate = null; //select chkout

		this._limitCnt = 7; // avail day list

		this._lang = 'ko'; // oks 추가 2019-10-21 어권 추가
		this._CalPlg = null; 
		
		this._defaults = { // Global defaults for all the date picker instances
			calDiv: null,
			ckinYmdId: null,
			ckoutYmdId: null,
			nightCnt: null,
			resvDateInfoId: null,
			ckinYmdInfoId: null,
			ckoutYmInfodId: null,
			nightCntInfoId: null,
			nightCntClass: 'tip',
			selDateClass: 'selDate',
			chkInClass: 'sd_first',
			chkOutClass: 'sd_last',
			isMain: null,
			today: null,
			lang: null //어권
		};
	};

	$.extend(AdvResvCalendar.prototype, {

		/* Override the default settings for all instances of the date picker.
		 * @param  settings  object - the new settings to use as defaults (anonymous object)
		 * @return the manager object
		 */
		setDefaults: function (settings) {
			$.extend(this._defaults, settings || {});
			for (var name in settings) {
				if (settings[name] == null) {
					this._defaults[name] = settings[name];
				}
			}
			// oks 추가 2019-10-21 어권 추가
			this._lang = this._defaults.lang == null ? this._lang : this._defaults.lang;

			var parts = this._defaults.today.split('-');

			this._today = new Date(parts[0], parts[1] - 1, 1); // 오늘 날짜 date 셋팅
			this._prevDate = this._today; // 이전(혹은 현재) 날짜 date 셋팅
			this._prevYear = this.formatDate('yy', this._prevDate); // 이전(혹은 현재) 년도
			this._prevMonth = this.formatDate('mm', this._prevDate); // 이전(혹은 현재) 월
			this._nextDate = this.addMonths(this._prevDate, 1);
			this._nextYear = this.formatDate('yy', this._nextDate); // 다음 년도
			this._nextMonth = this.formatDate('mm', this._nextDate); // 다음 월

			this.$calDiv = $("#" + this._defaults.calDiv);
			this.today = this._defaults.today;
			this.baseDate = this.today;
			var posbAheadDy = $("#resvPosbAheadDyCnt").val();
			if (parseInt(posbAheadDy) > 0) {
				this.baseDate = this.addDates(this.today, parseInt(posbAheadDy));
				this.baseDate = this.formatDate('yy-mm-dd', this.baseDate);
			}

			this._bindEvent();

			return this;
		},

		createCalendar: function (_isResetChkDate) {
			var isResetChkDate = _isResetChkDate;
			if (isResetChkDate === undefined) {
				isResetChkDate = true;
				this._clickCnt = 0;
			}
			// oks 2019-11-03
			if(isResetChkDate != false && this._tmpCkIndate != null && this._tmpCkOutdate == null){
				this._tmpCkIndate = null;
				this._tmpCkOutdate = null;
				this._clickCnt--;
			}
			
			if (this._clickCnt % 2 == 0) {
				this._clickCnt = 0; // click count
			}

			//칼렌더 다시그리기
			this.$calDiv.html(this.getCalendarHtml());

			this.$nigthDay = this.$calDiv.find('.' + this._defaults.nightCntClass);
			this.$today = $("span#" + this.today);

			//체크인, 체크아웃 날짜 설정
			if (isResetChkDate) {
				var chkinDate;
				var chkinVal = $("#" + this._defaults.ckinYmdId).val();
				if (chkinVal === "") {
					chkinDate = this.baseDate;
				} else {
					chkinDate = chkinVal;
				}
				this._selCkInDate = chkinDate;
				this._tmpCkIndate = this._selCkInDate;

				var chkoutDate;
				var chkoutVal = $("#" + this._defaults.ckoutYmdId).val();

				if (chkoutVal === "") {
					chkoutDate = this.addDates(this.baseDate, 1);
					chkoutDate = this.formatDate('yy-mm-dd', chkoutDate);
				} else {
					chkoutDate = chkoutVal;
				}
				this._selCkOutDate = chkoutDate;
				this._tmpCkOutdate = this._selCkOutDate;
			}

			this._setAvailDay();
		},
		_bindEvent: function () {
			var oSelf = this;

			//달력 열기 
			$(document).off('click.btnCal');
			$(document).on('click.btnCal', '.btnCalShow', $.proxy(this._onClickBtnCal, this));

			// Prev
			this.$calDiv.off('click.btnPrev');
			this.$calDiv.on('click.btnPrev', ".btnCalPrev", function () {
				oSelf._refreshCalendar(-1);
			});

			// Next
			this.$calDiv.off('click.btnNext');
			this.$calDiv.on('click.btnNext', ".btnCalNext", function () {
				oSelf._refreshCalendar(1);
			});

			// 날짜 선택
			this.$calDiv.off('click.calDate');
			this.$calDiv.on('click.calDate', ".rNoDate, .rDate", $.proxy(this._selResvDate, this));

			//날짜 마우스 오버 시 -> 숙박 일수 표기
			this.$calDiv.off('mousemove.showTip');
			this.$calDiv.on('mousemove.showTip', $.proxy(this._mouseMoveShowTip, this));

			//확인 버튼 클릭 시 -> 달력 닫기
			this.$calDiv.off('click.closeCalDiv');
			this.$calDiv.on('click.closeCalDiv', '.btnSubmit', $.proxy(this._onClickCloseCalDiv, this));

			//달력 영역 밖 클릭 시 -> 달력 닫기
			$(document).off('mousedown.externalCalDiv');
			$(document).on('mousedown.externalCalDiv', $.proxy(this._onMouseDownExternalCalDiv, this));
		},
		_refreshCalendar: function (period) {
			// oks
			this._CalPlg = period;
			
			this._prevDate = new Date(this._prevYear, (this._prevMonth - 1) + period, 1); // 이전 date
			this._prevYear = this.formatDate('yy', this._prevDate); // 이전 년도
			this._prevMonth = this.formatDate('mm', this._prevDate); // 이전 월

			this._nextDate = new Date(this._prevYear, this._prevMonth, 1); // 다음 date
			this._nextYear = this.formatDate('yy', this._nextDate); // 다음 년
			this._nextMonth = this.formatDate('mm', this._nextDate); // 다음 월

			this.createCalendar(false);
		},
		/* 칼렌더 다시그리기 */
		getCalendarHtml: function () {

			var calHtml = "";

			calHtml += "<div class=\"calendarRsvBox\">";

			//달력 왼쪽 네비 게이션
			calHtml += this._getPrevNavHtml();

			// 왼쪽 달력			
			calHtml += "<div class=\"calendarReserve calendarPrev\">";
			calHtml += "<div class=\"datePrev\">";
			calHtml += "<span class=\"calYear\">" + this._prevYear + ".</span>" + this._prevMonth;
			calHtml += "</div>";
			calHtml += this._getCalendarTableHtml(this._prevYear, this._prevMonth);

			//숙박 일
			calHtml += "<span class='" + this._defaults.nightCntClass + "' />";
			calHtml += "</div>";

			// 오른쪽 달력
			calHtml += "<div class=\"calendarReserve calendarNext\">";
			calHtml += "<div class=\"datePrev\">";
			calHtml += "<span class=\"calYear\">" + this._nextYear + ".</span>" + this._nextMonth;
			calHtml += "</div>";
			calHtml += this._getCalendarTableHtml(this._nextYear, this._nextMonth);
			calHtml += "</div>";

			//달력 오른쪽 네비 게이션
			calHtml += this._getNextNavHtml();
			calHtml += "</div>";

			//달력 메인 하단 버튼
			calHtml += "<div class=\"btnList\">";
			// oks 추가 2019-10-21 어권 추가
			calHtml += "<a href=\"#none\" class=\"btnSubmit\"><img src=\"/images/" + this._lang + "/mem/new_2019/reserve_step1_ok.gif\" alt=\"확인\"></a>";
			calHtml += "<a href=\"#none\" class=\"btnSubmit\" style=\"display:none\"><img src=\"/images/" + this._lang + "/mem/new_2019/reserve_step1_ok_disable.gif\" alt=\"확인\"></a><!--비활성화-->";
			calHtml += "</div>";

			return calHtml;
		},

		/* pre, next 네비게이션 html 생성. */
		_getNavHtml: function () {

			var navHtml = "";
			var prevClassNm = "btnPrev";
			var nextClassNm = "btnNext";

			if (this.formatDate('yy', this._today) == this._prevYear && this.formatDate('mm', this._today) == this._prevMonth) {
				prevClassNm = "btnPrevDisable";
			}

			// 다음 달력 이동 버튼 제어
			var tempDate = this.formatDate('yy-mm-dd', this._today);
			var nextBasicDate = this.addDates(tempDate, 365);
			if (this._nextYear == this.formatDate('yy', nextBasicDate) && this._nextMonth == this.formatDate('mm', nextBasicDate)) {
				nextClassNm = "btnNone";
			}

			navHtml += "<div class=\"dateNav\">";
			navHtml += "	<div class=\"datePrev\"><a class=\"" + prevClassNm + "\" href=\"javascript:;\" ><span class=\"calYear\">" + this._prevYear + ".</span>" + this._prevMonth + "</a></div>";
			navHtml += "	<div class=\"dateNext\"><a class=\"" + nextClassNm + "\" href=\"javascript:;\"><span class=\"calYear\">" + this._nextYear + ".</span>" + this._nextMonth + "</a></div>";
			navHtml += "</div>";

			return navHtml;
		},
		/* pre 네비게이션 html 생성. */
		_getPrevNavHtml: function () {
			var navHtml = "";
			var prevClassNm = "btnCalPrev";

			if (this.formatDate('yy', this._today) == this._prevYear && this.formatDate('mm', this._today) == this._prevMonth) {
				prevClassNm = "btnPrevDisable";
			}

			navHtml += "<a class=" + prevClassNm + " href=\"javascript:;\">";
			navHtml += "	<span>Prev</span>";
			navHtml += "</a>";
			return navHtml;
		},
		/* next 네비게이션 html 생성. */
		_getNextNavHtml: function () {
			var navHtml = "";
			var nextClassNm = "btnCalNext";

			// 다음 달력 이동 버튼 제어
			var tempDate = this.formatDate('yy-mm-dd', this._today);
			var nextBasicDate = this.addDates(tempDate, 365);
			if (this._nextYear == this.formatDate('yy', nextBasicDate) && this._nextMonth == this.formatDate('mm', nextBasicDate)) {
				nextClassNm = "btnNextDisable";
			}

			navHtml += "<a class=" + nextClassNm + " href=\"javascript:;\">";
			navHtml += "	<span>Next</span>";
			navHtml += "</a>";
			return navHtml;
		},
		_getCalendarTableHtml: function (drawYear, drawMonth) {

			var tableHtml = "";
			tableHtml += "    <table summary='" + messages["javascript.calendar.table.summary"] + "'>";
			tableHtml += "      <caption>" + messages["javascript.calendar.table.caption"].replaceMsg([drawYear + '.' + drawMonth]) + "</caption>";
			tableHtml += "      <thead>";
			tableHtml += "        <tr>";
			tableHtml += "          <th class='sun' scope='col'><span>" + messages["javascript.calendar.table.col.sun"] + "</span></th>";
			tableHtml += "          <th class='mon' scope='col'><span>" + messages["javascript.calendar.table.col.mon"] + "</span></th>";
			tableHtml += "          <th class='tue' scope='col'><span>" + messages["javascript.calendar.table.col.tue"] + "</span></th>";
			tableHtml += "          <th class='wed' scope='col'><span>" + messages["javascript.calendar.table.col.wed"] + "</span></th>";
			tableHtml += "          <th class='thu' scope='col'><span>" + messages["javascript.calendar.table.col.thu"] + "</span></th>";
			tableHtml += "          <th class='fri' scope='col'><span>" + messages["javascript.calendar.table.col.fri"] + "</span></th>";
			tableHtml += "          <th class='sat' scope='col'><span>" + messages["javascript.calendar.table.col.sat"] + "</span></th>";
			tableHtml += "        </tr>";
			tableHtml += "      </thead>";
			tableHtml += "      <tbody>";

			// td loop
			var month = parseInt(drawMonth) - 1;
			var dayOfMonth = 1;
			var daysInMonth = this._getDaysInMonth(drawYear, month); // 마지막 날

			// tr loop
			for (var row = 0; row < 6; row++) {

				var trClassNm = "";
				if (row == 0) trClassNm = "class='first'"; else if (row == 5) trClassNm = "class='last'"; else trClassNm = '';

				tableHtml += "        <tr " + trClassNm + ">";

				for (var col = 0; col < 7; col++) {

					if (col == 0) tdClassNm = "class='sun'"; else if (col == 6) tdClassNm = "class='sat'"; else tdClassNm = '';

					tableHtml += "<td " + tdClassNm + ">";

					if (col == this.getDayOfWeek(drawYear, month, dayOfMonth) && dayOfMonth <= daysInMonth) {

						var spanClassNm = "";
						var idDate = this.formatDate('yy-mm-dd', new Date(drawYear, month, dayOfMonth));

						if (this._defaults.today == idDate) {
							spanClassNm = "class='today'";
						} else if (this._defaults.today > idDate) {
							spanClassNm = "class='rNoDate'";
						}

						tableHtml += "<span id=" + idDate + " " + spanClassNm + ">";
						tableHtml += "<a>";
						tableHtml += dayOfMonth;
						tableHtml += "</a>";
						tableHtml += "</span>";
						dayOfMonth++;
					} else {
						tableHtml += "<span>&nbsp;</span>";
					}

					tableHtml += "</td>";

				} // end of day

				tableHtml += "        </tr>";
			} // end of row

			tableHtml += "      </tbody>";
			tableHtml += "    </table>";

			return tableHtml;
		},

		_setAvailDay: function () {
			//선택 가능 일자 체크 설정 (체크인 30일 이후 는 선택 불가)
			this._setCssRDate();

			//체크인, 체크아웃 날짜 선택
			this._setCssSelDate();

			$('.opacity').hide();
			$('.re-loader').hide();
		},
		_selResvDate: function (e) {
			this._clickCnt++;
			var id = $(e.currentTarget).attr("id");
			var daySpan = $("span#" + id);

			if (this._clickCnt == 1) { // 체크인 클릭

				if (daySpan.hasClass("rDate")) { //예약가능일자면
					this._tmpCkIndate = id;
					this._tmpCkOutdate = null;
					this._tmpChkInDate = this._fnGetDay(this._tmpCkIndate);

					//선택 가능 일자 체크 설정 (체크인 30일 이후 는 선택 불가)
					this._setCssRDate();

					//체크인, 체크아웃 날짜 선택
					this._setCssSelDate();
				} else {
					alert(messages["javascript.calendar.resv.msg.not.ckin"]);
					this._clickCnt--;
				}

			} else if (this._clickCnt == 2 && this._tmpCkIndate != null) { //체크아웃 클릭
				var chkOutDate = id;
				var cnt = this._getDiffOfDate(this._tmpCkIndate, chkOutDate);

				if (daySpan.hasClass("rDate")) { //예약가능일자면

					if (cnt > 30) {
						this._clickCnt--;
						alert(messages["javascript.calendar.day.over"].replace("{0}", "30"));
						return;
					}

					if (cnt > 0) {
						// 선택한 예약일자 중에 예약이 불가능한 날짜가 포함 체크
						this._checkNoDate(chkOutDate);

						var packItNightCnt = $("#packItNightCnt") ? $("#packItNightCnt").val() : null;
						if (packItNightCnt != null && packItNightCnt > 0 && packItNightCnt != cnt) {
							this._clickCnt--;
							alert(messages["javascript.calendar.resv.msg.pack.night.cnt"].replaceMsg([packItNightCnt]));
							return;
						} else {
							this._tmpCkOutdate = id;
							this._selCkInDate = this._tmpCkIndate;
							this._selCkOutDate = this._tmpCkOutdate;

							//선택 불 가능 일자 체크 -> 선택 가능 일자 변환
							this._resetCssRDate();

							// 체크인,아웃기간 class 적용
							this._setCssSelDate();

							//숙박일 숨김
							this.$nigthDay.hide();

							//input box 값 셋팅
							this._setCalInpVal(cnt);

							//달력 닫기
							if ($("#" + this._defaults.calDiv).hasClass("on")) {
								$("#" + this._defaults.calDiv).removeClass("on");
							}
						}
					} else if (cnt == 0) {
						this._clickCnt = 1;

					} else {
						// 체크인날짜보다 같거나 적은 날짜 선택시
						this._clickCnt = 0;
						$(daySpan).trigger('click');
					}

				} else { //예약 불 가능일자면
					this._clickCnt--;
					if (cnt > 30) {
						alert(messages["javascript.calendar.day.over"].replace("{0}", "30"));
						return;
					}

					var packItNightCnt = $("#packItNightCnt") ? $("#packItNightCnt").val() : null;

					if (
						(cnt > 0) &&
						(packItNightCnt != null) &&
						(packItNightCnt > 0) &&
						(packItNightCnt != cnt)
					) {
						alert(messages["javascript.calendar.resv.msg.pack.night.cnt"].replaceMsg([packItNightCnt]));
						return;
					} else {
						alert(messages["javascript.calendar.resv.msg.not.ckout.end"]);
						return;
					}
				}


			} else { // 두번클릭이상이면
				if (daySpan.hasClass("rDate")) { //예약가능일자면
					this._resetSelDateClass();
					//체크인 클릭				
					daySpan.trigger('click');
				} else {
					alert(messages["javascript.calendar.resv.msg.not.ckin"]);
					this._clickCnt--;
					return false;
				}
			}
		},

		//첫번째 날짜 값 검증(memIndex)
		_selResvDate3_1: function (id) {
			this._selCkInDate = id;

			return true;

		},

		//두번째 날짜 값 검증(memIndex)
		_selResvDate3_2: function (id) {
			this._selCkOutDate = id;

			// 체크인,아웃기간 class 적용
			var cnt = this._getDiffOfDate(this._selCkInDate, this._selCkOutDate);

			if (cnt > 30) {

				alert(messages["javascript.calendar.day.over"].replace("{0}", "30"));

				return false;


			}

			if (cnt > 0) {

				var packItNightCnt = $("#packItNightCnt") ? $("#packItNightCnt").val() : null;

				if (packItNightCnt != null && packItNightCnt > 0 && packItNightCnt != cnt) {
					alert(messages["javascript.calendar.resv.msg.pack.night.cnt"].replaceMsg([packItNightCnt]));
					return false;
				} else {

					var chkcnt = 0;
					for (var j = 0; j <= cnt; j++) {
						aDate = this.addDates(this._selCkInDate, j);
						sId = this.formatDate('yy-mm-dd', aDate);
						var daySpan = $("span#" + sId).hasClass("rNoDate");
						if (daySpan) {
							chkcnt++;
						}
					} // end of for

					// 선택한 예약일자 중에 예약이 불가능한 날짜가 포함되어 있습니다.
					if (chkcnt > 1) {
						alert(messages["javascript.calendar.resv.msg.not.ckout.end"]);
						return false;
					}


					return true;
				}

			} else {
				// 체크인날짜보다 같거나 적은 날짜 선택시 
				alert(messages["javascript.calendar.resv.msg.not.ckout.prev"]);
				return false;
			}
		},

		//첫번째 날짜 값 검증
		_selResvDate2_1: function (id) {
			var daySpan = $("span#" + id);

			if (daySpan.hasClass("rDate")) { //예약가능일자면
				this._selCkInDate = id;

				return true;

			} else {
				alert(messages["javascript.calendar.resv.msg.not.ckin"]);

				return false;

			}

		},

		//두번째 날짜 값 검증
		_selResvDate2_2: function (id) {
			var aDate = null, sId = "";
			var daySpan = $("span#" + id);

			if (daySpan.hasClass("rDate")) { //예약가능일자면

				this._selCkOutDate = id;

				// 체크인,아웃기간 class 적용
				var cnt = this._getDiffOfDate(this._selCkInDate, this._selCkOutDate);

				if (cnt > 30) {

					alert(messages["javascript.calendar.day.over"].replace("{0}", "30"));

					return false;


				}

				if (cnt > 0) {

					var packItNightCnt = $("#packItNightCnt") ? $("#packItNightCnt").val() : null;

					if (packItNightCnt != null && packItNightCnt > 0 && packItNightCnt != cnt) {
						alert(messages["javascript.calendar.resv.msg.pack.night.cnt"].replaceMsg([packItNightCnt]));
						return false;
					} else {

						var chkcnt = 0;
						for (var j = 0; j <= cnt; j++) {
							aDate = this.addDates(this._selCkInDate, j);
							sId = this.formatDate('yy-mm-dd', aDate);
							var daySpan = $("span#" + sId).hasClass("rNoDate");
							if (daySpan) {
								chkcnt++;
							}
						} // end of for

						// 선택한 예약일자 중에 예약이 불가능한 날짜가 포함되어 있습니다.
						if (chkcnt > 1) {
							alert(messages["javascript.calendar.resv.msg.not.ckout.end"]);
							return false;
						}
						return true;
					}

				} else {
					// 체크인날짜보다 같거나 적은 날짜 선택시 
					alert(messages["javascript.calendar.resv.msg.not.ckout.prev"]);
					return false;
				}

			} else {
				this._selCkOutDate = id;

				// 체크인,아웃기간 class 적용
				var cnt = this._getDiffOfDate(this._selCkInDate, this._selCkOutDate);

				if (cnt > 30) {

					alert(messages["javascript.calendar.day.over"].replace("{0}", "30"));

					return false;


				}

				if (cnt > 0) {

					var packItNightCnt = $("#packItNightCnt") ? $("#packItNightCnt").val() : null;

					if (packItNightCnt != null && packItNightCnt > 0 && packItNightCnt != cnt) {
						alert(messages["javascript.calendar.resv.msg.pack.night.cnt"].replaceMsg([packItNightCnt]));
						return false;
					} else {

						var chkcnt = 0;
						for (var j = 0; j <= cnt; j++) {
							aDate = this.addDates(this._selCkInDate, j);
							sId = this.formatDate('yy-mm-dd', aDate);
							var daySpan = $("span#" + sId).hasClass("rNoDate");
							if (daySpan) {
								chkcnt++;
							}
						} // end of for
						return true;
					}

				} else {
					// 체크인날짜보다 같거나 적은 날짜 선택시 
					alert(messages["javascript.calendar.resv.msg.not.ckout.prev"]);
					return false;
				}
			}

		},

		/* 선택한 날짜 초기화. */
		_resetSelDate: function () {
			if (this._selCkOutDate != null) {

				var today = this._defaults.today;

				var cnt = this._getDiffOfDate(this._tmpCkIndate, this._selCkOutDate);

				for (var i = 0; i <= cnt; i++) {
					var aDate = this.addDates(this._tmpCkIndate, i);
					var sId = this.formatDate('yy-mm-dd', aDate);
					$("span#" + sId).removeClass("selDate");
					if (sId == today) {
						$("span#" + sId).addClass("today");
					}

				} // end of for
			} else {
				$("span#" + this._tmpCkIndate).removeClass("selDate");
				if (this._tmpCkIndate == today) {
					$("span#" + this._tmpCkIndate).addClass("today");
				}
			}
			this._selCkInDate = null;
			this._tmpCkIndate = null;
			this._selCkOutDate = null;
			this._clickCnt = 0;
			$("#" + this._defaults.ckinYmdId).val(""); // 체크인날짜
			$("#" + this._defaults.ckoutYmdId).val("");// 체크아웃 날짜
			$("#" + this._defaults.nightCntId).val(""); // 숙박일수

			// 예약화면에서 예약날짜 정보 셋팅
			if ($("#" + this._defaults.resvDateInfoId)) {
				$("#" + this._defaults.ckinYmdInfoId).text("");
				$("#" + this._defaults.ckoutYmInfodId).text("");
				$("#" + this._defaults.nightCntInfoId).text(0);
				$("#" + this._defaults.resvDateInfoId).hide();
			}


		},
		/* 선택한 날짜 클래스 초기화. */
		_resetSelDateClass: function () {
			if (this._selCkOutDate != null) {

				var today = this._defaults.today;
				var selDateClass = this._defaults.selDateClass;
				var cnt = this._getDiffOfDate(this._tmpCkIndate, this._selCkOutDate);

				for (var i = 0; i <= cnt; i++) {
					var aDate = this.addDates(this._tmpCkIndate, i);
					var sId = this.formatDate('yy-mm-dd', aDate);
					$("span#" + sId).attr("class", "rDate");
					$("span#" + sId).find('.txt').remove();

					if (sId == today) {
						$("span#" + sId).addClass("today");
					}

				} // end of for
			} else {
				$("span#" + this._tmpCkIndate).removeClass(selDateClass);
				if (this._tmpCkIndate == today) {
					$("span#" + this._tmpCkIndate).addClass("today");
				}
			}
			this._clickCnt = 0;
			this._tmpCkIndate = null; //시작일 초기화
			this._tmpCkOutdate = null; //시작일 초기화
		},

		/* 날짜일수 조회. */
		_getDiffOfDate: function (startDate, endDate) {

			var d1 = this.parseDate('yy-mm-dd', startDate);
			var d2 = this.parseDate('yy-mm-dd', endDate);
			var count = d2 - d1;
			return Math.floor(count / (24 * 3600 * 1000));

		},

		_isLeapYear: function (year) {
			return (((year % 4 === 0) && (year % 100 !== 0)) || (year % 400 === 0));
		},

		_getDaysInMonth: function (year, month) {
			return [31, (this._isLeapYear(year) ? 29 : 28), 31, 30, 31, 30, 31, 31, 30, 31, 30, 31][month];
		},

		/* 해당월의 마지막 일자 조회. */
		getDaysInMonth: function (date) {
			return this._getDaysInMonth(date.getFullYear(), date.getMonth());
		},

		/* 요일 조회. */
		getDayOfWeek: function (year, month, day) {
			return new Date(year, month, day).getDay();
		},

		getLastDateOfMonth: function (date) {
			var newDate = new Date(date.getFullYear(), date.getMonth(), this.getDaysInMonth(date));
			/*newDate.setFullYear(date.getFullYear());
			newDate.setMonth(date.getMonth());
			newDate.setDate(this.getDaysInMonth(date));*/
			return newDate;
		},

		/* date에 month 추가. */
		addMonths: function (date, value) {
			var newDate = new Date(date.getFullYear(), date.getMonth() + value, 1);
			/*newDate.setFullYear(date.getFullYear());
			newDate.setDate(1);
			newDate.setMonth(date.getMonth() + value);*/
			return newDate;
		},

		addDates: function (strDate, value) {
			var parts = strDate.split('-');
			var d = new Date(parts[0], parts[1] - 1, parts[2]);

			var newDate = new Date(d.getFullYear(), d.getMonth(), d.getDate() + value);
			/*newDate.setFullYear(d.getFullYear());
			newDate.setDate(d.getDate()+value);
			newDate.setMonth(d.getMonth());*/
			return newDate;
		},

		parseDate: function (format, date) {

			var newDate = new Date();

			if ('yy-mm-dd' == format && date != '') {
				var parts = date.split('-');
				newDate = new Date(parts[0], parts[1] - 1, parts[2]);
			}

			return newDate;
		},

		/* date를 string date로 변환. */
		formatDate: function (format, date) {
			var strDate = "";
			if ('yy' == format) {
				strDate = date.getFullYear();
			} else if ('mm' == format) {
				strDate = (date.getMonth() + 1);
			} else if ('dd' == format) {
				date.getDate();
			} else if ('yy-mm-dd' == format) {
				strDate = date.getFullYear() + "-" + LPad((date.getMonth() + 1), 2, '0') + "-" + LPad(date.getDate(), 2, '0');
			}
			return strDate;
		},
		/* 선택한 예약일자 중에 예약이 불가능한 날짜가 포함 체크 */
		_checkNoDate: function (chkOutDate) {
			var cnt = this._getDiffOfDate(this._tmpCkIndate, chkOutDate);
			var chkcnt = 0;
			for (var j = 0; j <= cnt; j++) {
				aDate = this.addDates(this._tmpCkIndate, j);
				sId = this.formatDate('yy-mm-dd', aDate);
				var daySpan = $("span#" + sId).hasClass("rNoDate");

				if (daySpan) {
					chkcnt++;
				}
			} // end of for

			// 선택한 예약일자 중에 예약이 불가능한 날짜가 포함되어 있습니다.
			if (chkcnt > 0) {
				alert(messages["javascript.calendar.resv.msg.not.ckout.end"]);
				this._clickCnt = 1;

				//선택 부분 삭제 begin
				for (var i = 1; i <= cnt; i++) {
					aDate = this.addDates(this._tmpCkIndate, i);
					sId = this.formatDate('yy-mm-dd', aDate);
					$("span#" + sId).removeClass("selDate");
				} // end of for

				return;
			}

		},
		/* input box 값 셋팅 */
		_setCalInpVal: function () {
			var cnt = this._getDiffOfDate(this._tmpCkIndate, this._selCkOutDate);
			//input box 셋팅 - 체크인날짜							
			$("#" + this._defaults.ckinYmdId).val(this._selCkInDate);

			var ymd = this._selCkInDate;
			var ymdArry = ymd.split("-");
			if (ymdArry.length > 2) {
				jQuery("#ckinYy").text(ymdArry[0]);
				jQuery("#ckinMm").text(ymdArry[1]);
				jQuery("#ckinDd").text(ymdArry[2]);

				var dayStr = this._tmpChkInDate;
				var chkInDate = ymdArry[0] + '.' + ymdArry[1] + '.' + ymdArry[2] + " (" + dayStr + ")";
				$('#ckinDateInfo').text(chkInDate);
			}

			//input box 셋팅 - 체크아웃날짜	
			$("#" + this._defaults.ckoutYmdId).val(this._selCkOutDate);

			var ymd = this._selCkOutDate;
			var ymdArry = ymd.split("-");

			if (ymdArry.length > 2) {
				jQuery("#ckoutYy").text(ymdArry[0]);
				jQuery("#ckoutMm").text(ymdArry[1]);
				jQuery("#ckoutDd").text(ymdArry[2]);

				var dayStr = this._fnGetDay(this._selCkOutDate);
				var chkOutDate = ymdArry[0] + '.' + ymdArry[1] + '.' + ymdArry[2] + " (" + dayStr + ")";
				$('#ckoutDateInfo').text(chkOutDate);
			}
			// 숙박일수
			$("#" + this._defaults.nightCntId).val(cnt);

			// 예약화면에서 예약날짜 정보 셋팅
			if ($("#" + this._defaults.resvDateInfoId)) {
				$("#" + this._defaults.ckinYmdInfoId).text(this._selCkInDate);
				$("#" + this._defaults.ckoutYmInfodId).text(this._selCkOutDate);
				$("#" + this._defaults.nightCntInfoId).text(cnt + messages["javascript.calendar.night"]);
				$("#" + this._defaults.resvDateInfoId).show();
			}

			$("#" + this._defaults.ckinYmdId).trigger('change');

		},
		/* 날짜 마우스 오버 시 숙박 일수 표기 */
		_mouseMoveShowTip: function (e) {
			// 숙박 일 수 안내 팝업
			var lastDay, cnt;
			var rDate = $(e.target).closest('.rDate');
			var tipBox = $(e.target).closest('.' + this._defaults.nightCntClass);
			var selClass = this._defaults.selDateClass;
			var chkInClass = this._defaults.chkInClass;
			var chkOutClass = this._defaults.chkOutClass;
			if (
				(this._tmpCkOutdate === null) &&
				(rDate.length > 0)
			) {
				lastDay = rDate.attr('id');
				if (this._tmpCkIndate > lastDay) {
					lastDay = this._tmpCkIndate
				}
				cnt = this._getDiffOfDate(this._tmpCkIndate, lastDay);

				var calDiv = this._defaults.calDiv;
				//클래스 초기화
				$("#" + calDiv).find('.selDate').removeClass("sd_last");
				$("#" + calDiv).find('.selDate').removeClass("selDate");

				for (var i = 0; i <= cnt; i++) {
					aDate = this.addDates(this._tmpCkIndate, i);
					sId = this.formatDate('yy-mm-dd', aDate);
					$("span#" + sId).addClass(selClass);
				} // end of for

				$("span#" + this._tmpCkIndate).addClass(chkInClass);

				if (cnt > 0) {
					$("span#" + lastDay).addClass(chkOutClass);
				}
				this._showTipBox(cnt);

			} else if (
				(this._tmpCkOutdate !== null) ||
				((rDate.length === 0) && (tipBox.length === 0))
			) {
				this.$nigthDay.hide();
			}

		},
		/* 숙박 일 수 표기 위치 조정 */
		_showTipBox: function (cnt) {
			// 숙박 일수 안내 팝업 위치 조정
			if (cnt === 0) {
				this.$nigthDay.hide();
				return;
			}
			var calDiv = this._defaults.calDiv;
			this.$nigthDay.show();
			this.$nigthDay.text(cnt + messages["javascript.calendar.night"]);
			var orgPosY = $("#" + calDiv).offset().top;
			var orgPosX = $("#" + calDiv).offset().left;
			var tipCenterX = parseInt(this.$nigthDay.outerWidth() / 2) + 2;
			var dateCenterX = 14 + parseInt($("span#" + sId).find('>a').width() / 2);
			var centerX = tipCenterX - dateCenterX;
			var centerY = $('.tip').outerHeight() + 7;
			var tipPosY = $("span#" + sId).offset().top - orgPosY - centerY;
			var tipPosX = $("span#" + sId).offset().left - orgPosX - centerX;

			this.$nigthDay.css({
				'top': tipPosY,
				'left': tipPosX
			});
		},
		/* 선택 가능 일자 체크 설정 (체크인 30일 이후 는 선택 불가) */
		_setCssRDate: function () {
			var day = 30; //day 일 뒤 날짜 선택 불가
			var oSelf = this;
			var afterDays;
			var chkInDate = this._tmpCkIndate;

			if (this._tmpCkOutdate === null) {
				afterDays = this.addDates(chkInDate, day);
				afterDays = this.formatDate('yy-mm-dd', afterDays);
			}
			var dateId;
			this.$calDiv.find("tbody > tr > td").each(function () {
				dateId = $(this).find('span').attr('id');

				if (dateId === undefined) {
					return;
				}
				if (
					(oSelf.baseDate > dateId) ||
					(afterDays && (afterDays < dateId))
				) {
					jQuery(this).children().attr("class", "rNoDate");
					jQuery(this).children().attr("title", messages["javascript.calendar.resv.non.posb.date"]);
				} else {

					jQuery(this).children().attr("class", "rDate");
					jQuery(this).children().attr("title", messages["javascript.calendar.resv.posb.date"]);
					jQuery(this).children().find('a').attr("href", "javascript:;");
				}
			});
		},
		/* 선택 불 가능 일자 체크 -> 선택 가능 일자 변환 */
		_resetCssRDate: function () {
			var oSelf = this;
			var dateId;
			this.$calDiv.find("tbody > tr > td").find('.rNoDate').each(function () {
				dateId = $(this).attr("id");
				if (oSelf.baseDate < dateId) {
					$("span#" + dateId).attr("class", "rDate");
					$("span#" + dateId).attr("title", messages["javascript.calendar.resv.posb.date"]);
					$("span#" + dateId).find('a').attr("href", "javascript:;");
				}
			});
		},
		/* 체크인, 체크아웃, 오늘 날짜 선택 */
		_setCssSelDate: function () {
			// 체크인 , 체크 아웃 클래스 추가
			var selDateClass = this._defaults.selDateClass;
			var chkInClass = this._defaults.chkInClass;
			var chkOutClass = this._defaults.chkOutClass;
			var aSelDate, selDateCnt;

			var chkInDate = $("span#" + this._tmpCkIndate);
			chkInDate.addClass(selDateClass);
			chkInDate.addClass(chkInClass);

			if (this._tmpCkOutdate !== null) {
				selDateCnt = this._getDiffOfDate(this._selCkInDate, this._selCkOutDate);

				for (var i = 0; i <= selDateCnt; i++) {
					aSelDate = this.addDates(this._selCkInDate, i);
					sId = this.formatDate('yy-mm-dd', aSelDate);
					$("span#" + sId).addClass(selDateClass);
				} // end of for

				//checkout
				var chkOutDate = $("span#" + this._selCkOutDate);
				chkOutDate.addClass(selDateClass);
				chkOutDate.addClass(chkOutClass);
			}

			//오늘 날짜
			this.$today.addClass('today');
			this.$today.attr('title', 'today');
			if (this.$today.find('.tTxt').length === 0) {
				this.$today.prepend('<span class="tTxt">' + messages["javascript.calendar.table.col.today"] + '</span>'); //오늘
			}
		},
		/* 달력 닫기 */
		_onClickCloseCalDiv: function (e) {
			e.preventDefault();
			this.$calDiv.removeClass('on');

			if (this.$focusCal && this.$focusCal.length > 0) {
				this.$focusCal.attr('tabindex', 0).focus();
			}

			// oks
			this._CalPlg = null;
		},
		/* 달력 영역 밖 클릭 시 -> 달력 닫기 */
		_onMouseDownExternalCalDiv: function (e) {
			if (!this.$calDiv.hasClass('on')) {
				return;
			}
			var $target = $(e.target);

			var isInCalDiv = ($target.closest('.' + this._defaults.calDiv).length === 0) ? false : true;
			var isInCalhBtn = ($target.closest('.btnCalShow').length === 0) ? false : true;
			var isCalNextBtn = $target.hasClass('btnCalNext');
			var isCalPrevBtn = $target.hasClass('btnCalPrev');

			if (!isInCalDiv && !isInCalhBtn && !isCalNextBtn && !isCalPrevBtn) {
				this._onClickCloseCalDiv(e);
			}
		},
		/* 요일 값 반환 */
		_fnGetDay: function (_date) {
			var dayIdx = $("#" + _date).parent().index();
			switch (dayIdx) {
				case 0: dayStr = messages["javascript.calendar.table.col.sun"]; break;
				case 1: dayStr = messages["javascript.calendar.table.col.mon"]; break;
				case 2: dayStr = messages["javascript.calendar.table.col.tue"]; break;
				case 3: dayStr = messages["javascript.calendar.table.col.wed"]; break;
				case 4: dayStr = messages["javascript.calendar.table.col.thu"]; break;
				case 5: dayStr = messages["javascript.calendar.table.col.fri"]; break;
				case 6: dayStr = messages["javascript.calendar.table.col.sat"]; break;
				default: dayStr = ""; break;
			}

			return dayStr;
		},
		/* 달력 활성화 */
		_onClickBtnCal: function (e) {
			e.preventDefault();
			this.$focusCal = $(e.currentTarget);

			if (this.$calDiv.children().length === 0) {
				this.createCalendar();
			} else {
				// oks
				if(this._CalPlg == null){
					this.createCalendar(true);
				}
			}

			this.$calDiv.toggleClass('on');
			this.$calDiv.attr('tabindex', 0).focus();

			if (this.$calDiv.hasClass('on') && (this._tmpCkIndate !== null)) {
				$('span#' + this._tmpCkIndate).trigger('mousemove.showTip');

				var parts = this._tmpCkIndate.split('-');
				var tmpChkIn = new Date(parts[0], parts[1] - 1, 1); // 체크인 날짜 셋팅

				var prevDateTime = this._prevDate.getTime();
				var nextDateTime = this.addMonths(this._nextDate, 1).getTime();
				var isSameCal = (tmpChkIn.getTime() >= prevDateTime) && (tmpChkIn.getTime() < nextDateTime);
				var tempDate = this.formatDate('yy-mm-dd', this._today);
				var nextBasicDate = this.addDates(tempDate, 365);	

				if (!isSameCal) {
					this._prevDate = tmpChkIn; // 이전(혹은 현재) 날짜 date 셋팅
					this._prevYear = this.formatDate('yy', this._prevDate); // 이전(혹은 현재) 년도
					this._prevMonth = this.formatDate('mm', this._prevDate); // 이전(혹은 현재) 월
					this._nextDate = this.addMonths(this._prevDate, 1);
					this._nextYear = this.formatDate('yy', this._nextDate); // 다음 년도
					this._nextMonth = this.formatDate('mm', this._nextDate); // 다음 월
					
					// 현재 + 1년 후  달력을 열 경우 -> 이전 달력 : 전전 달력 셋팅, 다음 달력 : 이전 달력 으로 셋팅
					if (this._nextYear == this.formatDate('yy', nextBasicDate) && 
						this._nextMonth == this.formatDate('mm', nextBasicDate)+1
					) {

						this._prevDate = new Date ( this._prevDate.setDate( this._prevDate.getDate() - 1 ) );
						this._prevYear = this.formatDate('yy', this._prevDate); // 전전 년도
						this._prevMonth = this.formatDate('mm', this._prevDate); // 전전 월

						this._nextDate = this.addMonths(this._prevDate, 1);
						this._nextYear = this.formatDate('yy', this._nextDate); // 이전 년도
						this._nextMonth = this.formatDate('mm', this._nextDate); // 이전 월
					}

					this.createCalendar(false);
				}
			}

		}
	});

	$.advResvCalendar = new AdvResvCalendar(); // singleton instance
	$.advResvCalendar.uuid = new Date().getTime();
	$.advResvCalendar.version = "1.0.0";

	window["DP_jQuery_" + dpuuid] = $;

})(jQuery);
