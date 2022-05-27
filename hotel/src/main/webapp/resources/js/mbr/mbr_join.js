

//비밀번호 체크(사용중)
function checkPass(pwd){
    var pattern = /(?=.*[0-9])(?=.*[a-zA-Z]).{8,20}/; // 8~20자 영문,숫자 하나 이상씩 포함
    var pattern3Char = /(.)\1\1/; // 같은 문자 연속 3번 정규식
    var pattern3Number = /(012)|(123)|(234)|(345)|(456)|(567)|(678)|(789)|(987)|(876)|(765)|(654)|(543)|(432)|(321)|(210)/; // 연속된 숫자 정규식
    var patternBlank = /\s/g; //공백 있는지 확인
    
    if(!pattern.test(pwd)) {
    	//alert('비밀번호는 영문/숫자 조합 8~20자 이하입니다.');
    	alert(messages["javascript.mbr.join.msg15"]);
    	return false;
    }
    else if(pattern3Char.test(pwd)) {
    	//alert('동일한 문자/숫자는 3자 이상 연속 입력이 불가능합니다.');
    	alert(messages["javascript.mbr.join.msg16"]);
    	return false;
    }
    else if(pattern3Number.test(pwd)) {
    	//alert('연속적인 숫자는 3자 까지만 허용합니다.');
    	alert(messages["javascript.mbr.join.msg5"]);
    	return false;
    }
    else if(patternBlank.test(pwd)) {
    	//alert('비밀번호에 공백을 입력하실 수 없습니다.');
    	alert(messages["javascript.mbr.join.msg17"]);
    	return false;
    }
    else if (!/[a-zA-Z]/.test(pwd)) {
		//alert("비밀번호에 영문자가 반드시 한자 이상 포함되어야 합니다.");
		alert(messages["javascript.mbr.join.msg1"]);
		return false;
	}
    else if (!/[0-9]/.test(pwd)) {
		//alert("비밀번호에 숫자가 반드시 한자 이상 포함되어야 합니다.");
		alert(messages["javascript.mbr.join.msg2"]);
		return false;
	}
    //전화번호와 비슷한 비밀번호인지 체크
	if(!checkIPhone(pwd)) return false;
    
    return true;
}

//비밀번호 체크(사용중)
function checkPassForn(pwd){
    var pattern = /(?=.*[0-9])(?=.*[a-zA-Z]).{8,20}/; // 8~20자 영문,숫자 하나 이상씩 포함
    var pattern3Char = /(.)\1\1/; // 같은 문자 연속 3번 정규식
    var pattern3Number = /(012)|(123)|(234)|(345)|(456)|(567)|(678)|(789)|(987)|(876)|(765)|(654)|(543)|(432)|(321)|(210)/; // 연속된 숫자 정규식
    var patternBlank = /\s/g; //공백 있는지 확인
    
    if(!pattern.test(pwd)) {
    	//alert('비밀번호는 영문/숫자 조합 8~20자 이하입니다.');
    	alert(messages["javascript.mbr.join.msg15"]);
    	return false;
    }
    else if(pattern3Char.test(pwd)) {
    	//alert('동일한 문자/숫자는 3자 이상 연속 입력이 불가능합니다.');
    	alert(messages["javascript.mbr.join.msg16"]);
    	return false;
    }
    else if(pattern3Number.test(pwd)) {
    	//alert('연속적인 숫자는 3자 까지만 허용합니다.');
    	alert(messages["javascript.mbr.join.msg5"]);
    	return false;
    }
    else if(patternBlank.test(pwd)) {
    	//alert('비밀번호에 공백을 입력하실 수 없습니다.');
    	alert(messages["javascript.mbr.join.msg17"]);
    	return false;
    }
    else if (!/[a-zA-Z]/.test(pwd)) {
		//alert("비밀번호에 영문자가 반드시 한자 이상 포함되어야 합니다.");
		alert(messages["javascript.mbr.join.msg1"]);
		return false;
	}
    else if (!/[0-9]/.test(pwd)) {
		//alert("비밀번호에 숫자가 반드시 한자 이상 포함되어야 합니다.");
		alert(messages["javascript.mbr.join.msg2"]);
		return false;
	}
  //전화번호와 비슷한 비밀번호인지 체크
	if(!checkIPhoneForn(pwd)) return false;
    
    return true;
}

//비밀번호 체크 
//비밀번호 생성시 2개 문자종류를 조합할 경우 최소 10자리 이상으로 비밀번호를 구성
	function checkPassSpChar(obj) {
		var v = obj.val();
		var re = /[%]/gi;

		if(v.length == 0) return false;

		if (re.test(v) == true) {
			alert(messages["javascript.mbr.join.msg14"]);
			obj.select();
			return false;
		} else {
			return true;
		}
	}
	
