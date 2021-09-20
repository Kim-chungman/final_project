<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html class="ui-set-accessibility">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
				

	<title>Hana Solution - 연령별 목표설계</title>
	<link rel="shortcut icon" type="image/x-icon" href="${ pageContext.request.contextPath }/resources/images/favicon.png" />
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
		<script type="text/javascript" src="https://www.google.com/jsapi"></script>
		<script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
		
		<!-- asset -->
		<link rel="stylesheet" type="text/css" href="${ pageContext.request.contextPath }/resources/asset/obank_2018_common.css">
		<link rel="stylesheet" type="text/css" href="${ pageContext.request.contextPath }/resources/asset/robo_2018.css">
		
</head> 

<body>
	<header>
		<jsp:include page="/WEB-INF/include/header.jsp" />
	</header>
	<section>

		<div class="section portfolio-proposal">
			<div class="inner-wrap">
				
				<fieldset class="proposal-form mgt20">
					<dl>
						<dt>투자성향</dt>
						<dd>
	                        
							<div class="button-radio">
								<span><input type="radio" name="propensity" id="propensity1" value="1" disabled="disabled"><label for="propensity1">안정</label></span>														
								<span><input type="radio" name="propensity" id="propensity2" value="2" disabled="disabled"><label for="propensity2">안정추구</label></span>														
								<span><input type="radio" name="propensity" id="propensity3" value="3" disabled="disabled"><label for="propensity3">위험중립</label></span>														
								<span><input type="radio" name="propensity" id="propensity4" value="4" disabled="disabled"><label for="propensity4">적극투자</label></span>														
								<span><input type="radio" name="propensity" id="propensity5" value="5" disabled="disabled"><label for="propensity5">공격투자</label></span>														
							</div>
	                        
						</dd>
					</dl>
					<dl>
						<dt>투자방식</dt>
						<dd>
							<div class="label-check2">
								<span><input type="radio" name="roboSmSaving" id="roboSmSaving2" onclick="roboSmSavingClick(this);" value="2"><label for="roboSmSaving2"><i></i>적립투자형<span>소액 장기 운용에 적합</span></label></span>
								<span><input type="radio" name="roboSmSaving" id="roboSmSaving1" onclick="roboSmSavingClick(this);" value="1"><label for="roboSmSaving1"><i></i>목돈투자형<span>목돈 중·단기 운용에 적합</span></label></span>
							</div>
						</dd>
					</dl>
					<dl>
						<dt>투자금액</dt>
						<dd>
							<!-- 적립투자일때 -->
							<div id="roboSmSaving2_1" class="roboSmSaving_1">
							<dl class="input-set w370">
								<dt>희망<br>월적립금액</dt>
								<dd>
									<div class="input-unit2">
										<input type="text" class="input" id="roboSmMoney2" maxlength="6" title="희망 월 적립금액 입력" value="0" onkeypress="filterInputData(&#39;[0-9]&#39;, event);" onkeyup="displayComma2(this, this.value); javascript:if(this.value.length &gt; 5) this.value = this.value.slice(0, 6); displayComma2(this, this.value); return false;">
										<span class="unit">만원</span>
										<p class="robo_sm_error" id="roboSmMoneyErr2" style="text-align: right; display: none;">10억원미만</p>
									</div>
								</dd>
							</dl>
							<dl class="input-set w260">
								<dt>투자기간</dt>
								<dd>
									<div class="input-unit2">
										<input type="text" class="input" id="roboSmPeriod" maxlength="3" title="투자기간 입력" value="60" onkeypress="filterInputData(&#39;[0-9]&#39;, event);" onkeyup="displayComma2(this, this.value); javascript:if(this.value.length &gt; 3) this.value = this.value.slice(0, 4); displayComma2(this, this.value); return false;">
										<span class="unit">개월</span>
									</div>
								</dd>
							</dl>
							</div>
							<!-- 목돈투자일때 -->
							<div id="roboSmSaving1_1" class="roboSmSaving_1" style="display:none;">
							<dl class="input-set w100">
								<dt>희망 투자금액</dt>
								<dd>
									<div class="input-unit2">
										<input type="text" class="input" id="roboSmMoney1" maxlength="6" title="희망 투자금액 입력" value="0" onkeypress="filterInputData(&#39;[0-9]&#39;, event);" onkeyup="displayComma2(this, this.value); javascript:if(this.value.length &gt; 5) this.value = this.value.slice(0, 6); displayComma2(this, this.value); return false;">
										<span class="unit">만원</span>
										<p class="robo_sm_error" id="roboSmMoneyErr1" style="display: none;">10억원 미만</p>
									</div>
								</dd>
							</dl>
							</div>
						</dd>
					</dl>
					<div class="btnArea">
						<button type="button" class="btn-action c1" id="btnFindPf" style="background-color: #008B8B; color: white; border: none; text-align: ">포트폴리오 찾기</button>
					</div>
				</fieldset>
			</div>
		</div>
			
	</section>
	<footer style="clear: both;">
		<jsp:include page="/WEB-INF/include/footer.jsp" />
	</footer>
</body>
</html>