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
        <link rel="shortcut icon" type="image/x-icon" href="images/favicon.png" />
        <link rel="icon" type="image/x-icon" href="images/favicon.png" />
        <!-- Touch icons more info: http://mathiasbynens.be/notes/touch-icons -->
        <!-- For iPad3 with retina display: -->
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="apple-touch-icon-144x.png" />
        <!-- For first- and second-generation iPad: -->
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="apple-touch-icon-114x.png" />
        <!-- For first- and second-generation iPad: -->
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="apple-touch-icon-72x.png" />
        <!-- For non-Retina iPhone, iPod Touch, and Android 2.1+ devices: -->
        <link rel="apple-touch-icon-precomposed" href="apple-touch-icon-57x.png" />
        <!-- [favicon] end -->
        
        <!-- CSSs -->
        <link rel="stylesheet" type="text/css" media="all" href="css/reset.css" /> <!-- RESET STYLESHEET -->
        <link rel="stylesheet" type="text/css" media="all" href="style.css" /> <!-- MAIN THEME STYLESHEET -->
        <link rel="stylesheet" id="max-width-1024-css" href="css/max-width-1024.css" type="text/css" media="screen and (max-width: 1240px)" />
        <link rel="stylesheet" id="max-width-768-css" href="css/max-width-768.css" type="text/css" media="screen and (max-width: 987px)" />
        <link rel="stylesheet" id="max-width-480-css" href="css/max-width-480.css" type="text/css" media="screen and (max-width: 480px)" />
        <link rel="stylesheet" id="max-width-320-css" href="css/max-width-320.css" type="text/css" media="screen and (max-width: 320px)" />
        
        <!-- CSSs Plugin -->
        <link rel="stylesheet" id="thickbox-css" href="css/thickbox.css" type="text/css" media="all" />
        <link rel="stylesheet" id="styles-minified-css" href="css/style-minifield.css" type="text/css" media="all" />
        <link rel="stylesheet" id="buttons" href="css/buttons.css" type="text/css" media="all" />
        <link rel="stylesheet" id="cache-custom-css" href="css/cache-custom.css" type="text/css" media="all" />
        <link rel="stylesheet" id="custom-css" href="css/custom.css" type="text/css" media="all" />
	    
        <!-- FONTs -->
        <link rel="stylesheet" id="google-fonts-css" href="http://fonts.googleapis.com/css?family=Oswald%7CDroid+Sans%7CPlayfair+Display%7COpen+Sans+Condensed%3A300%7CRokkitt%7CShadows+Into+Light%7CAbel%7CDamion%7CMontez&amp;ver=3.4.2" type="text/css" media="all" />
        <link rel='stylesheet' href='css/font-awesome.css' type='text/css' media='all' />
        
        <!-- JAVASCRIPTs -->
        <script type="text/javascript" src="js/jquery.js"></script>
        <script type="text/javascript" src="js/comment-reply.js"></script>
        <script type="text/javascript" src="js/jquery.quicksand.js"></script>
        <script type="text/javascript" src="js/jquery.tipsy.js"></script>
        <script type="text/javascript" src="js/jquery.prettyPhoto.js"></script>
        <script type="text/javascript" src="js/jquery.cycle.min.js"></script>
        <script type="text/javascript" src="js/jquery.anythingslider.js"></script>
        <script type="text/javascript" src="js/jquery.eislideshow.js"></script>
        <script type="text/javascript" src="js/jquery.easing.js"></script>
        <script type="text/javascript" src="js/jquery.flexslider-min.js"></script>
        <script type="text/javascript" src="js/jquery.aw-showcase.js"></script>
        <script type="text/javascript" src="js/layerslider.kreaturamedia.jquery-min.js"></script>
        <script type="text/javascript" src="js/shortcodes.js"></script>
		<script type="text/javascript" src="js/jquery.colorbox-min.js"></script>
		<script type="text/javascript" src="js/jquery.tweetable.js"></script>
        
    </head>
    <!-- END HEAD -->
    
    <style>
    	a {
    		color:gray;
    		font-size: 15px;
    	}
    	
    	a:hover {
    		color:#718ABE;
			text-decoration: underline;
    	}
    	
    	#copyright {
    		background-color: DimGray;
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
                            <a href="index.jsp" title="Hana Solution"><img src="images/logo.png" title="Hana Solution" alt="Hana Solution" style="float: left;"/></a>
                        	<c:if test="${ empty userVO }">
                                <a href="index.jsp" title="login">
                                	<img src="images/login.png" style="float:left; margin-left: 50px; margin-top: 17px;" title="login" alt="login" />
                                </a>
                                <a href="index.jsp" title="certification">
                                	<img src="images/certification.png" style="float:left; margin-left: 3px; margin-top: 17px;" title="certification" alt="certification" />
                                </a>
                            </c:if>
                            <c:if test="${ not empty userVO }">
                            	<p style="text-decoration: underline; float:left; margin-left: 100px; margin-top: 21px; text-align: center;">${ userVO.name}님</p>
                                <a href="index.jsp" title="login">
                                	<img src="images/logout.png" style="clear:both; margin-left: 10px; margin-top: 15px;" title="login" alt="login" />
                                </a>
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
                                    <a href="index.jsp">조회</a>
                                    <ul class="sub-menu">
                                        <li><a href="home-ii.jsp">전체계좌조회</a></li>
                                        <li><a href="home-iii.jsp">내계좌조회</a></li>
                                        <li><a href="home-iv.jsp">거래내역조회</a></li>
                                        <li><a href="home-v.jsp">거래중지/휴면계좌</a></li>
                                        <li><a href="home-vi.jsp">해지계좌 조회</a></li>
                                    </ul>
                                </li>
                                
                                <li>
                                    <a href="#">이체</a>
                                    <ul class="sub-menu">
                                        <li><a href="slider-layerslider.jsp">계좌이체</a></li>
                                        <li><a href="slider-flexslider.jsp">다른은행계좌 이체(오픈뱅킹)</a></li>
                                        <li><a href="slider-elastic-slider.jsp">예약이체</a></li>
                                        <li><a href="slider-thumbnails.jsp">자동이체</a></li>
                                        <li><a href="slider-cycle.jsp">계좌통합관리</a></li>
                                    </ul>
                                </li>
                                
                                <li>
                                    <a href="#">추천상품</a>
                                    <ul class="sub-menu">
                                        <li><a href="corporate-about.jsp">예금</a></li>
                                        <li><a href="landing-page.jsp">적금</a></li>
                                        <li><a href="corporate-videogallery.jsp">펀드</a></li>
                                        <li><a href="corporate-testimonials.jsp">방카슈랑스</a></li>
                                        <li><a href="contact.jsp">주식</a></li>
                                    </ul>
                                </li>
                                
                                <li>
                                    <a href="#">재무설계</a>
                                    <ul class="sub-menu">
                                        <li><a href="portfolio-filterable.jsp">재무설계란?</a></li>
                                        <li><a href="portfolio-three-columns.jsp">투자성향확인</a></li>
                                        <li><a href="project.jsp">소비지출분석</a></li>
                                        <li><a href="portfolio-big-image.jsp">재무상태분석</a></li>
                                    </ul>
                                </li>
                                
                                <li>
                                    <a href="#">맞춤설계</a>
                                    <ul class="sub-menu">
                                        <li><a href="blog-big-image.jsp">연령별 재무설계</a></li>
                                        <li><a href="blog-small-image.jsp">목표 재무설계</a></li>
                                        <li><a href="error-404.jsp">fun한 재무설계</a></li>
                                    </ul>
                                </li>
                                
                                <li>
                                    <a href="#">보고서</a>
                                    <ul class="sub-menu">
                                        <li><a href="features-right-sidebar.jsp">My Report</a></li>
                                        <li><a href="features-left-sidebar.jsp">나의 자산현황</a></li>
                                        <li><a href="features-full-width.jsp">평균지표</a></li>
                                    </ul>
                                </li>
                                
                                <li>
                                    <a href="#">게시판</a>
                                    <ul class="sub-menu">
                                        <li><a href="shortcodes-typography.jsp">공지사항</a></li>
                                        <li><a href="shortcodes-icon-section.jsp">상담신청</a></li>
                                        <li><a href="shortcodes-alert-box-buttons.jsp">자유게시판</a></li>
                                        <li><a href="shortcodes-tables-box-prices.jsp">이벤트</a></li>
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
                
                <!-- START SLIDER -->
                <div id="slider-layer-slider" class="slider layer-slider no-responsive">
                    <div class="shadowWrapper">
                        <div id="layerslider_1" style="margin: 0px auto; width: 100%; height: 437px; ">
                            <div class="ls-layer" style="background-image: url('images/slider-layer/bg.jpg');slidedirection: right; slidedelay: 4000; durationin: 1000; durationout: 1500; easingin: easeInOutQuint; easingout: easeInOutQuint; delayin: 0; delayout: 0;">
                                <div class="inner ls-s3" style="position:absolute; left:50%; slidedirection : top; slideoutdirection : right; parallaxin : .45; parallaxout : .45; durationin : 600; durationout : 1500; easingin : easeOutExpo; easingout : easeInOutQuint; delayin : 2000; delayout : 0;"><img src="images/slider-layer/055.png" alt="sublayer" style="position: absolute; top: 50px; right: 30px; ; " /></div>
                                <div class="inner ls-s3" style="position:absolute; left:50%; slidedirection : right; slideoutdirection : right; parallaxin : .45; parallaxout : .45; durationin : 600; durationout : 1500; easingin : easeOutExpo; easingout : easeInOutQuint; delayin : 2600; delayout : 0;"><img src="images/slider-layer/064.png" alt="sublayer" style="position: absolute; top: 191px; right: 340px; ; " /></div>
                                <div class="inner ls-s3" style="position:absolute; left:50%; slidedirection : top; slideoutdirection : right; parallaxin : .45; parallaxout : .45; durationin : 1000; durationout : 1500; easingin : easeOutBounce; easingout : easeInOutQuint; delayin : 3200; delayout : 0;"><img src="images/slider-layer/074.png" alt="sublayer" style="position: absolute; top: 184px; right: 290px; ; " /></div>
                                <div class="inner ls-s8" style="position:absolute; left:50%; slidedirection : left; slideoutdirection : left; parallaxin : .45; parallaxout : .45; durationin : 1500; durationout : 1500; easingin : easeOutQuint; easingout : easeInOutQuint; delayin : 1100; delayout : 0;">
                                    <div style="position: absolute; top:297px; left: 30px;  "> <a href="themeforest.net/item/pink-rio-responsive-multipurpose-theme/3091259" class="btn btn-xlarge  btn-mfast-3 ">Purchase the theme</a> </div>
                                </div>
                                <div class="inner ls-s6" style="position:absolute; left:50%; slidedirection : left; slideoutdirection : left; parallaxin : .45; parallaxout : .45; durationin : 1500; durationout : 1500; easingin : easeOutQuint; easingout : easeInOutQuint; delayin : 900; delayout : 0;">
                                    <div style="position: absolute; top:186px; left: 30px;  font-size: 13px; color: #4f4f4e; font-family: Droid Sans,sans-serif;">
                                        <p style="width:340px;">Lid est laborum dolo rumes fugats untras. Et harums ser quidem rerum facilis dolores nemis omnis fugiats vitaes nemo minima rerums unsers sadips amets.</p>
                                    </div>
                                </div>
                                <div class="inner ls-s4" style="position:absolute; left:50%; slidedirection : left; slideoutdirection : left; parallaxin : .45; parallaxout : .45; durationin : 1500; durationout : 1500; easingin : easeOutQuint; easingout : easeInOutQuint; delayin : 700; delayout : 0;">
                                    <h3 style="position: absolute; top:126px; left: 30px;  font-size: 30px; color: #c97e08; font-family:Rokkitt,Georgia,serif;"> a fresh Wordpress theme. </h3>
                                </div>
                                <div class="inner ls-s1" style="position:absolute; left:50%; slidedirection : left; slideoutdirection : left; parallaxin : .45; parallaxout : .45; durationin : 1500; durationout : 1500; easingin : easeOutQuint; easingout : easeInOutQuint; delayin : 500; delayout : 0;">
                                    <h2 style="position: absolute; top:94px; left: 30px;  font-size: 30px; color: #2e2d2d; font-family: Rokkitt,Georgia,serif;"> CLEAN, RESPONSIVE, CORPORATE </h2>
                                </div>
                            </div>
                            <div class="ls-layer" style="background-image: url('images/slider-layer/bg1.jpg');slidedirection: right; slidedelay: 4000; durationin: 1500; durationout: 1500; easingin: easeInOutQuint; easingout: easeInOutQuint; delayin: 0; delayout: 0;">
                                <div class="inner ls-s2" style="position:absolute; left:50%; slidedirection : right;  parallaxin : .45; parallaxout : .45; durationin : 5000; durationout : 1500; easingin : easeOutQuint; easingout : easeInOutQuint; delayin : 0; delayout : 0;"><img src="images/slider-layer/011.png" alt="sublayer" style="position: absolute; top: 0px; left: -476px; " /></div>
                                <div class="inner ls-s2" style="position:absolute; left:50%; slidedirection : right; slideoutdirection : right; parallaxin : .45; parallaxout : .45; durationin : 1500; durationout : 1500; easingin : easeOutQuint; easingout : easeInOutQuint; delayin : 3000; delayout : 0;"><img src="images/slider-layer/12.png" alt="sublayer" style="position: absolute; top: 7px; left: -221px; " /></div>
                                <div class="inner ls-s2" style="position:absolute; left:50%; slidedirection : top; slideoutdirection : left; parallaxin : .45; parallaxout : .45; durationin : 1500; durationout : 1500; easingin : easeInOutQuint; easingout : easeInOutQuint; delayin : 2200; delayout : 0;"><img src="images/slider-layer/09.png" alt="sublayer" style="position: absolute; top: 0px; left: -446px; " /></div>
                                <div class="inner ls-s2" style="position:absolute; left:50%; slidedirection : top; slideoutdirection : left; parallaxin : .45; parallaxout : .45; durationin : 1500; durationout : 1500; easingin : easeInOutQuint; easingout : easeInOutQuint; delayin : 2200; delayout : 0;"><img src="images/slider-layer/10.png" alt="sublayer" style="position: absolute; top: 0px; left: -446px; " /></div>
                                <div class="inner ls-s2" style="position:absolute; left:50%; slidedirection : bottom; slideoutdirection : left; parallaxin : .45; parallaxout : .45; durationin : 1500; durationout : 1500; easingin : easeInOutQuint; easingout : easeInOutQuint; delayin : 1800; delayout : 0;"><img src="images/slider-layer/041.png" alt="sublayer" style="position: absolute; top: 0px; left: -446px; " /></div>
                                <div class="inner ls-s2" style="position:absolute; left:50%; slidedirection : bottom; slideoutdirection : left; parallaxin : .45; parallaxout : .45; durationin : 1500; durationout : 1500; easingin : easeInOutQuint; easingout : easeInOutQuint; delayin : 1800; delayout : 0;"><img src="images/slider-layer/051.png" alt="sublayer" style="position: absolute; top: 0px; left: -446px; " /></div>
                                <div class="inner ls-s2" style="position:absolute; left:50%; slidedirection : top; slideoutdirection : left; parallaxin : .45; parallaxout : .45; durationin : 1500; durationout : 1500; easingin : easeInOutQuint; easingout : easeInOutQuint; delayin : 1400; delayout : 0;"><img src="images/slider-layer/071.png" alt="sublayer" style="position: absolute; top: 0px; left: -446px; " /></div>
                                <div class="inner ls-s2" style="position:absolute; left:50%; slidedirection : top; slideoutdirection : left; parallaxin : .45; parallaxout : .45; durationin : 1500; durationout : 1500; easingin : easeInOutQuint; easingout : easeInOutQuint; delayin : 1400; delayout : 0;"><img src="images/slider-layer/08.png" alt="sublayer" style="position: absolute; top: 0px; left: -446px; " /></div>
                                <div class="inner ls-s2" style="position:absolute; left:50%; slidedirection : bottom; slideoutdirection : left; parallaxin : .45; parallaxout : .45; durationin : 1500; durationout : 1500; easingin : easeInOutQuint; easingout : easeInOutQuint; delayin : 1000; delayout : 0;"><img src="images/slider-layer/021.png" alt="sublayer" style="position: absolute; top: 0px; left: -446px; " /></div>
                                <div class="inner ls-s2" style="position:absolute; left:50%; slidedirection : bottom; slideoutdirection : left; parallaxin : .45; parallaxout : .45; durationin : 1500; durationout : 1500; easingin : easeInOutQuint; easingout : easeInOutQuint; delayin : 1000; delayout : 0;"><img src="images/slider-layer/031.png" alt="sublayer" style="position: absolute; top: 0px; left: -446px; " /></div>
                                <div class="inner ls-s2" style="position:absolute; left:50%; slidedirection : top;  parallaxin : .45; parallaxout : .45; durationin : 1200; durationout : 1500; easingin : easeOutBounce; easingout : easeInOutQuint; delayin : 500; delayout : 0;"><img src="images/slider-layer/11.png" alt="sublayer" style="position: absolute; top: 0px; left: -446px; " /></div>
                                <div class="inner ls-s2" style="position:absolute; left:50%; slidedirection : bottom; slideoutdirection : left; parallaxin : .45; parallaxout : .45; durationin : 1500; durationout : 1500; easingin : easeInOutQuint; easingout : easeInOutQuint; delayin : 2600; delayout : 0;">
                                    <div style="position: absolute; top:324.00001525878906px; left: 108px;  ">
                                        <p style="width:340px; padding-right:470px;">...and much more. <a href="#" style="color:#c97509;">Discover the features ></a></p>
                                    </div>
                                </div>
                            </div>
                            <div class="ls-layer" style="background-image: url('images/slider-layer/bg.png');slidedirection: right; slidedelay: 4000; durationin: 1500; durationout: 1500; easingin: easeInOutQuint; easingout: easeInOutQuint; delayin: 0; delayout: 0;">
                                <div class="inner ls-s2" style="position:absolute; left:50%; slidedirection : left; slideoutdirection : left; parallaxin : .45; parallaxout : .45; durationin : 1600; durationout : 1500; easingin : easeInOutQuint; easingout : easeInOutQuint; delayin : 200; delayout : 0;"><img src="images/slider-layer/052.png" alt="sublayer" style="position: absolute; top: 0px; left: -449px; " /></div>
                                <div class="inner ls-s3" style="position:absolute; left:50%; slidedirection : top; slideoutdirection : right; parallaxin : .45; parallaxout : .45; durationin : 1000; durationout : 1500; easingin : easeOutExpo; easingout : easeInOutQuint; delayin : 1400; delayout : 0;">
                                    <div style="position: absolute; top:90px; left: 573px;  font-size: 30px; color: #2e2d2d; font-family: Rokkitt,Georgia,serif;"> ENJOY THE VIDEO SUPPORT </div>
                                </div>
                                <div class="inner ls-s4" style="position:absolute; left:50%; slidedirection : right; slideoutdirection : right; parallaxin : .45; parallaxout : .45; durationin : 1000; durationout : 1500; easingin : easeOutExpo; easingout : easeInOutQuint; delayin : 2000; delayout : 0;">
                                    <div style="position: absolute; top:120px; left: 573px;  font-size: 30px; color: #c97e08; font-family:Rokkitt,Georgia,serif;"> share your youtube or vimeo videos </div>
                                </div>
                                <div class="inner ls-s5" style="position:absolute; left:50%; slidedirection : fade; slideoutdirection : right; parallaxin : .45; parallaxout : .45; durationin : 1500; durationout : 1500; easingin : easeOutExpo; easingout : easeInOutQuint; delayin : 3000; delayout : 0;">
                                    <div style="position: absolute; top:170px; left: 573px;  font-size: 13px; color: #4f4f4e; font-family: Droid Sans,sans-serif; line-height:20px;">
                                        <p style="width:340px;">Lid est laborum dolo rumes fugats untras. Et harums ser quidem rerum facilis dolores nemis omnis fugiats vitaes nemo minima rerums unsers sadips amets.</p>
                                    </div>
                                </div>
                                <div class="inner ls-s6" style="position:absolute; left:50%; slidedirection : bottom; slideoutdirection : right; parallaxin : .45; parallaxout : .45; durationin : 2000; durationout : 1500; easingin : easeOutQuint; easingout : easeInOutQuint; delayin : 2800; delayout : 0;">
                                    <div style="position: absolute; top:265px; left: 573px;  ">
                                        <p><a href="themeforest.net/item/pink-rio-responsive-multipurpose-theme/3091259" class="btn btn-xlarge  btn-mfast-3 ">Purchase the theme</a></p>
                                    </div>
                                </div>
                                <div class="inner ls-s2" style="position:absolute; left:50%; slidedirection : left; slideoutdirection : left; parallaxin : .45; parallaxout : .45; durationin : 1600; durationout : 1500; easingin : easeInOutQuint; easingout : easeInOutQuint; delayin : 200; delayout : 0;">
                                    <div style="position: absolute; top:55px; left: 36px;  ">
                                        <div style="width:472px; position:absolute;"><iframe src="http://player.vimeo.com/video/45052672?title=0&amp;byline=0&amp;portrait=0" width="472" height="317" frameborder="0" webkitAllowFullScreen mozallowfullscreen allowFullScreen></iframe></div>
                                    </div>
                                </div>
                            </div>
                            <div class="ls-layer" style="background-image: url('images/slider-layer/bg2.jpg');slidedirection: right; slidedelay: 4000; durationin: 1500; durationout: 1500; easingin: easeInOutQuint; easingout: easeInOutQuint; delayin: 0; delayout: 0;">
                                <div class="inner ls-s2" style="position:absolute; left:50%;   parallaxin : .45; parallaxout : .45; durationin : 1500; durationout : 1500; easingin : easeInOutQuint; easingout : easeInOutQuint; delayin : 0; delayout : 0;"><img src="images/slider-layer/091.png" alt="sublayer" style="position: absolute; top: 0px; left: -443px; " /></div>
                                <div class="inner ls-s2" style="position:absolute; left:50%;   parallaxin : .45; parallaxout : .45; durationin : 1500; durationout : 1500; easingin : easeInOutQuint; easingout : easeInOutQuint; delayin : 0; delayout : 0;"><img src="images/slider-layer/101.png" alt="sublayer" style="position: absolute; top: 0px; left: -443px; " /></div>
                                <div class="inner ls-s2" style="position:absolute; left:50%; slidedirection : top;  parallaxin : .45; parallaxout : .45; durationin : 1000; durationout : 1500; easingin : easeOutBounce; easingout : easeInOutQuint; delayin : 2000; delayout : 0;"><img src="images/slider-layer/033.png" alt="sublayer" style="position: absolute; top: 0px; left: -443px; " /></div>
                                <div class="inner ls-s2" style="position:absolute; left:50%; slidedirection : top;  parallaxin : .45; parallaxout : .45; durationin : 1000; durationout : 1500; easingin : easeOutBounce; easingout : easeInOutQuint; delayin : 2000; delayout : 0;"><img src="images/slider-layer/043.png" alt="sublayer" style="position: absolute; top: 0px; left: -443px; " /></div>
                                <div class="inner ls-s2" style="position:absolute; left:50%; slidedirection : top;  parallaxin : .45; parallaxout : .45; durationin : 1000; durationout : 1500; easingin : easeOutBounce; easingout : easeInOutQuint; delayin : 2500; delayout : 0;"><img src="images/slider-layer/053.png" alt="sublayer" style="position: absolute; top: 0px; left: -443px; " /></div>
                                <div class="inner ls-s2" style="position:absolute; left:50%; slidedirection : top;  parallaxin : .45; parallaxout : .45; durationin : 1000; durationout : 1500; easingin : easeOutBounce; easingout : easeInOutQuint; delayin : 2500; delayout : 0;"><img src="images/slider-layer/062.png" alt="sublayer" style="position: absolute; top: 0px; left: -443px; " /></div>
                                <div class="inner ls-s2" style="position:absolute; left:50%; slidedirection : top;  parallaxin : .45; parallaxout : .45; durationin : 1000; durationout : 1500; easingin : easeOutBounce; easingout : easeInOutQuint; delayin : 3000; delayout : 0;"><img src="images/slider-layer/072.png" alt="sublayer" style="position: absolute; top: 0px; left: -443px; " /></div>
                                <div class="inner ls-s2" style="position:absolute; left:50%; slidedirection : top;  parallaxin : .45; parallaxout : .45; durationin : 1000; durationout : 1500; easingin : easeOutBounce; easingout : easeInOutQuint; delayin : 3000; delayout : 0;"><img src="images/slider-layer/081.png" alt="sublayer" style="position: absolute; top: 0px; left: -443px; " /></div>
                                <div class="inner ls-s2" style="position:absolute; left:50%; slidedirection : bottom;  parallaxin : .45; parallaxout : .45; durationin : 2500; durationout : 1500; easingin : easeInOutQuint; easingout : easeInOutQuint; delayin : 2400; delayout : 0;">
                                    <div style="position: absolute; top:335px; left: 446px;  width:960px;"> <a href="themeforest.net/item/pink-rio-responsive-multipurpose-theme/3091259" class="btn btn-xlarge  btn-mfast-3 ">Purchase the theme</a> </div>
                                </div>
                                <div class="inner ls-s2" style="position:absolute; left:50%; slidedirection : bottom;  parallaxin : .45; parallaxout : .45; durationin : 1500; durationout : 1500; easingin : easeInOutQuint; easingout : easeInOutQuint; delayin : 900; delayout : 0;">
                                    <div style="position: absolute; top:106px; left: 30px;  width:960px; font-size: 30px; color: #c97e08; font-family:Rokkitt,Georgia,serif;">
                                        <div style="padding-left:410px;">WORDPRESS THEME</div>
                                    </div>
                                </div>
                                <div class="inner ls-s2" style="position:absolute; left:50%; slidedirection : top;  parallaxin : .45; parallaxout : .45; durationin : 1500; durationout : 1500; easingin : easeInOutQuint; easingout : easeInOutQuint; delayin : 500; delayout : 0;">
                                    <div style="position: absolute; top:65px; left: 30px;  width:960px; font-size: 30px; color: #2e2d2d; font-family: Rokkitt,Georgia,serif;">
                                        <div style="padding-left:410px;">A POWERFUL AND MULTIPURPOSE</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <script type="text/javascript" src="js/slider-layer.js"></script>
                        <div class="shadow-left"></div>
                        <div class="shadow-right"></div>
                    </div>
                </div>
                <!-- END SLIDER -->
                <div class="mobile-slider">
                    <div class="slider fixed-image inner"><img src="images/slider-layer/layer-fixed.jpg" alt="" /></div>
                </div>
                
                <!-- START PRIMARY -->
                <div id="primary" class="sidebar-right">
                    <div class="inner group">
                        <!-- START CONTENT -->
                        <div id="content-home" class="content group">
                            <div class="hentry group">
                                <div class="section services">
                                    
                                    <h3 class="title">Services</h3>
                                    
                                    <div class="related_project">
                                        <a title="" href="service.jsp" class="related_img">
                                        <img src="images/services/adv1-175x175.jpg" alt="adv1" title="adv1" />			</a>
                                        <h4><a href="service.jsp">Advertising</a></h4>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed accumsan [...]
                                    </div>
                                    
                                    <div class="related_project">
                                        <a title="" href="service.jsp" class="related_img">
                                        <img src="images/services/deisgn-175x175.jpg" alt="deisgn" title="deisgn" />			</a>
                                        <h4><a href="service.jsp">Design</a></h4>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed accumsan [...]
                                    </div>
                                    
                                    <div class="related_project">
                                        <a title="" href="service.jsp" class="related_img">
                                        <img src="images/services/WEB1-175x175.jpg" alt="WEB1" title="WEB1" />			</a>
                                        <h4><a href="service.jsp">Web Development</a></h4>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed accumsan [...]
                                    </div>
                                    
                                    <div class="related_project_last related_project">
                                        <a title="" href="service.jsp" class="related_img">
                                        <img src="images/services/foto-175x175.jpg" alt="foto" title="foto" />			</a>
                                        <h4><a href="service.jsp">Photography</a></h4>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed accumsan [...]
                                    </div>
                                    
                                    <div class="clear"></div>
                                    
                                </div>
                            </div>
                            <!-- START COMMENTS -->
                            <div id="comments">
                            </div>
                            <!-- END COMMENTS -->
                        </div>
                        <!-- END CONTENT -->
                        <!-- START SIDEBAR -->
                        <div id="sidebar-home" class="sidebar group">
                            <div class="widget-first widget testimonial-widget">
                                <h3>Testimonials</h3>
                                <div class="testimonial-text">
                                    <ul>
                                        <li>
                                            <blockquote>
                                                <p>I purchased this theme and I really like it. The theme authors have been very helpful in the support area of their website. Would definitely recommend to anyone needing a corporate wordpress theme. </p>
                                                <a href="testimonial.jsp" class="more-link">[...]</a>
                                                <div class="name-testimonial"><a class="name-testimonial" href="testimonial.jsp">Erica Evans </a></div>
                                            </blockquote>
                                        </li>
                                        <li>
                                            <blockquote>
                                                <p>Bookmark this theme as one of your “Must Haves for 2012” This theme is without a doubt one of our Top 5 Purchases. Once you get used to how the content is organised in Admin, </p>
                                                <a href="testimonial.jsp" class="more-link">[...]</a>
                                                <div class="name-testimonial"><a class="name-testimonial" href="testimonial.jsp">Ricardo Mori </a></div>
                                            </blockquote>
                                        </li>
                                        <li>
                                            <blockquote>
                                                <p>I am absolutely thrilled with this theme! I have never built a website before but your instructions and design make it both fun and easy to do. …Thanks a lot for your help! your support </p>
                                                <a href="testimonial.jsp" class="more-link">[...]</a>
                                                <div class="name-testimonial"><a class="name-testimonial" href="testimonial.jsp">Elisa Meis </a></div>
                                            </blockquote>
                                        </li>
                                        <li>
                                            <blockquote>
                                                <p>I already given a <strong>5-star rating</strong>, but I also wanted to provide my two cents in case anyone is unsure about purchasing this theme. Not only is the theme itself very versatile and easy to </p>
                                                <a href="testimonial.jsp" class="more-link">[...]</a>
                                                <div class="name-testimonial"><a class="name-testimonial" href="testimonial.jsp">Joy Mergot </a></div>
                                            </blockquote>
                                        </li>
                                    </ul>
                                </div>
                                <script type="text/javascript" src="js/testimonials.js"></script>
                            </div>
                            
                            <div class="widget widget-icon-text group">
                                <img class="icon-img" src="images/icons/heart.png" alt="" />		
                                <h3>12,895 sales</h3>
                                <p>of our themes on ThemeForest</p>
                            </div>
                            
                            <div class="widget-last widget widget-icon-text group">
                                <img class="icon-img" src="images/icons/calc.png" alt="" />		
                                <h3>Call for a quote</h3>
                                <p>Contact us for a free quote now!</p>
                            </div>
                            
                        </div>
                        <!-- END SIDEBAR -->
                        <!-- START EXTRA CONTENT -->
                        <!-- END EXTRA CONTENT -->
                    </div>
                </div>
                <!-- END PRIMARY -->
                				
				<!-- START COPYRIGHT -->
                <div id="copyright">
                    <div class="inner group" style="height: 10px;">
                        <div class="left">
                            <a href="#" style="color: white"><strong>손님의소리(전자민원접수) | </strong></a>
                            <a href="#" style="color: white"><strong> 사고신고 | </strong></a>
                            <a href="#" style="color: white"><strong> 경영공시 | </strong></a>
                            <a href="#" style="color: white"><strong> 영업점 찾기</strong></a>
                        </div>
                        <div class="right">
                            <a href="#" class="socials-small facebook-small" title="Facebook">facebook</a>
                            <a href="#" class="socials-small twitter-small" title="Twitter">twitter</a>
                            <a href="#" class="socials-small skype-small" title="Skype">skype</a>
                            <a href="#" class="socials-small pinterest-small" title="Pinterest">pinterest</a>
                        </div>
                    </div>
                    <div class="inner group" style="height: 30px;">
                        <div class="left">
                            <a href="#" style="color: white"><strong>개인정보처리방침 | </strong></a>
                            <a href="#" style="color: white"><strong>본인정보이용 제공현황 | </strong></a>
                            <a href="#" style="color: white"><strong> 그룹사간 고객정보 제공내역조회 |</strong></a>
                        </div>
                        <div class="right">
                            <select>
                            	<option>하나금융그룹</option>
                            	<option>하나은행</option>
                            	<option>하나금융투자</option>
                            	<option>하나카드</option>
                            	<option>하나생명</option>
                            	<option>하나캐피탈</option>
                            	<option>하나저축은행</option>
                            	<option>하나손해보험</option>
                            	<option>하나금융티아이</option>
                            	<option>하나자산신탁</option>
                            	<option>하나대체투자자산운용</option>
                            	<option>하나펀드서비스</option>
                            	<option>핀크</option>
                            </select>
                            <select>
                            	<option>하나에스크로</option>
                            	<option>퇴직연금</option>
                            	<option>증권대행업무</option>
                            	<option>유가증권수탁업무</option>
                            </select>
                        </div>
                    </div>
                    <div class="inner group" style="height: 100px;">
                        <div class="left">
                            <a href="#" style="color: white; font-size: 15pt;"><img src="images/minilogo.png" /><strong>Hana Solution</strong></a>
                        	<a href="#" style="color: white; margin-left: 50px;">회사소개 | </a>
                        	<a href="#" style="color: white;"> 사회공헌 | </a>
                        	<a href="#" style="color: white;"> 이용약관</a>
                        </div>
                        <div class="right">
                            <a href="#" class="socials-small rss-small" title="Rss">rss</a>
                            <a href="#" class="socials-small flickr-small" title="Flickr">flickr</a>
                            <a href="#" class="socials-small google-small" title="Google">google</a>
                        </div>
                        <br>
                        <br>
                        <div style="clear: both;">
                        	<img alt="call" src="images/call.png" style="margin-left: 160px;"/>
                        	<a href="#" style="color: white;"> 
                        	 대표전화 1588-1111 / 1599-1111 </a>
                        	<br>
                        	<a href="#" style="color: white; margin-left: 196px;"> 
                        	 해외 +82-42-520-2500 </a>
                        </div>
                    </div>
                </div>
                <!-- END COPYRIGHT -->
            </div>
            <!-- END WRAPPER -->
        </div>
        <!-- END BG SHADOW -->
        
        <script type="text/javascript" src="js/jquery.custom.js"></script>
        <script type="text/javascript" src="js/contact.js"></script>
        <script type="text/javascript" src="js/jquery.mobilemenu.js"></script> 
        
    </body>
    <!-- END BODY -->
</html>