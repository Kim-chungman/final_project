/********************************************************
   파일명 : pa_common.js
   작성자 : 조욱
   작성일 : 2012.08.17
   수정일 : 2012.08.17
 *********************************************************/

var CalculatorCommon = {
    /**
     * 값이 비어 있는 지 검사
     */
    isNull: function(str){
    	if (( str == null) || (str == "") || CalculatorCommon.isblank(str))
    		return true;		
    	return false;		
    },
	/**
	 * 문자열에 공백 문자만 포함된 경우에는 true를 반환하는 유틸리티 함수 
	 */
	isblank: function(str) {
		for(var i = 0; i < str.length ; i++ ){
			var c = str.charAt(i);
			if ( (c != ' ') && (c != '\n') && (c != '\et')) {
				return false;
			}
		}
		return true;
	},
    /**
     * 숫자 체크
     */
    isNumber: function(num) {
    	var re = "0123456789";
    	return CalculatorCommon.containsCharsOnly(num, re);
    },
    /**
     * 콤마제거후 숫자형으로
     */    
	toNumber: function(val){
		var str = val.replace(/,/gi,"");
		if(CalculatorCommon.isNull(str) || isNaN(str)){
			str = "0";
		}
		return new Number(str);
	},
    /**
     * 콤마제거
     */    
	delComma: function(val){
		if(CalculatorCommon.isNull(val)){
			return ""; 
		}
		var str = val.replace(/,/gi,"");
		return str;
	},	
    /**
     * 소수점 숫자 체크
     * 숫자와 소수점 한개로만 이루어진 문자열인지 체크
     */
    isNumberDot: function(num) {
    	var re = ".0123456789";
    	var dotArr = num.split(".");
    	var dotChk = dotArr.length - 1;
    	if(CalculatorCommon.containsCharsOnly(num, re) && dotChk <= 1){
   			return true;
    	}else{
    		return false;
    	}
    },
    /**
     * 숫자 포멧에 콤마 포멧으로 변경
     * 1000000 => 1,000,000
     */
    setNumComma: function(num){
		num = String(num);	// 숫자를 문자열로 변환  
		num = CalculatorCommon.delComma(num);	//기존 콤마 제거
		var reg = /(^[+-]?\d+)(\d{3})/;   // 정규식
		while (reg.test(num)){
			num = num.replace(reg, '$1' + ',' + '$2');  
		}
		return num;
    },
    /**
     * 날짜포멧 체크
     *  
     */
    chkDateFormat: function(dateStr){
		  var reg = /[0-9]{4}[.][0-9]{2}[.][0-9]{2}$/;   // 정규식
		  if(reg.test(dateStr)){
			  return true;
		  }else{
			return false;
		  }
    },
    /**
     * Date형을 날짜문자열로 변환
     * dateObj Date객체
     */
    getDateToStr: function(dateObj){
    	var year	= dateObj.getYear();
    	var month	= CalculatorCommon.getLeftFormatString('0', (dateObj.getMonth()+1)+"", 2);
    	var day		= CalculatorCommon.getLeftFormatString('0', dateObj.getDate()+"", 2);
    	
    	return year+"."+month+"."+day;

    },
    /**
     *  val 앞에 len수만큼 fmtChar를 채운다
     * ex) '0'. '3', 2 => '03' 
     */
    getLeftFormatString: function(fmtChar, val, len){
    	var fmtStr = "";
    	if(CalculatorCommon.isNull(val)){
    		return "";
    	}
    	for(var i=val.length;i<len;i++){
    		fmtStr = fmtStr + fmtChar;
    	} 
    	return fmtStr + val;
    },    
    /**
     * 공통 Select Box의 option값 세팅
     * strId : 해당 Select Box의 id값(문자열)
     */    
    setGbSelectBox: function(strId, selType){
    	var optArr = GB_Select_Box[selType];
    	var optCnt = optArr.length;
    	$("#"+strId).find("option").remove();	//option값 초기화
    	for(var i=0;i<optCnt;i++){
    		var tmpArr = (optArr[i]).split(":");
    		$("#"+strId).append("<option value='"+ tmpArr[0] +"'>"+ tmpArr[1] +"</option>");
    	}
    },    
    /**
     * 입력값이 특정 문자(chars)만으로 되어있는지 체크
     * 특정 문자만 허용하려 할 때 사용
     * ex) if (!containsCharsOnly("adfasdf","ABO")) {
     *         alert("혈액형 필드에는 A,B,O 문자만 사용할 수 있습니다.");
     *     }
     */    
    containsCharsOnly: function(num, chars){
        for (var inx = 0; inx < num.length; inx++) {
            if (chars.indexOf(num.charAt(inx)) == -1)
                return false;
         }
         return true;    	
    }
};

