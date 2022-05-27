
String.prototype.trim = function() {
	return this.replace(/^\s+|\s+$/g,"");
};
String.prototype.ltrim = function() {
	return this.replace(/^\s+/,"");
};
String.prototype.rtrim = function() {
	return this.replace(/\s+$/,"");
};
String.prototype.startsWith = function (str){
	return this.slice(0, str.length) == str;
};
String.prototype.endsWith = function (str){
	return this.slice(-str.length) == str;
};
String.prototype.replaceMsg = function (array){
	var str="";
	for (var i=0; i < array.length; i++) {
		  str = this.split("{"+i+"}").join(array[i]);
	}
	return str;
};
function trim(str)  { return str==null ? null : str.trim(); }
function ltrim(str) { return str==null ? null : str.ltrim(); }
function rtrim(str) { return str==null ? null : str.rtrim(); }

Array.prototype.contains = function(va) {
	for(var i=0;i<this.length;i++){
		if(va==this[i]) return true;
	}
	return false;
};

var g_contextpath = null;

function StringBuffer(){
	this.buffer = [];
	this.append = function(a) { this.buffer.push(a); return this; };
	this.join = function(j){ return this.buffer.join(j); };
	this.toString = function(){ return this.buffer.join(""); };
}

function ParamMap(){
	this.map = {};
	this.put = function(k,va){this.map[k]=va; return this;};
	this.get = function(k,nullva){return this.map[k]==null ? nullva : this.map[k];};
	this.clear = function(){this.map={}; return this;};
	this.action = function(act, args) {
		var going = true;
		for(var k in this.map) {
			if(going!=false) going = act(k, this.map[k], args);
		}
		return going!=false;
	};
	this.keys = function(){
		var k=null,ks = [];
		for(k in this.map){ks.push(k);}
		return ks;
	};
	this.toObject = function() {
		var k=null, rv={};
		for(k in this.map){
			rv[k] = this.map[k];
		}
		return rv;
	};
	this.readObject = function(obj){
		var tp;
		for(var prop in obj){
			tp = this.toTypeString(obj[prop]);
			if(tp=='function'){}
			else if(tp=='data'){ this.map[prop] = obj[prop]; }
			else if(tp=='array'){ this.map[prop] = this.readArray(obj[prop]); }
			else { this.map[prop] = new ParamMap().readObject(obj[prop]); }
		}
		return this;
	};
	this.readArray = function(arr){
		var i, tp;
		for(i=0;i<arr.length;i++){
			tp = this.toTypeString(arr[i]);
			if(tp=='array'){ arr[i] = this.readArray(arr[i]); }
			else if(tp=='object'){ arr[i] = new ParamMap().readObject(arr[i]); }
		}
		return arr;
	};
	this.toTypeString = function(obj){
		var tp = Object.prototype.toString.call(obj);
		if(tp.indexOf("String")>0||tp.indexOf("Number")>0||tp.indexOf("Boolean")>0||tp.indexOf("Date")>0) return "data";
		if(tp.indexOf("Array")>0) return "array";
		if(tp.indexOf("Function")>0) return "function";
		return "object";
	};
	this.toQueryString = function(){return this.str('=','&',null, encodeURIComponent);};
	this.toJSON = function(){ return this.map; };
	this.toString = function(){return this.str('=',',\n',['{','}'], null);};
	this.str = function(keySp, itemSp, bracket, cvtr){
		var k=null, rv=[];
		if(bracket!=null) rv.push(bracket[0]);
		for(k in this.map){
			if(typeof this.map[k] == 'function') continue;
			if(rv.length>1) rv.push(itemSp);
			rv.push(cvtr==null ? k : cvtr(k));
			rv.push(keySp);
			rv.push(cvtr==null ? this.map[k] : cvtr(this.map[k]));
		}
		if(bracket!=null) rv.push(bracket[1]);
		return rv.join('');
	};
	this.getData = function(areaId, prefix, keyName){
		return this.getDataFromObj($("#"+areaId), prefix, keyName);
	};
	this.getDataFromObj = function(areaObj, prefix, keyName){
		var prefixLen = prefix==null ? 0 : prefix.length==null ? 0 : prefix.length;
		var obj, tp=null, key, tg, va, me = this;
		if(keyName==null) keyName = "name";
		areaObj.find(":input").each(function(index){
			obj = $(this);
			if(obj.attr('disabled')==true) return;
			key = obj.attr(keyName)==null ? "" : obj.attr(keyName).substring(prefixLen);
			if((tg=obj.tagName())=='input'){
				tp = obj.attr('type').toLowerCase();
				if(tp=='radio' || tp=='checkbox') {
					if(obj[0].checked) me.put(key, obj.val());
				} else if(tp=='' || tp=='text' || tp=='hidden' || tp=='password') {
					me.put(key, obj.val());
				}
			} else if(tg=='select'){
				me.put(key, (va=obj.find(":selected").val())!=null ? va : "");
			} else {
				me.put(key, obj.val());
			}
		});
		return me;
	};
	this.setData = function(areaId, prefix){
		return this.setDataToObj($("#"+areaId), prefix);
	};
	this.setDataToObj = function(areaObj, prefix){
		if(prefix==null) prefix = "";
		var input;
		var setval = function(input, va){
			var tp = input.attr('type')==null ? "" : input.attr('type').toLowerCase();
			if(tp=='checkbox' || tp=='radio'){
				input.attr('checked',input.val()==va);
			} else {
				input.val(va);
			}
		};
		this.action(function(k,v){
			input = areaObj.find("[name="+prefix+k+"]");
			if(input.length==1){
				setval(input, v);
			} else if(input.length>1){
				input.each(function(){setval($(this), v);});
			}
		});
	};
	this.getNotHaveAll = function(keys){
		var i, va, firstNotHave=null, allNotHave=true;
		for(i=0;i<keys.length;i++){
			va = this.get(keys[i]);
			if(va==null || va.trim()==""){
				if(firstNotHave==null) firstNotHave = keys[i];
			} else {
				allNotHave = false;
			}
		}
		return allNotHave ? null : firstNotHave;
	};
}

