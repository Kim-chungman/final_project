<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.2, user-scalable=yes" />
<head>
        
        <meta charset="UTF-8" />
        <!-- this line will appear only if the website is visited with an iPad -->
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.2, user-scalable=yes" />
        
        <title>Hana Solution - 상품설계</title>
        
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
       
    	<%-- range jquery --%>
    	<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/rSlider.min.css">
    
    	<%-- multi select jquery --%>
    	<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/bbbootstrap/libraries@main/choices.min.css">
		<script src="https://cdn.jsdelivr.net/gh/bbbootstrap/libraries@main/choices.min.js"></script>
    	
    	<!-- asset -->
		<link rel="stylesheet" type="text/css" href="${ pageContext.request.contextPath }/resources/asset/obank_2018_common.css">
		<link rel="stylesheet" type="text/css" href="${ pageContext.request.contextPath }/resources/asset/robo_2018.css">
		
    </head>
    <!-- END HEAD -->
    
    <style>
    	
    	.manageMenu:hover {
    		color: #008B8B; 
    	}
    	
    	#manageNav{
	   		width: 10%;
	   		position: relative;
	   		margin-left: 17%;
	   		float: left;
	   	}
	   	
	   	#manageSec{
	   		width: 55%;
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
		
		.container {
            width: 80%;
            margin: 70px auto;
        }
        .slider-container {
            width: 90%;
            max-width: 500px;
            margin: 0 auto 50px;
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
	                <h3 style="color: #008B8B; font-size: 15pt;">재무설계</h3>
	                <hr style="border-color: #008B8B; width: 30%; float: left;">
	                <div class="recent-post group">
	                    <div class="hentry-post group">
	                    	<a href="${ pageContext.request.contextPath }/assetManagement/explain" title="재무설계" class="manageMenu" style="font-size: 11pt;">재무설계란?</a>
	                    </div>
	                    <div class="hentry-post group">
	                        <a href="${ pageContext.request.contextPath }/assetManagement/investmentForm" title="재무설계" class="manageMenu" style="color: #008B8B; font-size: 11pt;">투자성향확인</a>
	                    </div>
	                    <div class="hentry-post group">
	                        <a href="${ pageContext.request.contextPath }/plan/expense" title="재무설계" class="manageMenu" style="font-size: 11pt;">소비지출분석</a>
	                    </div>
	                    <div class="hentry-post group">
	                        <a href="#" title="재무설계" class="manageMenu" style="font-size: 11pt;">재무상태분석</a>
	                    </div>
	                </div>
	            </div>
	            
	        </div>
	     </div>
	     <!-- END SIDEBAR -->
	</nav>
	<section id="manageSec">
		<div>
			<table style="width: 900px; align-content: center; margin-right: 100px;">
				<tr>
					<td id="tdNum" style="color: #008B8B;">
						<a href="${ pageContext.request.contextPath }/assetManagement/investmentForm" style="color: #008B8B; font-size: 12pt; font-family: inherit;">1 약관동의</a>
					</td>
					<td id="tdNum" style="color: #008B8B;">
						<a href="${ pageContext.request.contextPath }/assetManagement/investmentTest" style="color: #008B8B; font-size: 12pt; font-family: inherit;">2 성향분석</a>
					</td>
					<td id="tdNum" style="color: #008B8B;">
						<a href="${ pageContext.request.contextPath }/assetManagement/investmentResult" style="color: #008B8B; font-size: 12pt; font-family: inherit;">3 분석결과</a>
					</td>
					<td id="tdNum" style="color: #008B8B;">
						<a href="#" style="color: #008B8B; font-size: 12pt; font-family: inherit;">4 설계받기</a>
					</td>
				</tr>
			</table>
		</div>
		<div style="margin-top: 30px;">
			<h3 style="font-family: 'inherit'; text-align: center; margin-top: 30px;"><strong style="color: #008B8B;">${ userVO.name }님</strong><strong>을 위한 상품설계</strong></h3>
			<hr style="border-color: #008B8B; margin-bottom: 20px; border-width: 1px; width: 900px; margin-top: 20px;">
        	
        	<h2 style="margin-top: 50px; text-align: center;">
        		<span style="color: #008B8B;">${ investType }</span>성향 고객님을 위한 맞춤형 상품추천
        	</h2>
        </div>
        <div>
        	<form action="${ pageContext.request.contextPath }/portfolio" method="post">
        	<input type="hidden" id="investmentType" name="investmentType" value="${ investType }">
        	<input type="hidden" id="name" name="name" value="${ userVO.name }">
        	<input type="hidden" id="rrn" name="rrn" value="${ userVO.rrn }">
        	<input type="hidden" id="member_id" name="member_id" value="${ userVO.id }">
        	<fieldset class="proposal-form mgt20" style="width: 850px; padding: 0px;">
				<dl>
					<dt>투자성향</dt>
					<dd>
						<div class="button-radio">
							<c:if test="${ investType eq '안정형'}">
								<span class="my"><span>나의<br>투자 성향</span><input type="radio" name="propensity" id="propensity1" value="1" disabled="disabled"><label for="propensity1">안정</label></span>														
							</c:if>
							<c:if test="${ investType ne '안정형'}">
								<span><input type="radio" name="propensity" id="propensity1" value="1" disabled="disabled"><label for="propensity1">안정</label></span>														
							</c:if>
							<c:if test="${ investType eq '안정추구형'}">
								<span class="my"><span>나의<br>투자 성향</span><input type="radio" name="propensity" id="propensity2" value="2" disabled="disabled"><label for="propensity2">안정추구</label></span>														
							</c:if>
							<c:if test="${ investType ne '안정추구형'}">
								<span><input type="radio" name="propensity" id="propensity2" value="2" disabled="disabled"><label for="propensity2">안정추구</label></span>														
							</c:if>
							<c:if test="${ investType eq '위험중립형'}">
								<span class="my"><span>나의<br>투자 성향</span><input type="radio" name="propensity" id="propensity3" value="3" disabled="disabled"><label for="propensity3">위험중립</label></span>														
							</c:if>
							<c:if test="${ investType ne '위험중립형'}">
								<span><input type="radio" name="propensity" id="propensity3" value="3" disabled="disabled"><label for="propensity3">위험중립</label></span>													
							</c:if>			
							<c:if test="${ investType eq '적극투자형'}">
								<span class="my"><span>나의<br>투자 성향</span><input type="radio" name="propensity" id="propensity4" value="4" disabled="disabled"><label for="propensity4">적극투자</label></span>														
							</c:if>
							<c:if test="${ investType ne '적극투자형'}">
								<span><input type="radio" name="propensity" id="propensity4" value="4" disabled="disabled"><label for="propensity4">적극투자</label></span>												
							</c:if>			
							<c:if test="${ investType eq '공격투자형'}">
								<span class="my"><span>나의<br>투자 성향</span><input type="radio" name="propensity" id="propensity5" value="5" disabled="disabled"><label for="propensity5">공격투자</label></span>													
							</c:if>
							<c:if test="${ investType ne '공격투자형'}">
								<span><input type="radio" name="propensity" id="propensity5" value="5" disabled="disabled"><label for="propensity5">공격투자</label></span>												
							</c:if>																									
						</div>
                        
					</dd>
				</dl>
				<dl>
					<dt>투자방식</dt>
					<dd>
						<div class="label-check2">
							<span><input type="radio" name="investMethod" id="roboSmSaving2" onclick="roboSmSavingClick(this);" value="2"><label for="roboSmSaving2"><i></i>적립투자형<span>소액 장기 운용에 적합</span></label></span>
							<span><input type="radio" name="investMethod" id="roboSmSaving1" onclick="roboSmSavingClick(this);" value="1"><label for="roboSmSaving1"><i></i>목돈투자형<span>목돈 중·단기 운용에 적합</span></label></span>
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
									<input type="text" class="input" name="slider2" id="roboSmMoney2" maxlength="6" title="희망 월 적립금액 입력" value="0" onkeypress="filterInputData(&#39;[0-9]&#39;, event);" onkeyup="displayComma2(this, this.value); javascript:if(this.value.length &gt; 5) this.value = this.value.slice(0, 6); displayComma2(this, this.value); return false;">
									<span class="unit">만원</span>
									<p class="robo_sm_error" id="roboSmMoneyErr2" style="text-align: right; display: none;">10억원미만</p>
								</div>
							</dd>
						</dl>
						<dl class="input-set w260">
							<dt>투자기간</dt>
							<dd>
								<div class="input-unit2">
									<input type="text" class="input" name="slider" id="roboSmPeriod" maxlength="3" title="투자기간 입력" value="12" onkeypress="filterInputData(&#39;[0-9]&#39;, event);" onkeyup="displayComma2(this, this.value); javascript:if(this.value.length &gt; 3) this.value = this.value.slice(0, 4); displayComma2(this, this.value); return false;">
									<span class="unit">개월</span>
								</div>
							</dd>
						</dl>
						</div>
					</dd>
				</dl>
				<dl class="container" style="width: 900px;">
					<dt style="font-size: 14pt;">분석지표 설정</dt>
					<dd class="row d-flex justify-content-center mt-100" style="border: none;">
						<div class="col-md-6" style="border: none;"> 
				    	<select id="choices-multiple-remove-button" name="analysis" style="opacity: 60;" multiple>
				            <option style="border: none;" value="표준편차(%)" selected="selected">표준편차(σ)</option>
				            <option style="border: none;" value="BM민감도(B)">BM민감도(β)</option>
				            <option style="border: none;" value="트래킹에러(TE,%)">트래킹에러(TE,%)</option>
				            <option style="border: none;" value="Sharpe Ratio">Sharpe Ratio</option>
				            <option style="border: none;" value="젠센의 알파(%)">젠센의 알파(%)</option>
				            <option style="border: none;" value="정보비율(IR)">정보비율(IR)</option>
				        </select> 
				    </div>
					</dd>
				</dl>
				<dl class="container" style="width: 900px;">
					<dt style="font-size: 14pt;">기대수익률 설정</dt>
					<dd class="slider-container" style="text-align: center; margin-right: 160px;">
		        	
		        	<p style="font-size: 12pt; margin-left: 390px; margin-bottom: 35px;"><strong>기대수익률(%)</strong></p>
		            <input type="text" id="slider3" name="slider3" class="slider" />
		        	</dd>
				</dl>
				<div>
		        	<input type="submit" value="설계하기" style="font-size:12pt; width: 150px; height: 40px; color: white; background-color: #008B8B; border: none; margin-left: 400px;">
		        </div>
			</fieldset>
			</form>
       		<!--
        	<div class="container" style="text-align: center;">
        		
        		<strong><span style="font-size: 14pt;"><분석지표 설정></span></strong>
        		<div class="row d-flex justify-content-center mt-100" style="border: none; margin-left: 110px; width: 500px; margin-bottom: 20px; margin-top: 20px;">
				    <div class="col-md-6" style="border: none;"> 
				    	<select id="choices-multiple-remove-button" name="analysis" style="opacity: 60;" multiple>
				            <option style="border: none;" value="표준편차(%)" selected="selected">표준편차(σ)</option>
				            <option style="border: none;" value="BM민감도(B)">BM민감도(β)</option>
				            <option style="border: none;" value="트래킹에러(TE,%)">트래킹에러(TE,%)</option>
				            <option style="border: none;" value="Sharpe Ratio">Sharpe Ratio</option>
				            <option style="border: none;" value="젠센의 알파(%)">젠센의 알파(%)</option>
				            <option style="border: none;" value="정보비율(IR)">정보비율(IR)</option>
				        </select> 
				    </div>
				</div>
				
		        <div class="slider-container" style="text-align: center;">
		        	<strong><span style="font-size: 14pt;"><투자기간 설정></span></strong>
		        	<p style="font-size: 11pt; margin-left: 440px; margin-bottom: 35px;"><strong>투자기간</strong></p>
		            <input type="text" id="slider" name="slider" style="text-align: left;" class="slider" />
		        </div>
		        <div class="slider-container" style="text-align: center;">
		        	<strong><span style="font-size: 14pt;"><투자금액 설정></span></strong>
		        	<p style="font-size: 11pt; margin-left: 360px; margin-bottom: 35px;"><strong>월 투자액(단위: 만원)</strong></p>
		            <input type="text" id="slider2" name="slider2" class="slider" />
		        </div>	        
		        <div class="slider-container" style="text-align: center;">
		        	<strong><span style="font-size: 14pt;"><기대수익률 설정></span></strong>
		        	<p style="font-size: 11pt; margin-left: 400px; margin-bottom: 35px;"><strong>기대수익률(%)</strong></p>
		            <input type="text" id="slider3" name="slider3" class="slider" />
		        </div>
		         
		        <div>
		        	<input type="submit" value="설계" style="font-size:10pt; width: 70px; height: 40px; color: white; background-color: #008B8B; border: none; margin-top: 30px;">
		        </div>
		        
		    </div>
		    -->
		    
        </div>
	</section>
	<footer style="clear: both;">
		<br><br>
		<jsp:include page="/WEB-INF/include/footer.jsp" />
	</footer>
	<script src="${ pageContext.request.contextPath }/resources/js/rSlider.min.js"></script>
    <script>
        (function () {
            'use strict';

            var init = function () {         
            	
            	var slider3 = new rSlider({
                    target: '#slider3',
                    values: {min: 0, max: 30},
                    step: 1,
                    range: true,
                    set: [0, 5],
                    scale: true,
                    labels: false,
                    onChange: function (vals) {
                    }
                });
            	
        		/* 
                var slider2 = new rSlider({
                    target: '#slider2',
                    values: [1, 3, 5, 10, 15, 20, 25, 30, 35, 40, 45, 50, 55, 60, 65, 70, 75, 80, 85, 90, 95, 100, 110, 120, 130, 140, 150, 160, 170, 180, 190, 200, 210, 220, 230, 240, 250, 260, 270, 280, 290, 300],
                    range: false,
                    set: [5],
                    tooltip: true,
                    labels: false,
                    onChange: function (vals) {
                    }        
                });

                var slider3 = new rSlider({
                    target: '#slider3',
                    values: {min: 0, max: 30},
                    step: 1,
                    range: true,
                    set: [0, 5],
                    scale: true,
                    labels: false,
                    onChange: function (vals) {
                    }
                });

                var slider = new rSlider({
                	target: '#slider',
                    values: ['1개월', '3개월', '6개월', '1년', '2년', '3년'],
                    range: false,
                    set: ['1년'],
                    tooltip: true,
                    onChange: function (vals) {
                    }  
                });
                 */
            };
            window.onload = init;
        })();
        
        var sum = 0;//함수 안에 지역변수로 선언하면 0으로 계속 초기화돼서 sum+=으로 더해지지 않는 거였음.
		
		function calc(button) {
			
			if(parseInt(button.value) != 0)
				sum+= parseInt(button.value);//parseInt를 안하면 값이 더하기가 안되고 옆에 붙여넣기가 됨		
			else
				sum = 0;
			
			document.getElementById("balance").value = sum;
		}
        
		$(document).ready(function(){

			var multipleCancelButton = new Choices('#choices-multiple-remove-button', {
			removeItemButton: true,
			maxItemCount:5,
			searchResultLimit:5,
			renderChoiceLimit:5
			});

		});
    </script>
</body>
</html>