/**
 * FUNCTION 명 : fn_getContextPath
 * FUNCTION 기능설명 : 사이트 경로 ex)/pib
 * 
 * @author 소프트그램
 */
function fn_getContextPath() {   	
	var offset = location.href.indexOf(location.host)+location.host.length;
	var ctxPath = location.href.substring(offset, location.href.indexOf('/', offset+1));
	return ctxPath;	
}

/**
* FUNCTION 명 : fn_incNumber
* FUNCTION 기능설명 : input에 숫자 증가감소
* 
* @param : obj - input element object
* @param : incValue - 증가감소 범위 ex) 1, -1, 0.1, -0.1, ...
* @param : min - obj의 min값
* @param : max - obj의 max값
* @author 소프트그램 조욱
*/
function fn_incNumber(obj, incValue, min, max) {
	var value = CalculatorCommon.toNumber(obj.value);
	var T = Number('1e'+12);	// '1e'+12 = 100000000000
	value = Math.round((value+incValue)*T)/T;
	if(value > max) value = max;
	if(value < min) value = min;
	return value;
}

// 자연수 증가감소
function fn_incNumberN(obj, incValue, min, max){
	var value = fn_incNumber(obj, incValue, min, max);
	obj.value = (value >= 1000) ? CalculatorCommon.setNumComma(value) : value;
}

// 소수점 증가감소
function fn_incNumberPoint(obj, incValue, min, max){
	obj.value = fn_incNumber(obj, incValue, min, max).toFixed(1);
}

//실패시 호출되는 메소드 
function fn_error(errorCode, errorMessage){
	if(errorMessage != undefined){
		alert(errorMessage);
	}
}

/**
* FUNCTION 명 : fn_makeDateFormat
* FUNCTION 기능설명 : 날짜형식으로 출력
* 
* @param : str - 날짜
* @param : delimiter - 구분자
* @return : str
* @author 소프트그램 조욱
*/
function fn_makeDateFormat(str, delimiter){
	if(str == undefined){
		return;
	}
	if(str.length == 6){
		str = str.substring(0, 4) + delimiter + str.substring(4);
	}else if(str.length == 8){
		str = str.substring(0, 4) + delimiter + str.substring(4, 6) + delimiter + str.substring(6, 8);
	}
	return str;
}

/**
* FUNCTION 명 : fn_paValidateNum
* FUNCTION 기능설명 : 숫자영문한글만 입력가능 (onkeypress="fn_paValidateNum()")
* 
* @param :
* @return : 
* @author 소프트그램 김재희
*/
function fn_paIsKorEnNum(){
	if ( (event.keyCode >= 48 && event.keyCode <= 57) || 
			(event.keyCode >= 97 && event.keyCode <= 122) || 
			(event.keyCode >= 65 && event.keyCode <= 90) ||
			event.keyCode == 33 ||	//!
			event.keyCode == 63 ||	//?
			event.keyCode == 46 ||	//.
			event.keyCode == 44 ||	//,
			event.keyCode == 38 ||	//&
			event.keyCode == 94 ||	//^
			event.keyCode == 45 ||	//-
			event.keyCode == 43 ||	//+
			event.keyCode == 61 )	//=
	{
		
	} else {
		event.returnValue = false;
	}
}

