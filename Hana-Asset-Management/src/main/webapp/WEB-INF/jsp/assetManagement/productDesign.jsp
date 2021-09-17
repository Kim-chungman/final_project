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
			<hr style="border-color: #008B8B; margin-bottom: 20px; border-width: 1px; width: 27%;">
        	
        	<h2 style="margin-top: 50px; text-align: center;">
        		<span style="color: #008B8B;">${ investType }</span>성향 고객님을 위한 맞춤형 상품추천
        	</h2>
        </div>
        <div>
        	<form action="${ pageContext.request.contextPath }/testing" method="post">
        	<input type="hidden" id="investmentType" name="investmentType" value="${ investType }">
        	<input type="hidden" id="rrn" name="rrn" value="${ userVO.rrn }">
        	<input type="hidden" id="member_id" name="member_id" value="${ userVO.id }">
        	<div class="container" style="text-align: center;">
        		<strong><span style="font-size: 14pt;"><분석지표 설정></span></strong>
        		<div class="row d-flex justify-content-center mt-100" style="border: none; margin-left: 110px; width: 500px; margin-bottom: 20px; margin-top: 20px;">
				    <div class="col-md-6" style="border: none;"> 
				    	<select id="choices-multiple-remove-button" name="analysis" style="opacity: 60;" multiple>
				            <option style="border: none;" value="표준편차(%)">표준편차(σ)</option>
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
		    </form>
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