<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<!-- START HEAD -->
    <head>
        
        <meta charset="UTF-8" />
        <!-- this line will appear only if the website is visited with an iPad -->
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.2, user-scalable=yes" />
        
        <title>Hana Solution - 예금통장개설</title>
        
        <!-- [favicon] begin -->
        <link rel="shortcut icon" type="image/x-icon" href="${ pageContext.request.contextPath }/resources/images/favicon.png" />
        <link rel="icon" type="image/x-icon" href="${ pageContext.request.contextPath }/resources/images/favicon.png" />
        <!-- Touch icons more info: http://mathiasbynens.be/notes/touch-icons -->
        <!-- For iPad3 with retina display: -->
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="${ pageContext.request.contextPath }/resources/apple-touch-icon-144x.png" />
        <!-- For first- and second-generation iPad: -->
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="${ pageContext.request.contextPath }/resources/apple-touch-icon-114x.png" />
        <!-- For first- and second-generation iPad: -->
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="${ pageContext.request.contextPath }/resources/apple-touch-icon-72x.png" />
        <!-- For non-Retina iPhone, iPod Touch, and Android 2.1+ devices: -->
        <link rel="apple-touch-icon-precomposed" href="${ pageContext.request.contextPath }/resources/apple-touch-icon-57x.png" />
        <!-- [favicon] end -->
        
        <!-- CSSs -->
        <link rel="stylesheet" type="text/css" media="all" href="${ pageContext.request.contextPath }/resources/css/reset.css" /> <!-- RESET STYLESHEET -->
        <link rel="stylesheet" type="text/css" media="all" href="${ pageContext.request.contextPath }/resources/style.css" /> <!-- MAIN THEME STYLESHEET -->
        <link rel="stylesheet" id="max-width-1024-css" href="${ pageContext.request.contextPath }/resources/css/max-width-1024.css" type="text/css" media="screen and (max-width: 1240px)" />
        <link rel="stylesheet" id="max-width-768-css" href="${ pageContext.request.contextPath }/resources/css/max-width-768.css" type="text/css" media="screen and (max-width: 987px)" />
        <link rel="stylesheet" id="max-width-480-css" href="${ pageContext.request.contextPath }/resources/css/max-width-480.css" type="text/css" media="screen and (max-width: 480px)" />
        <link rel="stylesheet" id="max-width-320-css" href="${ pageContext.request.contextPath }/resources/css/max-width-320.css" type="text/css" media="screen and (max-width: 320px)" />
        
        <!-- CSSs Plugin -->
        <link rel="stylesheet" id="thickbox-css" href="${ pageContext.request.contextPath }/resources/css/thickbox.css" type="text/css" media="all" />
        <link rel="stylesheet" id="styles-minified-css" href="${ pageContext.request.contextPath }/resources/css/style-minifield.css" type="text/css" media="all" />
        <link rel="stylesheet" id="buttons" href="${ pageContext.request.contextPath }/resources/css/buttons.css" type="text/css" media="all" />
        <link rel="stylesheet" id="cache-custom-css" href="${ pageContext.request.contextPath }/resources/css/cache-custom.css" type="text/css" media="all" />
        <link rel="stylesheet" id="custom-css" href="${ pageContext.request.contextPath }/resources/css/custom.css" type="text/css" media="all" />
	    
        <!-- FONTs -->
        <link rel="stylesheet" id="google-fonts-css" href="http://fonts.googleapis.com/css?family=Oswald%7CDroid+Sans%7CPlayfair+Display%7COpen+Sans+Condensed%3A300%7CRokkitt%7CShadows+Into+Light%7CAbel%7CDamion%7CMontez&amp;ver=3.4.2" type="text/css" media="all" />
        <link rel='stylesheet' href='${ pageContext.request.contextPath }/resources/css/font-awesome.css' type='text/css' media='all' />
        
        <!-- JAVASCRIPTs -->
        <script type="text/javascript" src="${ pageContext.request.contextPath }/resources/js/jquery.js"></script>
        <script type="text/javascript" src="${ pageContext.request.contextPath }/resources/js/comment-reply.js"></script>
        <script type="text/javascript" src="${ pageContext.request.contextPath }/resources/js/jquery.quicksand.js"></script>
        <script type="text/javascript" src="${ pageContext.request.contextPath }/resources/js/jquery.tipsy.js"></script>
        <script type="text/javascript" src="${ pageContext.request.contextPath }/resources/js/jquery.prettyPhoto.js"></script>
        <script type="text/javascript" src="${ pageContext.request.contextPath }/resources/js/jquery.cycle.min.js"></script>
        <script type="text/javascript" src="${ pageContext.request.contextPath }/resources/js/jquery.anythingslider.js"></script>
        <script type="text/javascript" src="${ pageContext.request.contextPath }/resources/js/jquery.eislideshow.js"></script>
        <script type="text/javascript" src="${ pageContext.request.contextPath }/resources/js/jquery.easing.js"></script>
        <script type="text/javascript" src="${ pageContext.request.contextPath }/resources/js/jquery.flexslider-min.js"></script>
        <script type="text/javascript" src="${ pageContext.request.contextPath }/resources/js/jquery.aw-showcase.js"></script>
        <script type="text/javascript" src="${ pageContext.request.contextPath }/resources/js/layerslider.kreaturamedia.jquery-min.js"></script>
        <script type="text/javascript" src="${ pageContext.request.contextPath }/resources/js/shortcodes.js"></script>
		<script type="text/javascript" src="${ pageContext.request.contextPath }/resources/js/jquery.colorbox-min.js"></script>
		<script type="text/javascript" src="${ pageContext.request.contextPath }/resources/js/jquery.tweetable.js"></script>
		<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>

		<script type="text/javascript">
		
		$(document).ready(function(){
			
			$('.menubar').each(function(index){
				$(this).attr('menu-index', index);
			}).click(function(){
				var index = $(this).attr('menu-index');
				$('.menubar[menu-index=' + index + ']').addClass('clicked_menu');
				$('.menubar[menu-index!=' + index + ']').removeClass('clicked_menu');
			});
			$('.menubar2').each(function(index){
				$(this).attr('menu-index', index);
			}).click(function(){
				var index = $(this).attr('menu-index');
				$('.menubar2[menu-index=' + index + ']').addClass('clicked_menu');
				$('.menubar2[menu-index!=' + index + ']').removeClass('clicked_menu');
			});
			$('.menubar3').each(function(index){
				$(this).attr('menu-index', index);
			}).click(function(){
				var index = $(this).attr('menu-index');
				$('.menubar3[menu-index=' + index + ']').addClass('clicked_menu');
				$('.menubar3[menu-index!=' + index + ']').removeClass('clicked_menu');
			});
			$('.menubar4').each(function(index){
				$(this).attr('menu-index', index);
			}).click(function(){
				var index = $(this).attr('menu-index');
				$('.menubar4[menu-index=' + index + ']').addClass('clicked_menu');
				$('.menubar4[menu-index!=' + index + ']').removeClass('clicked_menu');
			});
			
			$('#agreeBtn').click(function() {
				location.href= "${ pageContext.request.contextPath }/account/accountInfo";
			})
			
			$('#unagreeBtn').click(function() {
				location.href= "${ pageContext.request.contextPath }/";
			})
	
		});
		
		</script>

</head>

<style>
	.manageMenu:hover {
    		color: #008B8B; 
   	}
   	
   	#manageNav{
   		width: 10%;
   		position: relative;
   		margin-left: 25%;
   		float: left;
   	}
   	
   	#manageSec{
   		width: 40%;
   		position: relative;
   		float: left;
   	}
   	
   	#tdNum {
	text-align: center;
	font-size: 12pt;
	font-family: 'inherit';
	border-bottom: solid;
	border-bottom-width: 2px;
	background-color: white;
	}
	
	.menubar, .menubar2, .menubar3, .menubar4{
		position: relative;
		color: #5f6368;
		border: solid 1px #dadce0;
		border-radius: 1vw;
		display: inline-block;
		padding: 6px 8px 6px 8px; 
		/*padding: top right bottom left*/
		cursor: pointer;
	}

	.clicked_menu{
		color: ;border-color: #4285f4;
		color: white;
		background: #008B8B;
    }
    
</style>

