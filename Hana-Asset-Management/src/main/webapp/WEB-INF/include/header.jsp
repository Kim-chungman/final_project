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
        
        <title>Hana Solution - 자산관리의 시작</title>
        
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
        <script type="text/javascript" src="${ pageContext.request.contextPath }/resources/js/jquery-3.6.0.min.js"></script>
        
        <script>
		$(document).ready(function() {
			$('#loginButton').click(function() {
				location.href="${ pageContext.request.contextPath }/login";
			})
			
			$('#logoutButton').click(function() {
				location.href="${ pageContext.request.contextPath }/logout";
			})
			
			$('#joinButton').click(function() {
				location.href="${ pageContext.request.contextPath }/member/join";
			})
		})
		
		</script>
        
    </head>
    <!-- END HEAD -->
    
    <style>
    	#mainMenubar:hover {
			color: #008B8B;
		}
		
		#loginButton {
			border: none;
			background-color: #008B8B;
			float:left; 
			margin-left: 50px; 
			margin-top: 17px;"
		}
		
		#joinButton {
			border: 1px solid #008B8B;
			background-color: white;
			float:left; 
			margin-left: 3px; 
			margin-top: 17px;
		}
		
		#logoutButton {
			border: 1px solid #008B8B;
			background-color: white;
			float:left; 
			margin-left: 10px; 
			margin-top: 20px;
		}
    </style>
    
    <!-- START BODY -->
    <body class="no_js responsive stretched">
        
        <!-- START BG SHADOW -->
        <div class="bg-shadow">
            
            <!-- START WRAPPER -->
            <div id="wrapper" class="group">
                
                <!-- START HEADER -->
                <div id="header" class="group">
                    
                    <div class="group inner">
                        
                        <!-- START LOGO -->
                        <div id="logo" class="group">
                            <a href="${ pageContext.request.contextPath }/" title="Hana Solution"><img src="${ pageContext.request.contextPath }/resources/images/logo.png" title="Hana Solution" alt="Hana Solution" style="float: left;"/></a>
                        	<c:if test="${ empty userVO }">
                                <%-- <img src="${ pageContext.request.contextPath }/resources/images/login.png" style="float:left; margin-left: 50px; margin-top: 17px;" title="login" alt="login" /> --%>
                                <button id="loginButton" style="width: 70px; line-height: 25px; border-radius: 80px; color: white;">로그인</button>
                                <button id="joinButton" style="width: 70px; line-height: 23px; border-radius: 80px; color: #008B8B;">회원가입</button>
                            </c:if>
                            <c:if test="${ not empty userVO }">
                            	<p style="text-decoration: underline; float:left; margin-left: 100px; margin-top: 21px; text-align: center; font-size: 12pt;">${ userVO.name}님</p>
                                <button id="logoutButton" style="width: 70px; line-height: 23px; border-radius: 80px; color: #008B8B;">로그아웃</button>
                            </c:if>
                        </div>
                        <!-- END LOGO -->
                        
                        <div id="sidebar-header" class="group">
                        	<div class="widget-first widget yit_text_quote">
                            	<a style="font-size: 10pt; float: right; text-align: center; margin-top: 25px; margin-left: 10px;" href="#" class="socials-small google-small" title="Google">google</a>
                            </div>
                        	<div class="widget-first widget yit_text_quote">
                            	<a style="font-size: 10pt; float: right; text-align: center; margin-top: 25px; margin-left: 10px;" href="#" class="socials-small twitter-small" title="Twitter">twitter</a>
                            </div>
                        	<div class="widget-first widget yit_text_quote">
                        		<a style="font-size: 10pt; float: right; text-align: center; margin-top: 25px; margin-left: 100px;" href="#" class="socials-small facebook-small" title="Facebook">facebook</a>
                            </div>
                            <div class="widget-first widget yit_text_quote">
                                <a style="font-size: 10pt; float: right; text-align: center; margin-top: 25px; margin-left: 10px;">그룹소개</a>
                            </div>
                            <div class="widget-first widget yit_text_quote">
                                <a style="font-size: 10pt; float: right; text-align: center; margin-top: 25px; margin-left: 10px;">오픈뱅킹</a>
                            </div>
                            <div class="widget-first widget yit_text_quote">
                                <a style="font-size: 10pt; float: right; text-align: center; margin-top: 25px; margin-left: 10px;">서비스</a>
                            </div>
                        </div>
                        <div class="clearer"></div>
                        
                        <hr />
                        
                        <!-- START MAIN NAVIGATION -->
                        <div class="menu classic">
                        	<ul id="nav" class="menu">
                        		<li style="margin-left: 150px;">
                                    <a href="${ pageContext.request.contextPath }/account" style="color: #008B8B;">조회</a>
                                    <ul class="sub-menu">
                                        <li><a href="${ pageContext.request.contextPath }/counseling" style="color: #008B8B;">전체계좌조회</a></li>
                                        <li><a href="${ pageContext.request.contextPath }/portfolio/pdf" style="color: #008B8B;">내계좌조회</a></li>
                                        <li><a href="${ pageContext.request.contextPath }/portfolio/excel" style="color: #008B8B;">거래내역조회</a></li>
                                        <li><a href="${ pageContext.request.contextPath }/map" style="color: #008B8B;">거래중지/휴면계좌</a></li>
                                        <li><a href="#" style="color: #008B8B;">해지계좌 조회</a></li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="${ pageContext.request.contextPath }/transfer" style="color: #008B8B;">이체</a>
                                    <ul class="sub-menu">
                                        <li><a href="slider-layerslider.jsp" style="color: #008B8B;">계좌이체</a></li>
                                        <li><a href="slider-flexslider.jsp" style="color: #008B8B;">다른은행계좌 이체(오픈뱅킹)</a></li>
                                        <li><a href="slider-elastic-slider.jsp" style="color: #008B8B;">예약이체</a></li>
                                        <li><a href="slider-thumbnails.jsp" style="color: #008B8B;">자동이체</a></li>
                                        <li><a href="slider-cycle.jsp" style="color: #008B8B;">계좌통합관리</a></li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="${ pageContext.request.contextPath }/product" style="color: #008B8B;">추천상품</a>
                                    <ul class="sub-menu">
                                        <li><a href="corporate-about.jsp" style="color: #008B8B;">예금</a></li>
                                        <li><a href="landing-page.jsp" style="color: #008B8B;">적금</a></li>
                                        <li><a href="corporate-videogallery.jsp" style="color: #008B8B;">펀드</a></li>
                                        <li><a href="corporate-testimonials.jsp" style="color: #008B8B;">방카슈랑스</a></li>
                                        <li><a href="contact.jsp" style="color: #008B8B;">주식</a></li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="${ pageContext.request.contextPath }/assetManagement" style="color: #008B8B;">재무설계</a>
                                    <ul class="sub-menu">
                                        <li><a href="portfolio-filterable.jsp" style="color: #008B8B;">재무설계란?</a></li>
                                        <li><a href="portfolio-three-columns.jsp" style="color: #008B8B;">투자성향확인</a></li>
                                        <li><a href="project.jsp" style="color: #008B8B;">소비지출분석</a></li>
                                        <li><a href="portfolio-big-image.jsp" style="color: #008B8B;">재무상태분석</a></li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="${ pageContext.request.contextPath }/plan" style="color: #008B8B;">맞춤설계</a>
                                    <ul class="sub-menu">
                                        <li><a href="blog-big-image.jsp" style="color: #008B8B;">연령별 재무설계</a></li>
                                        <li><a href="blog-small-image.jsp" style="color: #008B8B;">목표 재무설계</a></li>
                                        <li><a href="error-404.jsp" style="color: #008B8B;">fun한 재무설계</a></li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="${ pageContext.request.contextPath }/report" style="color: #008B8B;">보고서</a>
                                    <ul class="sub-menu">
                                        <li><a href="features-right-sidebar.jsp" style="color: #008B8B;">My Report</a></li>
                                        <li><a href="features-left-sidebar.jsp" style="color: #008B8B;">나의 자산현황</a></li>
                                        <li><a href="features-full-width.jsp" style="color: #008B8B;">평균지표</a></li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="${ pageContext.request.contextPath }/board" style="color: #008B8B;">게시판</a>
                                    <ul class="sub-menu">
                                        <li><a href="shortcodes-typography.jsp" style="color: #008B8B;">공지사항</a></li>
                                        <li><a href="shortcodes-icon-section.jsp" style="color: #008B8B;">상담신청</a></li>
                                        <li><a href="shortcodes-alert-box-buttons.jsp" style="color: #008B8B;">자유게시판</a></li>
                                        <li><a href="shortcodes-tables-box-prices.jsp" style="color: #008B8B;">이벤트</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <!-- END MAIN NAVIGATION -->
                        <div id="header-shadow"></div>
                        <div id="menu-shadow"></div>
                    </div>
                </div>
                <!-- END HEADER -->
            </div>
            <!-- END WRAPPER -->
        </div>
        <!-- END BG SHADOW -->
        
        <script type="text/javascript" src="${ pageContext.request.contextPath }/resources/js/jquery.custom.js"></script>
        <script type="text/javascript" src="${ pageContext.request.contextPath }/resources/js/contact.js"></script>
        <script type="text/javascript" src="${ pageContext.request.contextPath }/resources/js/jquery.mobilemenu.js"></script> 
        
    </body>
    <!-- END BODY -->
</html>