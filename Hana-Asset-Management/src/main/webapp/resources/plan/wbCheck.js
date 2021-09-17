/*******************************************************************************
* 업     무    명 :  Validation Java Script(계좌 관련 기능성 함수 제공)
* 
* 서브   업 무 명 :  각종 데이터의 유효성 검사 함수 모음
* 
* 설           명 :  데이터 유효성 제공
* 
* 작     성    자 :  XXXX
* 
* 작     성    일 :  XXXX.XX.XX 
* 
* 변  경   이  력: 
* 
* Version   작성자    업   무    일    자          내        용            요 청 자 
* --------   -------   ---------   ----------      ----------------      -------- 
*   1.1      이재현   기능공통   2012.11.     웹접근성 관련 수정 (As-Is = /jss/wfcb.js)
*
*******************************************************************************/


//<<SET GLOBAL VALUE>>
var IS_HIDDEN_LINK = true;	// 링크 오버시 status 표시 불가
var IS_INT_KEY = false;	// 특수키 기능 제한(Ctrl + R, Ctrl + N, F5)		// 개발시불편함으로 임시로 해제
var IS_INT_MOUSE = false; // 마우스 기능 제한(오른쪽 버튼 무시, drag 무시,  //only-test
var ADMIN_URL = 'wsm.wooribank.com';

// browser check
if ( $.browser.mozilla ){
	var isNS = true;	// mozilla
	var isIE = false;	// other
} else {
	var isIE = true;
	var isNS = false;
}

// DOM ready : 초기화
$(function() {
	if(typeof wbUI !== 'undefined') var perfWbCheckDomReady = perf();	//성능 측정
	
    jsMenuMove();
    Initial();
    PwdInit();	// 통합제거: PwdInit1(), JuminInit(), UserPwdInit()
    
    $(document).ajaxSuccess(function(e, xhr, ajx_opt){ setTimeout('Initial()',0);  });	// aJax loaded DOM Initail()
    
    if(typeof wbUI !== 'undefined') wbUI.debug('wbCheck.js DOM Ready - '+perf(perfWbCheckDomReady)+'ms');	//성능 측정
});

/*******************************************************************************
 * top메뉴 focus이동
 * 		- 대분류, 중분류 메뉴에 Focus를 주기위해 top의 해당 함수를 호출한다.
 * 		- 모든 Body 페이지에서 처리해야 하므로, 공통 include file에서 처리한다.
 *	//top.frames['one_hidden'].document.all['songNo'].value
 * @param	obj - 폼객체
 * @returns {없음}
 *******************************************************************************/
function jsMenuMove() {
	// 팝업창은 없을 것이므로..
	try{
		if ( parent.frames['topmenu'] != null &&  parent.frames['topmenu'].document.all['topMenuMove'].value == "Y") {
			parent.frames['topmenu'].menuMoveEvent(document.location);
		}
	} catch(e){}
}

/*******************************************************************************
 * INITIAL 관련 : form element 초기화 (event command, css) 
 * @param 없음
 * @returns {없음}
 *******************************************************************************/
function Initial(){
    var isFocusFirstObj = false;
    if (  $('#loginDiv8').length > 0 ){ isFocusFirstObj = true; }
    try { if(NOT_USE == true){ return; } } catch (e) { }

    $(document).unbind('.Initial');	// 중복 binding 제거
    
	$('body').bind('load.Initial', function(e){ wfcb_init(); } );  // bind
    if (IS_HIDDEN_LINK) { $('a').bind('mouseover.Initial, focus.Initial', function(e){ statusRemove(); }); }	  // bind
    
    // : input
    //$('input:password').each(function(n){ $(this).addClass('pw_input'); });													// style
    $('input:radio, input:checkbox').bind('keydown.Initial', function(e){ noBackSpace(); });	// bind
    $('input:text, input:password').each(function(n){
    	var cur_o = this;
    	
    	var cur_class = $(cur_o).attr("class");
    	if (!cur_class) {
    		cur_class = "";
    	}
    	
    	if (cur_class.indexOf("xwup") != 0) { // SF-ANYSIGN 예외 처리
    		if( $(cur_o).attr('right') != null ){ $(cur_o).css('textAlign','right'); }												// style
    		if( $(cur_o).attr('notnull') == 'true' ){ $(cur_o).css('backgroundColor','#E8F2FD'); }							// style
    		if( $(cur_o).attr('format') != null || $(cur_o).attr('datatype') != null){	setDefaultValue( cur_o ); }		// call func
    		if( $(cur_o).attr('onblur') == null ){ $(cur_o).bind('blur.Initial', function(e){ wfcb_onblur( cur_o ); }); }	// bind
    		// not readonly
    		if( !$(cur_o).attr('readonly') ){ 
    			if( $(cur_o).attr('onfocus') == null ){ $(cur_o).bind('focus.Initial', function(e){ wfcb_onfocus( cur_o ); }).bind('mouseup.Initial', function(e){ if(e.preventDefault){ e.preventDefault(); } }); }		// bind
    			if( $(cur_o).attr('onkeyup') == null ){ $(cur_o).bind('keyup.Initial', function(e){ wfcb_onkeyup( cur_o, e ); }); }			// bind
    			if( $(cur_o).attr('onkeydown') == null ){ $(cur_o).bind('keydown.Initial', function(e){ wfcb_onkeydown( cur_o ); }); }	// bind
    			if( $(cur_o).attr('onkeypress') == null ){ $(cur_o).bind('keypress.Initial', function(e){ wfcb_onkeypress( cur_o, e ); }); }		// bind
    			//검토필요: 클립보드 복사- if( $(cur_o).attr('onpaste') == null ){ $(cur_o).bind('paste.Initial', function(e){ wfcb_onpaste( cur_o ); }); }	// bind
    			if( $(cur_o).attr('mask') == null){ $(cur_o).attr('mask','n'); }	// attr
    			
    			setImeMode( cur_o );	// call func : 한글입력
    			if( $(frm_wfcb_onsubmit_ok).find( cur_o ).length == 0 ){	// 	wfcb_onsubmit 검증 성공 form 제외
    				obj_format( cur_o );	// call func
    			}
    			// event 적용
    			/*	접근성관련 제거
            if (!isFocusFirstObj && $(cur_o).attr('name') != 'search_query') { // 검색엔진 자동 포커스 금지
                try {
                    isFocusFirstObj = true;
                    window.focus();
                    $(cur_o)[0].focus();
                } catch (e) { }
            }
    			 */
    		}
    	}
    	
    });
    // textarea
    $('textarea').each(function(n){
    	setImeMode( this );								// call func
    	//$(this).css('backgroundColor', '#FEE8DD');	// style
    });	
 
    // keyboard & mouse
    $(document).bind('mousemove.Initial', function(e){ findXY(e); });	// bind
    if(window.location.href.indexOf(ADMIN_URL) == -1){
    	if(IS_INT_MOUSE){  $(document).bind('contextmenu.Initial', function(e){ return processMouse(); }); }  // bind
    	if(IS_INT_KEY){ $(document).bind('keydown.Initial', function(e){ processKey(e); }); }			// bind
    }
    
    // print : before=hideDivs() /after=showDivs()
    if (window.matchMedia) {	// safari, chrome
        var mediaQueryList = window.matchMedia('print');
        mediaQueryList.addListener(function(mql) {
            if (mql.matches) {
            	hideDivs();
            } else {
            	showDivs();
            }
        });
    }else{	
    	window.onbeforeprint = hideDivs;	// onbeforeprint: jquery event command x (only javascript)
    	window.onafterprint = showDivs;	// onafterprint: jquery event command x (only javascript)
    }
}

