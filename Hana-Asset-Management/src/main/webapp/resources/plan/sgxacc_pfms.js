var SGXAccX;
function fn_loadObject(id){
		var agent = navigator.userAgent.toLowerCase(); //msie 체크시
		$("#"+id).html('<object id="SGXAccX" name="SGXAccX" type="application/x-wooripfms" width="1" height="1"><!--param name="onload" value="SGXAccXOnLoaded" /--></object>');
		SGXAccX = document.getElementById('SGXAccX');
		
		if(!SGXAccX.Version){
			if(agent.indexOf("msie") >= 0){
				$("#"+id).html('<OBJECT ID="SGXAccX" name="SGXAccX" classid="clsid:88728D0D-9628-46CA-B9E7-FB9A03321F6D" width="0" height="0" hspace="0" vspace="0"></OBJECT>');
				SGXAccX = document.getElementById('SGXAccX');
				SGXAccX.attachEvent('OnCallBack', SGXAccX_oldOnCallBack);
			}
		}
}
function fn_loadOnCallBack(id){
	var agent = navigator.userAgent.toLowerCase();
	if(agent.indexOf("windows") >= 0){
		if(VP_getInstallStatus("SGXAccX")){	// true(설치), false(미설치/업데이트), null(미지원)
			fn_loadObject(id);
		}
	}
}

var sgxaInit = false;
function SGXAccX_oldOnCallBack(jsIn){
	return sgxaOnCallBack(jsIn);
}
//activeX callback
function SGXAccX_OnCallBack(cmd, param1, param2, retValue){
	var result = "";
	switch(cmd){
		case "tran": result = sgxaOnCallBack(param1); break;
		default:
			if (cmd.indexOf('{"cmd":') == 0)
				result = sgxaOnCallBack(cmd);
			else
				alert("알 수 없는 명령어입니다.\n" + cmd + "\n" + param1);
			break;
	}
	SGXAccX.SetProperty("_retvalue_", result);
	return result;
}

/**
 * FUNCTION 명 : sgxaOnCallBack
 * FUNCTION 기능설명 : cmd에 의한 DB명령 수행
 */
function sgxaOnCallBack(param){
	var json = {};
	json.input = param;
	json.task = "WDPActiveXMng_01U";
	var data = fn_ajaxCallPFMS(json);
	return data;
}

/**
 * FUNCTION 명 : sgxaRefresh
 * FUNCTION 기능설명 : 새로고침시 DB update
 */
function sgxaRefresh(input){
	var json = {};
	json.input = input;
	json.task = "WDPActiveXMng_02U";
	var data = fn_ajaxCallPFMS(json);
	return data;
}

/**
 * FUNCTION 명 : fn_ajaxCallPFMS
 * FUNCTION 기능설명 : 개인자산관리 AJAX CALL 함수
 * 동기 방식
 */
function fn_ajaxCallPFMS(_param){
	var returnData = '';
	$.ajax({
		type : 'post',
		cache: false,
		url : fn_getContextPath() + "/com/uifw/pfms/wpfms000_01i.jsp",
		data: _param,
		dataType:"json",
		async: false,	// 동기
		success : function(data) {
			returnData = JSON2.stringify(data);
		},
		complete : function(xhr, r_msg){
			var isSuccess = false;
			if(r_msg === 'success'){ isSuccess = true; }
			if(isSuccess){
				//성공
			}else{
				//실패
				var jsErr = {};
				jsErr.flag = "02";
				jsErr.code = xhr.status;
				returnData = JSON2.stringify(jsErr);
			}
		}
	});
	return returnData;
}

function sgxaExecuteJSON(jsInput, jsOutput){
	var sResult = sgxaExecute(jsInput);
	return fn_setJsOutput(sResult, jsOutput);
}

function sgxaAssetMgr(sCmd, fnclass, fncode){
	var jsParam = {};
	jsParam.fnclass = "0";
	jsParam.fncode = "0";
	
	if(fnclass != undefined){
		jsParam.fnclass = fnclass;
	}
	if(fncode != undefined){
		jsParam.fncode = fncode;
	}

	var jsResult = {};
	var bRet = sgxaAssetExec(sCmd, jsParam, jsResult);
	if(bRet){
		// 이벤트 끝나고 화면 새로고침
		if (typeof(fn_refresh) == "function") {
			try {fn_refresh();} catch(ex) {}
		}
	}
	return;
}

function sgxaAssetAdd(fnclass, fncode){
	sgxaAssetMgr('assetAdd', fnclass, fncode);
}

function sgxaAssetEdt(fnclass, fncode){
	sgxaAssetMgr('assetEdt', fnclass, fncode);
}

function sgxaAssetDel(fnclass, fncode){
	sgxaAssetMgr('assetDel', fnclass, fncode);
}