function callAjax(url, param, handler, async, errorHandler){
	$.ajax({
		url:url,
		async:(async==true),
		cache:false,
		type:"POST",
		data:"data="+encodeURIComponent(JSON.stringify(param==null ? "" : param.toJSON==null ? param : param.toJSON())),
		success: function(strJson){
			var object = JSON.parse(strJson);
			if(object.msg!="" && object.msg!=null){
				alert(object.msg);
			} else {
				var param = new ParamMap().readObject(object.model);
				handler(param.toObject());
			}
		},
		error: function (xhr, ajaxOptions, thrownError) {
			if(errorHandler==null){
				var errCd = xhr.status;
				if(errCd!='12029'){
					var msgCd = (errCd=='403' || errCd=='404') ? 'msg.cmm.errors.'+errCd : 'msg.cmm.errors.500';
					alertMsg(msgCd, [errCd]);
				}
			} else {
				var errCd = xhr.status;
				errorHandler(errCd);
			}
		}});
}

function callMsg(msgId, args){
	var msg = null;
	callAjax("/cmm/msg/getMsg.do", {"msgId":msgId, "args":args}, function(data){
		msg = data.message;
	});
	return msg;
}

function alertMsg(msgId, args){
	alert(callMsg(msgId, args));
}

function confirmMsg(msgId, args){
	return confirm(callMsg(msgId, args));
}

function toContextURL(url){
	setContextPath();
	if(url.charAt(0)==':') return url.substring(1);
	if(url.startsWith(g_contextpath)) url;
	return url.charAt(0)=='/' ? g_contextpath+url : url;
}

function setContextPath(){
	if(g_contextpath==null){
		var loc = location.href;
		loc = loc.substring(loc.indexOf('/', 10));
		g_contextpath = loc.substring(0, loc.indexOf('/', 2));
	}
}