/**
* FUNCTION 명 : fn_paValidateNum
* FUNCTION 기능설명 : 숫자만 입력 가능 (onkeypress="fn_paValidateNum()")
* 
* @param :
* @return : 
* @author 소프트그램 김재희
*/
function fn_paValidateNum(){
	if ( event.keyCode >=48 && event.keyCode <=57 ){
		
	} else {
		event.returnValue = false;
	}
}

/**
* FUNCTION 명 : fn_dateInspect
* FUNCTION 기능설명 : 월, 년도 입력제한 및 체크 
* 
* @param :
* @return : 
* @author 소프트그램 김재희
*/
function fn_dateInspect(bgn, obj){
	
	var title = obj.attr("title");
	
	if(bgn == 'y'){
		//받아온 문자가 년도라면 
		var year = obj.val();
		
		if(year == ''){
			alert(title+"를 입력하시기 바랍니다.");
			obj.val("");
			obj.focus();
			return false;
		}
		
		if(year.length != 4 || (year.length == 4 && Number(year) == 0)){
			alert(title+"를 정확히 입력하시기 바랍니다.");
			obj.val("");
			obj.focus();
			return false;
		}

	} else if(bgn == 'm'){
		//받아온 문자가 월이라면 
		var month = obj.val();

		if(month == ''){
			alert(title+"를 입력하시기 바랍니다.");
			obj.val("");
			obj.focus();
			return false;
		}
		
		if(Number(month) > 12 || Number(month) <= 0){
			alert(title+"을 정확히 입력하시기 바랍니다.");
			obj.val("");
			obj.focus();
			return false;
		}

	}
	return true;
}

/**
* FUNCTION 명 : fn_setSelectDuration
* FUNCTION 기능설명 : 현재로부터 기간(월)만큼 yyyymm 셀렉트박스 세팅
* 
* @param : selectBoxId - 셀렉트 박스 아이디
* @param : monthDuration - 기간(월)
* @param : today - 서버로부터 받아온 시간 yyyyMMdd
* @return : 
* @author 소프트그램 조욱
*/
function fn_setSelectDuration(selectBoxId, monthDuration, today){
	var currentDate = null;
	var currentYear = "";
	var currentMonth = "";
	if(today){
		currentYear = parseInt(today.substring(0,4));
		currentMonth = parseInt(today.substring(4,6));
	}else{
		currentDate = new Date();
		currentYear = currentDate.getFullYear();
		currentMonth = currentDate.getMonth() + 1;
	}
	if(monthDuration >= 0){
		for(var i = 0 ; i < monthDuration ;i++){
			currentMonth = twoTextformat(currentMonth);
			$("#"+selectBoxId).append($("<option value='"+currentYear+currentMonth+"'>"+currentYear+"년 "+currentMonth+"월"+"</option>"));
			if(currentMonth == 12){
				currentYear++;
				currentMonth = 0;
			}
			currentMonth++;
		}
	}else{
		for(var i = 0 ; i > monthDuration ;i--){
			tempYear = currentYear;
			tempMonth = currentMonth + i;
			if(tempMonth <= 0){
				tempYear += parseInt(tempMonth / 12) - 1;
				tempMonth += 12 * Math.abs(parseInt(tempMonth / 12)-1);
			}
			tempMonth = twoTextformat(tempMonth);
			$("#"+selectBoxId).append($("<option value='"+tempYear+tempMonth+"'>"+tempYear+"년 "+tempMonth+"월"+"</option>"));
		}
	}
	currentMonth = twoTextformat(currentMonth);
	var current = ""+currentYear+currentMonth;
	$("#"+selectBoxId).val(current);
}

/**
* FUNCTION 명 : twoTextformat
* FUNCTION 기능설명 : 10월 이전이면 앞에 0을 붙임
* 
* @param : textDate
* @return : 
* @author 소프트그램 김재희
*/
function twoTextformat(textDate){
	if(String(textDate).length == 1){
		textDate = "0"+textDate;
	}
	return textDate;
}