function sgxaScriptLoad(sBank){
	return sgxaScriptExec("ScriptLoad", sBank);
}

function sgxaScriptUnload(){
	return sgxaScriptExec("ScriptUnload");
}

//설치여부확인
function fn_checkInstallPFMS(){
	try{
		if(!sgxaInit){
			SGXAccX.SetProperty("name", "WooriPFMS");
			SGXAccX.SetProperty("path", "WooriPFMS");
			SGXAccX.SetProperty("datamode", "1");
			SGXAccX.SetProperty("charmode", "1");
			SGXAccX.SetProperty("cookie", document.cookie);
			SGXAccX.SetProperty("onCallback", "SGXAccX_OnCallBack");
			sgxaInit = true;
		}
		return true;
	}catch(e){
		return false;
	}
}

function sgxaExecute(json){
	var agent = navigator.userAgent.toLowerCase();
	if(agent.indexOf("windows") < 0){
		return '{"flag":"99","code":"9999","message":"죄송합니다.\\n현재 Windows만 지원합니다.\\nWindows를 사용해 주시기 바랍니다."}';
	}
	if(VP_getInstallStatus("SGXAccX") == null){	  // 
			return '{"flag":"99","code":"9999","message":"죄송합니다. 지원하지 않는 브라우저 입니다.\\n현재 Internet Explorer 10 이하 브라우저에서만 지원합니다."}';
	}
	// true(설치), false(미설치/업데이트), null(미지원)
	if(!VP_getInstallStatus("SGXAccX") || !fn_checkInstallPFMS()){
		$("#frmWooriPFMSInstall").submit();
		return '{"flag":"04","code":"9999"}';
	}
	
	if (typeof(json) != "string")
		json = JSON2.stringify(json);
	
	var sResult = "";
	try{
		sResult = SGXAccX.Execute(json);
	}catch(e){
		alert("sgxaExecute() Error\n" + e);
	}finally{
	}
	sResult = sResult.replace(/\n/g, "\\n");
	sResult = sResult.replace(/\r/g, "\\r");
	return sResult;
}

function sgxaAssetExec(sCmd, jsParam, jsResult){
	var json = {};
	json.cmd = sCmd;
	json.param = jsParam;

	var sResult = sgxaExecute(json);
	var jsOutput = {};
	
	return fn_setJsOutput(sResult, jsOutput);
}

function sgxaScriptExec(sCmd, sBank, sFunc, jsInput, jsOutput){
	var jsParam = {};
	if (typeof(sBank) != 'undefined') jsParam.file = sBank;
	if (typeof(sFunc) != 'undefined') jsParam.func = sFunc;
	if (typeof(jsInput) != 'undefined') jsParam.param = jsInput;
	
	var json = {};
	json.cmd = sCmd;
	json.param = jsParam;

	var sResult = sgxaExecute(json);
	
	return fn_setJsOutput(sResult, jsOutput);
}

function fn_setJsOutput(sResult, jsOutput){
	try{
	var jsResult = eval("(" + sResult + ")");
	if (jsResult.flag == "00"){
		if((jsOutput != undefined) && (typeof(jsResult.result) == 'object')){
			for(var x in jsResult.result){
				jsOutput[x] = jsResult.result[x];
			}
		}
		return true;
	}else if(jsResult.flag == "04" && jsResult.code == "9999"){
		// 사용자에 의한 취소 - 처리없음 
		return false;
	}else{
		alert(jsResult.message + "(" + jsResult.flag + ":" + jsResult.code + ")");
		return false;
	}
	}catch(e){
		alert("JSON 문자열이 아닙니다.");
		return false;
	}
}

function sgxaScriptRun(sBank, sFunc, jsInput, jsOutput){
	return sgxaScriptExec("ScriptRun", sBank, sFunc, jsInput, jsOutput);
}

function sgxaScriptCall(sFunc, jsInput, jsOutput){
	return sgxaScriptExec("ScriptCall", undefined, sFunc, jsInput, jsOutput);
}

/**
 * FUNCTION 명 : sgxaGetTransationBank
 * FUNCTION 기능설명 : 은행
 */
function sgxaGetTransationBank(func, userseqno, fnclass, fncode, accseqno, jsOutput, fromdate, todate)
{
	var scrap_param = {};
	if(fromdate)scrap_param.SGSDATE = fromdate;
	if(todate) 	scrap_param.SGEDATE = todate;

	var param = {};
	param.type = "1";
	param.func = func;
	param.userseqno = userseqno;
	param.fnclass = fnclass;
	param.fncode = fncode;
	param.accseqno = accseqno;
	param.param = scrap_param;

	var jsInput = {};
	jsInput.cmd = "ScrapExe";
	jsInput.param = param;

	return sgxaExecuteJSON(jsInput, jsOutput);
}