var isPwdClassName;
var isJuminClassName;
var isPwdClassName1;
var isUserPwdClassName;
/*******************************************************************************
 * 패스워드,주민번호,사용자패스워드 입력란 디폴트외에 콜 ('email_input1' 클래스적용)
 * 		- 해당페이지에서 isPwdClassName = true ||  isPwdClassName1=true 로 설정
 * @param 없음
 * @returns {없음}
 *******************************************************************************/
function PwdInit() {
	try {
		if ( isPwdClassName ) {
			$('form[name=frm] *[name=PWD]').attr('class', 'email_input1');
		}
		// 통합 : PwdInit1()
		if ( isPwdClassName1 ) {
			$('form[name=frm] *[name=INP_PWNO_10]').attr('class', 'email_input1');
		}
		// 통합 : JuminInit()
		if ( isJuminClassName ) {
			$('form[name=frm] *[name=PSRG_NO]').attr('class', 'email_input1');
		}
		// 통합 : UserPwdInit()
		if ( isUserPwdClassName ) {
			$('form[name=frm] *[name=USERPWDNO_8]').attr('class', 'email_input1');
		}
	} catch (e) {}
}

/*******************************************************************************
 * init() 호출 : Initial()에서 사용
 * @param 없음
 * @returns {Boolean}
 *******************************************************************************/
function wfcb_init() {
	try{
		if(typeof wbUI !== 'undefined') var perfWfcbInit = perf();	//성능 측정
		init();
		if(typeof wbUI !== 'undefined') wbUI.debug('wfcb_init - '+perf(perfWfcbInit)+'ms');	//성능 측정
	}
	catch(e) {}
}

/*******************************************************************************
 * 상태표시줄 제거 : Initial()에서 사용 
 * @param 없음
 * @returns {Boolean}
 *******************************************************************************/
function statusRemove() {
	window.status='';
	return true;
}

/*******************************************************************************
 * backspace 오류방지 : Initial()에서 사용
 * @param 없음
 * @returns {Boolean}
 *******************************************************************************/
function noBackSpace(){
    return false;
}

/*******************************************************************************
 * 기본 디폴트 값을 정의한다. : Initial()에서 사용
 * @param obj : 대상 element object
 * @returns {없음}
 *******************************************************************************/
function setDefaultValue(obj){
    var datatype = toUpperCase( $(obj).attr('datatype') );
    var lowBound = $(obj).attr('lowBound');
    // Style sheet 적용
    switch (datatype) {
        case "CURRENCY" :
        	$(obj).attr('format','CURRENCY');
            // 기본 최소값
            if (lowBound == null){ $(obj).attr('lowBound','1'); }
            break;
        case "DOTCURRENCY" :
        	$(obj).attr('format','DOTCURRENCY');
            break;
        case "DATE" : break; case "EMAIL" : break; case "REGNO" : break; case "CUSTNO" : break; case "DDDPHONENUM" : break; case "ACCTNO" : break;
        default :
            if ( !$(obj).attr('mask') ){ $(obj).attr('mask','N'); }
    }
    var format   = toUpperCase( $(obj).attr('format') );
    switch (format) {
        case "CURRENCY" :
        case "DOTCURRENCY" :
        	$(obj).css('textAlign','right');
            break;
        case "DATE" : break; case "EMAIL" : break; case "REGNO" : break; case "CUSTNO" : break; case "DDDPHONENUM" : break; case "ACCTNO" : break;
    }
}

/*******************************************************************************
 * onblur 관련 : Initial()에서 사용
 * @param obj : 대상 element object
 * @returns {true}
 *******************************************************************************/
function wfcb_onblur(obj) {
	 if ( $(obj).length == 0 ){ var obj = this; }
	 if ($(obj).attr('uppercase')){ $(obj).val( $(obj).val().toUpperCase() ); }
	 if ($(obj).attr('lowercase')){ $(obj).val( $(obj).val().toLowerCase() );  }
	 if (!$(obj).attr('readonly')){ obj_format(obj); }
	 return true;
}

/*******************************************************************************
 * onfocus 관련 : Initial()에서 사용
 * @param obj : 대상 element object
 * @returns {true}
 *******************************************************************************/
function wfcb_onfocus(obj) {
	if ( $(obj).length == 0 ){ var obj = this; }
	// readOnly 되어 있는 경우에는 포맷 삭제 금지
	if (!$(obj).attr('readonly')){ 
		obj_removeformat(obj);	// 포맷삭제
		if( !!$(obj).attr('format') ){ $(obj).select(); }
	}
}

/*******************************************************************************
 * onkeyup 관련 : element attribute[format(형식),amtType(한글단위:1,2,3),amtMax(최대값)] 에 따라 숫자적용 : Initial()에서 사용 
 * @param obj : 대상 element object
 * @param e : event
 * @returns {없음}
 *******************************************************************************/
function wfcb_onkeyup(obj, e) {
	var datatype = toUpperCase( !!$(obj).attr('datatype')?$(obj).attr('datatype'):'' );
    if( datatype!='' && datatype.indexOf('H') < 0 && /[ㄱ-힣]/gi.test($(obj).val()) ){ $(obj).val( $(obj).val().replace(/[ㄱ-힣]/gi,'') );  }	// 한글입력제어
    
    if (!e) { e = event; }
    if (e.which == 37 || e.which == 39 || e.which == 9 || e.which == 16){ return; }
    if ( $(obj).length == 0 ){ var obj = this; }
    
    var format = toUpperCase( !!$(obj).attr('format')?$(obj).attr('format'):'' );
    var amtType = toUpperCase( !!$(obj).attr('amtType')?$(obj).attr('amtType'):'' ); // 한글금액 표시
    var amtMax = $(obj).attr('amtMax'); // 최대금액 처리
    var str = $(obj).val();
    if ( $(obj).attr('uppercase')!=null ){ $(obj).val( str.toUpperCase() ); }
    
    // 포맷적용
    switch (format) {
        case "CURRENCY": //999,999,999
            if (str == '0') {
            	// 한글금액 표시
                jsPutHanAmt(obj, amtType);	
                break;
            }
            
            str = str.replace(/^0*/, '').replace(/,/g, '');
            
            // 최대금액 처리
            if (amtMax != null) {	
                var numStrAmt = parseInt(str);
                var numAmtMax = parseInt(amtMax);
                
                if (numStrAmt > numAmtMax) {
                    alert('최대값(' + numAmtMax + ')보다 큰 값이 입력 되었습니다.');
                    str = amtMax;
                    var strLen = str.length;
                    var retStr = "";
                    for (var i = 0; i < strLen; i++) {
                        if ((i % 3 == strLen % 3) && (i != 0)){
                        	retStr += ",";
                        }
                        retStr += str.charAt(i);
                    }
                    $(obj).val( retStr );;
                    $(obj).trigger('blur');
                    // 한글금액 표시
                    jsPutHanAmt(obj, amtType);
                    break;
                }
            }
            
            var strLen = str.length;
            var retStr = "";
            for (var i = 0; i < strLen; i++) {
                if ((i % 3 == strLen % 3) && (i != 0)){
                	retStr += ",";
                }
                retStr += str.charAt(i);
            }
            $(obj).val( retStr );
            // 한글금액 표시
            jsPutHanAmt(obj, amtType);
            break;
        case "DOTCURRENCY": //999,999,999
            var afterNo = "";
            var preNo = "";
            if (str.indexOf('.') > -1) {
                afterNo = str.substring(str.indexOf('.') + 1);
                afterNo = "." + afterNo.replace(/\,/g, '').replace(/\./g, '');
                preNo = str.substring(0, str.indexOf('.'));
            } 
            else {
                afterNo = "";
                preNo = str;
            }
            preNo = preNo.replace(/^0*/, '').replace(/,/g, '')
            if (preNo == "")
                preNo = "0";
            var preNoLen = preNo.length;
            var retStr = "";
            for (var i = 0; i < preNoLen; i++) {
                if ((i % 3 == preNoLen % 3) && (i != 0))
                    retStr += ",";
                retStr += preNo.charAt(i);
            }
            retStr = retStr + afterNo;
            $(obj).val( retStr );
            break;
        case "DATE": //999,999,999
            break;
    }
}

