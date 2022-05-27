(function( $, undefined ) {
	
	$.extend($.ui, { resvCalendar: { version: "1.10.0" } });
	
	var dpuuid = new Date().getTime();
	
	function ResvCalendar() {
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
		
		this._limitCnt = 7; // avail day list
		
		this._defaults = { // Global defaults for all the date picker instances
				calDiv: null,
				ckinYmdId: null,
				ckoutYmdId: null,
				nightCnt: null,
				resvDateInfoId:null,
				ckinYmdInfoId: null,
				ckoutYmInfodId: null,
				nightCntInfoId: null,
				isMain:null,
				today: null
		};
		
	};
	
	$.extend(ResvCalendar.prototype, {

		/* Override the default settings for all instances of the date picker.
		 * @param  settings  object - the new settings to use as defaults (anonymous object)
		 * @return the manager object
		 */
		setDefaults: function(settings) {
			$.extend(this._defaults, settings || {});
			for (var name in settings) {
				if (settings[name] == null) {
					this._defaults[name] = settings[name];
				}
			}
			
			var parts = this._defaults.today.split('-');
			
			this._today = new Date(parts[0], parts[1]-1, 1); // 오늘 날짜 date 셋팅
			this._prevDate= this._today; // 이전(혹은 현재) 날짜 date 셋팅
			this._prevYear = this.formatDate('yy', this._prevDate); // 이전(혹은 현재) 년도
			this._prevMonth = this.formatDate('mm', this._prevDate); // 이전(혹은 현재) 월
			this._nextDate = this.addMonths(this._prevDate, 1);
			this._nextYear = this.formatDate('yy', this._nextDate); // 다음 년도
			this._nextMonth = this.formatDate('mm', this._nextDate); // 다음 월
			
			return this;
		},
		
		createCalendar:function() {
			
			if(this._clickCnt % 2 == 0) {
				this._clickCnt = 0; // click count
			}
			
			var div = $("#" + this._defaults.calDiv);
			
			div.html(this.getCalendarHtml()); //칼렌더 다시그리기
			
			// Prev
			div.find(".btnPrev").bind('click', function() {
				window["DP_jQuery_" + dpuuid].resvCalendar._refreshCalendar(-1);
			});
			
			// Next
			div.find(".btnNext").bind('click', function() {
				window["DP_jQuery_" + dpuuid].resvCalendar._refreshCalendar(1);
			});
			
			this._setAvailDay();
			
		},
		
		_refreshCalendar: function(period) {
			
			this._prevDate = new Date(this._prevYear, (this._prevMonth-1)+period , 1); // 이전 date
			this._prevYear = this.formatDate('yy', this._prevDate); // 이전 년도
			this._prevMonth = this.formatDate('mm', this._prevDate); // 이전 월
			
			this._nextDate= new Date(this._prevYear, this._prevMonth,1); // 다음 date
			this._nextYear = this.formatDate('yy', this._nextDate); // 다음 년
			this._nextMonth = this.formatDate('mm', this._nextDate); // 다음 월
			
			
			this.createCalendar();
			
			if(period < 0) { //시작날짜 초기화
				this._clickCnt = 0; // click count
			}
		},
		
		getCalendarHtml: function() {
			
			var calHtml = "";
			
			
			calHtml += "<div class=\"calendarRsvBox\">";
			
			// 달력 네비게이션
			calHtml += this._getNavHtml();
			
			
			// 왼쪽 달력
			calHtml += "<div class=\"calendarReserve calendarPrev\">";
			calHtml +=  this._getCalendarTableHtml(this._prevYear, this._prevMonth);
			calHtml += "</div>";
			
			// 오른쪽 달력
			calHtml += "<div class=\"calendarReserve calendarNext\">";
			calHtml +=  this._getCalendarTableHtml(this._nextYear, this._nextMonth);
			calHtml += "</div>";
			
			var msgTyp1 = messages["msg.cal.info.sel.type1"];
			var msgTyp2 = messages["msg.cal.info.sel.type2"];
			var msgTyp3 = messages["msg.cal.info.sel.type3"];
			
			if(!this._defaults.isMain){
				// 달력 사용 정보
				calHtml += "	<div class=\"rStatus\">";
				calHtml += "		<ul>";
				calHtml += "			<li><em class=\"ico1\">"+msgTyp1+"</em></li>";
				calHtml += "			<li><em class=\"ico2\">"+msgTyp2+"</em></li>";
				calHtml += "			<li><em class=\"ico3\">"+msgTyp3+"</em></li>";
				calHtml += "		</ul>";
				calHtml += "	</div>";
			}

			calHtml += "</div>";
			
		
			return calHtml;
		},
		
		/* pre, next 네비게이션 html 생성. */
		_getNavHtml: function() {
			
			var navHtml = "";
			var prevClassNm = "btnPrev";
			var nextClassNm = "btnNext";
			
			if(this.formatDate('yy', this._today) == this._prevYear && this.formatDate('mm', this._today) == this._prevMonth) {
				prevClassNm = "btnPrevDisable";
			}
			
			// 다음 달력 이동 버튼 제어
			var tempDate = this.formatDate('yy-mm-dd', this._today);
			var nextBasicDate = this.addDates(tempDate, 365);
			if(this._nextYear == this.formatDate('yy', nextBasicDate) &&  this._nextMonth == this.formatDate('mm', nextBasicDate)){
				nextClassNm = "btnNone";
			}
			
			navHtml += "<div class=\"dateNav\">";
			navHtml += "	<div class=\"datePrev\"><a class=\""+prevClassNm+"\" href=\"javascript:;\" ><span class=\"calYear\">"+this._prevYear+".</span>"+this._prevMonth+"</a></div>";
			navHtml += "	<div class=\"dateNext\"><a class=\""+nextClassNm+"\" href=\"javascript:;\"><span class=\"calYear\">"+this._nextYear+".</span>"+this._nextMonth+"</a></div>";
            navHtml += "</div>";
            
            return navHtml;
		},
		
		_getCalendarTableHtml: function(drawYear, drawMonth) {
			
			var tableHtml = "";
			tableHtml +=  "    <table summary='"+messages["javascript.calendar.table.summary"]+"'>";
			tableHtml +=  "      <caption>"+messages["javascript.calendar.table.caption"].replaceMsg([drawYear+'.'+drawMonth])+"</caption>";
			tableHtml +=  "      <thead>";
			tableHtml +=  "        <tr>";
			tableHtml +=  "          <th class='sun' scope='col'><span>"+messages["javascript.calendar.table.col.sun"]+"</span></th>";
			tableHtml +=  "          <th class='mon' scope='col'><span>"+messages["javascript.calendar.table.col.mon"]+"</span></th>";
			tableHtml +=  "          <th class='tue' scope='col'><span>"+messages["javascript.calendar.table.col.tue"]+"</span></th>";
			tableHtml +=  "          <th class='wed' scope='col'><span>"+messages["javascript.calendar.table.col.wed"]+"</span></th>";
			tableHtml +=  "          <th class='thu' scope='col'><span>"+messages["javascript.calendar.table.col.thu"]+"</span></th>";
			tableHtml +=  "          <th class='fri' scope='col'><span>"+messages["javascript.calendar.table.col.fri"]+"</span></th>";
			tableHtml +=  "          <th class='sat' scope='col'><span>"+messages["javascript.calendar.table.col.sat"]+"</span></th>";
			tableHtml +=  "        </tr>";
			tableHtml +=  "      </thead>";
			tableHtml +=  "      <tbody>";
			
			// td loop
			var month = parseInt(drawMonth) -1;
			var dayOfMonth = 1;
			var daysInMonth = this._getDaysInMonth(drawYear, month); // 마지막 날
		    
			// tr loop
			for(var row=0; row < 6; row++) {
				
				var trClassNm = "";
				if(row==0) trClassNm = "class='first'"; else if(row==5) trClassNm = "class='last'"; else trClassNm = ''; 
				
				tableHtml +=  "        <tr " + trClassNm + ">";
				
				for(var col=0; col < 7; col++) {
					
					if(col == 0) tdClassNm = "class='sun'"; else if(col == 6) tdClassNm = "class='sat'"; else tdClassNm = '';
					
					tableHtml +=  "<td " + tdClassNm + ">";
					
					if(col == this.getDayOfWeek(drawYear, month, dayOfMonth) && dayOfMonth <= daysInMonth) {
						
						var spanClassNm = "";
						var idDate = this.formatDate('yy-mm-dd', new Date(drawYear, month, dayOfMonth)) ;
						
						//alert('today:'+this._defaults.today+',id:'+idDate);
						if(this._defaults.today == idDate) {
							spanClassNm = "class='today'"; 
						//} else if(this._defaults.today.replace(/-/g,"") > idDate.replace(/-/g,"")) {
						//	spanClassNm = "class='rNoDate'";
						//} else {
							//spanClassNm = "class='rNoDate'";
						} else if(this._defaults.today > idDate){
							spanClassNm = "class='rNoDate'";
						}
						
						tableHtml +=  "<span id="+ idDate +" " + spanClassNm + ">";
						//tableHtml +=  "<a href='javascript:;'>";
						tableHtml +=  "<a>";
						tableHtml +=  dayOfMonth;
						tableHtml +=  "</a>";
						tableHtml +=  "</span>";
						dayOfMonth++;
					} else {
						tableHtml +=  "<span>&nbsp;</span>";
					}
					
					tableHtml +=  "</td>";
					
				} // end of day
				
				tableHtml +=  "        </tr>";
			} // end of row
			
			tableHtml +=  "      </tbody>";
			tableHtml +=  "    </table>";
			
			return tableHtml;
		},
		
		_setAvailDay: function() {

			var g_selCkInDate = this.selCkInDate;
			var today = this._defaults.today;
			var calDiv = this._defaults.calDiv;
			var posbAheadDy = $("#resvPosbAheadDyCnt").val();
			var baseDate = today;
			
			if(parseInt(posbAheadDy) > 0){
				baseDate = this.addDates(today, parseInt(posbAheadDy));
				baseDate = this.formatDate('yy-mm-dd', baseDate);
			}
			
			// 최초 시작일보다 이전일이면 선택불가 
			$("#"+calDiv).find("tbody > tr > td").each(function(){
				if(baseDate <= jQuery(this).children().attr("id")){
					$("#"+calDiv +" #"+jQuery(this).children().attr("id")).attr("class" , "rDate");
					$("#"+calDiv +" #"+jQuery(this).children().attr("id")).attr("title" , messages["javascript.calendar.resv.posb.date"]);
					$("#"+calDiv +" #"+jQuery(this).children().attr("id") + " a").attr("href" ,"javascript:;");
				}else{
					$("#"+calDiv +" #"+jQuery(this).children().attr("id")).attr("class" , "rNoDate");
					$("#"+calDiv +" #"+jQuery(this).children().attr("id")).attr("title" , messages["javascript.calendar.resv.non.posb.date"]);
				}
			});
			
			// 예약가능일자 click event
			$("#"+calDiv).find(".rDate").bind('click', function() {
				window["DP_jQuery_" + dpuuid].resvCalendar._selResvDate($(this).attr("id"));
			});
			
			// 예약불가능일자 click event
			$("#"+calDiv).find(".rNoDate").bind('click', function() {
				window["DP_jQuery_" + dpuuid].resvCalendar._selResvDate($(this).attr("id"));
			});
			
			var daySpan = $("span#"+g_selCkInDate);
			$(daySpan).addClass("selDate");
			
			$('.opacity').hide();
			$('.re-loader').hide();
		},
		
		_selResvDate: function(id) {
			this._clickCnt++;
			var aDate = null,  sId = ""; 
			var daySpan = $("span#"+id);
			
			if(this._clickCnt == 1) { // 첫번째 클릭이면
				
				if(daySpan.hasClass("rDate")) { //예약가능일자면
					// 선택일자 class 적용
					this._selCkInDate = id;
					this._tmpCkIndate = id;
					var today = this._defaults.today;
					
					if(today == this._selCkInDate){
						$(daySpan).removeClass("today");
					}
					
					$(daySpan).addClass("selDate");
					
					// input box 셋팅
					$("#"+this._defaults.ckinYmdId).val(this._selCkInDate); // 체크인날짜
					
					var ymd = this._selCkInDate;
					var ymdArry = ymd.split("-");
					
					if(ymdArry.length > 2){
					
						jQuery("#ckinYy").text(ymdArry[0]);
						jQuery("#ckinMm").text(ymdArry[1]);
						jQuery("#ckinDd").text(ymdArry[2]);
					}
					
				} else {
					alert(messages["javascript.calendar.resv.msg.not.ckin"]);
					this._clickCnt--;
				}
				
			} else if(this._clickCnt == 2 && this._selCkInDate != null) {
				
				if(daySpan.hasClass("rDate")) { //예약가능일자면
				
					this._selCkOutDate = id;
	
					// 체크인,아웃기간 class 적용
					var cnt = this._getDiffOfDate(this._selCkInDate, this._selCkOutDate);
					
					if(cnt > 30) {
						
						this._clickCnt--;
						
						// 선택한 날짜 리셋
						this._resetSelDate();
						
						alert(messages["javascript.calendar.day.over"].replace("{0}", "30"));
						
						return;
						
						
					}
					
					if(cnt > 0) {
						
						for(var i=0; i <= cnt ; i++ ){
							aDate = this.addDates(this._selCkInDate, i);
							sId = this.formatDate('yy-mm-dd', aDate); 
							$("span#"+sId).addClass("selDate");
						} // end of for
							
						var packItNightCnt = $("#packItNightCnt") ? $("#packItNightCnt").val() : null;
						
						if(packItNightCnt != null && packItNightCnt > 0 && packItNightCnt != cnt) {
							alert(messages["javascript.calendar.resv.msg.pack.night.cnt"].replaceMsg([packItNightCnt]));
						} else {
						
							// input box 셋팅
							//$("#"+this._defaults.ckinYmdId).val(this._selCkInDate); // 체크인날짜
							$("#"+this._defaults.ckoutYmdId).val(this._selCkOutDate);// 체크아웃 날짜
							
							var ymd = this._selCkOutDate;
							var ymdArry = ymd.split("-");
							
							if(ymdArry.length > 2){
							
								jQuery("#ckoutYy").text(ymdArry[0]);
								jQuery("#ckoutMm").text(ymdArry[1]);
								jQuery("#ckoutDd").text(ymdArry[2]);
							}
							
							$("#"+this._defaults.nightCntId).val(cnt); // 숙박일수

							var chkcnt = 0;
							for(var j=0; j <= cnt ; j++ ){
								aDate = this.addDates(this._selCkInDate, j);
								sId = this.formatDate('yy-mm-dd', aDate);
								var daySpan = $("span#"+sId).hasClass("rNoDate");
								if(daySpan){
									chkcnt++;
								}
							} // end of for

							// 선택한 예약일자 중에 예약이 불가능한 날짜가 포함되어 있습니다.
							if(chkcnt > 0) {
								alert(messages["javascript.calendar.resv.msg.not.ckout.end"]);
								this._clickCnt--;
								
								//선택 부분 삭제 begin
								for(var i=1; i <= cnt ; i++ ){
									aDate = this.addDates(this._selCkInDate, i);
									sId = this.formatDate('yy-mm-dd', aDate); 
									$("span#"+sId).removeClass("selDate");
								} // end of for
								
								$("#"+this._defaults.ckoutYmdId).val("");// 체크아웃 날짜
								$("#"+this._defaults.nightCntId).val(""); // 숙박일수
								//선택 부분 삭제 end
								
								return;
							}
							
							// 예약화면에서 예약날짜 정보 셋팅
							if($("#"+this._defaults.resvDateInfoId)) {
								$("#"+this._defaults.ckinYmdInfoId).text(this._selCkInDate);
								$("#"+this._defaults.ckoutYmInfodId).text(this._selCkOutDate);
								$("#"+this._defaults.nightCntInfoId).text(cnt + ' ' + messages["javascript.calendar.night"]);
								$("#"+this._defaults.resvDateInfoId).show();
							}
							
							if($("#"+this._defaults.calDiv).hasClass("on")){
								$("#"+this._defaults.calDiv).attr("class", this._defaults.calDiv);
								
								if(this._defaults.isMain) {
									$('.selArea ul').find(".checkOut").addClass('on').siblings().removeClass('on').children().removeClass('jsSelect_on');
								}else if(jQuery("#"+this._defaults.ckoutYmdId).size() > 0){
									$("#"+this._defaults.ckoutYmdId).focus();
								}
					 		}
							
							this._selCkInDate = null; //시작일 초기화
							
						}
					} else if(cnt == 0) {
						//같은 날짜 선택시
						
						// 선택한 날짜 리셋
						this._resetSelDate();
						
					} else {
						// 체크인날짜보다 같거나 적은 날짜 선택시 
						alert(messages["javascript.calendar.resv.msg.not.ckout.prev"]);
						this._clickCnt--;
					}
					
				} else {
					//alert(messages["javascript.calendar.resv.msg.not.ckout"]);
					//this._clickCnt--;
					this._selCkOutDate = id;
					
					// 체크인,아웃기간 class 적용
					var cnt = this._getDiffOfDate(this._selCkInDate, this._selCkOutDate);
					
					if(cnt > 30) {
						
						this._clickCnt--;
						
						// 선택한 날짜 리셋
						this._resetSelDate();
						
						alert(messages["javascript.calendar.day.over"].replace("{0}", "30"));
						
						return;
						
						
					}
					
					if(cnt > 0) {
						
						for(var i=0; i <= cnt ; i++ ){
							aDate = this.addDates(this._selCkInDate, i);
							sId = this.formatDate('yy-mm-dd', aDate); 
							$("span#"+sId).addClass("selDate");
						} // end of for
							
						var packItNightCnt = $("#packItNightCnt") ? $("#packItNightCnt").val() : null;
						
						if(packItNightCnt != null && packItNightCnt > 0 && packItNightCnt != cnt) {
							alert(messages["javascript.calendar.resv.msg.pack.night.cnt"].replaceMsg([packItNightCnt]));
						} else {
						
							// input box 셋팅
							//$("#"+this._defaults.ckinYmdId).val(this._selCkInDate); // 체크인날짜
							$("#"+this._defaults.ckoutYmdId).val(this._selCkOutDate);// 체크아웃 날짜
							$("#"+this._defaults.nightCntId).val(cnt); // 숙박일수

							var chkcnt = 0;
							for(var j=0; j <= cnt ; j++ ){
								aDate = this.addDates(this._selCkInDate, j);
								sId = this.formatDate('yy-mm-dd', aDate);
								var daySpan = $("span#"+sId).hasClass("rNoDate");
								if(daySpan){
									chkcnt++;
								}
							} // end of for

							// 선택한 예약일자 중에 예약이 불가능한 날짜가 포함되어 있습니다.
							if(chkcnt > 1) {
								alert(messages["javascript.calendar.resv.msg.not.ckout.end"]);
								this._clickCnt--;
								
								//선택 부분 삭제 begin
								for(var i=1; i <= cnt ; i++ ){
									aDate = this.addDates(this._selCkInDate, i);
									sId = this.formatDate('yy-mm-dd', aDate); 
									$("span#"+sId).removeClass("selDate");
								} // end of for
								
								$("#"+this._defaults.ckoutYmdId).val("");// 체크아웃 날짜
								$("#"+this._defaults.nightCntId).val(""); // 숙박일수
								//선택 부분 삭제 end
								
								return;
							}
							
							// 예약화면에서 예약날짜 정보 셋팅
							if($("#"+this._defaults.resvDateInfoId)) {
								$("#"+this._defaults.ckinYmdInfoId).text(this._selCkInDate);
								$("#"+this._defaults.ckoutYmInfodId).text(this._selCkOutDate);
								$("#"+this._defaults.nightCntInfoId).text(cnt + ' ' + messages["javascript.calendar.night"]);
								$("#"+this._defaults.resvDateInfoId).show();
							}
							
							if($("#calendarReserveBox").is(":visible")){
								$("#calenderDiv").empty(); 
								$("#calendarReserveBox").hide();
								
								if($(".btnCalendar").size() > 0) {
									$(".btnCalendar").focus();
								} else if($("#ckoutYmd").size() > 0) {
									$("#ckoutYmd").focus();
								}
					 		}
							
							this._selCkInDate = null; //시작일 초기화
							
						}
					} else if(cnt == 0) {
						//같은 날짜 선택시
						
						// 선택한 날짜 리셋
						this._resetSelDate();
						
					} else {
						// 체크인날짜보다 같거나 적은 날짜 선택시 
						alert(messages["javascript.calendar.resv.msg.not.ckout.prev"]);
						this._clickCnt--;
					}
				}
				
				
			} else { // 두번클릭이상이면
				
				// 선택한 날짜 리셋
				this._resetSelDate();
				
			}
		},
		
		//첫번째 날짜 값 검증(memIndex)
		_selResvDate3_1: function(id) {
			this._selCkInDate = id;
				
			return true;
				
		},
		
		//두번째 날짜 값 검증(memIndex)
		_selResvDate3_2: function(id) {
			this._selCkOutDate = id;
			
			// 체크인,아웃기간 class 적용
			var cnt = this._getDiffOfDate(this._selCkInDate, this._selCkOutDate);
			
			if(cnt > 30) {
				
				alert(messages["javascript.calendar.day.over"].replace("{0}", "30"));
				
				return false;
				
				
			}
			
			if(cnt > 0) {
					
				var packItNightCnt = $("#packItNightCnt") ? $("#packItNightCnt").val() : null;
				
				if(packItNightCnt != null && packItNightCnt > 0 && packItNightCnt != cnt) {
					alert(messages["javascript.calendar.resv.msg.pack.night.cnt"].replaceMsg([packItNightCnt]));
					return false;
				} else {

					var chkcnt = 0;
					for(var j=0; j <= cnt ; j++ ){
						aDate = this.addDates(this._selCkInDate, j);
						sId = this.formatDate('yy-mm-dd', aDate);
						var daySpan = $("span#"+sId).hasClass("rNoDate");
						if(daySpan){
							chkcnt++;
						}
					} // end of for

					// 선택한 예약일자 중에 예약이 불가능한 날짜가 포함되어 있습니다.
					if(chkcnt > 1) {
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
		_selResvDate2_1: function(id) {
			var daySpan = $("span#"+id);
			
			if(daySpan.hasClass("rDate")) { //예약가능일자면
				this._selCkInDate = id;
				
				return true;
				
			} else {
				alert(messages["javascript.calendar.resv.msg.not.ckin"]);
				
				return false;
				
			}
				
		},
		
		//두번째 날짜 값 검증
		_selResvDate2_2: function(id) {
			var aDate = null,  sId = ""; 
			var daySpan = $("span#"+id);
				
			if(daySpan.hasClass("rDate")) { //예약가능일자면
			
				this._selCkOutDate = id;
				
				// 체크인,아웃기간 class 적용
				var cnt = this._getDiffOfDate(this._selCkInDate, this._selCkOutDate);
				
				if(cnt > 30) {
					
					alert(messages["javascript.calendar.day.over"].replace("{0}", "30"));
					
					return false;
					
					
				}
				
				if(cnt > 0) {
						
					var packItNightCnt = $("#packItNightCnt") ? $("#packItNightCnt").val() : null;
					
					if(packItNightCnt != null && packItNightCnt > 0 && packItNightCnt != cnt) {
						alert(messages["javascript.calendar.resv.msg.pack.night.cnt"].replaceMsg([packItNightCnt]));
						return false;
					} else {

						var chkcnt = 0;
						for(var j=0; j <= cnt ; j++ ){
							aDate = this.addDates(this._selCkInDate, j);
							sId = this.formatDate('yy-mm-dd', aDate);
							var daySpan = $("span#"+sId).hasClass("rNoDate");
							if(daySpan){
								chkcnt++;
							}
						} // end of for

						// 선택한 예약일자 중에 예약이 불가능한 날짜가 포함되어 있습니다.
						if(chkcnt > 1) {
							alert(messages["javascript.calendar.resv.msg.not.ckout.end"]);
							return false;
						}
						
						// 예약화면에서 예약날짜 정보 셋팅
						/*
						if($("#"+this._defaults.resvDateInfoId)) {
							$("#"+this._defaults.ckinYmdInfoId).text(this._selCkInDate);
							$("#"+this._defaults.ckoutYmInfodId).text(this._selCkOutDate);
							$("#"+this._defaults.nightCntInfoId).text(cnt + ' ' + messages["javascript.calendar.night"]);
							$("#"+this._defaults.resvDateInfoId).show();
						}
						
						if($("#calendarReserveBox").is(":visible")){
							$("#calenderDiv").empty(); 
							$("#calendarReserveBox").hide();
							
							if($(".btnCalendar").size() > 0) {
								$(".btnCalendar").focus();
							} else if($("#ckoutYmd").size() > 0) {
								$("#ckoutYmd").focus();
							}
				 		}
						
						this._selCkInDate = null; //시작일 초기화
						*/
						
						return true;
					}

				} else {
					// 체크인날짜보다 같거나 적은 날짜 선택시 
					alert(messages["javascript.calendar.resv.msg.not.ckout.prev"]);
					return false;
				}
				
			} else {
				//alert(messages["javascript.calendar.resv.msg.not.ckout"]);
				//return false;
				this._selCkOutDate = id;
				
				// 체크인,아웃기간 class 적용
				var cnt = this._getDiffOfDate(this._selCkInDate, this._selCkOutDate);
				
				if(cnt > 30) {
					
					alert(messages["javascript.calendar.day.over"].replace("{0}", "30"));
					
					return false;
					
					
				}
				
				if(cnt > 0) {
						
					var packItNightCnt = $("#packItNightCnt") ? $("#packItNightCnt").val() : null;
					
					if(packItNightCnt != null && packItNightCnt > 0 && packItNightCnt != cnt) {
						alert(messages["javascript.calendar.resv.msg.pack.night.cnt"].replaceMsg([packItNightCnt]));
						return false;
					} else {

						var chkcnt = 0;
						for(var j=0; j <= cnt ; j++ ){
							aDate = this.addDates(this._selCkInDate, j);
							sId = this.formatDate('yy-mm-dd', aDate);
							var daySpan = $("span#"+sId).hasClass("rNoDate");
							if(daySpan){
								chkcnt++;
							}
						} // end of for

						// 선택한 예약일자 중에 예약이 불가능한 날짜가 포함되어 있습니다.
						/*if(chkcnt > 0) {
							alert(messages["javascript.calendar.resv.msg.not.ckout.end"]);
							return false;
						}*/
						
						// 예약화면에서 예약날짜 정보 셋팅
						/*
						if($("#"+this._defaults.resvDateInfoId)) {
							$("#"+this._defaults.ckinYmdInfoId).text(this._selCkInDate);
							$("#"+this._defaults.ckoutYmInfodId).text(this._selCkOutDate);
							$("#"+this._defaults.nightCntInfoId).text(cnt + ' ' + messages["javascript.calendar.night"]);
							$("#"+this._defaults.resvDateInfoId).show();
						}
						
						if($("#calendarReserveBox").is(":visible")){
							$("#calenderDiv").empty(); 
							$("#calendarReserveBox").hide();
							
							if($(".btnCalendar").size() > 0) {
								$(".btnCalendar").focus();
							} else if($("#ckoutYmd").size() > 0) {
								$("#ckoutYmd").focus();
							}
				 		}
						
						this._selCkInDate = null; //시작일 초기화
						*/
						
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
		_resetSelDate:function() {
			if(this._selCkOutDate != null) {
				
				var today = this._defaults.today;
				
				var cnt = this._getDiffOfDate(this._tmpCkIndate, this._selCkOutDate);
				
				for(var i=0; i <= cnt ; i++ ){
					var aDate = this.addDates(this._tmpCkIndate, i);
					var sId = this.formatDate('yy-mm-dd', aDate); 
					$("span#"+sId).removeClass("selDate");
					
					if(sId == today){
						$("span#"+sId).addClass("today");
					}
					
				} // end of for
			}else{
				$("span#"+this._tmpCkIndate).removeClass("selDate");
				if(this._tmpCkIndate == today){
					$("span#"+this._tmpCkIndate).addClass("today");
				}
			}	
			
			this._selCkInDate = null;	
			this._tmpCkIndate = null;
			this._selCkOutDate = null;
			this._clickCnt = 0;
			$("#"+this._defaults.ckinYmdId).val(""); // 체크인날짜
			$("#"+this._defaults.ckoutYmdId).val("");// 체크아웃 날짜
			$("#"+this._defaults.nightCntId).val(""); // 숙박일수
			
			// 예약화면에서 예약날짜 정보 셋팅
			if($("#"+this._defaults.resvDateInfoId)) {
				$("#"+this._defaults.ckinYmdInfoId).text("");
				$("#"+this._defaults.ckoutYmInfodId).text("");
				$("#"+this._defaults.nightCntInfoId).text(0);
				$("#"+this._defaults.resvDateInfoId).hide();
			}
			
			
		},
		
		/* 날짜일수 조회. */
		_getDiffOfDate:function (startDate, endDate) {
			
			var d1 = this.parseDate('yy-mm-dd', startDate);
			var d2 = this.parseDate('yy-mm-dd', endDate);
			var count = d2 - d1;
			return Math.floor(count/(24*3600*1000));
			
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
		
		getLastDateOfMonth: function(date) {
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
			var d = new Date(parts[0], parts[1]-1, parts[2]); 
			  
			var newDate = new Date(d.getFullYear(), d.getMonth(), d.getDate()+value);
			/*newDate.setFullYear(d.getFullYear());
			newDate.setDate(d.getDate()+value);
			newDate.setMonth(d.getMonth());*/
			return newDate;
		},
		
		parseDate: function(format, date) {
			
			var newDate = new Date();

			if('yy-mm-dd' == format && date != '') {
				var parts = date.split('-');
				newDate = new Date(parts[0], parts[1]-1, parts[2]); 
			}
			
			return newDate;
		},
		
		/* date를 string date로 변환. */
		formatDate: function(format, date) {
			var strDate = "";
			if('yy' == format) {
				strDate = date.getFullYear();
			} else if('mm' == format) {
				strDate = (date.getMonth()+1);
			} else if('dd' == format) {
				date.getDate();
			} else if('yy-mm-dd' == format) {
				strDate = date.getFullYear() + "-" + LPad((date.getMonth()+1), 2, '0') + "-" + LPad(date.getDate(), 2, '0');
			}
			return strDate;
		}
		
	});
	
	$.resvCalendar = new ResvCalendar(); // singleton instance
	$.resvCalendar.uuid = new Date().getTime();
	$.resvCalendar.version = "1.0.0";

	window["DP_jQuery_" + dpuuid] = $;
	
})(jQuery);
