var __globalTimer;       // 전역 타이머 변수
var __globalTimer2;       // 전역 타이머 변수
var __globalTimeOut; 
var __totalSessionTime_local = __totalSessionTime;	// 세션 타임아웃 총시간 [시스템환경변수:540(초)]
var __countDownSec_local = __countDownSec;			// 자동 로그아웃 대기시간 [시스템환경변수:30(초)]
var fCount = 0;
var __checkLoadingLy = false; // 30초전 로그아웃 안내화면 표시 전 로딩 레이어 존재여부
var __TOP_PAGE_ID_local = __TOP_PAGE_ID;	// TOP_PAGE_ID  ex)ps,bz,en...
var __LOGOUT_ACT_URL = __logout_uri;	// 로그아웃 처리 url

// 초기화
$(function(){
	__setCountFormat();
	__startCount();
	
	$(document).bind('keydown.atimeout', function(e){ if(e.which == 19){ __clickYes(); } });	// pause key 이벤트시 연장처리
});


 /**
  * 변수 초기화
  * __totalSessionTime : 총 세션시간(마지막 카운트 30초 외 모듈 실행시 5초 지연포함)
  */
 function __initialize() {
 	__totalSessionTime_local = __totalSessionTime;
 	__countDownSec_local = __countDownSec; 
 	__setCountFormat();
 }
 
 /**
  * 페이지가 다 로딩된 후 시작하는 함수
  * 이론상으론 문제가 없으나 테스트 중 충돌하는 경우가 있어
  * 안전하게 5초 지연을 둔후 타이머 발생 함수를 호출한다
  * 단 이때 지연된 5초도 전체 타임아웃 시간에 포함된다.
 function __begin() {
	 clearTimeout(__globalTimeOut);
	 __globalTimeOut = setTimeout("__startCount()",5000);
 }
 */
 
 /**
  * 타이머 발생함수
  * 1초마다 __countTimeOut() 함수를 호출한다
  */
 function __startCount() {
	clearInterval(__globalTimer);
	clearInterval(__globalTimer2);
 	__globalTimer = setInterval("__countTimeOut();",1000);
 	__globalTimer2 = setInterval("__countDownStart();", __totalSessionTime * 1000);
 }
 
 /**
  * 세션 타임아웃 총시간이 0초가 되면, 
  * 자동 로그아웃 안내 및 자동 로그아웃 대기시간 이후에 로그아웃 처리
  */
 function __countDownStart() {
		__setCountFormat();
 		clearInterval(__globalTimer);
 		clearInterval(__globalTimer2);
 		__countDown30Sec();
		window.setTimeout("callFocus();", 1 );
 }
 
 /**
  * 1초마다 __totalSessionTime_local 값을 감소시키며
  * 0 초가 됐을때 타이머를 중지시키고 
  * 30초를 카운트하는 함수(__countDown30Sec)를 호출한다
  */
 function __countTimeOut() {
	 __totalSessionTime_local--;
 	__setCountFormat();
 }
 
 /**
  * 현재시간 포멧
  */
 function __setCountFormat() {
	 var time=__totalSessionTime_local;
	 var min, sec;
	 
	 var display_time_min_o = $('#theTime_min');	// topgnb 세션타임아웃 분 표시 영역
	 var display_time_sec_o = $('#theTime_sec');	// topgnb 세션타임아웃 초 표시 영역
	 if(display_time_min_o.length > 0 && display_time_sec_o.length > 0 && time >= 0) {
		 sec=time%60;
		 if(time<60){min=0;
		 }else{			min=(time-sec)/60; }
		 
		 if(min<10){	min="0"+min; }
		 if(sec<10){	sec="0"+sec; }
		 
		 $(display_time_min_o).html( min );
		 $(display_time_sec_o).html( sec );
	 }
 }
 
 /**
  * 로그아웃 안내 화면을 띄우고
  * 30초를 카운트 하는 타이머 발생 함수를 호출한다.
  */
 function __countDown30Sec() {
	 
	function after() {
		wbUI.openPopup(__atimeout_msg_uri+'&isEng='+isEng);
 		$('#auto_logout_msg').wbUI('focus');
 		__totalSessionTime_local= 0; __setCountFormat();
	 	__globalTimer = setInterval("__countDown();",1000);
	} 
 	try {

 		var isEng = (__TOP_PAGE_ID_local == 'en')?'true':'';	// 영문
 		
 		// 2013-06-12 loading layer 있을때 알림창으로 처리
 		$.each($('.pop-wrap'), function(idx, aEl){
 			if($(aEl).data('zindex') > 8000)
 				__checkLoadingLy = true;
 				wbUI.hideLoading();
 		});
 		
 		if ($('.pop-wrap .all-menu').length > 0) {
 			wbUI.closePopup.call($('.pop-wrap'), after);
 		} else {
 			after();
 		}
	}
 	catch(E) {}
 	
 }
 
 /**
  * 로그아웃 안내 화면에 30초 카운트를 표시하며
  * 0초가 됐을시 타이머를 종료
  */
 function __countDown() {
	try {
		$('#cntMsg').html( __countDownSec_local );	// 자동 로그아웃 까지 남은시간 표시 
	 	
	 	if(__countDownSec_local == 0) {
	 		clearInterval(__globalTimer);
	 		$('#auto_logout_msg').wbUI('closePopup');	// 자동 로그아웃 안내 레이어 제거
			
	 		__RemoveDomainCookie("SSO_JSESSION");
	 		__RemoveDomainCookie("SID");
	 		__RemoveDomainCookie("SSO_FROMSITE");
	 		
	 		/*
	 		if(__TOP_PAGE_ID_local != 'en') {
	 			$( __makeLogoutDoneMsg() ).appendTo('body');
	 		}else if(__TOP_PAGE_ID_local == 'en') {	// en : 영문
	 			$( __makeLogoutDoneMsg_eng() ).appendTo('body');
	 			//document.getElementById('logoutDone').innerHTML = __makeLogoutDoneMsg_eng();
	 		}
	 		*/
	 		
	 		$.ajax({ url: __logout_uri  });	// 로그아웃처리
	 		var isEng = (__TOP_PAGE_ID_local == 'en')?true:false;	// 영문
	 		
	 		// 레이어팝업처리
		 		//wbUI.openPopup( __atimeout_msg_uri+'&status=done&isEng='+isEng );
	 		// 바닥페이지이동
	 		window.open(__atimeout_done_uri+'&login_page='+__login_page+'&__TOP_PAGE_ID='+__TOP_PAGE_ID, '_self');
	 		
	 		var c_msg = isEng?'Already have been logged out. Do you want to go to the login page?':'이미 로그아웃 되었습니다. 로그인페이지로 이동하시겠습니까?';
	 		$('span.login>a', $('.my-svc')).attr('onclick',null).unbind('click.atimeout').bind('click.atimeout', function(e){ if(confirm( c_msg )){ __goLogin(); } return false; });
	 		
	 		//__setLinkDisable();
	 	}
	 	__countDownSec_local--;
	}
 	catch(E) {}
 }
 
 /**
  * 로그아웃 안내 화면에서 '예'를 클릭했을시 세션을 연장하고
  * 처음부터 다시 카운트를 할 수 있도록 초기화한다
  */
 function __clickYes() {
	try { 	
	 	clearInterval(__globalTimer);
	 	clearTimeout(__globalTimeOut);
	 	__initialize();
	 	$('#auto_logout_msg').wbUI('closePopup');	// 자동 로그아웃 안내 레이어 제거
	 	
	 	$.ajax({ url: __session_renew_uri  });	// /com/cus/sessionRenew.jsp 
	 	__startCount();
	 	
	 	if(__checkLoadingLy){
	 		wbUI.showLoading();
	 		__checkLoadingLy = false;
	 	}
	 	
	 	//__begin();
		//autoLogoutWindow();
	}
 	catch(E) {}

	 	
 }

 /**
  * 로그아웃 안내 화면에서 연장에 대한 선택 중 '아니오'를 클릭했을시
  * 로그아웃처리 후 로그인 페이지로 이동
  */
 function __clickNo() {
	try {
	 	clearInterval(__globalTimer);
	 	__initialize();
	 	window.open(__LOGOUT_ACT_URL,'_self');	// 로그아웃처리
	}
 	catch(E) {}
 }
 
 /**
  * 로그아웃 완료 화면에서 '다시로그인'을 선택했을시 로그아웃을 시키고 로그인 화면으로 이동
  */
 function __goLogin() {
 	window.open(__login_uri, '_self');
 }
 
 /**
  * 로그아웃 완료 화면에서 '초기화면 이동'을 선택했을시 로그아웃을  인트로로 이동 
  */
 function __goLogin2() {
 	try {
 		window.open(__INTRO_URL, '_self');
	}catch(E) {}
 }
 
 /**
  * 쿠키 삭제
  * @param name
  */
 function __RemoveDomainCookie(name) {
 	var  COOKIE_DOMAIN = '.wooribank.com';
 	document.cookie = name+'='+'; path=/; expires=Sat, 01 Jan 2000 00:00:00 UTC; domain='+COOKIE_DOMAIN;
 }
 
 /**
  * 포커스 처리
  */
 function callFocus() {
	 try {
		if (fCount++ < 1) { // 2
			focus();
			window.setTimeout("callFocus();", 15000);
		}
	 } catch (e) {}
 }


 
 
 

 /**
  * 세션 타임아웃 총시간이 지나면 자동으로 띄우는, 자동로그아웃 안내 레이어 html
  * @returns {String}
  */
 function __makeLogoutMsg() {
 	var logout = "";
 	
 	var __clientWidth  = $(window).width();
 	var __clientHeight = $(window).height();
 	//var __clientHeight2 = document.body.clientHeight;
 	var __visibleWidth = (__clientWidth / 2) - 209;
 	var __visibleHeight = (__clientHeight / 2) - 118;

 	//logout += "<iframe style='position:absolute;top:0;left:0;z-index:9999;background:#ffffff' class='auto-logout logbgSize framh' width='"+__clientWidth+"' height='"+__clientHeight2+"'>\n";
 	//logout += "</iframe>\n";
 	logout += "<div class='auto-logout dev_makeLogoutMsg' style='position:absolute;z-index:99999;top:0;left:0;background:#fff url(http://t6pib.wooribank.com/img/comm/autotime_bg.jpg) no-repeat center top;'>\n";
 	logout += "<table class='logbgSize' style='' cellpadding='0' cellspacing='0' border='0' width='"+__clientWidth+"' height='"+__clientHeight+"'>\n";
 	logout += "  <tr>\n";
 	logout += "    <td class='logoutSize' width='"+__visibleWidth+"' height='"+__visibleHeight+"'>&nbsp;</td>\n";
 	logout += "    <td>\n";
 	logout += "      <table cellpadding='0' cellspacing='0' border='0'>\n";
 	logout += "        <tr>\n";
 	logout += "          <td>\n";
 	logout += "            <div class='logout-done'>\n";
 	logout += " 				<h4><img src='http://t6pib.wooribank.com/img/pib/logout_text.gif' alt='자동로그아웃안내'></h4>\n";
 	logout += "						<p class='txt-logout'>\n";
 	logout += "							<strong>자동 로그아웃 남은시간: <span id='cntMsg'></span>초</strong>\n";
 	logout += "                              고객님의 안전한 금융거래를 위해 로그인 후<br>\n";
 	logout += "                              약 50분 동안 서비스 이용이 없어<br>\n";
 	logout += "                              로그아웃 됩니다.<br><br>\n";
 	logout += "                              로그인 시간을 연장하시겠습니까?\n";
 	logout += "                     </p>\n";
 	logout += "                     <p class='btn'>\n";
 	logout += "                              <a id='__delay' href='#' onclick='__clickYes();'><img src='http://t6pib.wooribank.com/img/pib/logout_btn_r.gif' alt='연장하기'></a>\n";
 	logout += "                              <a id='__logout' href='javascript:__clickNo();'><img src='http://t6pib.wooribank.com/img/pib/logout_btn_out.gif' alt='로그아웃'></a>\n";
 	logout += "                      </p>\n";
 	logout += "            </div>\n";
 	logout += "          </td>\n";
 	logout += "        </tr>\n";
 	logout += "      </table>\n";
 	logout += "    </td>\n";
 	logout += "  </tr>\n";
 	logout += "</table>\n";
 	logout += "</div>\n";
 	
 	return logout;
 }

 /**
  * 세션 타임아웃 총시간이 지나면 자동으로 띄우는, 자동로그아웃 안내 레이어 html [영문]
  * @returns {String}
  */
 function __makeLogoutMsg_eng() {
 	var logout = "";
 	
 	var __clientWidth  = $(window).width();
 	var __clientHeight = $(window).height();
 	var __clientHeight2 = document.body.clientHeight;
 	var __visibleWidth = (__clientWidth / 2) - 209;
 	var __visibleHeight = (__clientHeight / 2) - 118;
 	
 	//logout += "<iframe style='position:absolute;top:0;left:0;z-index:9999;background:#ffffff' class='auto-logout logbgSize framh' width='"+__clientWidth+"' height='"+__clientHeight2+"'>\n";
 	//logout += "</iframe>\n";
 	logout += "<div class='auto-logout dev_makeLogoutMsg' style='position:absolute;z-index:99999;top:0;left:0;background:#fff url(http://t6pib.wooribank.com/img/comm/autotime_bg.jpg) no-repeat center top;height:"+__clientHeight2+"'>\n";
 	logout += "<table  class='logbgSize'   cellpadding='0' cellspacing='0' border='0' width='"+__clientWidth+"' height='"+__clientHeight+"'>\n";
 	logout += "  <tr>\n";
 	logout += "    <td class='logoutSize' width='"+__visibleWidth+"' height='"+__visibleHeight+"'>&nbsp;</td>\n";
 	logout += "    <td>\n";
 	logout += "      <table cellpadding='0' cellspacing='0' border='0'>\n";
 	logout += "        <tr>\n";
 	logout += "          <td>\n";
 	logout += "            <table cellpadding='0' cellspacing='0' border='0' width='418' bgcolor='#ffffff'>\n";
 	logout += "              <tr>\n";
 	logout += "                <td colspan='3' valign='top'><img src='http://t6pib.wooribank.com/img/eng/logout_tab_top.gif'></td>\n";
 	logout += "	             </tr>\n";
 	logout += "              <tr>\n";
 	logout += "                <td width='9' style='background:url(http://t6pib.wooribank.com/img/eng/logout_tab_01_left.gif) no-repeat top left'></td>\n";
 	logout += "                <td style='padding-top:10px'>\n";
 	logout += "                  <table cellpadding='0' cellspacing='0' border='0' width='400'>\n";
 	logout += "                    <tr>\n";
 	logout += "                      <td valign='top' style='padding-left:20px'><img src='http://t6pib.wooribank.com/img/eng/logout_text.gif'></td>\n";
 	logout += "                    </tr>\n";
 	logout += "			           <tr>\n";
 	logout += "                      <td height='13' style='padding-left:20px'><img src='http://t6pib.wooribank.com/img/eng/logout_bg_dot.gif' style='padding-left:20px'></td>\n";
 	logout += " 			       </tr>\n";
 	logout += " 			       <tr>\n";
 	logout += "                      <td style='padding-left:20px;'>\n";
 	logout += "                        <table cellpadding='0' cellspacing='0' border='0'>\n";
 	logout += "                          <tr>\n";
 	logout += "                            <td><img src='http://t6pib.wooribank.com/img/pib/logout_img_01.gif'></td>\n";
 	logout += "                            <td style='padding-left:10px; padding-top:15px'>\n";
 	logout += "                              Automatic log-out timer: <font color='red'><span id='cntMsg'></span>sec</font> <br><br>\n";
 	logout += "                              For your financial transaction in safety,<br>\n";
 	logout += "                              it will be logged out since there has been<br>\n";
 	logout += "                              any service transaction for 50 minutes after logging in.<br>\n";
 	logout += "                              Would you like to extend the log-in time?\n";
 	logout += "                            </td>\n";
 	logout += "                          </tr>\n";
 	logout += "                          <tr>\n";
 	logout += "                            <td height='60'></td>\n";
 	logout += "                            <td style='padding-left:10px'>\n";
 	logout += "                              <a id='__delay' href='#' onclick='__clickYes();'><img src='http://t6pib.wooribank.com/img/eng/logout_btn_r.gif' alt=''></a>&nbsp;&nbsp;\n";
 	logout += "                              <a id='__logout' href='javascript:__clickNo();'><img src='http://t6pib.wooribank.com/img/eng/logout_btn_out.gif' alt=''></a>\n";
 	logout += "                            </td>\n";
 	logout += "                          </tr>\n";
 	logout += "                        </table>\n";
 	logout += "                      </td>\n";
 	logout += "                    </tr>\n";
 	logout += "                    <tr>\n";
 	logout += "                      <td valign='bottom' align='center'><img src='http://t6pib.wooribank.com/img/eng/logout_foot.gif'></td>\n";
 	logout += "                    </tr>\n";
 	logout += "                  </table>\n";
 	logout += "                </td>\n";
 	logout += "                <td align='right' width='9' style='background:url(http://t6pib.wooribank.com/img/eng/logout_tab_01_right.gif) no-repeat top right'></td>\n";
 	logout += "              </tr>\n";
 	logout += "              <tr>\n";
 	logout += "                <td colspan='3' valign='bottom'><img src='http://t6pib.wooribank.com/img/eng/logout_tab_bottom.gif'></td>\n";
 	logout += "              </tr>\n";
 	logout += "            </table>\n";
 	logout += "          </td>\n";
 	logout += "        </tr>\n";
 	logout += "      </table>\n";
 	logout += "    </td>\n";
 	logout += "  </tr>\n";
 	logout += "</table>\n";
 	logout += "</div>\n";
 	

 	return logout;
 }

 /**
  * 자동로그아웃 처리 안내 레이어 html
  * @returns {String}
  */
 function __makeLogoutDoneMsg() {
 	var logoutdone = "";
 	
 	var __clientWidth  = $(window).width();
 	var __clientHeight = $(window).height();
 	var __clientHeight2 = document.body.clientHeight;
 	var __visibleWidth = (__clientWidth / 2) - 209;
 	var __visibleHeight = (__clientHeight / 2) - 118;
 	
 	//logoutdone += "<iframe style='position:absolute;top:0;left:0;z-index:9999;background:#ffffff' class='auto-logout logbgSize framh' width='"+__clientWidth+"' height='"+__clientHeight2+"'>\n";
 	//logoutdone += "</iframe>\n";
 	logoutdone += "<div class='auto-logout dev_makeLogoutDoneMsg' style='position:absolute;z-index:99999;top:0;left:0;background:#fff url(http://t6pib.wooribank.com/img/comm/autotime_bg.jpg) no-repeat center top;height:"+__clientHeight2+"'>\n";
 	logoutdone += "<table class='logbgSize' cellpadding='0' cellspacing='0' border='0' width='"+__clientWidth+"' height='"+__clientHeight+"'>\n";
 	logoutdone += "  <tr>\n";
 	logoutdone += "    <td class='logoutSize' width='"+__visibleWidth+"' height='"+__visibleHeight+"'>&nbsp;</td>\n";
 	logoutdone += "    <td>\n";
 	logoutdone += "      <table cellpadding='0' cellspacing='0' border='0'>\n";
 	logoutdone += "        <tr>\n";
 	logoutdone += "          <td>\n";
 	logoutdone += "           <div class='logout-done'>\n";
 	logoutdone += "                <h4 style='padding-top:65px;'><img src='http://t6pib.wooribank.com/img/pib/logout_text.gif' alt='자동로그아웃안내'></h4>\n";
 	logoutdone += "                 <p class='txt-logout' style='height:103px;'>\n";
 	logoutdone += "                              고객님의 안전한 금융거래를 위해<br>\n";
 	logoutdone += "                              로그인 후 약 50분 동안 서비스 이용이 없어<br>\n";
 	logoutdone += "                              자동 로그아웃 되었습니다.<br><br>\n";
 	logoutdone += "                   </p>\n";
 	logoutdone += "                   <p class='btn'>\n";
 	logoutdone += "                              <a id='__login' href='javascript:__goLogin();'><img src='http://t6pib.wooribank.com/img/common/btn_yes3.gif' alt='다시로그인'></a>\n";
 	logoutdone += "						         <a id='__login2' href='javascript:__goLogin2();'><img src='http://t6pib.wooribank.com/img/common/btn_no3.gif' alt='초기화면 이동' hspace='5'></a>\n";
 	logoutdone += "					  </p>\n";
 	logoutdone += "                </div>\n";
 	logoutdone += "          </td>\n";
 	logoutdone += "        </tr>\n";
 	logoutdone += "      </table>\n";
 	logoutdone += "    </td>\n";
 	logoutdone += "  </tr>\n";
 	logoutdone += "</table>\n";
 	logoutdone += "</div>\n";
 	

 	return logoutdone;
 }

 /**
  * 자동로그아웃 처리 안내 레이어 html [영문]
  * @returns {String}
  */
 function __makeLogoutDoneMsg_eng() {
 	var logoutdone = "";
 	
 	var __clientWidth  = $(window).width();
 	var __clientHeight = $(window).height();
 	var __clientHeight2 = document.body.clientHeight;
 	var __visibleWidth = (__clientWidth / 2) - 209;
 	var __visibleHeight = (__clientHeight / 2) - 118;
 	
 	//logoutdone += "<iframe style='position:absolute;top:0;left:0;z-index:9999;background:#ffffff' class='auto-logout logbgSize framh' width='"+__clientWidth+"' height='"+__clientHeight2+"'>\n";
 	//logoutdone += "</iframe>\n";
 	logoutdone += "<div class='auto-logout dev_makeLogoutDoneMsg' style='position:absolute;z-index:99999;top:0;left:0;background:#fff url(http://t6pib.wooribank.com/img/comm/autotime_bg.jpg) no-repeat center top;height:"+__clientHeight2+"'>\n";
 	logoutdone += "<table class='logbgSize' cellpadding='0' cellspacing='0' border='0' width='"+__clientWidth+"' height='"+__clientHeight+"'>\n";
 	logoutdone += "  <tr>\n";
 	logoutdone += "    <td class='logoutSize' width='"+__visibleWidth+"' height='"+__visibleHeight+"'>&nbsp;</td>\n";
 	logoutdone += "    <td>\n";
 	logoutdone += "      <table cellpadding='0' cellspacing='0' border='0'>\n";
 	logoutdone += "        <tr>\n";
 	logoutdone += "          <td>\n";
 	logoutdone += "            <table cellpadding='0' cellspacing='0' border='0' width='418' bgcolor='#ffffff'>\n";
 	logoutdone += "              <tr>\n";
 	logoutdone += "                <td colspan='3'><img src='http://t6pib.wooribank.com/img/eng/logout_tab_top.gif'></td>\n";
 	logoutdone += "              </tr>\n";
 	logoutdone += "              <tr>\n";
 	logoutdone += "                <td width='9' style='background:url(http://t6pib.wooribank.com/img/eng/logout_tab_01_left.gif) no-repeat top left'></td>\n";
 	logoutdone += "                <td style='padding-top:10px'>\n";
 	logoutdone += "                  <table cellpadding='0' cellspacing='0' border='0' width='400'>\n";
 	logoutdone += "                    <tr>\n";
 	logoutdone += "                      <td valign='top' style='padding-left:20px'><img src='http://t6pib.wooribank.com/img/eng/logout_text.gif'></td>\n";
 	logoutdone += "                    </tr>\n";
 	logoutdone += "                    <tr>\n";
 	logoutdone += "                      <td height='13' style='padding-left:20px'><img src='http://t6pib.wooribank.com/img/eng/logout_bg_dot.gif' style='padding-left:20px'></td>\n";
 	logoutdone += "                    </tr>\n";
 	logoutdone += "                    <tr>\n";
 	logoutdone += "                      <td style='padding-left:20px; padding-top:15px'>\n";
 	logoutdone += "                        <table cellpadding='0' cellspacing='0' border='0'>\n";
 	logoutdone += "                          <tr>\n";
 	logoutdone += "                            <td><img src='http://t6pib.wooribank.com/img/pib/logout_img.gif'></td>\n";
 	logoutdone += "                            <td style='padding-left:10px'>\n";
 	logoutdone += "                              For your financial transaction in safety,<br>\n";
 	logoutdone += "                              it is logged out since there has been any service<br>\n";
 	logoutdone += "                              transaction for 50 minutes after logging in.<br><br>\n";
 	logoutdone += "                              If you want to log-in again, click [YES] button.<br>\n";
 	logoutdone += "                              Or if you want to move WOORIBANK intro page click [NO] button.\n";
 	logoutdone += "                            </td>\n";
 	logoutdone += "                          </tr>\n";
 	logoutdone += "                          <tr>\n";
 	logoutdone += "                            <td height='50'></td>\n";
 	logoutdone += "                            <td style='padding-left:10px'>\n";
 	logoutdone += "                              <a id='__login' href='javascript:__goLogin();'><img src='http://t6pib.wooribank.com/img/eng/btn_yes.gif' alt=''></a>\n";
 	logoutdone += "						         <a id='__login2' href='javascript:__goLogin2();'><img src='http://t6pib.wooribank.com/img/eng/btn_no.gif' alt='' hspace='5'></a>\n";
 	logoutdone += "					           </td>\n";
 	logoutdone += "                          </tr>\n";
 	logoutdone += "                        </table>\n";
 	logoutdone += "                      </td>\n";
 	logoutdone += "                    </tr>\n";
 	logoutdone += "                    <tr>\n";
 	logoutdone += "                      <td valign='bottom' align='center'><img src='http://t6pib.wooribank.com/img/eng/logout_foot.gif'></td>\n";
 	logoutdone += "                    </tr>\n";
 	logoutdone += "                  </table>\n";
 	logoutdone += "	               </td>\n";
 	logoutdone += "	               <td width='9'  align='right'style='background:url(http://t6pib.wooribank.com/img/eng/logout_tab_01_right.gif) no-repeat top right'></td>\n";
 	logoutdone += "              </tr>\n";
 	logoutdone += "              <tr>\n";
 	logoutdone += "	               <td colspan='3'><img src='http://t6pib.wooribank.com/img/eng/logout_tab_bottom.gif'></td>\n";
 	logoutdone += "              </tr>\n";
 	logoutdone += "            </table>\n";
 	logoutdone += "          </td>\n";
 	logoutdone += "        </tr>\n";
 	logoutdone += "      </table>\n";
 	logoutdone += "    </td>\n";
 	logoutdone += "  </tr>\n";
 	logoutdone += "</table>\n";
 	logoutdone += "</div>\n";
 	
 	return logoutdone;
 }