/**
* FUNCTION 명 : fn_paCheckDate
* FUNCTION 기능설명 : 기간검색 체크 
* 
* @param : textDate
* @return : 
* @author 소프트그램 김재희
*/
function fn_paCheckDate(fromdate, todate){

	var fromdateT = fromdate.val().replace(/\./g,'');
	var todateT = todate.val().replace(/\./g,'');

	if(fromdateT == ''){
		alert("시작일을 입력하시기 바랍니다.");
		return false;
	}
	
	if(todateT == ''){
		alert("종료일을 입력하시기 바랍니다.");
		return false;
	}
	
	if(fromdateT.length != 8){
		alert("시작일을 정확히 입력하시기 바랍니다.");
		return false;
	}

	if(todateT.length != 8){
		alert("종료일을 정확히 입력하시기 바랍니다.");
		return false;
	}
	
	if(fromdateT > todateT){
		alert("시작일은 종료일보다 클 수 없습니다.");
		return false;
	}
	return true;
}

/**
 * FUNCTION 명 : fn_setBeginAfterYear
 * FUNCTION 기능설명 : 주어진 기간동안 Select Box 값 셋팅.
 * 
 * @param selectBoxId : Select Box Id
 * @param BeginYear : 시작년도
 * @param AfterYear : 마지막년도
 * 
 * @return N/A
 * @author 소프트그램 김재희
 */
function fn_setBeginAfterYear(selectBoxId, BeginYear, AfterYear){
	if(BeginYear.length != 4 || AfterYear.length != 4 || parseInt(BeginYear) > parseInt(AfterYear)){
		var currentDate = new Date();
		$("#"+selectBoxId).append("<option value='"+currentDate.getFullYear()+"'>"+currentDate.getFullYear()+"</option>");
	} else {
		for(var i = BeginYear; i <= AfterYear ;i++){
			$("#"+selectBoxId).append("<option value='"+i+"'>"+i+"</option>");
		}
	}
}

/**
 * FUNCTION 명 : fn_autoItemAjax
 * FUNCTION 기능설명 : 자동으로 중분류 소분류를 조회한다.
 * 
 * @param value 	: 입력단어
 * @param formID	: form 아이디
 * @param varStatus	: 순서
 * @param getClass1	: 대분류
 * 
 * @return N/A
 * @author 소프트그램 김재희
 */
function fn_autoItemAjax(value, formID, varStatus, getClass1){
	
	var classAllValue = "";

	if(formID == 'frmInsertAccountbook'){
		//건드리면 체크하지 않음.
		if($("#classClickYN").val() != 'N'){
			return;
		}
	}
	
	classAllValue = $("#"+formID+" input:hidden[name=classAllList]:eq("+varStatus+")").val();
	
	var param = {
			class1 : getClass1,
			formID : formID,
			varStatus : varStatus,
			itemkey : value,
			classAll : classAllValue
	};
	
	gf_ajaxCall("ADWBPAPA20411", param, "fn_autoItemSetting", "fn_error");
}

function fn_autoItemSetting(data){
	var regData = data.configList;

	var getClass1 = data.class1;
	var varStatus = data.varStatus;
	var value = data.itemkey;
	var formID = data.formID;

	var classAll = data.classAll;

	var repData1 = data.selectClass2List;
	var repData2 = data.selectClass3List;

	var class2Boolean = $("#class2 option:selected").val() == data.class2 ? true : false;
	var class3Boolean = $("#class3 option:selected").val() == data.class3 ? true : false;
	
	if(formID != 'frmInsertAccountbook'){
		$("#"+formID+" input:hidden[name=classAllList]:eq("+varStatus+")").val(classAll);
	} else {
		if(regData == null && $("#class2 option:selected").val() == '' && $("#class3 option:selected").val() == ''){
			//추천데이터 없고 선택사항 없을때 
			return;
		}
	}
	
	var options1 = "";
	options1 += '<option value="" selected> </option>';
	if(formID == 'frmInsertAccountbook' && class2Boolean){
	} else {
		for ( var i = 0; i < repData1.length; i++) {
			options1 += '<option value="'+repData1[i].class2+'" title="'+repData1[i].itemname+'">'+repData1[i].itemname+'</option>';
		}
		$("#"+data.formID+" select[name=class2]:eq("+data.varStatus+")").html(options1);
		$("#"+data.formID+" select[name=class2]:eq("+data.varStatus+") option[value="+data.class2+"]").attr("selected","selected");
	}

	var options2 = "";
	options2 += '<option value="" selected> </option>';

	if(!(repData2 == null)){

		if(formID == 'frmInsertAccountbook' && class2Boolean && class3Boolean){
		} else {
			for ( var i = 0; i < repData2.length; i++) {
				options2 += '<option value="'+repData2[i].class3+'" title="'+repData2[i].itemname+'">'+repData2[i].itemname+'</option>';
			}
			$("#"+data.formID+" select[name=class3]:eq("+data.varStatus+")").html(options2);
			$("#"+data.formID+" select[name=class3]:eq("+data.varStatus+") option[value="+data.class3+"]").attr("selected","selected");
		}
	} else {
		$("#"+data.formID+" select[name=class3]:eq("+data.varStatus+")").html(options2);
	}
}