var isGoSubmit = false;
/*******************************************************************************
 * onkeydown 관련 : 기능없음. : Initial()에서 사용 
 * @param obj : 대상 element object
 * @returns {없음}
 *******************************************************************************/
function wfcb_onkeydown(obj) {
}

/*******************************************************************************
 * onkeypress 관련 : 데이터 타입 검증. : Initial()에서 사용
 * @param obj : 대상 element object
 * @param e : event
 * @returns {없음} 
 *******************************************************************************/
function wfcb_onkeypress(obj, e) {
	if ( $(obj).length == 0 ){ var obj = this; }
	if (!e) { e = event; }
	
    var datatype = toUpperCase( !!$(obj).attr('datatype')?$(obj).attr('datatype'):'' );
    var mask     = toUpperCase( !!$(obj).attr('mask')?$(obj).attr('mask'):'' );
    var key      = String.fromCharCode(e.which);

    if (datatype == 'USERID' || datatype == 'PASSWORD') return;
    
    var rg = /[0-9a-zA-Zㄱ-힣_-~!@#$%^&*\(\)\-=+|:;?"<,.>'\\\/\s\[\]]/;
    if( !rg.test( key ) ){ return; }

    // 데이터 타입 검증
    switch (datatype) {
        case 'CURRENCY' :
            if ( !(isValidMask(key,',') && isValidType(key,'N')) ){ if(e.preventDefault){ e.preventDefault(); }else{ e.returnValue = false; } }
            break;
        case 'DOTCURRENCY' :
            if ( !(isValidMask(key,',.') && isValidType(key,'N')) ){ if(e.preventDefault){ e.preventDefault(); }else{ e.returnValue = false; } }
            break;
        case 'DATE' :
            if ( !(isValidMask(key,'N') && isValidType(key,'N')) ){ if(e.preventDefault){ e.preventDefault(); }else{ e.returnValue = false; } }
            break;
        case 'EMAIL' :
            if ( !(isValidMask(key,'@._') && isValidType(key,'AN')) ){ if(e.preventDefault){ e.preventDefault(); }else{ e.returnValue = false; } }
           	break;
        case 'REGNO' :
            if ( !(isValidMask(key,'N') && isValidType(key,'N')) ){ if(e.preventDefault){ e.preventDefault(); }else{ e.returnValue = false; } }
            break;
        case 'CUSTNO' :
            if ( !(isValidMask(key,'N') && isValidType(key,'N')) ){ if(e.preventDefault){ e.preventDefault(); }else{ e.returnValue = false; } }
            break;
        case 'DDDPHONENUM' :
            if ( !(isValidMask(key,'N') && isValidType(key,'N')) ){ if(e.preventDefault){ e.preventDefault(); }else{ e.returnValue = false; } }
            break;
        case 'ACCTNO' :
            if ( !(isValidMask(key,'N') && isValidType(key,'N')) ){ if(e.preventDefault){ e.preventDefault(); }else{ e.returnValue = false; } }
            break;
        default :
            if ( !$(obj).attr('mask') ){ $(obj).attr('mask', 'N'); }
            if ( !(isValidMask(key,mask) && isValidType(key,datatype)) ){ if(e.preventDefault){ e.preventDefault(); }else{ e.returnValue = false; } }
            if ( datatype!='' && mask.indexOf(' ')<0 && key==' '  ){ if(e.preventDefault){ e.preventDefault(); }else{ e.returnValue = false; } }
    }
}

/*******************************************************************************
 * obj에 클립보드 text 붙이기 : Initial()에서 사용 : [IE전용]
 * @param obj : 붙여넣을 element object
 * @returns {없음, event.returnValue = false}
 *******************************************************************************/
function wfcb_onpaste( obj ) {
	if( !$.browser.msie ){ return false; }
	if ( $(obj).length == 0 )	var obj = this;
	var clipdata = window.clipboardData.getData('Text');
	var datatype = toUpperCase( $(obj).attr('datatype') );
	if(!!clipdata){
		if (datatype == 'N' || datatype == 'ACCTNO'){ clipdata = clipdata.replace(/-/gi,''); }
		$(obj).val( clipdata );
	}
	if(event.preventDefault){ event.preventDefault(); }else{ event.returnValue = false; }
}

/*******************************************************************************
 * 한글 우선 입력관련 : Initial()에서 사용 - 한글 입력가능한 필드에는 한글 우선, 없으면 영문우선
 * 		- *참고: ime-mode는 멀티브라우징되지 않음
 * @param obj : 대상 element object
 * @returns {Boolean}
 *******************************************************************************/
function setImeMode(obj){
    var datatype = toUpperCase( !!$(obj).attr('datatype')?$(obj).attr('datatype'):'' );
    if (!datatype) {
        $(obj).css('imeMode', 'active');
        return;
    }
    if (datatype.indexOf("H") == -1) {
    	$(obj).css('imeMode', 'disabled');    
    } else {
    	$(obj).css('imeMode', 'active');
    }
}

/*******************************************************************************
 * 출력 포맷 적용 : Initial()에서 사용
 * @param obj : 대상 element object
 * @returns {Boolean}
 *******************************************************************************/
function obj_format(obj) {
	var format = toUpperCase( !!$(obj).attr('format')?$(obj).attr('format'):'' );
	var str = $(obj).val();
	if (!str || str == "") { return; }
    
    switch(format){
        case 'CURRENCY' : 		//금액 형식
            var retStr = '';
            if(str == '0'){ break; }
            str = str.replace(/^0*|\,/g,'');
            var strLen = str.length;
            for(var i=0; i<strLen; i++){
                if ((i%3 == strLen%3) && (i != 0)) {
                    retStr += ",";
                }
                retStr += str.charAt(i);
            }
            $(obj).val( retStr );
            break;
        case 'DOTCURRENCY' : 		//'.' 있는 금액 형식
            var retStr = '';
            var preNo = '';
            var afterNo = '';
            if ( str.indexOf('.') > -1 ){
                preNo = str.substring(0, str.indexOf('.'));
                afterNo = str.substring(str.indexOf('.'));
            }else{
                preNo = str;
                afterNo = '.';
            }
            preNo = preNo.replace(/^0*|\,/g,'');
            if (preNo == ''){ preNo = '0'; }
            var preNoLen = preNo.length;
            for(var i=0; i<preNoLen; i++){
                if ((i%3 == preNoLen%3) && (i != 0)) {
                    retStr += ',';
                }
                retStr += preNo.charAt(i);
            }
            if ( !$(obj).attr('decimalplace') ){
            	$(obj).val( retStr + rpad(afterNo,Number( $(obj).attr('decimalplace') )+1, '0') );
            }
            break;
        case 'DATE' : 			//날짜 형식
            var retStr = '';
            retStr = str.substring(0,4) + '.' + str.substring(4,6) + '.' + str.substring(6,8);
            obj.value = retStr;
            break;
        case 'REGNO' : 			//주민등록 형식
            var retStr = '';
            retStr = str.substring(0,6) + '-' + str.substring(6,13);
            $(obj).val( retStr );
            break;
        case 'CUSTNO' : 		//사업자번호 형식
            var retStr = '';
            retStr = str.substring(0,3) + '-' + str.substring(3,8) + '-' + str.substring(8);
            $(obj).val( retStr );
            break;
        case 'ACCTNO' : 		//계좌번호 형식 (새마을금고 : xxxx-xx-xxxxxx-x)
            break;
        case 'CARDNO' : 		//카드번호 형식
            var retStr = '';
            retStr =  str.substring(0,4) + '-' + str.substring(4,8) + '-' + str.substring(8,12) + '-' + str.substring(12,16);
            $(obj).val( retStr );
            break;
    }
}

/*******************************************************************************
 * 마우스조작 방지용 : Initial()에서 사용 : oncontextmenu 에 사용됨
 * @param e : event
 * @returns {false}
 *******************************************************************************/
function processMouse() { 
	return false;
}

/*******************************************************************************
 * 키보드조작 방지용 : Initial()에서 사용 - 특수키 기능 제한(Ctrl + R, Ctrl + N, F1~F12)
 * @param e : event
 * @returns {없음}
 *******************************************************************************/
function processKey(e) {
	if(!e){ e = event; }
	// which = N(:78), R(:82), F1~F12(:112~123)
	if( (e.ctrlKey == true && (e.which == 78 || e.which == 82)) || (e.which >= 112 && e.which <= 123) ) {
		if(e.stopPropagation){ e.stopPropagation(); }else{ e.cancelBubble = true; }	// stop bubble
		if(e.preventDefault){ e.preventDefault(); }else{ e.returnValue = false; }		// stop event
	} 
}

/*******************************************************************************
 * 인쇄
 * @returns {없음}
 *******************************************************************************/
function printDiv () {
	window.print();
}

/*******************************************************************************
 * 인쇄 관련 before - table 높이 100% --> 10%
 * @returns {없음}
 *******************************************************************************/
function hideDivs() {
	$('table[height="100%"]').each(function(n){ $(this).attr('div', 'min').css('height', '10%'); });
}

/*******************************************************************************
 * 인쇄 관련 after - table 높이 10% --> 100%
 * @returns {없음}
 *******************************************************************************/
function showDivs() {
	$('table[div=min]').each(function(n){ $(this).css('height', '100%'); });
}

/*******************************************************************************
 * 인쇄 관련 - 기능없음.
 * @returns {없음}
 *******************************************************************************/
function show_printInfo() {
}

/*******************************************************************************
 * 포맷 삭제
 * @param obj : 대상 element object
 * @returns {없음}
 *******************************************************************************/
function obj_removeformat(obj) {
    var format = toUpperCase( !!$(obj).attr('format')?$(obj).attr('format'):'' );
    var str = $(obj).val();
    switch(format){
        case "DATE":
        case "ACCTNO":
        case "CARDNO":
        case "CUSTNO":
        case "REGNO" : 			//날짜 형식
            $(obj).val(str.replace(/-/g,'')); 
            break;
        case "CURRENCY" : 		// 금액
        	$(obj).val(str.replace(/\,/g,''));
            break;
        case "DOTCURRENCY" : 	// 금액
        	$(obj).val(str.replace(/\,/g,''));
            break;
    }
}

hanNumber = new Array('영', '일', '이', '삼', '사', '오', '육', '칠', '팔', '구');
fourFour = new Array('일', '만', '억', '조');
fourDigit = new Array('일', '십', '백', '천');
/*******************************************************************************
 * 금액을 한글로 표시한다.
 * 		- 표시 innerHTML element id = obj id + '_KorAmt'
 * @param obj : 대상 element object
 * @param type : type(화폐단위: null=원, '1'=만, '2'=십만, '3'=백만)
 * @returns {없음, String:'범위초과'}
 *******************************************************************************/
function jsPutHanAmt(obj, type) {
	num = $(obj).val();
	str = "";
	strr = num.split(",");
	for (i = 0; i < strr.length; i++) {
		str += strr[i];
	}
	num = str;

	// 한글금액 처리
	delimiter = ' ';
	var endValue = ' 원';
	var endZValue = ' 영';

	bPos = 0; // 만, 억, 조
	sPos = 0; // 십, 백, 천
	digit = 0;

	if (type == null) { // 원단위
		bPos = 0; // 만, 억, 조
		sPos = 0; // 십, 백, 천
		endValue = " 원";
		endZValue = "";	// "영 원"
	} else if (type == '1') { // 만단위
		bPos = 1; // 만, 억, 조
		sPos = 0; // 십, 백, 천
		endValue = " 원";
		endZValue = "";	// "영 만원" 
	} else if (type == '2') { // 십만단위
		bPos = 1; // 만, 억, 조
		sPos = 1; // 십, 백, 천
		endValue = "만 원";
		endZValue = "";	// "영 십만원"
	} else if (type == '3') { // 백만단위
		bPos = 1; // 만, 억, 조
		sPos = 2; // 십, 백, 천
		endValue = "만 원";
		endZValue = "";	// "영 백만원"
	}

	szDigit = '';
	is_start = false;
	appendFF = false;
	len = num.length;
	szHan = '';

	for (i = len - 1; i >= 0; i--) {
		szDigit = num.substring(i, i + 1);
		digit = parseInt(szDigit);

		if (digit != 0) {
			if (bPos != 0 && sPos == 0) {
				if (is_start == true){
					szHan += delimiter;
				}
				szHan += fourFour[bPos]; // 만, 억
				appendFF = false;
			}
			if (bPos != 0 && appendFF == true) {
				if (is_start == true){
					szHan += delimiter;
				}
				szHan += fourFour[bPos]; // 만, 억
				appendFF = false;
			}
			if (sPos != 0){
				szHan += fourDigit[sPos]; // 십, 백, 천
			}
			szHan += hanNumber[digit]; // 일, 이, 삼
			is_start = true;
		} else if (sPos == 0 && bPos != 0){
			appendFF = true;
		}
		sPos++;
		if (sPos % 4 == 0) {
			sPos = 0;
			bPos++;
			if (bPos >= 4){
				return "(범위초과)";
			}
		}
	}

	rslt = '';
	if (is_start == false) {
		rslt = rslt + endZValue;
	} else {
		for (i = szHan.length - 1; i >= 0; i--) {
			rslt += szHan.substring(i, i + 1);
		}

		rslt = rslt + endValue;
		if (type == '2' || type == '3') { // 만단위
			rslt = rslt.replace("억만 원", "억 원");
			rslt = rslt.replace("조만 원", "조 원");
		}
	}
	
	var to = $( '#'+$(obj).attr('name')+'_KorAmt' );
	if($(obj).val()==''){ rslt = ''; }
	if( $(to).filter('*:input').length > 0 ){
		$(to).val( rslt );
	}else{
		$(to).html( rslt );
	}
}

/*******************************************************************************
 * 1 byte 값에 대하여 해당된 마스크가 존재하는지 검증한다.
 * @param pValue : 값
 * @param pMask : 검증 마스크  : 'USE'(return true) || ','(CURRENCY) || ',.'(DOTCURRENCY) || '@._'(EMAIL) || 'N'(number only) 
 * @returns {Boolean}
 *******************************************************************************/
function isValidMask(pValue, pMask){
    if(isEmpty(pValue))	{ return true; }
    if(isEmpty(pMask))	{ return true; }
    if(isAlpha(pValue) || isNum(pValue) || isHangul(pValue)){ return true; }
    if(pMask == "USE"){ return true; }
    //특수문자를 전부 사용하지 못함
    if(pMask == "N"){
        ERR_MSG = "이 항목에는 공백이나 특수문자를 입력할 수 없습니다.";
        return false;
    }
    if(pMask.indexOf(pValue) >= 0){ return true; }
    var errmsg = "";
    for(var idx=0;idx<pMask.length;idx++){
        errmsg = errmsg + "'" + pMask.charAt(idx) + " ' , ";
    }
    errmsg = errmsg.substring(0,errmsg.length-2);
    ERR_MSG = "이 항목에는 '" + pValue + "' 을(를) 입력할 수 없습니다.\n입력가능한 특수문자는 " + errmsg + "만 가능합니다.";

    return false;
}
// [수정]...As-is
//function isValidMask(pValue, pMask){
//    if(isEmpty(pValue))	{ return true; }
//    if(isEmpty(pMask))	{ return true; }
//    if(isAlpha(pValue) || isNum(pValue) || isHangul(pValue)){ return true; }
//    if(pMask == "USE"){ return true; }
//    //특수문자를 전부 사용하지 못함
//    if(pMask == "N"){
//        ERR_MSG = "이 항목에는 공백이나 특수문자를 입력할 수 없습니다.";
//        return false;
//    }
//    if(pMask.indexOf(pValue) >= 0){ return true; }
//    var errmsg = "";
//    for(var idx=0;idx<pMask.length;idx++){
//        errmsg = errmsg + "'" + pMask.charAt(idx) + "', ";
//    }
//    errmsg = errmsg.substring(0,errmsg.length-2);
//    ERR_MSG = "이 항목에는 '" + pValue + "' 을(를) 입력할 수 없습니다.\n입력가능한 특수문자는 " + errmsg + "만 가능합니다.";
//
//    return false;
//}

/*******************************************************************************
 * 1 byte 값이 주어진 타입인지 검증한다.
 * @param pValue : 값
 * @param pType : 검증 타입 : 'A'(alphabet) || 'N'(number) || 'H'(hangul) 
 * @returns {Boolean}
 *******************************************************************************/
function isValidType(pValue, pType){
    if(isEmpty(pValue)){
        return true;
    }
    if(isEmpty(pType)){
        return true;
    }

    if(!isAlpha(pValue) && !isNum(pValue) && !isHangul(pValue)){
        return true;
    }
    
    // 타입 검증
    var isCorrect = false;
    for(var idx_pType=0; idx_pType < pType.length; idx_pType++){
        switch(pType.charAt(idx_pType)) {
            case 'A' :
                    isCorrect = isAlpha(pValue);
                    break;
            case 'N' :
                    isCorrect = isNum(pValue);
                    break;
            case 'H' :
                    isCorrect = isHangul(pValue);
                    break;
        }
        //정규 키 검증
        if(isCorrect){
             break;
        }
    }
    if(isCorrect == false) {
        var err_msg =  getDisplayType(pType);
        ERR_MSG = "이 항목에는 " + err_msg + " 만 입력할 수 있습니다.";
        return false;
    }
    return true;
}

/*******************************************************************************
 * 타입별 에러 메세지 설정
 * @param type : 검증 타입 : 'A'(alphabet) || 'N'(number) || 'H'(hangul) 
 * @returns {String(메세지)}
 *******************************************************************************/
function getDisplayType(type) {
    var msg = "";
    for(var idx_type=0; idx_type < type.length; idx_type++){
        switch(type.charAt(idx_type)) {
            case 'A' :
                    msg = msg+",영문자";
                    break;
            case 'N' :
                    msg = msg+",숫자";
                    break;
            case 'H' :
                    msg = msg+",한글";
                    break;
        }
    }
    return msg.substring(1);
}

/*******************************************************************************
 * 마우스의 스크린 좌표 설정
 * @param e : event
 * @returns {Boolean}
 *******************************************************************************/
function findXY(e){
	if(!e){ e = event; }
    x = e.screenX;
    y = e.screenY;
}

/*******************************************************************************
 * [년월일] 유효 검증
 * @param datestr : 날짜(YYYYMMDD)
 * @returns {null, Boolean}
 *******************************************************************************/
function isValidDate(datestr){
    //널인지?
    if(isEmpty(datestr)){
        return null;
    }
    //숫자인지?
    if(!isNum(datestr)){
        ERR_MSG = "숫자를 입력하셔야 합니다.";
        return false;
    }
    //길이가 8자리?
    if(datestr.length != 8){
        ERR_MSG = "년월일 8자리를 입력하셔야 합니다.";
        return false;
    }
    var yy = Number(datestr.substring(0,4));
    var mm = Number(datestr.substring(4,6));
    var dd = Number(datestr.substring(6,8));
    //월 검증
    if( !(mm > 0 && mm < 13) ){
        ERR_MSG = "월은 1~12 까지만 입력할 수 있습니다.  ";
        return false;
    }
    //윤년 검증
    var boundDay = "";
    if(mm != 2){
        var mon=new Array(31,28,31,30,31,30,31,31,30,31,30,31);
        boundDay = mon[mm-1];
    }
    else{
        if (yy%4 == 0 && yy%100 != 0 || yy%400 == 0){
            boundDay = 29;
        }
        else{
            boundDay = 28;
        }
    }
    //일 검증
    if( (dd <= 0) || (dd > boundDay) ){
        ERR_MSG = "유효하지 않은 일자입니다.\n(" + yy + "년 " + mm + "월은 " + boundDay + "일 까지 있습니다.)";
        return false;
    }
    return true;
}

/*******************************************************************************
 * [년월] 유효 검증
 * @param datestr : 날짜(YYYYMM)
 * @returns {null, Boolean}
 *******************************************************************************/
function isValidDateYYYYMM(datestr){
    //널인지?
    if(isEmpty(datestr)){
        return null;
    }
    //숫자인지?
    if(!isNum(datestr)){
        ERR_MSG = "숫자를 입력하셔야 합니다.";
        return false;
    }
    //길이가 8자리?
    if(datestr.length != 6){
        ERR_MSG = "년월 6자리를 입력하셔야 합니다.";
        return false;
    }
    var yy = Number(datestr.substring(0,4));
    var mm = Number(datestr.substring(4,6));
    //월 검증
    if( !(mm > 0 && mm < 13) ){
        ERR_MSG = "월은 1~12 까지만 입력할 수 있습니다.  ";
        return false;
    }
    return true;
}

/*******************************************************************************
 * EMAIL 유효성 검증
 * @param email : EMAIL
 * @returns {null, Boolean}
 *******************************************************************************/
function isValidEmail(email){
    //널인지?
    if(isEmpty(email)){
        return null;
    }
    //올바른 EMAIL 인지 검증
    var format = /^((\w|[\-\.])+)@((\w|[\-\.])+)\.([A-Za-z]+)$/;
    if (email.search(format) == -1) {
       ERR_MSG = "유효하지 않은 이메일 형식입니다.";
       return false
    }
    return true;
}

/*******************************************************************************
 * 주민등록번호 유효성 검증
 * @param regno : 주민등록번호
 * @returns {null, Boolean}
 *******************************************************************************/
function isValidRegNo(regno){
    //널인지?
    if(isEmpty(regno)){
        return null;
    }
    // 13자리 숫자인가? -> 주민번호
    if((wfcb_getByteLength(regno) != 13) || (!isNum(regno)) ) {
        ERR_MSG = "주민등록번호는 13자리 숫자입니다.";
        return false;
    }
    
    if(regno.substring(6,7) == '7' || regno.substring(6,7) == '8'){
    	//외국인경우
    	return true;
    }
    
    //올바른 주민등록번호인지 검증
    var ju = regno.substring(0,6);
    var ju1 = regno.substring(6);
    juid = new Array(0,0,0,0,0,0,0,0,0,0,0,0,0);
    for(var i = 0; i<6;i++)
        juid[i] = ju.substring(i,i+1);
    for(i=0;i<7;i++)
        juid[i+6] = ju1.substring(i,i+1);
    for(var sum = 0, i = 0;i<12;i++)
        sum += juid[i] * ((i >7) ? (i-6) : (i+2));
    var mod = 11 - sum%11;
    if(mod >= 10)
        mod -= 10;
    if(mod != juid[12]) {
         ERR_MSG = "올바르지 않은 주민등록번호입니다.";
         return false;
    }
    else {
        return true;
    }
}

/*******************************************************************************
 * 사업자번호 유효성 검증
 * @param strNumb : 사업자번호
 * @returns {null, Boolean}
 *******************************************************************************/
function isValidCustNo(strNumb)
{
    //널인지?
    if(isEmpty(strNumb)){
        return null;
    }
    // 10자리 숫자인가?
    if((wfcb_getByteLength(strNumb) != 10) || (!isNum(strNumb)) ) {
        ERR_MSG = "사업자등록번호는 10자리 숫자입니다.";
        return false;
    }
    sumMod	=	0;
    sumMod	+=	Number(strNumb.substring(0,1));
    sumMod	+=	Number(strNumb.substring(1,2)) * 3 % 10;
    sumMod	+=	Number(strNumb.substring(2,3)) * 7 % 10;
    sumMod	+=	Number(strNumb.substring(3,4)) * 1 % 10;
    sumMod	+=	Number(strNumb.substring(4,5)) * 3 % 10;
    sumMod	+=	Number(strNumb.substring(5,6)) * 7 % 10;
    sumMod	+=	Number(strNumb.substring(6,7)) * 1 % 10;
    sumMod	+=	Number(strNumb.substring(7,8)) * 3 % 10;
    sumMod	+=	Math.floor(Number(strNumb.substring(8,9)) * 5 / 10);
    sumMod	+=	Number(strNumb.substring(8,9)) * 5 % 10;
    sumMod	+=	Number(strNumb.substring(9,10));
    if	(sumMod % 10	!=	0)
    {
        ERR_MSG = "올바르지 않은 사업자등록번호입니다.";
        return false;
    }
    return	true;
}

////////////////////////////////
// 우리은행 함수
////////////////////////////////
/*******************************************************************************
 * 우리은행 계좌번호 검증
 * @param acctno : 사업자번호
 * @returns {null, Boolean}
 *******************************************************************************/
function isValidAcctNo(acctno){
    //널인지?
    if(isEmpty(acctno)){
        return null;
    }
    //13자리 숫자인지?
    if ((getByteLength(acctno) != 13) || (!isNum(acctno))) {
        ERR_MSG = "계좌번호는 '-'를 제외한 13자리 숫자입니다.";
        return false;
    }
    return true;
}

/*******************************************************************************
 * 우리은행 고객번호 세팅(9자리)
 * 		- 앞에 '0'을 채운다
 * @param obj : 대상 element object
 * @returns {Boolean}
 *******************************************************************************/
function fill_cifno(obj){
    var temp="";
    var v = $(obj).val();
    if(v == null || v.length < 1 ){
        alert("고객번호를 입력하세요.");
        obj.focus();
        return false; 
    }
    if(v.length != 9 ){
        for(i=0;i<(9-v.length);i++){
            temp +="0";
        }
        $(obj).val( temp+v );
    }
    return true;
}

/*******************************************************************************
 * 행번검증(6자리)
 * @param obj : 대상 element object
 * @returns {Boolean}
 *******************************************************************************/
function fill_staffno(obj){
    var temp="";
    var v = $(obj).val();
    if(v == null || v.length < 1 ){
        alert("행번를 입력하세요.");
        obj.focus();
        return false;
    }
    if(v.length < 6 ){
        for(i=0;i<(6-v.length);i++){
            temp +="0";
        }
        $(obj).val( temp+v );
    }
    return true;
}

/*******************************************************************************
 * 아이디 검증
 * @param userid : 아이디
 * @returns {null, Boolean}
 *******************************************************************************/
function isValidUserId(userid){
    //널인지?
    if(isEmpty(userid)){
        return null;
    }
    if(getByteLength(userid)>10 || getByteLength(userid) < 6 ){
        ERR_MSG = "사용자 아이디는 영숫자 혼합하여 6자 이상 10자이내로 반드시 입력하셔야 합니다.";
        return false;
    }
    if(isNum(userid)){
        ERR_MSG = "아이디는 숫자로만 구성할 수 없습니다.";
        return false;
    }
    for(var i=0; i < userid.length; i++) {
        if ( !(isValidMask(userid.charAt(i),"N") && isValidType(userid.charAt(i),"AN")) ){
            return false;
        }
    } // for end
    return true;
}

/*******************************************************************************
 * 비밀번호 검증
 * @param pwd : 비밀번호
 * @returns {null, Boolean}
 *******************************************************************************/
function isValidPassword(pwd){
    var alpaBig= "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    var alpaSmall= "abcdefghijklmnopqrstuvwxyz";
    //var num = "01234567890";
    //널인지?
    if(isEmpty(pwd)){
        return null;
    }
    // 비밀번호는 6자리이상 16자리 이하 .. maxLength=16로 변경 할것
    if(getByteLength(pwd)<6 || getByteLength(pwd) > 16 ){
        ERR_MSG = "비밀번호는 반드시 6자 이상 16자이내로 입력해야 합니다.";
        return false;
    }
    if(isNum(pwd)){
        ERR_MSG = "비밀번호는 반드시 알파벳을 하나 이상 포함해야 합니다.";
        return false;
    }
    for(var i=0;i < alpaBig.length - pwd.length+1;i++){
        if(alpaBig.substring(i,i+pwd.length) == pwd)
        {
            ERR_MSG = "ABCDEF처럼 연속된 문자는 사용할 수 가 없습니다.";
            return false;
        }
    }
    if (pwd.indexOf(' ') > -1) {
        ERR_MSG = "공백은 입력할 수 없습니다.";
        return false;
    }
    for(i=0;i < alpaSmall.length - pwd.length+1;i++){
        if(alpaSmall.substring(i,i+pwd.length) == pwd)
        {
            ERR_MSG = "abcdef처럼 연속된 문자는 사용할 수 가 없습니다.";
            return false;
        }
    }
    for(i=1;i < pwd.length;i++){
        if(pwd.substring(0,1) != pwd.substring(i,i+1) )
            return true;
    }
    ERR_MSG = "비밀번호는 같은 문자만 연속해서 입력할 수 없습니다";
    return false;
}


// 두번 서브밋 방지 코드
var isSubmit = false;
/*******************************************************************************
 * 서브밋 상태 설정 - 두번 서브밋 방지 관련
 * @returns {없음}
 *******************************************************************************/
function set_submit(){
    isSubmit = true;
}
/*******************************************************************************
 * 서브밋 상태 해제 - 두번 서브밋 방지 관련
 * @returns {없음}
 *******************************************************************************/
function reset_submit(){
    isSubmit = false;
}
/*******************************************************************************
 * 서브밋 상태 중 이벤트 중지 - 두번 서브밋 방지 관련
 * @param e : event
 * @returns {없음}
 *******************************************************************************/
function isGo(e){
	if(!e){ e = event; }
    if (isSubmit){
        alert("처리중입니다.");
        if(e.preventDefault){ e.preventDefault(); }else{ e.returnValue = false; }		// stop event
    }
}

/*******************************************************************************
 * default Print 함수
 * @returns {없음}
 *******************************************************************************/
function printDefaultForm(){
    window.print();
    show_printInfo();
}

/*******************************************************************************
 * 대상form 전체 객체 포맷 적용
 * @param aFrm : form object
 * @returns {없음}
 *******************************************************************************/
function obj_allformat(aFrm){
	$('form[name='+$(aFrm).attr('name')+'] input').each(function(n){ obj_format( this ); });
}

/*******************************************************************************
 * 대상form 전체 객체 포맷 삭제
 * @param aFrm : form object
 * @returns {없음}
 *******************************************************************************/
function obj_allremoveformat(aFrm){
	$('form[name='+$(aFrm).attr('name')+'] input').each(function(n){ obj_removeformat( this ); });
}

/*******************************************************************************
 * 전체 form 포맷팅
 * @returns {없음}
 *******************************************************************************/
function wfcb_allformat() {
	$('form').each(function(n){ obj_allformat( this ); });
}

var frm_wfcb_onsubmit_ok = null;	// wfcb_onsubmit함수 검증 성공후 ajax처리시 Initial() 포맷팅제어 관련 변수
/*******************************************************************************
 * onsubmit 관련 - 데이터유효성, 필수체크
 * @param	aFrm : form object
 * @returns {boolean}
 *******************************************************************************/
function wfcb_onsubmit(aFrm){
	
	if( !$(aFrm) ){
		alert("스크립트 오류 정의되지 않은 Form 입니다.");
		return false;
	}
	var result = true;
	$('form[name='+$(aFrm).attr('name')+'] input:not(:disabled)').each(function(n){
		var cur_o = this;
		
		obj_removeformat( cur_o ); // 포맷 삭제
		if( !obj_validate( cur_o ) ) { obj_allformat( aFrm ); result = false; return false; }		// 데이터 유효성 재검증(password제외)
		if( !obj_nullcheck( cur_o ) ) { obj_allformat( aFrm ); result = false; return false; }	// 필수 항목 검증
		if( toUpperCase( $(cur_o).attr('fullchar')) != 'TRUE' ){ return true; }	// continue;
		$(cur_o).val( Half2Full($(cur_o).val()) );
	});
	frm_wfcb_onsubmit_ok=$(aFrm);
	return result;
}

/*******************************************************************************
 * 필수 항목 검증
 * @param	obj : 대상 element object
 * @returns {boolean}
 *******************************************************************************/
function obj_nullcheck(obj){
	var nn = $(obj).attr('notnull');
	if( !(nn==null || nn=='null') ){
		if(isEmpty( $(obj).val() )){
			var colName=$(obj).attr('colName')?$(obj).attr('colName'):'';
			alert(colName+" 항목을 입력하세요.");
			$(obj)[0].focus(); 
			return false;
		}
	}
    return true;
}

/*******************************************************************************
 * 데이터 유효성검증
 * @param	obj : 대상 element object
 * @returns {boolean}
 *******************************************************************************/
function obj_validate(obj) {
	var fullchar			= toUpperCase( !!$(obj).attr('fullchar')?$(obj).attr('fullchar'):'' );
    var datatype		= toUpperCase( !!$(obj).attr('datatype')?$(obj).attr('datatype'):'' );
    var mask 			= toUpperCase( !!$(obj).attr('mask')?$(obj).attr('mask'):'' );
    var minLength 		= toUpperCase( !!$(obj).attr('minLength')?$(obj).attr('minLength'):'' );
    var minLength_m	= toUpperCase( !!$(obj).attr('minLength_m')?$(obj).attr('minLength_m'):'' );
    var maxLength 	= $(obj).attr('maxLength');
    var lowBound 		= toUpperCase( !!$(obj).attr('lowBound')?$(obj).attr('lowBound'):'' );
    var highBound 	= toUpperCase( !!$(obj).attr('highBound')?$(obj).attr('highBound'):'' );
    var str = $(obj).val();
    if (str != null){ if ($.trim(str).length == 0){ return true; } }
    var is_pwd = $( obj ).is('input:password');
    
    if( (!isEmpty(datatype)) || (!isEmpty(mask)) ){
        ERR_MSG = '';
        switch (datatype) {
            case 'DOTCURRENCY' : 	// 금액 유효 검증
                if ($(obj).attr('decimalplace')) {
                    if (str.lastIndexOf('.') > 0) {
                        if ((str.length - str.indexOf('.')-1) > (Number($(obj).attr('decimalplace')))){
                            alert('소숫점 아래 ' + $(obj).attr('decimalplace') + '자리까지 입력가능합니다.');
                            $(obj)[0].focus();
                            return false;
                        }
                    }
                }
                break;
            case 'CURRENCY' : 	// 금액 유효 검증
                break;
            case 'DATE' : 	// 일자 유효 검증
                if(isValidDate(str) == false){
                    alert(ERR_MSG);
                    $(obj)[0].focus();
                    $(obj).val('');
                    return false;
                }
                break;
            case 'EMAIL' : 	// EMAIL 유효 검증
                if(isValidEmail(str) == false){
                    alert(ERR_MSG);
                    $(obj)[0].focus();
                    $(obj).val('');
                    return false;
                }
                break;
            case 'REGNO' : 	// 주민번호 유효성 검증
                if(isValidRegNo(str) == false){
                    alert(ERR_MSG);
                    $(obj)[0].focus();
                    $(obj).val('');
                    return false;
                }
                break;
            case 'CUSTNO' : 	// 사업자번호 유효성 검증
                if(isValidCustNo(str) == false){
                    alert(ERR_MSG);
                    $(obj)[0].focus();
                    $(obj).val('');
                    return false;
                }
                break;
            case 'USERID' :	// 아이디 검증
                if(isValidUserId(str) == false){
                    alert(ERR_MSG);
                    $(obj)[0].focus();
                    $(obj).val('');
                    return false;
                }
                break;
            case 'PASSWORD' : // 비밀번호 검증
                if(isValidPassword(str) == false){
                    alert(ERR_MSG);
                    $(obj)[0].focus();
                    $(obj).val('');
                    return false;
                }
                break;
            case 'DDDPHONENUM' : // 전화번호 국번 검증
                if(isValidDDDPhoneNum(str) == false){
                    alert(ERR_MSG);
                    $(obj)[0].focus();
                    $(obj).val('');
                    return false;
                }
                break;
            case 'ACCTNO' : // 한미은행계좌번호 검증
                if(isValidAcctNo(str) == false){
                    alert(ERR_MSG);
                    $(obj)[0].focus();
                    $(obj).val('');
                    return false;
                }
                break;
            default :  // 'A','N','H' 마스크 검증
                for(var i=0; i < str.length; i++) {
                    if ( !is_pwd && !(isValidMask(str.charAt(i),mask) && isValidType(str.charAt(i),datatype)) ){	// 키보드보안(is_pwd)제외
                        alert(ERR_MSG);
                        $(obj)[0].focus();
                        $(obj).val('');
                        return false;
                    }
                } // for end
        }// switch end
    } // if end
    
    //최대 길이 검증
    if(!isEmpty(maxLength)){
    	// 2byte char지정일 경우 체크
    	var tmp = str;
    	if (fullchar == 'TRUE') {
    		tmp = Half2Full(tmp);
    	}
		
        if(maxLength < getByteLength(tmp)){
			if (fullchar == 'TRUE') {
				alert('입력가능한 글자수는 한글 '+maxLength/2+'자 까지 입니다. 글자수를 줄여주십시오.\n(숫자 및 영문은 '+maxLength+'자 까지 가능합니다.)');
			}else{
				alert('입력가능한 글자수는 한글 '+maxLength/2+'자 까지 입니다. 글자수를 줄여주십시오.\n(숫자 및 영문은 '+maxLength+'자 까지 가능합니다.)');
			}
			$(obj)[0].focus();
            return false;
        }
    }
    //최소 길이 검증
    if(!isEmpty(minLength)){
        if (getByteLength(str) == 0){ return true; }
        var colName=$(obj).attr('colname')?$(obj).attr('colname')+'의 ':'';
        if(minLength > getByteLength(str)){
            alert(colName+'입력 가능한 최소글자수는 '+minLength+'자 까지 입니다.');
            $(obj)[0].focus();
            return false;
        }
    }
    //최소 길이 검증
    if(!isEmpty(minLength_m)){
        if (getByteLength(str) == 0){ return true; }
        var colName=$(obj).attr('colName')?$(obj).attr('colName'):'';
        if(minLength_m > getByteLength(str)){
            alert(colName+' 글자수는 '+minLength_m+'자 입니다.');
            $(obj)[0].focus();
            return false;
        }
    }
    //low 유효값 검증
    if(!isEmpty(lowBound)){
        if(eval(str-lowBound) < 0 ){
            alert(''+putComma(lowBound)+' 이상을 입력하셔야 합니다.');
        	//alert(''+lowBound+' 이상을 입력하셔야 합니다.');
            $(obj)[0].focus();
            return false;
        }
    }
    //high 유효값 검증
    if(!isEmpty(highBound)){
        if(eval(str-highBound) > 0 ){
            alert(''+putComma(highBound)+' 이하를 입력하셔야 합니다.');
        	//alert(''+highBound+' 이하를 입력하셔야 합니다.');
            $(obj)[0].focus();
            return false;
        }
    }
    return true;
}

/*******************************************************************************
 * 전체 값에 대하여 해당된 마스크, 타입이 일치하는지 검증한다.
 * @param	str : 값
 * @param	datatype : 검증 타입 : 'A'(alphabet) || 'N'(number) || 'H'(hangul) 
 * @param	mask : 검증 마스크  : 'USE'(return true) || ','(CURRENCY) || ',.'(DOTCURRENCY) || '@._'(EMAIL) || 'N'(number only) 
 * @returns {boolean}
 *******************************************************************************/
function isAllValidTypeMask(str, datatype, mask){
    for(var i=0; i < str.length; i++) {
        if ( !(isValidMask(str.charAt(i),mask) && isValidType(str.charAt(i),datatype)) ){
            return false;
        }
    } // for end
    return true;
}


var popUrl = "";
/*******************************************************************************
 * 임시 update 메소드
 * 		- 팝업창으로 select box 에서 전달된 값을 띄운다.
 * @param	obj : 대상 element object
 * @returns {없음}
 *******************************************************************************/
function update(obj) {
	this.popUrl = $(obj).val();
	if( popUrl != '' ) {
		window.open(popUrl, "popUp", 'menubar=1,scrollbars=1,resizable=1,left=30,top=30,width=800,height=400');
	}
}

/*******************************************************************************
 * divRelMenu 보기
 * @returns {없음}
 *******************************************************************************/
function showRelMenu(){
	$('#divRelMenu, *[name=divRelMenu]').css('visibility', 'visible');
}

/*******************************************************************************
 * divHelp 보기
 * @returns {없음}
 *******************************************************************************/
function goHelp(){
	$('#divHelp, *[name=divHelp]').css('visibility', 'visible');
}

/*******************************************************************************
 * 애플릿그리드 있을 경우 PRINT 함수
 * @returns {없음}
 *******************************************************************************/
function printForm(){
	$('#Main, *[name=Main]').each(function(n){
		if( (typeof $(this).setChangePanel) != 'undefined' ){ $(this).setChangePanel('PRINT'); }
	});
}

/*******************************************************************************
 * 애플릿그리드 있을 경우 SAVE 함수
 * @returns {없음}
 *******************************************************************************/
function saveForm(){
	$('#Main, *[name=Main]').each(function(n){
		if( (typeof $(this).setChangePanel) != 'undefined' ){ $(this).setChangePanel('SAVE'); }
	});
}



///*
// * 패스워드 입력란 디폴트외에 콜 - *통합[제거] --> PwdInit();
// * @param 없음
// * @returns {없음}
//function PwdInit1() {
//	try {
//		if ( isPwdClassName1 ) {
//			document.frm.INP_PWNO_10.className = "email_input1";
//		}
//	} catch (e) {}
//}

///*
// * 주민번호 입력란 디폴트외에 콜 - *통합[제거] --> PwdInit();
// * 		- 해당페이지에서 isJuminClassName = true 로 설정
// * @param 없음
// * @returns {없음}
//var isJuminClassName;
//function JuminInit() {
//		try {
//			if ( isJuminClassName ) {
//				document.frm.PSRG_NO.className = "email_input1";
//			}
//		} catch (e) {}
//}

///*
// * 사용자패스워드 입력란 디폴트외에 콜 - *통합[제거] --> PwdInit();
// * 		- 해당페이지에서 isUserPwdClassName = true 로 설정
// * @param 없음
// * @returns {없음}
//var isUserPwdClassName;
//function UserPwdInit() {
//	try {
//		if ( isUserPwdClassName ) {
//			document.frm.USERPWDNO_8.className = "email_input1";
//		}
//	} catch (e) {}
//}

//[제거]...As-is	- 사용하는 소스 없음.
//function addMyMenu(myMenuName){
//  get2post(tempPassForm,"pgm_id="+reqURI+"&pgm_name=" + myMenuName);
//  uf_encNewWin(document.tempPassForm, "/kor/ib/common/msg/addMyMenu.jsp","FrmMyMenu",500,150);
//  removeTempAttribute(tempPassForm);
//}

//[제거]...As-is	- 사용하는 소스 없음.
//function goEnglish(){
//    get2post(sendForm, "contentsUrl=" + goEnglishURL);
//    sendForm.action="/catiE/main/index.jsp";
//    sendForm.target="contentframe";
//    sendForm.submit();
//}


//[제거]...As-is	- /js/sec/TouchEnKey/TouchEnKey.js : inputClear()
//function CKKeyPro_Clear(frmName,eleName){
//	if(document.XecureCK==null || typeof(document.XecureCK) == "undefined" || document.XecureCK.object==null){
//		//XecureCK is not running in current document.
//		return;
//	}
//	document.XecureCK.Clear(frmName,eleName,0);
//}

// wfcb.js end