//비밀번호 체크 
//비밀번호 생성시 2개 문자종류를 조합할 경우 최소 10자리 이상으로 비밀번호를 구성
	/*function checkPass(obj) {
	     var v = obj.val();
	     var re = /[~!@\#$%<>^&*\()\-=+_\']/gi;
	     var patt_4num1 = /(\w)\1\1\1/; // 같은 영문자&숫자 연속 4번 정규식

	     if(v.length == 0) return false;
	       if (patt_4num1.test(v) == true) {
				alert("같은문자 및 숫자를 연속적으로 사용할수없습니다.");
				obj.select();
				return false;
			}
			//영문자가 있는지 체크 
			if (!/[a-zA-Z]/.test(v)) {
				//alert("비밀번호에 영문자가 반드시 한자 이상 포함되어야 합니다.");
				alert(messages["javascript.mbr.join.msg1"]);
				obj.select();
				return false;
			}
			//숫자가 있는지 체크
			if (!/[0-9]/.test(v)) {
				alert(messages["javascript.mbr.join.msg2"]);
				//alert("비밀번호에 숫자가 반드시 한자 이상 포함되어야 합니다.");
				obj.select();
				return false;
			}
			if (re.test(v) == false) {
				alert(messages["javascript.mbr.join.msg13"]);
				//alert("비밀번호에 숫자가 반드시 한자 이상 포함되어야 합니다.");
				obj.select();
				return false;
			}
			//10~20자의 비밀번호인지 체크
			if (v.length < 8 || v.length > 15){
				alert(messages["javascript.mbr.join.msg3"]);
				//alert("비밀번호는 8자 에서 15자 까지만 허용합니다.");
				obj.select();
				return false;
			}
			
			
			
			
			
			//연속적인 문자 입력 체크
			checkChar(v);
			//연속적인 숫자 입력 체크
			if(!checkNumber(v)) return false;
			//아이디와 비슷한 비밀번호인지 체크
			//if(!checkIdPwd(v)) return false;

			//생일과 비슷한 비밀번호인지 체크
//			if(!checkIdBirth(v)) return false;

			//전화번호와 비슷한 비밀번호인지 체크
			if(!checkIPhone(v)) return false;
			return true;
			
	}*/
	

	/*function checkPassForn(obj) {
		 var v = obj.val();
	     var re = /[~!@\#$%<>^&*\()\-=+_\']/gi;
	     var patt_4num1 = /(\w)\1\1\1/; // 같은 영문자&숫자 연속 4번 정규식
	     if(v.length == 0) return false;
	       if (patt_4num1.test(v) == true) {
				alert("같은문자 및 숫자를 연속적으로 사용할수없습니다.");
				obj.select();
				return false;
			}
			//영문자가 있는지 체크 
			if (!/[a-zA-Z]/.test(v)) {
				//alert("비밀번호에 영문자가 반드시 한자 이상 포함되어야 합니다.");
				alert(messages["javascript.mbr.join.msg1"]);
				obj.select();
				return false;
			}
			//숫자가 있는지 체크
			if (!/[0-9]/.test(v)) {
				alert(messages["javascript.mbr.join.msg2"]);
				//alert("비밀번호에 숫자가 반드시 한자 이상 포함되어야 합니다.");
				obj.select();
				return false;
			}
			if (re.test(v) == false) {
				alert(messages["javascript.mbr.join.msg13"]);
				//alert("비밀번호에 숫자가 반드시 한자 이상 포함되어야 합니다.");
				obj.select();
				return false;
			}
			//10~20자의 비밀번호인지 체크
			if (v.length < 8 || v.length > 15){
				alert(messages["javascript.mbr.join.msg3"]);
				//alert("비밀번호는 8자 에서 15자 까지만 허용합니다.");
				obj.select();
				return false;
			}
			
			//연속적인 문자 입력 체크
			checkChar(v);
			
			//연속적인 숫자 입력 체크
//			if(!checkNumber(v)) return false;

			//아이디와 비슷한 비밀번호인지 체크
			//if(!checkIdPwd(v)) return false;

			//생일과 비슷한 비밀번호인지 체크
//			if(!checkIdBirth(v)) return false;

			//전화번호와 비슷한 비밀번호인지 체크
			if(!checkIPhoneForn(v)) return false;

			return true;
			
	}*/

		//연속적인 문자 입력 체크
		function checkChar(pw) {
			var qwerty  = "qwertyuiopasdfghjklzxcvbnm";
			var start   = 4 - 1; // 연속글자수 - 1
			var seq     = "_" + pw.slice(0, start);
			for (var i = start; i < pw.length; i++) {
				seq = seq.slice(1) + pw.charAt(i);
				if (qwerty.indexOf(seq) > -1) {
					alert(messages["javascript.mbr.join.msg4"]);
					//alert("연속적인 문자는 3자 까지만 허용합니다.");
					return false;
				}
			}
			return true;
		}

		
		//연속적인 숫자 입력 체크
		function checkNumber(pw) {
			var qwerty  = "01234567890123456789";
			var start   = 4 - 1; // 연속글자수 - 1
			var seq     = "_" + pw.slice(0, start);
			for (var i = start; i < pw.length; i++) {
				seq = seq.slice(1) + pw.charAt(i);
				if (qwerty.indexOf(seq) > -1) {
					alert(messages["javascript.mbr.join.msg5"]);
					//alert("연속적인 숫자는 3자 까지만 허용합니다.");
					return false;
				}
			}
			return true;
		}

		//아이디와 비슷한 비밀번호인지 체크
		function checkIdPwd(pw) {
			var qwerty  = $("#mbrId").val();
			var start   = 4 - 1; // 연속글자수 - 1
			var seq     = "_" + pw.slice(0, start);
			for (var i = start; i < pw.length; i++) {
				seq = seq.slice(1) + pw.charAt(i);
				if (qwerty.indexOf(seq) > -1) {
					alert(messages["javascript.mbr.join.msg6"]);
					$("#mbrPw").focus();
					//alert("아이디와 비슷한 비밀번호는 사용 할 수 없습니다.");
					return false;
				}
			}
			return true;
		}

		//생일과 비슷한 비밀번호인지 체크
		function checkIdBirth(pw) {
			var qwerty  = $("#birthYear").val()+$("#birthMonth").val()+$("#birthDay").val();
			var start   = 4 - 1; // 연속글자수 - 1
			var seq     = "_" + pw.slice(0, start);
			for (var i = start; i < pw.length; i++) {
				seq = seq.slice(1) + pw.charAt(i);
				if (qwerty.indexOf(seq) > -1) {
					alert(messages["javascript.mbr.join.msg7"]);
					//alert("생일과 비슷한 비밀번호는 사용 할 수 없습니다.");
					return false;
				}
			}
			return true;
		}

		//전화번호와 비슷한 비밀번호인지 체크
		function checkIPhone(pw) {
			var qwerty  = $("#mbno1").val()+$("#mbno2").val()+$("#mbno3").val();
			var start   = 4 - 1; // 연속글자수 - 1
			var seq     = "_" + pw.slice(0, start);
			for (var i = start; i < pw.length; i++) {
				seq = seq.slice(1) + pw.charAt(i);
				if (qwerty.indexOf(seq) > -1) {
					alert(messages["javascript.mbr.join.msg8"]);
					//alert("전화번호와 비슷한 비밀번호는 사용 할 수 없습니다.");
					return false;
				}
			}
			return true;
		}



		//전화번호와 비슷한 비밀번호인지 체크
		function checkIPhoneForn(pw) {
			var qwerty  = $("#mbno").val();
			var start   = 4 - 1; // 연속글자수 - 1
			var seq     = "_" + pw.slice(0, start);
			for (var i = start; i < pw.length; i++) {
				seq = seq.slice(1) + pw.charAt(i);
				if (qwerty.indexOf(seq) > -1) {
					alert(messages["javascript.mbr.join.msg8"]);
					//alert("전화번호와 비슷한 비밀번호는 사용 할 수 없습니다.");
					return false;
				}
			}
			return true;
		}

		
		
		

		//아이디 체크
		function checkID(obj) {
			var v = obj.val();
			if(v.length == 0) return false;
				//if (/^[a-zA-Z0-9_]{6,12}$/.test(v)) {
					//if (!/[a-zA-Z]/.test(v)) {
				if (/^[a-z0-9_]{6,12}$/.test(v)) {
					if (!/[a-z]/.test(v)) {
					alert(messages["javascript.mbr.join.msg9"]);
					//alert("아이디에 영문자가 반드시 한자 이상 포함되어야 합니다.");
					obj.select();
					return false;
				}
				return true;
			}
			if (v.length < 6 || v.length > 12){
				alert(messages["javascript.mbr.join.msg10"]);
				//alert("아이디는 6자 에서 12자 까지만 허용합니다.");
			}else{
				alert(messages["javascript.mbr.join.msg11"]);
				//alert("영문 대소문자,숫자혼용,특수기호(_)만 사용할 수 있습니다.");
			}
			obj.select();
			return false;
		}


		//이메일체크
		function checkEmail(obj , obj2) {
			var v = obj.val()+"@"+obj2.val();
			if(v.length > 0) {
				var regExp = /[a-z0-9_-]{2,}@[a-z0-9-]{2,}\.[a-z0-9]{2,}/i;
				if(!regExp.test(v)){
					alert(messages["javascript.mbr.join.msg12"]);
					//alert("잘못된 e-mail 형식입니다.");
					obj.focus();
					return false;
				}
			}
			return true;
		}
		



		//이메일체크
		function checkEmailOneFild(obj ) {
			var v = obj.val();
			if(v.length > 0) {
				var regExp = /[a-z0-9_-]{2,}@[a-z0-9-]{2,}\.[a-z0-9]{2,}/i;
				if(!regExp.test(v)){
					alert(messages["javascript.mbr.join.msg12"]);
					//alert("잘못된 e-mail 형식입니다.");
					obj.focus();
					return false;
				}
			}
			return true;
		}