/**
 * FUNCTION 명 : gf_NumCheckTypes
 * FUNCTION 기능설명 : 숫자 및 BackSpace만 입력 허용 (common.js의 gf_checkTypes는 오페라에서 BackSpace키가 입력되지 않아 수정함
 * 
 * @param obj : INPUT TYPE Object
 * 
 * @return N/A
 * @author 소프트그램 이대건
 */
function gf_NumCheckTypes(obj){
    try{
        keynum = event.keyCode;
        
        obj.style.imeMode = "disabled";
        if(!((keynum >= 0x30 && keynum <= 0x39) || (keynum == 0x08))){
        	
            obj.focus();
            event.returnValue = false;
        }
        else return true;
    }
    catch(e){
        alert("checkTypes error :" + e.Message());
	}
}

/**
 * FUNCTION 명 : gf_checkNumTypesOnBlur
 * FUNCTION 기능설명 : 숫자 및 BackSpace만 입력 허용 (common.js의 gf_checkTypesOnBlur 오페라에서 BackSpace키가 작동하지않아 수정함
 * 
 * @param obj : INPUT TYPE Object
 * 
 * @return N/A
 * @author 소프트그램 이대건
 */
function gf_checkNumTypesOnBlur(obj){
    try{
    	var result = true;

        for(var i = 0;i < obj.value.length; i++){
        	var keynum = obj.value.charCodeAt(i);

            obj.style.imeMode = "disabled";
            if(!((keynum >= 0x30 && keynum <= 0x39) || (keynum == 0x08))){
            	result = false;
            }
        }

        if(obj.parentNode.className == "bg_input bg_input_on") {
        	obj.parentNode.className = "bg_input";
		}
		if(obj.parentNode.className == "bg_input bg_input_on mr10") {
			obj.parentNode.className = "bg_input mr10";
		}
		if(obj.className == "txt") {
			obj.style.borderColor = "#CCC";
		}

        if(result){
        	return true;
        }
        else{
        	alert("입력한 값의 형식을 확인하시기 바랍니다.");
        	obj.value = "";
        	obj.focus();
        }
    }
    catch(e){
        alert("checkTypesOnBlur error :" + e.Message());
    }
}

/**
 * FUNCTION 명 : fn_checkStrLength
 * FUNCTION 기능설명 : TEXT 길이 체크하여 일정 크기 이상은 입력 불가하도록 설정한다. 
 * 
 * @param str : INPUT TYPE String
 * @param maxFileByte : INPUT TYPE Int
 * @param title : INPUT TYPE String
 * 
 * @return N/A
 * @author 소프트그램 김재희
 */
function fn_checkStrLength(str, maxFileByte, title){
	var objPattern = /^[ㄱ-ㅎ가-힣]+$/;
	
	var strLen = str.length;
	var nameByte = 0;
	for ( var i = 0; i < strLen; i++) {
		if(objPattern.test(str.charAt(i))){
			nameByte += 3;
		} else {
			nameByte += 1;
		}
	}
	
	if(nameByte > maxFileByte){
		alert(title+"의 길이는 "+maxFileByte+"Byte 보다 작아야 합니다.\n(한글 : 3Byte, 영문,숫자 : 1Byte)");
		return false;
	}
	return true;
}

