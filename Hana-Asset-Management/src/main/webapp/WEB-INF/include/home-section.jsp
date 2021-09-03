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
    	
    	#menuGroup {
    		background-color: #F0FFF0;
    	}
    	
    	#centerMenu:hover {
    		background-color: DarkCyan;
    	}
    	
    	#centerMenu:hover h3{
    		color: white;
    	}
    	
    	#centerMenu:hover p{
    		color: white;
    	}
    	
    	#copyright {
    		background-color: DimGray;
    	}
    </style>
    
    <!-- START BODY -->
    <body class="no_js responsive page-template-home-php stretched">
        
        <!-- START BG SHADOW -->
        <div class="bg-shadow">
            
            <!-- START WRAPPER -->
            <div id="wrapper" class="group">
  
                <!-- START SLIDER -->
				<div id="slider-cycle" class="slider cycle no-responsive slider_cycle group" style="height:485px;">
				    <ul class="slider">
				        <li>
				            <div class="slide-holder" style="background:  url('${ pageContext.request.contextPath }/resources/images/slider-cycle/first.jpg') no-repeat center center" style="height:483px;">
				                <div class="slide-content-holder inner" style="height:483px;">
				                    <div class="slide-content-holder-content" style="position: absolute; top:10px; right:780px;">
				                        <div class="slide-title">
				                            <h2 style="color:gray;">쉽고 재밌는 <br /><span style="margin-left: 110px;">자산관리</span></h2>
				                        </div>
				                        <div class="slide-content" style="color:gray;">
				                            <p style="font-size: 15pt;">Hana에서 간편하게, <br> Solution으로 만족스럽게</p>
				                        </div>
				                    </div>
				                </div>
				            </div>
				        </li>
				        <li>
				            <div class="slide-holder" style="background:  url('${ pageContext.request.contextPath }/resources/images/slider-cycle/yyy.jpg') no-repeat center center" style="height:483px;">
				                <div class="slide-content-holder inner" style="height:483px;">
				                    <div class="slide-content-holder-content" style="position: absolute; top:80px;left:500px;">
				                        <div class="slide-title">
				                            <h2 style="color:#fff;"><strong>목표!!</strong> <br> <span style="margin-left: 80px;">어렵지않아요~</span></h2>
				                        </div>
				                        <div class="slide-content" style="color:#fff">
				                            <p style="font-size: 16pt;"><strong>Hana Solution</strong>에서 목표를 설계하세요!</p>
				                        </div>
				                    </div>
				                </div>
				            </div>
				        </li>
				        <li>
				            <div class="slide-holder" style="background:  url('${ pageContext.request.contextPath }/resources/images/slider-cycle/zzz.jpg') no-repeat center center" style="height:483px;">
				                <div class="slide-content-holder inner" style="height:483px;">
				                </div>
				            </div>
				        </li>
				    </ul>
				    
				    <div id="yit-widget-area" class="group">
				        <div id="menuGroup" class="yit-widget-content inner group">
				            <div id="centerMenu" class="widget-last yit-widget widget col1_4 one-fourth col yit_text_quote" style="width: 16%;">
				                <img class="icon-img" src="${ pageContext.request.contextPath }/resources/images/icons/searched.svg" alt="" />		
				                <h3 id="centerText" style="font-family: 'inherit';">계좌조회</h3>
				                <p id="centerText" style="font-family: 'inherit'; font-size: 10pt;">내 계좌를 확인하세요!</p>
				            </div>
				            <div id="centerMenu" class="widget-last yit-widget widget col1_4 one-fourth col yit_text_quote" style="width: 17%;">
				                <img class="icon-img" src="${ pageContext.request.contextPath }/resources/images/icons/trans.svg" alt="" />		
				                <h3 id="centerText" style="font-family: 'inherit';">계좌이체</h3>
				                <p id="centerText" style="font-family: 'inherit'; font-size: 10pt;">간편계좌이체</p>
				            </div>
				            <div id="centerMenu" class="widget-last yit-widget widget col1_4 one-fourth col yit_text_quote" style="width: 17%;">
				                <img class="icon-img" src="${ pageContext.request.contextPath }/resources/images/icons/event.svg" alt="" />		
				                <h3 id="centerText" style="font-family: 'inherit';">이벤트</h3>
				                <p id="centerText" style="font-family: 'inherit'; font-size: 10pt;">이벤트를 한눈에!</p>
				            </div>
				            <div id="centerMenu" class="widget-last yit-widget widget col1_4 one-fourth col yit_text_quote" style="width: 17%;">
				                <img class="icon-img" src="${ pageContext.request.contextPath }/resources/images/icons/myPage.svg" alt="" />		
				                <h3 id="centerText" style="font-family: 'inherit';">My Page</h3>
				                <p id="centerText" style="font-family: 'inherit'; font-size: 10pt;">나의 포트폴리오</p>
				            </div>
				            <div id="centerMenu" class="widget-last yit-widget widget col1_4 one-fourth col yit_text_quote" style="width: 17%;">
				                <img class="icon-img" src="${ pageContext.request.contextPath }/resources/images/icons/plan.svg" alt="" />		
				                <h3 id="centerText" style="font-family: 'inherit';">자산설계받기</h3>
				                <p id="centerText" style="font-family: 'inherit'; font-size: 10pt;">맞춤설계 받으세요!</p>
				            </div>
				            <div id="centerMenu" class="widget-last yit-widget widget col1_4 one-fourth col yit_text_quote" style="width: 16%;">
				                <img class="icon-img" src="${ pageContext.request.contextPath }/resources/images/icons/customer.svg" alt="" />		
				                <h3 id="centerText" style="font-family: 'inherit';">손님의 소리</h3>
				                <p id="centerText" style="font-family: 'inherit'; font-size: 10pt;">문의하기</p>
				            </div>
				        </div>
				    </div>
				</div>
				<script type="text/javascript">
				    jQuery(document).ready(function($){
				        
				        var     yit_slider_cycle_fx = 'easing',
				                yit_slider_cycle_speed = 800,
				                yit_slider_cycle_timeout = 6000,
				                yit_slider_cycle_directionNav = true,
				                yit_slider_cycle_directionNavHide = true, 
				                yit_slider_cycle_autoplay = true;
				                
				        var yit_widget_area_position = function(){
				            $('#yit-widget-area').css({ top: 33 - $('#yit-widget-area').height() });
				        };
				        $(window).resize(yit_widget_area_position);
				        yit_widget_area_position();
				        
				        if( $.browser.msie && parseInt($.browser.version.substr(0,1),10) <= '8' ) {
				            $('#slider-cycle ul.slider').anythingSlider({
				                 expand              : true,
				                 startStopped        : false,
				                 buildArrows         : yit_slider_cycle_directionNav,
				                 buildNavigation     : false,
				                 buildStartStop      : false,
				                 delay               : yit_slider_cycle_timeout,
				                 animationTime       : yit_slider_cycle_speed,
				                 easing              : yit_slider_cycle_fx,
				                 autoPlay            : yit_slider_cycle_autoplay ? true : false,
				                 pauseOnHover        : true, 
				                 toggleArrows        : false,
				                 resizeContents      : true
				            });
				        } else {
				            $('#slider-cycle ul.slider').anythingSlider({
				                 expand              : true,
				                 startStopped        : false,
				                 buildArrows         : yit_slider_cycle_directionNav,
				                 buildNavigation     : false,
				                 buildStartStop      : false,
				                 delay               : yit_slider_cycle_timeout,
				                 animationTime       : yit_slider_cycle_speed,
				                 easing              : yit_slider_cycle_fx,
				                 autoPlay            : yit_slider_cycle_autoplay ? true : false,
				                 pauseOnHover        : true, 
				                 toggleArrows        : yit_slider_cycle_directionNavHide ? true : false,
				                 onSlideComplete     : function(slider){},
				                 resizeContents      : true,
				                 onSlideBegin        : function(slider) {},
				                 onSlideComplete     : function(slider) {}
				            });
				            
				        }
				    });
				</script>
				<div class="mobile-slider">
				    <div class="slider fixed-image inner"><img src="${ pageContext.request.contextPath }/resources/images/slider-cycle/zzz.jpg" alt="" /></div>
				</div>
				
				<!-- START PRIMARY -->
				<div id="primary" class="sidebar-right">
				    <div class="inner group">
					    <!-- START CONTENT -->
					    <div id="content-home" class="content group">
			            <div class="hentry group">
			                <div class="section portfolio">
					                    
			                    <br>
			                    <br>
			                    <h3 class="title" style="font-family: 'inherit'; font-size: 20pt;">Products</h3>
					                    
		                    <!-- START CONTENT -->
					        <div id="content-page" class="content group">
					            <div class="hentry group">
					                <div class="accordion-container">
					                    <h3 class="accordion-title" style="font-family: 'inherit'; color: #008B8B"><span class="icon-plus-sign"></span>예금</h3>
					                    <div class="accordion-item" style="width:100%; height:120px; border: none;">
					                        <div class="accordion-item-thumb">
					                            <img src="${ pageContext.request.contextPath }/resources/images/avatar/product1.svg" alt="예금" style="width:100px; height:100px; border: none;" />
					                        </div>
					                        <div class="accordion-item-content" style="margin-left: 161px;">
					                            <h4 style="font-family: 'inherit'; color: #008B8B">부자되는 알짜정보</h4>
					                            <p><strong>남보다 더 많이 받는 </strong>이율 상품 찾아보기!</p>
					                            <div class="clear space"></div>
					                            <a href="# " class="socials-small facebook-small" title="Facebook">facebook</a>
					                            <a href="#" class="socials-small rss-small" title="Rss">rss</a>
					                            <a href="#" class="socials-small twitter-small" title="Twitter">twitter</a>
					                            <a href="#" class="socials-small youtube-small" title="Youtube">youtube</a>
					                            <a href="#" class="socials-small flickr-small" title="Flickr">flickr</a>
					                            <a href="#" class="socials-small linkedin-small" title="Linkedin">linkedin</a>
					                        </div>
					                    </div>
					                    <div class="clear"></div>
					                    <h3 class="accordion-title" style="font-family: 'inherit'; color: #008B8B"><span class="icon-plus-sign"></span>적금</h3>
					                    <div class="accordion-item" style="width:100%; height:120px; border: none;">
					                        <div class="accordion-item-thumb">
					                            <img src="${ pageContext.request.contextPath }/resources/images/avatar/pig.svg" alt="적금" style="width:100px; height:100px; border: none;" />
					                        </div>
					                        <div class="accordion-item-content" style="margin-left: 161px;">
					                            <h4 style="font-family: 'inherit'; color: #008B8B">목돈모아 부자되기</h4>
					                            <p>나에게 맞는 <strong>적금 상품 찾아보기!</strong></p>
					                            <div class="clear space"></div>
					                            <a href="# " class="socials-small facebook-small" title="Facebook">facebook</a>
					                            <a href="#" class="socials-small rss-small" title="Rss">rss</a>
					                            <a href="#" class="socials-small twitter-small" title="Twitter">twitter</a>
					                            <a href="#" class="socials-small youtube-small" title="Youtube">youtube</a>
					                            <a href="#" class="socials-small flickr-small" title="Flickr">flickr</a>
					                            <a href="#" class="socials-small linkedin-small" title="Linkedin">linkedin</a>
					                        </div>
					                    </div>
					                    <div class="clear"></div>
					                    <h3 class="accordion-title" style="font-family: 'inherit'; color: #008B8B"><span class="icon-plus-sign"></span>펀드</h3>
					                    <div class="accordion-item" style="width:100%; height:120px; border: none;">
					                        <div class="accordion-item-thumb">
					                            <img src="${ pageContext.request.contextPath }/resources/images/avatar/fund.svg" alt="펀드" style="width:100px; height:100px; border: none;" />
					                        </div>
					                        <div class="accordion-item-content" style="margin-left: 161px;">
					                            <h4 style="font-family: 'inherit'; color: #008B8B">한눈에 보는 펀드 랭킹</h4>
					                            <p><strong>수익률 좋은 </strong>펀드<strong>인기 좋은 </strong>펀드</p>
					                            <div class="clear space"></div>
					                            <a href="# " class="socials-small facebook-small" title="Facebook">facebook</a>
					                            <a href="#" class="socials-small rss-small" title="Rss">rss</a>
					                            <a href="#" class="socials-small twitter-small" title="Twitter">twitter</a>
					                            <a href="#" class="socials-small youtube-small" title="Youtube">youtube</a>
					                            <a href="#" class="socials-small flickr-small" title="Flickr">flickr</a>
					                            <a href="#" class="socials-small linkedin-small" title="Linkedin">linkedin</a>
					                        </div>
					                    </div>
					                    <div class="clear"></div>
					                    <h3 class="accordion-title" style="font-family: 'inherit'; color: #008B8B"><span class="icon-plus-sign"></span>방카슈랑스</h3>
					                    <div class="accordion-item" style="width:100%; height:120px; border: none;">
					                        <div class="accordion-item-thumb">
					                            <img src="${ pageContext.request.contextPath }/resources/images/avatar/insurance.svg" alt="펀드" style="width:100px; height:100px; border: none;" />
					                        </div>
					                        <div class="accordion-item-content" style="margin-left: 161px;">
					                            <h4 style="font-family: 'inherit'; color: #008B8B">다양한 보험 상품을 한번에</h4>
					                            <p><strong>나에게 적합한 </strong>보험 찾기!</p>
					                            <div class="clear space"></div>
					                            <a href="# " class="socials-small facebook-small" title="Facebook">facebook</a>
					                            <a href="#" class="socials-small rss-small" title="Rss">rss</a>
					                            <a href="#" class="socials-small twitter-small" title="Twitter">twitter</a>
					                            <a href="#" class="socials-small youtube-small" title="Youtube">youtube</a>
					                            <a href="#" class="socials-small flickr-small" title="Flickr">flickr</a>
					                            <a href="#" class="socials-small linkedin-small" title="Linkedin">linkedin</a>
					                        </div>
					                    </div>
					                    <div class="clear"></div>
					                    <h3 class="accordion-title" style="font-family: 'inherit'; color: #008B8B"><span class="icon-plus-sign"></span>연금</h3>
					                    <div class="accordion-item" style="width:100%; height:120px; border: none;">
					                        <div class="accordion-item-thumb">
					                            <img src="${ pageContext.request.contextPath }/resources/images/avatar/pension.svg" alt="연금" style="width:100px; height:100px; border: none;" />
					                        </div>
					                        <div class="accordion-item-content" style="margin-left: 161px;">
					                            <h4 style="font-family: 'inherit'; color: #008B8B">20대부터 시작하는 연금관리</h4>
					                            <p><strong>연령별, 목표에 맞는 </strong>연금 설계!</p>
					                            <div class="clear space"></div>
					                            <a href="# " class="socials-small facebook-small" title="Facebook">facebook</a>
					                            <a href="#" class="socials-small rss-small" title="Rss">rss</a>
					                            <a href="#" class="socials-small twitter-small" title="Twitter">twitter</a>
					                            <a href="#" class="socials-small youtube-small" title="Youtube">youtube</a>
					                            <a href="#" class="socials-small flickr-small" title="Flickr">flickr</a>
					                            <a href="#" class="socials-small linkedin-small" title="Linkedin">linkedin</a>
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
				                    
				                    <div class="clear"></div>
				                    
				                    
				                </div>
				                <div class="clear"></div>
				            </div>
				            <!-- START COMMENTS -->
				            <div id="comments">
				            </div>
				            <!-- END COMMENTS -->
				        </div>
				        <!-- END CONTENT -->
				        <!-- START SIDEBAR -->
				        <div class="sidebar group">
				            <br>
				          	<br>
				            <div class="widget-first widget recent-posts">
				                <h3 style="font-family: 'inherit'; font-size: 16pt;">새소식</h3>
				                <div class="recent-post group">
				                    <div class="hentry-post group">
				                        <div class="thumb-img"><img src="${ pageContext.request.contextPath }/resources/images/favicon.png" alt="공지1" style="border: none;" /></div>
				                        <div class="text">
				                            <a href="article.jsp" class="title" style="font-size: 11pt; color: #008B8B;">Hana Solution 서비스 시작!</a>
				                            <p class="post-date">October 1, 2021</p>
				                        </div>
				                    </div>
				                    <div class="hentry-post group">
				                        <div class="thumb-img"><img src="${ pageContext.request.contextPath }/resources/images/news2.png" alt="공지2" style="border: none;" /></div>
				                        <div class="text">
				                            <a href="article.jsp" class="title" style="font-size: 11pt; color: #008B8B;">하나은행 '고객 자금관리' 서비스 제공</a>
				                            <p class="post-date">October 2, 2021</p>
				                        </div>
				                    </div>
				                    <div class="hentry-post group">
				                        <div class="thumb-img"><img src="${ pageContext.request.contextPath }/resources/images/news3.png" alt="공지2" style="border: none;" /></div>
				                        <div class="text">
				                            <a href="article.jsp" class="title" style="font-size: 11pt; color: #008B8B;">하나금융 4개社 '마이데이터 심사' 재개</a>
				                            <p class="post-date">October 2, 2021</p>
				                        </div>
				                    </div>
				                </div>
				            </div>
				            
				            <div class="widget-last widget text-image">
				                <h3 class="title" style="font-family: 'inherit'; font-size: 16pt;">고객지원</h3>
				                <div class="text-image" style="text-align:left"><img src="${ pageContext.request.contextPath }/resources/images/callcenter.jpg" alt="Customer support" /></div>
				                <p style="font-family: 'inherit'; font-size: 12pt;">고객센터 1588-1111 / 1599-1111 <br>해외  +82-42-520-2500 </p>
				            </div>
				            
				        </div>
				        <!-- END SIDEBAR -->
				        <!-- START EXTRA CONTENT -->
				        <!-- END EXTRA CONTENT -->
				    </div>
				</div>
				<!-- END PRIMARY -->
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