<body>
	<header>
		<jsp:include page="/WEB-INF/include/header.jsp" />
	</header>
	<nav id="manageNav">
		<!-- START SIDEBAR -->
		<div class="inner group" style="width: 400px;">
	        <div class="sidebar group" style="width: 100%;">
	            
	            <div class="widget-first widget recent-posts" style="width: 100%;">
	                <h3 style="color: #008B8B; font-size: 15pt;">계좌개설</h3>
	                <hr style="border-color: #008B8B; width: 30%; float: left;">
	                <div class="recent-post group">
	                    <div class="hentry-post group">
	                    	<a href="${ pageContext.request.contextPath }/account/join" title="계좌개설" class="manageMenu" style="color: #008B8B; font-size: 11pt;">계좌개설</a>
	                    </div>
	                    <div class="hentry-post group">
	                        <a href="#" title="계좌개설" class="manageMenu" style="font-size: 11pt;">계좌조회</a>
	                    </div>
	                    <div class="hentry-post group">
	                        <a href="#" title="재무설계" class="manageMenu" style="font-size: 11pt;">오픈뱅킹</a>
	                    </div>
	                    <div class="hentry-post group">
	                        <a href="#" title="재무설계" class="manageMenu" style="font-size: 11pt;">오픈뱅킹조회</a>
	                    </div>
	                </div>
	            </div>
	            
	        </div>
	     </div>
	     <!-- END SIDEBAR -->
	</nav>
	<section id="manageSec">
	
		<%-- 계좌개설 --%>
		<div style="width: 100%;">
			<h2 style="text-align: center; color: #008B8B;">영하나플러스 통장</h2><br>
			<table style="width: 100%; align-content: center; margin-right: 100px;">
				<tr>
					<td id="tdNum" style="color: #008B8B;">
						<a href="${ pageContext.request.contextPath }/account/join" style="color: #008B8B; font-size: 12pt; font-family: inherit;">1 약관동의</a>
					</td>
					<td id="tdNum">2 정보입력</td>
					<td id="tdNum">3 분석결과</td>
				</tr>
			</table><br><br>
			<h2 style="text-align: left; margin-right: 30px;">약관동의 및 금리확인</h2>
			<hr>
		</div>
		
		<!-- START CONTENT -->
        <div id="content-page" class="content group" style="width: 100%;">
            <div class="hentry group" style="width: 100%;">
                <div class="accordion-container" style="width: 100%;">
                    <h3 class="accordion-title" style="font-family: 'inherit'; color: #008B8B"><span class="icon-plus-sign"></span>예금거래기본 약관<button class="menubar" style="margin-left: 680px;">동의함</button></h3>
                    <div class="accordion-item" style="width:100%; border: none;">
                        <div style="width: 100%; height: 300px; overflow: auto;">
                        	<p>2019. 8. 26 개정 <span style="margin-left: 530px;">준법감시인 심사필 제2021-약관-119호(2021.03.22)</span></p>
                            <h3 style="text-align: center; font-family: 'inherit';"><strong>예금거래 기본약관</strong></h3><br>
                            <p style="font-size: 10pt;">이 예금거래기본약관(이하 “약관”이라 한다)은 (주)하나은행(이하 “은행”이라 한다)과 거래처(또는 예금주)가 서로 믿음을 바탕으로 예금거래를 빠르고 틀림 없이 처리하는 한편, 
                            	서로의 이해관계를 합리적으로 조정하기 위하여 기본적이고 일반적인 사항을 정한 것이다. 은행은 이 약관을 영업점에 놓아두고, 거래처는 영업시간 중 언제든지 이 약관을 볼 수 있고 
                            	또한 그 교부를 청구할 수 있다.
                            </p><br>
                            <strong style="font-size: 10pt;">제1조 적용범위</strong><br>
                            <p style="font-size: 10pt;">이 약관은 입출금이 자유로운 예금, 거치식예금 및 적립식예금 거래에 적용한다.</p><br>
                            <strong style="font-size: 10pt;">제2조 실명거래</strong>
                            <p style="font-size: 10pt;">
                            	① 거래처는 실명으로 거래하여야 한다.<br>
                            	② 은행은 거래처의 실명확인을 위하여 주민등록증ㆍ사업자등록증 등 실명확인증표 또는 그밖에 필요한 서류의 제시나 제출을 요구할 수 있고, 거래처는 이에 따라야 한다.
                            </p>
                            <strong style="font-size: 10pt;">제3조 거래장소</strong><br>
                            <p style="font-size: 10pt;">
                            	거래처는 예금계좌를 개설한 영업점(이하 “개설점”이라 한다)에서 모든 예금거래를 한다. 다만, 은행이 정하는 바에 따라 다른 영업점이나 다른 금융기관, 또는 현금자동지급기ㆍ현금자동입출금기ㆍ컴퓨터ㆍ전화기 등(이하 “전산통신기기”)을 통하여 거래할 수 있다.
                            </p><br>
                            <strong style="font-size: 10pt;">제4조 거래방법</strong><br>
                            <p style="font-size: 10pt;">
                            	거래처는 은행에서 내준 통장(증서· 전자통장을 포함한다) 또는 수표· 어음용지로 거래하여야 한다. 그러나 입금할 때, 자동이체약정ㆍ전산통신 기기이용약정에 따라 거래하는 경우 및 기등록된 생체정보(이하”바이오 정보”), 실명확인증표 등을 통해 본인확인된 경우에는 통장없이(이하”무통장”)도 거래할 수 있다.
                            </p><br>
                            <strong style="font-size: 10pt;">제5조 인감, 비밀번호 등의 신고</strong><br>
                            <p style="font-size: 10pt;">
                            	① 거래처는 예금계좌를 개설할 때 인감 또는 서명, 비밀번호, 성명, 상호, 대표자명, 대리인명, 주소 등 거래에 필요한 사항을 신고하여야 한다. 다만, 비밀번호는 비밀번호 입력기(이하 “PIN-Pad기”라 한다)에 의하여 거래처가 직접 등록할 수 있으며, 거래처가 은행에 내점할 수 없는 경우 거래처는 개설된 예금의 첫거래 전에 은행이 정한 방법에 따라 전산통신기기를 이용하여 비밀번호를 등록하여야 한다.<br>
                            	② 제 1항에 불구하고 거치식·적립식 예금은 비밀번호를 신고하지 않을 수 있다.<br>
                            	③ 거래처는 인감과 서명을 함께 신고하거나, 인감 또는 서명을 추가 신고할 수 있다.<br>
                            	④ 통장을 발행하지 않은 경우, 은행은 거래처로부터 인감 또는 서명의 신고 절차를 생략할 수 있다.
                            </p><br>
                            <strong style="font-size: 10pt;">제6조 입금</strong><br>
                            <p style="font-size: 10pt;">
                            	① 거래처는 현금이나 즉시 추심할 수 있는 수표ㆍ어음, 기타 증권(이하 “증권”이라 한다) 등으로 입금할 수 있다.<br>
                            	② 거래처는 현금이나 증권으로 계좌송금(거래처가 개설점 이외에서 자기계좌에 입금하거나, 제3자가 개설점 또는 다른 영업점이나, 다른 금융기관에서 거래처 계좌에 입금하는 것)하거나, 계좌이체(거래처의 신청에 따라 은행이 특정계좌에서 자금을 출금하여 같은 은행 또는 다른 은행의 다른 계좌에 입금하는 것) 할 수 있다.<br>
                            	③ 증권으로 입금할 때 입금인은 증권의 백지보충이나 배서 또는 영수기명날인 등 필요한 절차를 밟아야 하며, 은행은 백지보충 등의 의무를 지지 않는다.<br>
                            	④ 입금하는 증권이 수표나 어음일 때 은행은 소정금액란에 적힌 금액으로 처리한다.
                            </p><br>
                            <strong style="font-size: 10pt;">제11조 금융사고자금 지급정지</strong><br>
                            <p style="font-size: 10pt;">
                            	① 은행은 “금융사고예방을 위한 공동협약”(이하 “협약”이라 한다) 및 “금융사고예방을 위한 공동협약 시행세칙(이하 “세칙”이라 한다)에서 정하는 금융사고(이하 “금융사고”라 한다)로 인한 사고자금이 이체된 거래처의 계좌(이하 “사고계좌”라 한다)에 대하여 금융사고가 발생한 금융기관의 요청이 있는 경우 지체없이 지급정지를 취한다.<br>
                            	② 제1항의 지급정지 금액은 금융사고로 인해 이체된 금액 이내로 한다.<br>
                            	③ 제1항의 지급정지기간은 지급정지한 날로부터 10영업일 이내로 한다. 다만, 지급정지를 요청한 금융 기관의 신청으로 법원에 의한 결정문 송달이 이루어진 경우에는 그러하지 아니하며, 법원의 결정문 송달이 지연되어 지급정지를 요청한 금융기관이 관련 증빙서류를 첨부하여 서면으로 지급정지기간의 연장을 요청하는 경우 은행은 10영업일 이내에서 연장할 수 있다.<br>
                            	④ 은행이 제1항의 지급정지를 한 때에는 지체없이 거래처에 지급정지 사실과 이의신청절차를 유선 또는 이와 상응하는 방법으로 통지하여야 하며, 거래처가 이의를 신청한 때에는 은행이 정한 민원처리절차에 의하여 처리한다.<br>
                            	⑤ 거래처가 지급을 청구하는 경우에는 금융사고에 의해 이체된 자금을 제외하고 지급한다.<br>
                            	⑦ 은행은 거래처의 계좌에서 금융사고로 인한 사고자금이 다른 금융기관에 이체된 경우 사고발생을 인지한 날로부터 10일 이내에 그 다른 금융기관에 대하여 지급정지를 요청할 수 있다.<br>
                            	⑧ 이 조의 금융사고자금 지급정지와 관련하여 이 조에서 정하지 아니한 사항은 제1항의 협약 및 세칙에서 정하는 바에 따른다.
                            </p><br>
                            <strong style="font-size: 10pt;">제14조 사고ㆍ변경사항의 신고</strong><br>
                            <p style="font-size: 10pt;">
                            	① 거래처는 통장ㆍ도장ㆍ카드 또는 증권이나 그 용지를 분실ㆍ도난ㆍ멸실ㆍ훼손했을 때는 곧 서면으로 신고하여야 한다. 다만, 긴급하거나 부득이 할 때는 영업시간 중에 전화 등으로 신고할 수 있으며 이 때는 다음 영업일 안에 서면신고하여야 한다.<br>
                            	② 거래처는 인감 또는 서명, 비밀번호, 성명, 상호, 대표자명, 대리인명, 주소, 전화번호 기타 신고사항을 바꿀 때에는 서면으로 신고하여야 한다.<br>
                            	다만, 비밀번호는 서면신고없이 전산통신기기를 이용하여 바꿀 수 있으며, 이 경우 계좌번호, 주민등록번호, 비밀번호 등 은행이 정한 요건이 맞으면 은행은 새로운 비밀번호로 변경처리한다.<br>
                            	③ 거래처는 주소, 전화번호 등의 일부 신고사항에 대하여는 은행이 정한 방법에 따라 전산통신기기를 이용하여 변경할 수 있다.<br>
                            	④ 제1항 및 제2항의 신고는 은행이 이를 접수한 뒤 전산입력 등 필요한 조치를 하는데 걸리는 합리적인 시간이 지나면 그 효력이 생기며 전산장애 등 불가항력적인 사유로 처리하지 못한 때는 복구 등 사유해제시 즉시 처리하여야 한다.<br>
                            	⑤ 제1항의 신고를 철회한 때는 거래처 본인이 서면 또는 전산통신기기 등으로 하여야 한다.
                            </p><br>
                            <strong style="font-size: 10pt;">제17조 면책</strong><br>
                            <p style="font-size: 10pt;">
                            	① 은행은 예금지급청구서, 증권(어음교환소에서 전자적정보의 형태로 제시된 어음ㆍ수표 등 포함) 또는 신고서 등에 찍힌 인영(또는 서명)을 신고한 인감(또는 서명감)과 육안으로 주의 깊게 비교ㆍ대조하여 틀림없다고 여기고, 은행이 정한 방법에 따라 전산통신기기를 이용하여 입력된 비밀번호가 신고 또는 등록한 것과 같아서 예금을 지급하였거나 기타 거래처가 요구하는 업무를 처리하였을 때에는 인감이나 서명의 위조ㆍ변조 또는 도용이나 그밖의 다른 사고로 인하여 거래처에 손해가 생겨도 그 책임을 지지 않는다. 다만, 은행이 거래처의 인감이나 서명의 위조ㆍ변조 또는 도용 사실을 알았거나 알 수 있었을 때는 그러하지 아니하다.<br>
                            	③ 은행이 거래처의 실명확인증표 등으로 주의 깊게 본인확인하여 예금을 지급하였거나 기타 거래처가 요구하는 업무를 처리하였을 떄에는 위조·변조 또는 도용이나 그밖의 다른 사고로 인하여 거래처에 손해가 생겨도 그 책임을 지지 않는다. 다만, 은행의 고의 또는 과실로 인한 귀책사유가 있는 경우 은행은 그 책임의 일부 또는 전부를 부담한다.<br>
                            	④ 은행이 주민등록증 등 실명확인증표로 주의 깊게 실명확인하거나 실명전환한 계좌는 거래처가 실명확인증표 또는 서류의 위조ㆍ변조ㆍ도용 등을 한 경우, 이로 인하여 거래처에 손해가 생겨도 은행은 그 책임을 지지 않는다.<br>
                            	⑤ 거래처가 제14조 제1항, 제2항, 제4항의 신고나 절차를 미루어 생긴 손해에 대해 은행은 그 책임을 지지 않는다. 다만, 이 경우에도 은행은 거래처에 손해가 발생하지 않도록 선량한 관리자로서의 주의를 다하여야 한다.
                            </p><br>
                            <strong style="font-size: 10pt;">제21조 약관의 변경</strong><br>
                            <p style="font-size: 10pt;">
                            	① 은행은 이 약관이나 입출금이자유로운예금약관 또는 거치식ㆍ적립식예금 약관을 변경하고자 할 때에는 변경약관 시행일 1개월 전에 그 내용을 영업점과 인터넷 홈페이지에 게시하여 거래처에 알린다. 다만, 법령의 개정이나 제도의 개선 등으로 인하여 긴급히 약관을 변경한 때에는 즉시 이를 게시 또는 공고하여야 한다.<br>
                            	② 약관변경의 내용이 거래처에 불리한 경우에는 변경약관 시행일 1개월 전에 제1항에 따라 게시하여야 하며 다음 각 호중 3개 이상의 방법으로 거래처에 알린다.<br>
                            	1. 거래처가 신고한 전자우편(E-mail) 또는 휴대전화(SMS, MMS)에 의한 통지<br>
                            	4. 인터넷뱅킹 및 모바일뱅킹 초기화면에 게시<br>
                            	5. 거래처와 약정한 별도의 전자기기(앱푸쉬 등)에 의한 통지<br>
                            	③ 거래처는 제1항 및 제2항의 고지후 변경약관 시행일 전영업일까지 서면에 의한 통지로 계약을 해지할 수 있으며, 이 기간내에 거래처의 서면에 의한 이의가 은행에 도달하지 않으면 이를 승인한 것으로 본다.
                            </p><br>
                            <strong style="font-size: 10pt;">제22조 약관적용의 순서</strong><br>
                            <p style="font-size: 10pt;">
                            	① 은행과 거래처 사이에 개별적으로 합의한 사항이 약관조항과 다를 때에는 그 합의사항을 약관에 우선하여 적용한다.<br>
                            	② 이 약관에 정한 사항과 입출금이 자유로운 예금약관 또는 거치식ㆍ적립식 예금약관에서 정한 사항이 다를 때는 입출금이 자유로운 예금 약관이나 거치식ㆍ적립식 예금약관을 먼저 적용한다.
                            </p><br>
                            <strong style="font-size: 10pt;">제25조 위법계약의 해지</strong><br>
                            <p style="font-size: 10pt;">
                            	거래처는 「금융소비자보호에 관한 법률」 제47조 및 관련 규정이 정하는 바에 따라 서면 등으로 해당 계약의 해지를 요구할 수 있다.
                            </p><br>
                            <p style="font-size: 10pt;">
                            	※ 이 약관은 금융소비자 보호에 관한 법령 및 내부통제기준에 따른 절차를 거쳐 제공됩니다.
                            </p><br>
                            <strong style="font-size: 10pt;">부칙</strong><br>
                            <p style="font-size: 10pt;">
                            	이 약관은 2021.03.25부터 적용합니다.
                            </p><br>
                            <div class="clear space"></div>
                            
                        </div>
                    </div>
                    <div class="clear"></div>
                    <h3 class="accordion-title" style="font-family: 'inherit'; color: #008B8B"><span class="icon-plus-sign"></span>입출금이 자유로운 예금 약관<button class="menubar2" style="margin-left: 585px;">동의함</button></h3>
                    <div class="accordion-item" style="width:100%; border: none;">
                        <div style="width: 100%; height: 300px; overflow: auto;">
                        	<p>2016. 12. 30 개정 <span style="margin-left: 500px;">준법감시인 심사필번호 제2021-약관-120호(2021.03.22)</span></p>
                            <h3 style="text-align: center; font-family: 'inherit';"><strong>입출금이 자유로운 예금 약관</strong></h3><br>
                            <strong style="font-size: 10pt;">제1조 적용범위</strong><br>
                            <p style="font-size: 10pt;">
                            	① 입출금이 자유로운 예금(이하 ‘이 예금’이라 한다)이란 예치기간을 정하지 아니하고 자유로이 입출금하는 예금을 말한다.<br>
                            	② 이 약관에서 정하지 아니한 사항은 예금거래기본약관의 규정을 적용한다.
                            </p><br>
                            <strong style="font-size: 10pt;">제2조 이자</strong>
                            <p style="font-size: 10pt;">
                            	① 이 약관의 적용을 받는 예금중 다음 예금의 이자는 해당 기준일에 셈하여 기준일 익일(이하’원가일’이라 한다)에 원금에 더한다. 다만, 당좌예금은 이자를 붙이지 않으며, 은행에서 정하는 예금 중 일정한 기준에 해당되는 경우에는 이자를 지급하지 않을수 있다.<br>
                            	1. 보통예금 : 매년 6월, 12월의 제3금요일<br>
                            	2. 저축예금 : 매년 3월, 6월, 9월, 12월의 제3 금요일<br>
                            	3. 자유저축예금, 기업자유예금 및 가계당좌예금 : 매년 3월, 6월, 9월, 12월의 제3 금요일<br>
                            	② 제①항의 예금이자는 최초 예금일 또는 원가일부터 원가일 또는 지급일 전날까지의 기간을 이자계산 기간으로 하고, 매일의 최종잔액에 대하여 영업점에 게시한 이율로 셈한다.<br>
                            	③ 예금의 이자는 제1항에 따른 이자지급을 제외한 최종거래일로부터 5년까지는 제1항 및 제2항에서 정한 방식으로 지급하고, 5년이 경과한 날부터는 이자를 원금에 더하지 않고, 계좌해지 또는 추가 입출금 거래 발생일에 일괄 계산하여 지급할 수 있다.
                            </p>
                            <strong style="font-size: 10pt;">제3조 거래장소</strong><br>
                            <p style="font-size: 10pt;">
                            	거래처는 예금계좌를 개설한 영업점(이하 “개설점”이라 한다)에서 모든 예금거래를 한다. 다만, 은행이 정하는 바에 따라 다른 영업점이나 다른 금융기관, 또는 현금자동지급기ㆍ현금자동입출금기ㆍ컴퓨터ㆍ전화기 등(이하 “전산통신기기”)을 통하여 거래할 수 있다.
                            </p><br>
                            <strong style="font-size: 10pt;">제4조 거래방법</strong><br>
                            <p style="font-size: 10pt;">
                            	거래처는 은행에서 내준 통장(증서· 전자통장을 포함한다) 또는 수표· 어음용지로 거래하여야 한다. 그러나 입금할 때, 자동이체약정ㆍ전산통신 기기이용약정에 따라 거래하는 경우 및 기등록된 생체정보(이하”바이오 정보”), 실명확인증표 등을 통해 본인확인된 경우에는 통장없이(이하”무통장”)도 거래할 수 있다.
                            </p><br>
                            <strong style="font-size: 10pt;">제5조 인감, 비밀번호 등의 신고</strong><br>
                            <p style="font-size: 10pt;">
                            	① 거래처는 예금계좌를 개설할 때 인감 또는 서명, 비밀번호, 성명, 상호, 대표자명, 대리인명, 주소 등 거래에 필요한 사항을 신고하여야 한다. 다만, 비밀번호는 비밀번호 입력기(이하 “PIN-Pad기”라 한다)에 의하여 거래처가 직접 등록할 수 있으며, 거래처가 은행에 내점할 수 없는 경우 거래처는 개설된 예금의 첫거래 전에 은행이 정한 방법에 따라 전산통신기기를 이용하여 비밀번호를 등록하여야 한다.<br>
                            	② 제 1항에 불구하고 거치식·적립식 예금은 비밀번호를 신고하지 않을 수 있다.<br>
                            	③ 거래처는 인감과 서명을 함께 신고하거나, 인감 또는 서명을 추가 신고할 수 있다.<br>
                            	④ 통장을 발행하지 않은 경우, 은행은 거래처로부터 인감 또는 서명의 신고 절차를 생략할 수 있다.
                            </p><br>
                            <strong style="font-size: 10pt;">제6조 입금</strong><br>
                            <p style="font-size: 10pt;">
                            	① 거래처는 현금이나 즉시 추심할 수 있는 수표ㆍ어음, 기타 증권(이하 “증권”이라 한다) 등으로 입금할 수 있다.<br>
                            	② 거래처는 현금이나 증권으로 계좌송금(거래처가 개설점 이외에서 자기계좌에 입금하거나, 제3자가 개설점 또는 다른 영업점이나, 다른 금융기관에서 거래처 계좌에 입금하는 것)하거나, 계좌이체(거래처의 신청에 따라 은행이 특정계좌에서 자금을 출금하여 같은 은행 또는 다른 은행의 다른 계좌에 입금하는 것) 할 수 있다.<br>
                            	③ 증권으로 입금할 때 입금인은 증권의 백지보충이나 배서 또는 영수기명날인 등 필요한 절차를 밟아야 하며, 은행은 백지보충 등의 의무를 지지 않는다.<br>
                            	④ 입금하는 증권이 수표나 어음일 때 은행은 소정금액란에 적힌 금액으로 처리한다.
                            </p><br>
                            <strong style="font-size: 10pt;">제11조 금융사고자금 지급정지</strong><br>
                            <p style="font-size: 10pt;">
                            	① 은행은 “금융사고예방을 위한 공동협약”(이하 “협약”이라 한다) 및 “금융사고예방을 위한 공동협약 시행세칙(이하 “세칙”이라 한다)에서 정하는 금융사고(이하 “금융사고”라 한다)로 인한 사고자금이 이체된 거래처의 계좌(이하 “사고계좌”라 한다)에 대하여 금융사고가 발생한 금융기관의 요청이 있는 경우 지체없이 지급정지를 취한다.<br>
                            	② 제1항의 지급정지 금액은 금융사고로 인해 이체된 금액 이내로 한다.<br>
                            	③ 제1항의 지급정지기간은 지급정지한 날로부터 10영업일 이내로 한다. 다만, 지급정지를 요청한 금융 기관의 신청으로 법원에 의한 결정문 송달이 이루어진 경우에는 그러하지 아니하며, 법원의 결정문 송달이 지연되어 지급정지를 요청한 금융기관이 관련 증빙서류를 첨부하여 서면으로 지급정지기간의 연장을 요청하는 경우 은행은 10영업일 이내에서 연장할 수 있다.<br>
                            	④ 은행이 제1항의 지급정지를 한 때에는 지체없이 거래처에 지급정지 사실과 이의신청절차를 유선 또는 이와 상응하는 방법으로 통지하여야 하며, 거래처가 이의를 신청한 때에는 은행이 정한 민원처리절차에 의하여 처리한다.<br>
                            	⑤ 거래처가 지급을 청구하는 경우에는 금융사고에 의해 이체된 자금을 제외하고 지급한다.<br>
                            	⑦ 은행은 거래처의 계좌에서 금융사고로 인한 사고자금이 다른 금융기관에 이체된 경우 사고발생을 인지한 날로부터 10일 이내에 그 다른 금융기관에 대하여 지급정지를 요청할 수 있다.<br>
                            	⑧ 이 조의 금융사고자금 지급정지와 관련하여 이 조에서 정하지 아니한 사항은 제1항의 협약 및 세칙에서 정하는 바에 따른다.
                            </p><br>
                            <strong style="font-size: 10pt;">제14조 사고ㆍ변경사항의 신고</strong><br>
                            <p style="font-size: 10pt;">
                            	① 거래처는 통장ㆍ도장ㆍ카드 또는 증권이나 그 용지를 분실ㆍ도난ㆍ멸실ㆍ훼손했을 때는 곧 서면으로 신고하여야 한다. 다만, 긴급하거나 부득이 할 때는 영업시간 중에 전화 등으로 신고할 수 있으며 이 때는 다음 영업일 안에 서면신고하여야 한다.<br>
                            	② 거래처는 인감 또는 서명, 비밀번호, 성명, 상호, 대표자명, 대리인명, 주소, 전화번호 기타 신고사항을 바꿀 때에는 서면으로 신고하여야 한다.<br>
                            	다만, 비밀번호는 서면신고없이 전산통신기기를 이용하여 바꿀 수 있으며, 이 경우 계좌번호, 주민등록번호, 비밀번호 등 은행이 정한 요건이 맞으면 은행은 새로운 비밀번호로 변경처리한다.<br>
                            	③ 거래처는 주소, 전화번호 등의 일부 신고사항에 대하여는 은행이 정한 방법에 따라 전산통신기기를 이용하여 변경할 수 있다.<br>
                            	④ 제1항 및 제2항의 신고는 은행이 이를 접수한 뒤 전산입력 등 필요한 조치를 하는데 걸리는 합리적인 시간이 지나면 그 효력이 생기며 전산장애 등 불가항력적인 사유로 처리하지 못한 때는 복구 등 사유해제시 즉시 처리하여야 한다.<br>
                            	⑤ 제1항의 신고를 철회한 때는 거래처 본인이 서면 또는 전산통신기기 등으로 하여야 한다.
                            </p><br>
                            <strong style="font-size: 10pt;">제17조 면책</strong><br>
                            <p style="font-size: 10pt;">
                            	① 은행은 예금지급청구서, 증권(어음교환소에서 전자적정보의 형태로 제시된 어음ㆍ수표 등 포함) 또는 신고서 등에 찍힌 인영(또는 서명)을 신고한 인감(또는 서명감)과 육안으로 주의 깊게 비교ㆍ대조하여 틀림없다고 여기고, 은행이 정한 방법에 따라 전산통신기기를 이용하여 입력된 비밀번호가 신고 또는 등록한 것과 같아서 예금을 지급하였거나 기타 거래처가 요구하는 업무를 처리하였을 때에는 인감이나 서명의 위조ㆍ변조 또는 도용이나 그밖의 다른 사고로 인하여 거래처에 손해가 생겨도 그 책임을 지지 않는다. 다만, 은행이 거래처의 인감이나 서명의 위조ㆍ변조 또는 도용 사실을 알았거나 알 수 있었을 때는 그러하지 아니하다.<br>
                            	③ 은행이 거래처의 실명확인증표 등으로 주의 깊게 본인확인하여 예금을 지급하였거나 기타 거래처가 요구하는 업무를 처리하였을 떄에는 위조·변조 또는 도용이나 그밖의 다른 사고로 인하여 거래처에 손해가 생겨도 그 책임을 지지 않는다. 다만, 은행의 고의 또는 과실로 인한 귀책사유가 있는 경우 은행은 그 책임의 일부 또는 전부를 부담한다.<br>
                            	④ 은행이 주민등록증 등 실명확인증표로 주의 깊게 실명확인하거나 실명전환한 계좌는 거래처가 실명확인증표 또는 서류의 위조ㆍ변조ㆍ도용 등을 한 경우, 이로 인하여 거래처에 손해가 생겨도 은행은 그 책임을 지지 않는다.<br>
                            	⑤ 거래처가 제14조 제1항, 제2항, 제4항의 신고나 절차를 미루어 생긴 손해에 대해 은행은 그 책임을 지지 않는다. 다만, 이 경우에도 은행은 거래처에 손해가 발생하지 않도록 선량한 관리자로서의 주의를 다하여야 한다.
                            </p><br>
                            <strong style="font-size: 10pt;">제21조 약관의 변경</strong><br>
                            <p style="font-size: 10pt;">
                            	① 은행은 이 약관이나 입출금이자유로운예금약관 또는 거치식ㆍ적립식예금 약관을 변경하고자 할 때에는 변경약관 시행일 1개월 전에 그 내용을 영업점과 인터넷 홈페이지에 게시하여 거래처에 알린다. 다만, 법령의 개정이나 제도의 개선 등으로 인하여 긴급히 약관을 변경한 때에는 즉시 이를 게시 또는 공고하여야 한다.<br>
                            	② 약관변경의 내용이 거래처에 불리한 경우에는 변경약관 시행일 1개월 전에 제1항에 따라 게시하여야 하며 다음 각 호중 3개 이상의 방법으로 거래처에 알린다.<br>
                            	1. 거래처가 신고한 전자우편(E-mail) 또는 휴대전화(SMS, MMS)에 의한 통지<br>
                            	4. 인터넷뱅킹 및 모바일뱅킹 초기화면에 게시<br>
                            	5. 거래처와 약정한 별도의 전자기기(앱푸쉬 등)에 의한 통지<br>
                            	③ 거래처는 제1항 및 제2항의 고지후 변경약관 시행일 전영업일까지 서면에 의한 통지로 계약을 해지할 수 있으며, 이 기간내에 거래처의 서면에 의한 이의가 은행에 도달하지 않으면 이를 승인한 것으로 본다.
                            </p><br>
                            <strong style="font-size: 10pt;">제22조 약관적용의 순서</strong><br>
                            <p style="font-size: 10pt;">
                            	① 은행과 거래처 사이에 개별적으로 합의한 사항이 약관조항과 다를 때에는 그 합의사항을 약관에 우선하여 적용한다.<br>
                            	② 이 약관에 정한 사항과 입출금이 자유로운 예금약관 또는 거치식ㆍ적립식 예금약관에서 정한 사항이 다를 때는 입출금이 자유로운 예금 약관이나 거치식ㆍ적립식 예금약관을 먼저 적용한다.
                            </p><br>
                            <strong style="font-size: 10pt;">제25조 위법계약의 해지</strong><br>
                            <p style="font-size: 10pt;">
                            	거래처는 「금융소비자보호에 관한 법률」 제47조 및 관련 규정이 정하는 바에 따라 서면 등으로 해당 계약의 해지를 요구할 수 있다.
                            </p><br>
                            <p style="font-size: 10pt;">
                            	※ 이 약관은 금융소비자 보호에 관한 법령 및 내부통제기준에 따른 절차를 거쳐 제공됩니다.
                            </p><br>
                            <strong style="font-size: 10pt;">부칙</strong><br>
                            <p style="font-size: 10pt;">
                            	이 약관은 2021.03.25부터 적용합니다.
                            </p><br>
                            <div class="clear space"></div>
                            
                        </div>
                    </div>
                    <div class="clear"></div>
                    <h3 class="accordion-title" style="font-family: 'inherit'; color: #008B8B"><span class="icon-plus-sign"></span>비과세 종합저축 특약<button class="menubar3" style="margin-left: 655px;">동의함</button></h3>
                    <div class="accordion-item" style="width:100%; border: none;">
                        <div style="width: 100%; height: 300px; overflow: auto;">
                        	<p style="text-align: right;">준법감시인 심사필 : 2021-약관-123호(2021.03.22)</p>
                            <h3 style="text-align: center; font-family: 'inherit';"><strong>비과세 종합저축 특약</strong></h3><br>
                            <strong style="font-size: 10pt;">제1조(약관의 적용)</strong><br>
                            <p style="font-size: 10pt;">비과세종합저축(이하 “저축”이라 한다)의 거래시 이 특약에서 정하지 않은 사항은 예금거래기본약관,금전신탁거래 기본약관, 은행이 취급하는 각종 예금·신탁·채권 등(이하 “예금 등”이라 한다)의 약관(특약포함)과 조세특례제한법 등 법령에서 정하는 바에 따릅니다.</p><br>
                            <strong style="font-size: 10pt;">제2조(가입대상자)</strong>
                            <p style="font-size: 10pt;">
                            	이 저축에 가입할 수 있는 자는 소득세법 제1조의2 제1항 제1호의 규정에 의한 거주자 (단, 계좌의 가입일 또는 연장일이 속한 직전 3개 과세기간 중 1회이상 『소득세법』 제14조 제3항 제6호에 따른 소득의 합계액이 종합과세 기준금액을 초과한 자는 제외한다) 로서 다음 각호의 1에 해당하는 요건을 갖추어야 합니다.<br>
                            	1. 만 65세 이상인 거주자<br>
                            	2. 장애인복지법 제32조의 규정에 의하여 등록한 장애인<br>
                            	3. 독립유공자 예우에 관한 법률 제6조의 규정에 의하여 등록한 독립유공자와 그 유족 또는 가족, 국가유공자등 예우 및 지원에 관한 법률 제6조의 규정에 의하여 등록한 상이자<br>
                            	4. 국민기초생활보장법 제2조 제2호의 규정에 의한 수급자<br>
                            	5. 고엽제후유의증환자 지원 등에 관한 법률 제2조 제3호의 규정에 의한 고엽제후유의증 환자<br>
                            	6. 5·18민주유공자 예우에 관한 법률 제4조 제2호의 규정에 의한 5 · 18민주화운동부상자<br>
                            </p>
                            <strong style="font-size: 10pt;">제3조 거래장소</strong><br>
                            <p style="font-size: 10pt;">
                            	거래처는 예금계좌를 개설한 영업점(이하 “개설점”이라 한다)에서 모든 예금거래를 한다. 다만, 은행이 정하는 바에 따라 다른 영업점이나 다른 금융기관, 또는 현금자동지급기ㆍ현금자동입출금기ㆍ컴퓨터ㆍ전화기 등(이하 “전산통신기기”)을 통하여 거래할 수 있다.
                            </p><br>
                            <strong style="font-size: 10pt;">제4조 거래방법</strong><br>
                            <p style="font-size: 10pt;">
                            	거래처는 은행에서 내준 통장(증서· 전자통장을 포함한다) 또는 수표· 어음용지로 거래하여야 한다. 그러나 입금할 때, 자동이체약정ㆍ전산통신 기기이용약정에 따라 거래하는 경우 및 기등록된 생체정보(이하”바이오 정보”), 실명확인증표 등을 통해 본인확인된 경우에는 통장없이(이하”무통장”)도 거래할 수 있다.
                            </p><br>
                            <strong style="font-size: 10pt;">제5조 인감, 비밀번호 등의 신고</strong><br>
                            <p style="font-size: 10pt;">
                            	① 거래처는 예금계좌를 개설할 때 인감 또는 서명, 비밀번호, 성명, 상호, 대표자명, 대리인명, 주소 등 거래에 필요한 사항을 신고하여야 한다. 다만, 비밀번호는 비밀번호 입력기(이하 “PIN-Pad기”라 한다)에 의하여 거래처가 직접 등록할 수 있으며, 거래처가 은행에 내점할 수 없는 경우 거래처는 개설된 예금의 첫거래 전에 은행이 정한 방법에 따라 전산통신기기를 이용하여 비밀번호를 등록하여야 한다.<br>
                            	② 제 1항에 불구하고 거치식·적립식 예금은 비밀번호를 신고하지 않을 수 있다.<br>
                            	③ 거래처는 인감과 서명을 함께 신고하거나, 인감 또는 서명을 추가 신고할 수 있다.<br>
                            	④ 통장을 발행하지 않은 경우, 은행은 거래처로부터 인감 또는 서명의 신고 절차를 생략할 수 있다.
                            </p><br>
                            <strong style="font-size: 10pt;">제6조 입금</strong><br>
                            <p style="font-size: 10pt;">
                            	① 거래처는 현금이나 즉시 추심할 수 있는 수표ㆍ어음, 기타 증권(이하 “증권”이라 한다) 등으로 입금할 수 있다.<br>
                            	② 거래처는 현금이나 증권으로 계좌송금(거래처가 개설점 이외에서 자기계좌에 입금하거나, 제3자가 개설점 또는 다른 영업점이나, 다른 금융기관에서 거래처 계좌에 입금하는 것)하거나, 계좌이체(거래처의 신청에 따라 은행이 특정계좌에서 자금을 출금하여 같은 은행 또는 다른 은행의 다른 계좌에 입금하는 것) 할 수 있다.<br>
                            	③ 증권으로 입금할 때 입금인은 증권의 백지보충이나 배서 또는 영수기명날인 등 필요한 절차를 밟아야 하며, 은행은 백지보충 등의 의무를 지지 않는다.<br>
                            	④ 입금하는 증권이 수표나 어음일 때 은행은 소정금액란에 적힌 금액으로 처리한다.
                            </p><br>
                            <strong style="font-size: 10pt;">제11조 금융사고자금 지급정지</strong><br>
                            <p style="font-size: 10pt;">
                            	① 은행은 “금융사고예방을 위한 공동협약”(이하 “협약”이라 한다) 및 “금융사고예방을 위한 공동협약 시행세칙(이하 “세칙”이라 한다)에서 정하는 금융사고(이하 “금융사고”라 한다)로 인한 사고자금이 이체된 거래처의 계좌(이하 “사고계좌”라 한다)에 대하여 금융사고가 발생한 금융기관의 요청이 있는 경우 지체없이 지급정지를 취한다.<br>
                            	② 제1항의 지급정지 금액은 금융사고로 인해 이체된 금액 이내로 한다.<br>
                            	③ 제1항의 지급정지기간은 지급정지한 날로부터 10영업일 이내로 한다. 다만, 지급정지를 요청한 금융 기관의 신청으로 법원에 의한 결정문 송달이 이루어진 경우에는 그러하지 아니하며, 법원의 결정문 송달이 지연되어 지급정지를 요청한 금융기관이 관련 증빙서류를 첨부하여 서면으로 지급정지기간의 연장을 요청하는 경우 은행은 10영업일 이내에서 연장할 수 있다.<br>
                            	④ 은행이 제1항의 지급정지를 한 때에는 지체없이 거래처에 지급정지 사실과 이의신청절차를 유선 또는 이와 상응하는 방법으로 통지하여야 하며, 거래처가 이의를 신청한 때에는 은행이 정한 민원처리절차에 의하여 처리한다.<br>
                            	⑤ 거래처가 지급을 청구하는 경우에는 금융사고에 의해 이체된 자금을 제외하고 지급한다.<br>
                            	⑦ 은행은 거래처의 계좌에서 금융사고로 인한 사고자금이 다른 금융기관에 이체된 경우 사고발생을 인지한 날로부터 10일 이내에 그 다른 금융기관에 대하여 지급정지를 요청할 수 있다.<br>
                            	⑧ 이 조의 금융사고자금 지급정지와 관련하여 이 조에서 정하지 아니한 사항은 제1항의 협약 및 세칙에서 정하는 바에 따른다.
                            </p><br>
                            <strong style="font-size: 10pt;">제14조 사고ㆍ변경사항의 신고</strong><br>
                            <p style="font-size: 10pt;">
                            	① 거래처는 통장ㆍ도장ㆍ카드 또는 증권이나 그 용지를 분실ㆍ도난ㆍ멸실ㆍ훼손했을 때는 곧 서면으로 신고하여야 한다. 다만, 긴급하거나 부득이 할 때는 영업시간 중에 전화 등으로 신고할 수 있으며 이 때는 다음 영업일 안에 서면신고하여야 한다.<br>
                            	② 거래처는 인감 또는 서명, 비밀번호, 성명, 상호, 대표자명, 대리인명, 주소, 전화번호 기타 신고사항을 바꿀 때에는 서면으로 신고하여야 한다.<br>
                            	다만, 비밀번호는 서면신고없이 전산통신기기를 이용하여 바꿀 수 있으며, 이 경우 계좌번호, 주민등록번호, 비밀번호 등 은행이 정한 요건이 맞으면 은행은 새로운 비밀번호로 변경처리한다.<br>
                            	③ 거래처는 주소, 전화번호 등의 일부 신고사항에 대하여는 은행이 정한 방법에 따라 전산통신기기를 이용하여 변경할 수 있다.<br>
                            	④ 제1항 및 제2항의 신고는 은행이 이를 접수한 뒤 전산입력 등 필요한 조치를 하는데 걸리는 합리적인 시간이 지나면 그 효력이 생기며 전산장애 등 불가항력적인 사유로 처리하지 못한 때는 복구 등 사유해제시 즉시 처리하여야 한다.<br>
                            	⑤ 제1항의 신고를 철회한 때는 거래처 본인이 서면 또는 전산통신기기 등으로 하여야 한다.
                            </p><br>
                            <strong style="font-size: 10pt;">제17조 면책</strong><br>
                            <p style="font-size: 10pt;">
                            	① 은행은 예금지급청구서, 증권(어음교환소에서 전자적정보의 형태로 제시된 어음ㆍ수표 등 포함) 또는 신고서 등에 찍힌 인영(또는 서명)을 신고한 인감(또는 서명감)과 육안으로 주의 깊게 비교ㆍ대조하여 틀림없다고 여기고, 은행이 정한 방법에 따라 전산통신기기를 이용하여 입력된 비밀번호가 신고 또는 등록한 것과 같아서 예금을 지급하였거나 기타 거래처가 요구하는 업무를 처리하였을 때에는 인감이나 서명의 위조ㆍ변조 또는 도용이나 그밖의 다른 사고로 인하여 거래처에 손해가 생겨도 그 책임을 지지 않는다. 다만, 은행이 거래처의 인감이나 서명의 위조ㆍ변조 또는 도용 사실을 알았거나 알 수 있었을 때는 그러하지 아니하다.<br>
                            	③ 은행이 거래처의 실명확인증표 등으로 주의 깊게 본인확인하여 예금을 지급하였거나 기타 거래처가 요구하는 업무를 처리하였을 떄에는 위조·변조 또는 도용이나 그밖의 다른 사고로 인하여 거래처에 손해가 생겨도 그 책임을 지지 않는다. 다만, 은행의 고의 또는 과실로 인한 귀책사유가 있는 경우 은행은 그 책임의 일부 또는 전부를 부담한다.<br>
                            	④ 은행이 주민등록증 등 실명확인증표로 주의 깊게 실명확인하거나 실명전환한 계좌는 거래처가 실명확인증표 또는 서류의 위조ㆍ변조ㆍ도용 등을 한 경우, 이로 인하여 거래처에 손해가 생겨도 은행은 그 책임을 지지 않는다.<br>
                            	⑤ 거래처가 제14조 제1항, 제2항, 제4항의 신고나 절차를 미루어 생긴 손해에 대해 은행은 그 책임을 지지 않는다. 다만, 이 경우에도 은행은 거래처에 손해가 발생하지 않도록 선량한 관리자로서의 주의를 다하여야 한다.
                            </p><br>
                            <strong style="font-size: 10pt;">제21조 약관의 변경</strong><br>
                            <p style="font-size: 10pt;">
                            	① 은행은 이 약관이나 입출금이자유로운예금약관 또는 거치식ㆍ적립식예금 약관을 변경하고자 할 때에는 변경약관 시행일 1개월 전에 그 내용을 영업점과 인터넷 홈페이지에 게시하여 거래처에 알린다. 다만, 법령의 개정이나 제도의 개선 등으로 인하여 긴급히 약관을 변경한 때에는 즉시 이를 게시 또는 공고하여야 한다.<br>
                            	② 약관변경의 내용이 거래처에 불리한 경우에는 변경약관 시행일 1개월 전에 제1항에 따라 게시하여야 하며 다음 각 호중 3개 이상의 방법으로 거래처에 알린다.<br>
                            	1. 거래처가 신고한 전자우편(E-mail) 또는 휴대전화(SMS, MMS)에 의한 통지<br>
                            	4. 인터넷뱅킹 및 모바일뱅킹 초기화면에 게시<br>
                            	5. 거래처와 약정한 별도의 전자기기(앱푸쉬 등)에 의한 통지<br>
                            	③ 거래처는 제1항 및 제2항의 고지후 변경약관 시행일 전영업일까지 서면에 의한 통지로 계약을 해지할 수 있으며, 이 기간내에 거래처의 서면에 의한 이의가 은행에 도달하지 않으면 이를 승인한 것으로 본다.
                            </p><br>
                            <strong style="font-size: 10pt;">제22조 약관적용의 순서</strong><br>
                            <p style="font-size: 10pt;">
                            	① 은행과 거래처 사이에 개별적으로 합의한 사항이 약관조항과 다를 때에는 그 합의사항을 약관에 우선하여 적용한다.<br>
                            	② 이 약관에 정한 사항과 입출금이 자유로운 예금약관 또는 거치식ㆍ적립식 예금약관에서 정한 사항이 다를 때는 입출금이 자유로운 예금 약관이나 거치식ㆍ적립식 예금약관을 먼저 적용한다.
                            </p><br>
                            <strong style="font-size: 10pt;">제25조 위법계약의 해지</strong><br>
                            <p style="font-size: 10pt;">
                            	거래처는 「금융소비자보호에 관한 법률」 제47조 및 관련 규정이 정하는 바에 따라 서면 등으로 해당 계약의 해지를 요구할 수 있다.
                            </p><br>
                            <p style="font-size: 10pt;">
                            	※ 이 약관은 금융소비자 보호에 관한 법령 및 내부통제기준에 따른 절차를 거쳐 제공됩니다.
                            </p><br>
                            <strong style="font-size: 10pt;">부칙</strong><br>
                            <p style="font-size: 10pt;">
                            	이 약관은 2021.03.25부터 적용합니다.
                            </p><br>
                            <div class="clear space"></div>
                            
                        </div>
                    </div>
                    <div class="clear"></div>
                    <h3 class="accordion-title" style="font-family: 'inherit'; color: #008B8B"><span class="icon-plus-sign"></span>「영하나플러스 통장」 특약<button class="menubar4" style="margin-left: 611px;">동의함</button></h3>
                    <div class="accordion-item" style="width:100%; border: none;">
                        <div style="width: 100%; height: 300px; overflow: auto;">
                        	<p>2020. 02. 03 제정 <span style="margin-left: 530px;">준법감시인 심사필 제2021-약관-062호 (2021.03.22)</span></p>
                            <h3 style="text-align: center; font-family: 'inherit';"><strong>「영하나플러스 통장」 특약</strong></h3><br>
                            <strong style="font-size: 10pt;">제1조 약관의 적용</strong><br>
                            <p style="font-size: 10pt;">「영하나플러스 통장」(이하 “이 예금” 이라 한다) 거래에는 이 특약을 적용하며, 이 특약에서 정하지 아니한 사항은 「예금거래 기본약관」 및 「입출금이 자유로운 예금약관」을 적용합니다.</p><br>
                            <strong style="font-size: 10pt;">제2조 예금과목</strong>
                            <p style="font-size: 10pt;">
                            	이 예금의 과목은 「저축예금」으로 합니다.
                            </p><br>
                            <strong style="font-size: 10pt;">제3조 가입대상</strong><br>
                            <p style="font-size: 10pt;">
                            	이 예금의 가입대상은 만 30세 이하 실명의 개인 또는 개인사업자로, 1인 1계좌만 가입 가능합니다.
                            </p><br>
                            <strong style="font-size: 10pt;">제4조 거래방법</strong><br>
                            <p style="font-size: 10pt;">
                            	거래처는 은행에서 내준 통장(증서· 전자통장을 포함한다) 또는 수표· 어음용지로 거래하여야 한다. 그러나 입금할 때, 자동이체약정ㆍ전산통신 기기이용약정에 따라 거래하는 경우 및 기등록된 생체정보(이하”바이오 정보”), 실명확인증표 등을 통해 본인확인된 경우에는 통장없이(이하”무통장”)도 거래할 수 있다.
                            </p><br>
                            <strong style="font-size: 10pt;">제5조 인감, 비밀번호 등의 신고</strong><br>
                            <p style="font-size: 10pt;">
                            	① 거래처는 예금계좌를 개설할 때 인감 또는 서명, 비밀번호, 성명, 상호, 대표자명, 대리인명, 주소 등 거래에 필요한 사항을 신고하여야 한다. 다만, 비밀번호는 비밀번호 입력기(이하 “PIN-Pad기”라 한다)에 의하여 거래처가 직접 등록할 수 있으며, 거래처가 은행에 내점할 수 없는 경우 거래처는 개설된 예금의 첫거래 전에 은행이 정한 방법에 따라 전산통신기기를 이용하여 비밀번호를 등록하여야 한다.<br>
                            	② 제 1항에 불구하고 거치식·적립식 예금은 비밀번호를 신고하지 않을 수 있다.<br>
                            	③ 거래처는 인감과 서명을 함께 신고하거나, 인감 또는 서명을 추가 신고할 수 있다.<br>
                            	④ 통장을 발행하지 않은 경우, 은행은 거래처로부터 인감 또는 서명의 신고 절차를 생략할 수 있다.
                            </p><br>
                            <strong style="font-size: 10pt;">제6조 입금</strong><br>
                            <p style="font-size: 10pt;">
                            	① 거래처는 현금이나 즉시 추심할 수 있는 수표ㆍ어음, 기타 증권(이하 “증권”이라 한다) 등으로 입금할 수 있다.<br>
                            	② 거래처는 현금이나 증권으로 계좌송금(거래처가 개설점 이외에서 자기계좌에 입금하거나, 제3자가 개설점 또는 다른 영업점이나, 다른 금융기관에서 거래처 계좌에 입금하는 것)하거나, 계좌이체(거래처의 신청에 따라 은행이 특정계좌에서 자금을 출금하여 같은 은행 또는 다른 은행의 다른 계좌에 입금하는 것) 할 수 있다.<br>
                            	③ 증권으로 입금할 때 입금인은 증권의 백지보충이나 배서 또는 영수기명날인 등 필요한 절차를 밟아야 하며, 은행은 백지보충 등의 의무를 지지 않는다.<br>
                            	④ 입금하는 증권이 수표나 어음일 때 은행은 소정금액란에 적힌 금액으로 처리한다.
                            </p><br>
                            <strong style="font-size: 10pt;">제11조 금융사고자금 지급정지</strong><br>
                            <p style="font-size: 10pt;">
                            	① 은행은 “금융사고예방을 위한 공동협약”(이하 “협약”이라 한다) 및 “금융사고예방을 위한 공동협약 시행세칙(이하 “세칙”이라 한다)에서 정하는 금융사고(이하 “금융사고”라 한다)로 인한 사고자금이 이체된 거래처의 계좌(이하 “사고계좌”라 한다)에 대하여 금융사고가 발생한 금융기관의 요청이 있는 경우 지체없이 지급정지를 취한다.<br>
                            	② 제1항의 지급정지 금액은 금융사고로 인해 이체된 금액 이내로 한다.<br>
                            	③ 제1항의 지급정지기간은 지급정지한 날로부터 10영업일 이내로 한다. 다만, 지급정지를 요청한 금융 기관의 신청으로 법원에 의한 결정문 송달이 이루어진 경우에는 그러하지 아니하며, 법원의 결정문 송달이 지연되어 지급정지를 요청한 금융기관이 관련 증빙서류를 첨부하여 서면으로 지급정지기간의 연장을 요청하는 경우 은행은 10영업일 이내에서 연장할 수 있다.<br>
                            	④ 은행이 제1항의 지급정지를 한 때에는 지체없이 거래처에 지급정지 사실과 이의신청절차를 유선 또는 이와 상응하는 방법으로 통지하여야 하며, 거래처가 이의를 신청한 때에는 은행이 정한 민원처리절차에 의하여 처리한다.<br>
                            	⑤ 거래처가 지급을 청구하는 경우에는 금융사고에 의해 이체된 자금을 제외하고 지급한다.<br>
                            	⑦ 은행은 거래처의 계좌에서 금융사고로 인한 사고자금이 다른 금융기관에 이체된 경우 사고발생을 인지한 날로부터 10일 이내에 그 다른 금융기관에 대하여 지급정지를 요청할 수 있다.<br>
                            	⑧ 이 조의 금융사고자금 지급정지와 관련하여 이 조에서 정하지 아니한 사항은 제1항의 협약 및 세칙에서 정하는 바에 따른다.
                            </p><br>
                            <strong style="font-size: 10pt;">제14조 사고ㆍ변경사항의 신고</strong><br>
                            <p style="font-size: 10pt;">
                            	① 거래처는 통장ㆍ도장ㆍ카드 또는 증권이나 그 용지를 분실ㆍ도난ㆍ멸실ㆍ훼손했을 때는 곧 서면으로 신고하여야 한다. 다만, 긴급하거나 부득이 할 때는 영업시간 중에 전화 등으로 신고할 수 있으며 이 때는 다음 영업일 안에 서면신고하여야 한다.<br>
                            	② 거래처는 인감 또는 서명, 비밀번호, 성명, 상호, 대표자명, 대리인명, 주소, 전화번호 기타 신고사항을 바꿀 때에는 서면으로 신고하여야 한다.<br>
                            	다만, 비밀번호는 서면신고없이 전산통신기기를 이용하여 바꿀 수 있으며, 이 경우 계좌번호, 주민등록번호, 비밀번호 등 은행이 정한 요건이 맞으면 은행은 새로운 비밀번호로 변경처리한다.<br>
                            	③ 거래처는 주소, 전화번호 등의 일부 신고사항에 대하여는 은행이 정한 방법에 따라 전산통신기기를 이용하여 변경할 수 있다.<br>
                            	④ 제1항 및 제2항의 신고는 은행이 이를 접수한 뒤 전산입력 등 필요한 조치를 하는데 걸리는 합리적인 시간이 지나면 그 효력이 생기며 전산장애 등 불가항력적인 사유로 처리하지 못한 때는 복구 등 사유해제시 즉시 처리하여야 한다.<br>
                            	⑤ 제1항의 신고를 철회한 때는 거래처 본인이 서면 또는 전산통신기기 등으로 하여야 한다.
                            </p><br>
                            <strong style="font-size: 10pt;">제17조 면책</strong><br>
                            <p style="font-size: 10pt;">
                            	① 은행은 예금지급청구서, 증권(어음교환소에서 전자적정보의 형태로 제시된 어음ㆍ수표 등 포함) 또는 신고서 등에 찍힌 인영(또는 서명)을 신고한 인감(또는 서명감)과 육안으로 주의 깊게 비교ㆍ대조하여 틀림없다고 여기고, 은행이 정한 방법에 따라 전산통신기기를 이용하여 입력된 비밀번호가 신고 또는 등록한 것과 같아서 예금을 지급하였거나 기타 거래처가 요구하는 업무를 처리하였을 때에는 인감이나 서명의 위조ㆍ변조 또는 도용이나 그밖의 다른 사고로 인하여 거래처에 손해가 생겨도 그 책임을 지지 않는다. 다만, 은행이 거래처의 인감이나 서명의 위조ㆍ변조 또는 도용 사실을 알았거나 알 수 있었을 때는 그러하지 아니하다.<br>
                            	③ 은행이 거래처의 실명확인증표 등으로 주의 깊게 본인확인하여 예금을 지급하였거나 기타 거래처가 요구하는 업무를 처리하였을 떄에는 위조·변조 또는 도용이나 그밖의 다른 사고로 인하여 거래처에 손해가 생겨도 그 책임을 지지 않는다. 다만, 은행의 고의 또는 과실로 인한 귀책사유가 있는 경우 은행은 그 책임의 일부 또는 전부를 부담한다.<br>
                            	④ 은행이 주민등록증 등 실명확인증표로 주의 깊게 실명확인하거나 실명전환한 계좌는 거래처가 실명확인증표 또는 서류의 위조ㆍ변조ㆍ도용 등을 한 경우, 이로 인하여 거래처에 손해가 생겨도 은행은 그 책임을 지지 않는다.<br>
                            	⑤ 거래처가 제14조 제1항, 제2항, 제4항의 신고나 절차를 미루어 생긴 손해에 대해 은행은 그 책임을 지지 않는다. 다만, 이 경우에도 은행은 거래처에 손해가 발생하지 않도록 선량한 관리자로서의 주의를 다하여야 한다.
                            </p><br>
                            <strong style="font-size: 10pt;">제21조 약관의 변경</strong><br>
                            <p style="font-size: 10pt;">
                            	① 은행은 이 약관이나 입출금이자유로운예금약관 또는 거치식ㆍ적립식예금 약관을 변경하고자 할 때에는 변경약관 시행일 1개월 전에 그 내용을 영업점과 인터넷 홈페이지에 게시하여 거래처에 알린다. 다만, 법령의 개정이나 제도의 개선 등으로 인하여 긴급히 약관을 변경한 때에는 즉시 이를 게시 또는 공고하여야 한다.<br>
                            	② 약관변경의 내용이 거래처에 불리한 경우에는 변경약관 시행일 1개월 전에 제1항에 따라 게시하여야 하며 다음 각 호중 3개 이상의 방법으로 거래처에 알린다.<br>
                            	1. 거래처가 신고한 전자우편(E-mail) 또는 휴대전화(SMS, MMS)에 의한 통지<br>
                            	4. 인터넷뱅킹 및 모바일뱅킹 초기화면에 게시<br>
                            	5. 거래처와 약정한 별도의 전자기기(앱푸쉬 등)에 의한 통지<br>
                            	③ 거래처는 제1항 및 제2항의 고지후 변경약관 시행일 전영업일까지 서면에 의한 통지로 계약을 해지할 수 있으며, 이 기간내에 거래처의 서면에 의한 이의가 은행에 도달하지 않으면 이를 승인한 것으로 본다.
                            </p><br>
                            <strong style="font-size: 10pt;">제22조 약관적용의 순서</strong><br>
                            <p style="font-size: 10pt;">
                            	① 은행과 거래처 사이에 개별적으로 합의한 사항이 약관조항과 다를 때에는 그 합의사항을 약관에 우선하여 적용한다.<br>
                            	② 이 약관에 정한 사항과 입출금이 자유로운 예금약관 또는 거치식ㆍ적립식 예금약관에서 정한 사항이 다를 때는 입출금이 자유로운 예금 약관이나 거치식ㆍ적립식 예금약관을 먼저 적용한다.
                            </p><br>
                            <strong style="font-size: 10pt;">제25조 위법계약의 해지</strong><br>
                            <p style="font-size: 10pt;">
                            	거래처는 「금융소비자보호에 관한 법률」 제47조 및 관련 규정이 정하는 바에 따라 서면 등으로 해당 계약의 해지를 요구할 수 있다.
                            </p><br>
                            <p style="font-size: 10pt;">
                            	※ 이 약관은 금융소비자 보호에 관한 법령 및 내부통제기준에 따른 절차를 거쳐 제공됩니다.
                            </p><br>
                            <strong style="font-size: 10pt;">부칙</strong><br>
                            <p style="font-size: 10pt;">
                            	이 약관은 2021.03.25부터 적용합니다.
                            </p><br>
                            <div class="clear space"></div>
                            
                        </div>
                    </div>
                    <div class="clear"></div>
                </div>
                <div class="clear"></div>
                <script>
                    jQuery(document).ready(function($){
                    	
                    	$('.accordion-title').click(function(){
                    		if( !$(this).hasClass('active') ) {
                    			$('.accordion-title').removeClass('active').find('span').addClass('icon-plus-sign').removeClass('icon-minus-sign');
                    			$('.accordion-item').slideUp();
                    
                    			$(this).toggleClass('active')
                    				   .find('span').removeClass('icon-plus-sign').addClass('icon-minus-sign').parent()
                    				   .next().slideToggle();
                    		}
                    	}).filter(':first').click();
                    	
                    });
                </script>
            </div>
            <!-- START COMMENTS -->
            <div id="comments">
            </div>
            <!-- END COMMENTS -->
        </div>
        <!-- END CONTENT -->
        <div>
        	<a></a>
        </div>
        	<h4 style="font-family: 'inherit';"><input type="checkbox" required="required" style="vertical-align: middle; width: 15px; height: 15px; margin-right: 20px;">본인은 위 안내에 대해 확인하고 이해합니다.</h4><br>
		<div>
		<div>
			<h3 style="font-family: 'inherit';"><strong>불법 탈법 차명거래 금지 설명 확인서</strong></h3><br>
			<table style="width: 100%; height: 150px;">
				<tr>
					<th style="font-family: 'inherit'; font-size: 11pt; text-align: left;">[금융실명거래 및 비밀보장에 관한 법률] 제 3조 제 3항에 따라 불법 재산의 은닉, 자금세탁행위, 공중협박자금조달행위 및 강제 집행의 면탈, 그 밖의 탈법행위를 목적으로 타인의 실명으로 금융거래를 하여서는 아니 되며, 이를 위반시 5년 이하의 징역 또는 5천만원 이하의 벌금에 처할 수 있습니다.</th>
				</tr>
			</table>
			<h4 style="font-family: 'inherit';"><input type="checkbox" required="required" style="vertical-align: middle; width: 15px; height: 15px; margin-right: 20px;">본인은 위 안내에 대해 확인하고 이해합니다.</h4><br>
		</div>
		<div>
			<table>
				<tr>
					<td style="font-family: 'inherit'; font-size: 11pt;">
						금융회사는「금융소비자보호에 관한 법률(시행일 2021.03.25)」 제19조(설명의무)에 따라 예금상품의 중요한 사항을 소비자가 이해할수 있도록 설명해야 하며, 동법 제23조(계약서류의 제공의무)에 따라 금융소비자에게 지체없이 제공해야 합니다.<br><br>
					</td>
				</tr>
				<tr>
					<td style="font-family: 'inherit'; font-size: 11pt;">
						본인은 약관 및 상품설명서의 주요 내용에 대하여 충분히 이해하였습니다.
					</td>
				</tr>
			</table>
		</div>
		<br>
		<br>
		<div id="content-page" class="content group" style="width: 100%;">
            <div class="hentry group" style="width: 100%;">
                <div class="accordion-container" style="width: 100%;">
                    <h3 class="accordion-title" style="font-family: 'inherit'; color: #008B8B"><span class="icon-plus-sign"></span>상품/약관 이메일로 받기(필수)</h3>
                    <div class="accordion-item" style="width:100%; border: none;">
                        <div style="width: 100%; height: 150px; overflow: auto;">
                        	<p style="font-size: 12pt; font-family: 'inherit';">이메일 주소 : <strong>${ userVO.email }</strong>
                        		<button style="width: 120px; line-height: 25px; border: none; border-radius: 80px; color: #008B8B; margin-left: 50px;">지금바로받기</button>
                        	</p><br>
                            <p style="font-size: 11pt; font-family: 'inherit'; text-decoration: underline;">개인정보 변경을 원하실 경우 개인정보변경을 클릭하셔서 수정하실 수 있습니다. </p>
                            <div class="clear space"></div>
                            
                        </div>
                    </div>
                  </div>
                </div>
              </div>
        <button id="agreeBtn" style="font-size:10pt; width: 70px; height: 40px; color: white; background-color: #008B8B; border: none; margin-top: 30px; margin-left: 40%;">확인</button>
		<button id="unagreeBtn" style="font-size:10pt; width: 70px; height: 40px; color: DimGray; background-color: #F7F9FC; border: none;">취소</button> 
		</div>
		<br><br>
	</section>
	<footer style="clear: both;">
		<jsp:include page="/WEB-INF/include/footer.jsp" />
	</footer>
</body>
</html>