/**
 * FUNCTION 명 : fn_validateDate
 * FUNCTION 기능설명 : 시작일자<종료일자, 종료일자<오늘
 * 
 * @param fromDate : 시작일자
 * @param toDate : 종료일자
 * @param today : 서버시간 오늘
 * 
 * @return N/A
 * @author 소프트그램 조욱
 */
function fn_validateDate(fromDate, toDate, today){
	if(fromDate > toDate){
		alert("시작일은 종료일보다 클 수 없습니다.");
		return false;
	}
	if(toDate > today){
		alert("종료일은 오늘보다 클 수 없습니다.");
		return false;
	}
	return true;
}

/**
 * FUNCTION 명 : setSearchDate
 * FUNCTION 기능설명 : 달력 날짜(당일, 1주, 1달, 3달)를 선택했을때 셋팅
 * 
 * @param duration : 날짜(당일, 1주, 1달, 3달)(n, 1w, 1m, 3m...)
 * 
 * @return N/A
 * @author 소프트그램 김재희
 */

function setSearchDate(duration, getDateto){

	var dateTo = ($("#dateto").val()).replace(/\./g,'');
	
	if(getDateto){
		dateTo = getDateto;
		$("#dateto").val(fn_makeDateFormat(getDateto,'.'));
	}

	if(duration == 'n'){
		$("#datefrom").val($("#dateto").val());
	} else {

		var number = duration.substring(0, duration.length-1);
		var type = duration.substring(duration.length-1, duration.length);
		
		switch(type) {
			case "w":
				fromDate = shiftDate(dateTo, 0, 0, -(number*7));
				break;
			case "m":
				fromDate = shiftDate(dateTo, 0, -number, 0);
				break;
			case "y":
				fromDate = shiftDate(dateTo, -number, 0, 0);
				break;
		}
		$("#datefrom").val(fn_makeDateFormat(fromDate,'.'));	//조회기간From
	}
}

/**
 *    날짜를 y, m, d만큼 이동해서 리턴 (dt : YYYYMMDD(문자열), 리턴타입 : YYYYMMDD)
 *    y, m, d : +는 주어진 날짜를 앞으로 이동(더하기), -는 주어진 날짜를 뒤로 이동(빼기)
 *    
 */
function shiftDate(dt, y, m, d)
{
    var org_dt = new Date();
    var yy = dt.substr(0, 4);
    var mm = dt.substr(4, 2);
    var dd = dt.substr(6, 2);

    org_dt.setYear(yy);   
    org_dt.setMonth(mm-1);
    org_dt.setDate(dd);

    var new_dt = org_dt;
    new_dt.setDate(org_dt.getDate() + d);
    new_dt.setMonth(new_dt.getMonth() + m);
    new_dt.setYear(new_dt.getFullYear() + y);

    var n_yy  = new_dt.getFullYear();
    var n_mm = new_dt.getMonth()+1; 
    var n_dd   = new_dt.getDate();

    if (("" + n_mm).length == 1)     { n_mm = "0" + n_mm;     }
    if (("" + n_dd).length   == 1)     { n_dd = "0" + n_dd;  }

    return ""+n_yy+n_mm+n_dd;
}

function fn_cutByteLenOfString(str, maxLen) {
    var retStr = "";
    var objPattern = /^[ㄱ-ㅎ가-힣]+$/;
    
    if(str != null && str != "") {
        var chkLen = 0;

        var strLen = str.length;
        for(var i=0; i<strLen; i++) {
        	if(objPattern.test(str.charAt(i))){
        		chkLen += 3;
    		} else {
    			chkLen += 1;
    		}
        	
            if(chkLen > maxLen) {
                retStr = str.substring(0,i);
                break;
            }
        }
    }
    return retStr;
}