/**
 * FUNCTION 명 : sgxaGetTransationStock
 * FUNCTION 기능설명 : 증권
 */
function sgxaGetTransationStock(func, userseqno, fnclass, fncode, accseqno, jsOutput, fromdate, todate, stocktype)
{
	var scrap_param = {};
	if(fromdate)scrap_param.SGSDATE = fromdate;
	if(todate) 	scrap_param.SGEDATE = todate;
	if(stocktype) scrap_param.STOCKTYPE = stocktype;
	
	var param = {};
	param.type = "1";
	param.func = func;
	param.userseqno = userseqno;
	param.fnclass = fnclass;
	param.fncode = fncode;
	param.accseqno = accseqno;
	param.param = scrap_param;
	
	var jsInput = {};
	jsInput.cmd = "ScrapExe";
	jsInput.param = param;
	
	return sgxaExecuteJSON(jsInput, jsOutput);
}

/**
 * FUNCTION 명 : sgxaGetTransationCard
 * FUNCTION 기능설명 : 카드
 */
function sgxaGetTransationCard(func, userseqno, fnclass, fncode, accseqno, jsOutput, fromdate, todate, paymonth)
{
	var scrap_param = {};
	if(fromdate)scrap_param.SGSDATE = fromdate;
	if(todate) 	scrap_param.SGEDATE = todate;
	if(paymonth) scrap_param.SGPAYMONTH = paymonth;
	
	var param = {};
	param.type = "1";
	param.func = func;
	param.userseqno = userseqno;
	param.fnclass = fnclass;
	param.fncode = fncode;
	param.accseqno = accseqno;
	param.param = scrap_param;
	
	var jsInput = {};
	jsInput.cmd = "ScrapExe";
	jsInput.param = param;
	
	return sgxaExecuteJSON(jsInput, jsOutput);
}

/**
 * FUNCTION 명 : sgxaGetTransation
 * FUNCTION 기능설명 : sgxaGetTransation
 */
function sgxaGetTransation(func, userseqno, fnclass, fncode, accseqno, jsOutput, fromdate, todate)
{
	var scrap_param = {};
	if(fromdate)scrap_param.SGSDATE = fromdate;
	if(todate) 	scrap_param.SGEDATE = todate;
	
	var param = {};
	param.type = "1";
	param.func = func;
	param.userseqno = userseqno;
	param.fnclass = fnclass;
	param.fncode = fncode;
	param.accseqno = accseqno;
	param.param = scrap_param;
	
	var jsInput = {};
	jsInput.cmd = "ScrapExe";
	jsInput.param = param;
	
	return sgxaExecuteJSON(jsInput, jsOutput);
}

/**
 * 새로고침 시작
 * 전체 계좌 정보 페이지에서 공통으로 사용
 */
//새로고침, 서브탭 공통(DB update)
function fn_refreshCommon(fnclass, jsOutput){
	var refreshData = {};
	refreshData.jsOutput = jsOutput;
	sgxaRefresh(JSON2.stringify(refreshData));
}

// 은행 새로고침
function fn_refreshBank(userseqno, fnclass, fncode, accseqno, acctype){
	var func = "1";	// 계좌목록

	var refreshData = {};
	var jsOutput = [];
	if (sgxaGetTransationBank(func, userseqno, fnclass, fncode, accseqno, jsOutput)){
		refreshData.jsOutput = jsOutput;
		sgxaRefresh(JSON2.stringify(refreshData));
		fn_refresh();
	}
}

//증권 새로고침
function fn_refreshStock(userseqno, fnclass, fncode, accseqno, stocktype){
	var func = "1";	// 계좌목록
	
	var jsOutput = [];
	if (sgxaGetTransationStock(func, userseqno, fnclass, fncode, accseqno, jsOutput, null, null, stocktype)){
		fn_refreshCommon(fnclass, jsOutput);
		fn_refresh();
	}
}

// 카드 새로고침
function fn_refreshCard(userseqno, fnclass, fncode, accseqno){
	var func = "1";	// 계좌목록

	var jsOutput = [];
	if (sgxaGetTransationCard(func, userseqno, fnclass, fncode, accseqno, jsOutput, null, null, null)){
		fn_refreshCommon(fnclass, jsOutput);
		fn_refresh();
	}
}

// 보험 새로고침
function fn_refreshInsur(userseqno, fnclass, fncode, accseqno){
	var func = "1";	// 계좌목록

	var refreshData = {};
	var jsOutput = [];
	if (sgxaGetTransation(func, userseqno, fnclass, fncode, accseqno, jsOutput)){
		refreshData.jsOutput = jsOutput;
		sgxaRefresh(JSON2.stringify(refreshData));
		fn_refresh();
	}
}
