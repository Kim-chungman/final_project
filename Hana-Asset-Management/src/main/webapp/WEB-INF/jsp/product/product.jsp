<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
        <meta charset="UTF-8" />
        <!-- this line will appear only if the website is visited with an iPad -->
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.2, user-scalable=yes" />
        
        <title>Hana Solution - 상품추천</title>
        
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
        
        <!-- modal -->
        <script src="https://code.jquery.com/jquery-latest.js"></script>
        
        <script type="text/javascript">
		
        var modal = {
 		  open : function(){
 		    $('#myModal').show();
 		  },
 		  close : function(){
 		    $('#myModal').hide();    
 		  }
 		};
        
 		$(document).on('click', '.modal-content', function(){
 		  window.history.back();   
 		}).on('click', '#joinBtn', function(){
 		  window.history.pushState({}, 'modal', '/modal');
 		  modal.open();
 		});

 		window.onpopstate = history.onpushstate = function(e) {
 		    if(window.location.href.split('/').pop().indexOf('modal')===-1){ // 마지막 segment가 cards라면 모달이 아닌 리스트인 상태이어야한다.
 		    	modal.close(); // 현재의 모달을 닫는다.
 		    }
 		}

		</script>

		<style type="text/css">
			.modal {
	            display: none;
	            position: fixed;
	            z-index: 1;
	            left: 0;
	            top: 0;
	            width: 100%;
	            height: 100%;
	            overflow: auto;
	            background-color: rgb(0,0,0);
	            background-color: rgba(0,0,0,0.4);
	        }
	    
	        /* Modal Content/Box */
	        .modal-content {
	            background-color: #fefefe;
	            margin: 15% auto;
	            padding: 20px;
	            border: 1px solid #888;
	            width: 30%;                         
	        }
		</style>

</head>
<body>
	<header>
		<jsp:include page="/WEB-INF/include/header.jsp" />
	</header>
	<section>
		<!-- START SLIDER -->
           <div id="slider-layer-slider" class="slider layer-slider no-responsive">
               <div class="shadowWrapper">
                   <div id="layerslider_1" style="margin: 0px auto; width: 100%; height: 437px; ">
                       <div class="ls-layer" style="background-image: url('${ pageContext.request.contextPath }/resources/images/slider-layer/bg.jpg');slidedirection: right; slidedelay: 4000; durationin: 1000; durationout: 1500; easingin: easeInOutQuint; easingout: easeInOutQuint; delayin: 0; delayout: 0;">
                           <div class="inner ls-s3" style="position:absolute; left:50%; slidedirection : top; slideoutdirection : right; parallaxin : .45; parallaxout : .45; durationin : 600; durationout : 1500; easingin : easeOutExpo; easingout : easeInOutQuint; delayin : 2000; delayout : 0;"><img src="${ pageContext.request.contextPath }/resources/images/slider-layer/layer1.png" alt="sublayer" style="position: absolute; top: 50px; right: 30px; ; " /></div>
                           <div class="inner ls-s3" style="position:absolute; left:50%; slidedirection : right; slideoutdirection : right; parallaxin : .45; parallaxout : .45; durationin : 600; durationout : 1500; easingin : easeOutExpo; easingout : easeInOutQuint; delayin : 2600; delayout : 0;"><img src="${ pageContext.request.contextPath }/resources/images/slider-layer/layer2.png" alt="sublayer" style="position: absolute; top: 191px; right: 340px; ; " /></div>
                           <div class="inner ls-s3" style="position:absolute; left:50%; slidedirection : top; slideoutdirection : right; parallaxin : .45; parallaxout : .45; durationin : 1000; durationout : 1500; easingin : easeOutBounce; easingout : easeInOutQuint; delayin : 3200; delayout : 0;"><img src="${ pageContext.request.contextPath }/resources/images/slider-layer/layer3.jpg" alt="sublayer" style="position: absolute; top: 184px; right: 290px; ; " /></div>
                           <div class="inner ls-s8" style="position:absolute; left:50%; slidedirection : left; slideoutdirection : left; parallaxin : .45; parallaxout : .45; durationin : 1500; durationout : 1500; easingin : easeOutQuint; easingout : easeInOutQuint; delayin : 1100; delayout : 0;">
                               <div style="position: absolute; top:297px; left: 30px;"> <a href="${ pageContext.request.contextPath }/product/deposit" class="btn btn-xlarge  btn-mfast-3">상품보기</a> </div>
                           </div>
                           <div class="inner ls-s6" style="position:absolute; left:50%; slidedirection : left; slideoutdirection : left; parallaxin : .45; parallaxout : .45; durationin : 1500; durationout : 1500; easingin : easeOutQuint; easingout : easeInOutQuint; delayin : 900; delayout : 0;">
                               <div style="position: absolute; top:186px; left: 30px;">
                                   <p style="width:340px; font-size: 18px; color: #DimGray; font-family: inherit;">간편하고 쉽게 가입하실수 있습니다!!</p>
                               </div>
                           </div>
                           <div class="inner ls-s4" style="position:absolute; left:50%; slidedirection : left; slideoutdirection : left; parallaxin : .45; parallaxout : .45; durationin : 1500; durationout : 1500; easingin : easeOutQuint; easingout : easeInOutQuint; delayin : 700; delayout : 0;">
                               <h3 style="position: absolute; top:130px; left: 30px;  font-size: 23px; color: #c97e08; font-family:inherit;"> 예금, 적금, 펀드, 연금 다양한 상품들을 </h3>
                           </div>
                           <div class="inner ls-s1" style="position:absolute; left:50%; slidedirection : left; slideoutdirection : left; parallaxin : .45; parallaxout : .45; durationin : 1500; durationout : 1500; easingin : easeOutQuint; easingout : easeInOutQuint; delayin : 500; delayout : 0;">
                               <h2 style="position: absolute; top:94px; left: 30px;  font-size: 30px; color: #008B8B; font-family: inherit;"> 웹에서도, 태블릿에서도, 모바일에서도 </h2>
                           </div>
                       </div>
                       <div class="ls-layer" style="background-image: url('${ pageContext.request.contextPath }/resources/images/slider-layer/bg1.jpg');slidedirection: right; slidedelay: 4000; durationin: 1500; durationout: 1500; easingin: easeInOutQuint; easingout: easeInOutQuint; delayin: 0; delayout: 0;">
                           <div class="inner ls-s2" style="position:absolute; left:50%; slidedirection : right;  parallaxin : .45; parallaxout : .45; durationin : 5000; durationout : 1500; easingin : easeOutQuint; easingout : easeInOutQuint; delayin : 0; delayout : 0;"><img src="${ pageContext.request.contextPath }/resources/images/slider-layer/layer4.png" alt="sublayer" style="position: absolute; top: 0px; left: -150px;" /></div>
                           <div class="inner ls-s2" style="position:absolute; left:50%; slidedirection : right; slideoutdirection : right; parallaxin : .45; parallaxout : .45; durationin : 1500; durationout : 1500; easingin : easeOutQuint; easingout : easeInOutQuint; delayin : 3000; delayout : 0;"><img src="${ pageContext.request.contextPath }/resources/images/slider-layer/layer5.png" alt="sublayer" style="position: absolute; top: 7px;  " /></div>
                           <div class="inner ls-s2" style="position:absolute; left:50%; slidedirection : top; slideoutdirection : left; parallaxin : .45; parallaxout : .45; durationin : 1500; durationout : 1500; easingin : easeInOutQuint; easingout : easeInOutQuint; delayin : 2200; delayout : 0;"><img src="${ pageContext.request.contextPath }/resources/images/slider-layer/layer7.png" alt="sublayer" style="position: absolute; top: 0px; left: -150px; " /></div>
                           <div class="inner ls-s2" style="position:absolute; left:50%; slidedirection : bottom; slideoutdirection : left; parallaxin : .45; parallaxout : .45; durationin : 1500; durationout : 1500; easingin : easeInOutQuint; easingout : easeInOutQuint; delayin : 1800; delayout : 0;"><img src="${ pageContext.request.contextPath }/resources/images/slider-layer/layer8.png" alt="sublayer" style="position: absolute; top: 0px; left: -150px; " /></div>
                           <div class="inner ls-s2" style="position:absolute; left:50%; slidedirection : top; slideoutdirection : left; parallaxin : .45; parallaxout : .45; durationin : 1500; durationout : 1500; easingin : easeInOutQuint; easingout : easeInOutQuint; delayin : 1400; delayout : 0;"><img src="${ pageContext.request.contextPath }/resources/images/slider-layer/layer9.png" alt="sublayer" style="position: absolute; top: 0px; left: -150px; " /></div>
                           <div class="inner ls-s2" style="position:absolute; left:50%; slidedirection : bottom; slideoutdirection : left; parallaxin : .45; parallaxout : .45; durationin : 1500; durationout : 1500; easingin : easeInOutQuint; easingout : easeInOutQuint; delayin : 1000; delayout : 0;"><img src="${ pageContext.request.contextPath }/resources/images/slider-layer/layer10.png" alt="sublayer" style="position: absolute; top: 0px; left: -150px; " /></div>
                           <div class="inner ls-s2" style="position:absolute; left:50%; slidedirection : top;  parallaxin : .45; parallaxout : .45; durationin : 1200; durationout : 1500; easingin : easeOutBounce; easingout : easeInOutQuint; delayin : 500; delayout : 0;"><img src="${ pageContext.request.contextPath }/resources/images/slider-layer/layer6.png" alt="sublayer" style="position: absolute; top: 0px; left: -80px; " /></div>
                           <div class="inner ls-s2" style="position:absolute; left:50%; slidedirection : bottom; slideoutdirection : left; parallaxin : .45; parallaxout : .45; durationin : 1500; durationout : 1500; easingin : easeInOutQuint; easingout : easeInOutQuint; delayin : 2600; delayout : 0;">
                               <div style="position: absolute; top:324.00001525878906px; left: 108px;  ">
                                   <p style="width:340px; padding-right:470px; font-size: 20px; margin-left: 200px;">더 많은 상품이 궁금하세요?<br> <a href="${ pageContext.request.contextPath }/product/deposit" style="color:#c97509; font-size: 23px;">지금 클릭해보세요!</a></p>
                               </div>
                           </div>
                       </div>
                       <div class="ls-layer" style="background-image: url('${ pageContext.request.contextPath }/resources/images/slider-layer/bg.png');slidedirection: right; slidedelay: 4000; durationin: 1500; durationout: 1500; easingin: easeInOutQuint; easingout: easeInOutQuint; delayin: 0; delayout: 0;">
                           <div class="inner ls-s2" style="position:absolute; left:50%; slidedirection : left; slideoutdirection : left; parallaxin : .45; parallaxout : .45; durationin : 1600; durationout : 1500; easingin : easeInOutQuint; easingout : easeInOutQuint; delayin : 200; delayout : 0;"><img src="${ pageContext.request.contextPath }/resources/images/slider-layer/layer11.png" alt="sublayer" style="position: absolute; top: 0px; left: -449px; " /></div>
                           <div class="inner ls-s3" style="position:absolute; left:50%; slidedirection : top; slideoutdirection : right; parallaxin : .45; parallaxout : .45; durationin : 1000; durationout : 1500; easingin : easeOutExpo; easingout : easeInOutQuint; delayin : 1400; delayout : 0;">
                               <div style="position: absolute; top:90px; left: 573px;  font-size: 30px; color: #2e2d2d; font-family: inherit;"> 예적금 뿐만아니라 투자상품까지 </div>
                           </div>
                           <div class="inner ls-s4" style="position:absolute; left:50%; slidedirection : right; slideoutdirection : right; parallaxin : .45; parallaxout : .45; durationin : 1000; durationout : 1500; easingin : easeOutExpo; easingout : easeInOutQuint; delayin : 2000; delayout : 0;">
                               <div style="position: absolute; top:120px; left: 573px; margin-top:10px; font-size: 30px; color: #c97e08; font-family: inherit;"> 가족, 친구, 지인과 공유하세요 </div>
                           </div>
                           <div class="inner ls-s5" style="position:absolute; left:50%; slidedirection : fade; slideoutdirection : right; parallaxin : .45; parallaxout : .45; durationin : 1500; durationout : 1500; easingin : easeOutExpo; easingout : easeInOutQuint; delayin : 3000; delayout : 0;">
                               <div style="position: absolute; top:170px; left: 573px;  font-size: 13px; color: #4f4f4e; font-family: inherit; line-height:20px;">
                                   <p style="width:340px; font-family: inherit; font-size: 12pt;">맞춤형 Solution까지 제공해주는 Hana Solution</p>
                               </div>
                           </div>
                           <div class="inner ls-s6" style="position:absolute; left:50%; slidedirection : bottom; slideoutdirection : right; parallaxin : .45; parallaxout : .45; durationin : 2000; durationout : 1500; easingin : easeOutQuint; easingout : easeInOutQuint; delayin : 2800; delayout : 0;">
                               <div style="position: absolute; top:265px; left: 573px;  ">
                                   <p><a href="${ pageContext.request.contextPath }/product/deposit" class="btn btn-xlarge  btn-mfast-3" style="color: #008B8B; font-family: inherit;">상품보기</a></p>
                               </div>
                           </div>
                           <div class="inner ls-s2" style="position:absolute; left:50%; slidedirection : left; slideoutdirection : left; parallaxin : .45; parallaxout : .45; durationin : 1600; durationout : 1500; easingin : easeInOutQuint; easingout : easeInOutQuint; delayin : 200; delayout : 0;">
                               <div style="position: absolute; top:55px; left: 36px;  ">
                                   <div style="width:472px; position:absolute;"><iframe src="http://player.vimeo.com/video/45052672?title=0&amp;byline=0&amp;portrait=0" width="472" height="317"></iframe></div>
                               </div>
                           </div>
                       </div>
                   </div>
                   <script type="text/javascript" src="${ pageContext.request.contextPath }/resources/js/slider-layer.js"></script>
                   <div class="shadow-left"></div>
                   <div class="shadow-right"></div>
               </div>
           </div>
           <!-- END SLIDER -->
           
           <h2 style="width: 60%;  margin: auto; color: #008B8B; font-family: inherit;">상품 한눈에 보기</h2><br>
               <div class="tabs-container" style="width:60%; margin: auto;">
                   <ul class="tabs">
                       <li>
                           <h4><a href="#tab1" title="예금" style="color: #008B8B; font-family: inherit; width: 13%;">정기예금</a></h4>
                       </li>
                       <li>
                           <h4><a href="#tab2" title="적금" style="color: #008B8B; font-family: inherit; width: 13%;">적금</a></h4>
                       </li>
                       <li>
                           <h4><a href="#tab3" title="펀드" style="color: #008B8B; font-family: inherit; width: 13%;">수시입출금</a></h4>
                       </li>
                       <li>
                           <h4><a href="#tab4" title="연금" style="color: #008B8B; font-family: inherit; width: 13%;">연금</a></h4>
                       </li>
                       <li>
                           <h4><a href="#tab4" title="방카슈랑스" style="color: #008B8B; font-family: inherit; width: 17.55%;">방카슈랑스</a></h4>
                       </li>
                   </ul>
                   <div class="border-box group">
                       <div id="tab1" class="panel group">
                         <div style="width: 100%;">
                         	<table style="width: 100%;">
                         		<tr>
                         			<th colspan="2" style="font-family: inherit; font-size: 12pt; width: 15%;">상품명</th>
                         			<th style="font-family: inherit; font-size: 12pt; width: 75%;">상품설명</th>
                         			<th style="font-family: inherit; font-size: 12pt; width: 10%;">이율(최대 연)</th>
                         		</tr>
                         	</table>
                         	<c:forEach items="${ deposit }" var="deposit" varStatus="Loop">
                         		<div style="height: 120px; background-color: white; margin-bottom: 10px;">
                         			<hr style="border-color: #E6E6FA;">
                         			<p style="font-family: inherit; font-size: 11pt; text-align: left;">
	                         			<input type="checkbox" style="float: left; margin-top: 7px; margin-left: 20px; width: 15px; height: 15px;">
	                         			<span style="color: white; font-family: inherit; background-color: #008B8B; padding: 2px; float: left;">${ deposit.type }</span><br>
	                         			<span style="color: red; font-family: inherit; margin-right: 15px; font-size:16pt; float: right;">${ deposit.rate }</span><br>
	                         			<span style="clear: both; color: #008B8B; margin-left: 35px; font-size: 15pt;">${ deposit.name }</span><br>
	                         			<span style="margin-left: 35px; font-size: 12pt;">${ deposit.desc }</span>
	                         			<button id="joinBtn" style="width: 100px; line-height: 30px; border-radius: 80px; color: white; background-color: #008B8B; border: none; font-size: 12pt; float: right;">가입하기</button>
                         			</p>
                         		</div>
                         	</c:forEach>
                         </div>
                       </div>
                       <div id="tab2" class="panel group">
                           <div style="width: 100%;">
                         	<table style="width: 100%;">
                         		<tr>
                         			<th colspan="2" style="font-family: inherit; font-size: 12pt; width: 15%;">상품명</th>
                         			<th style="font-family: inherit; font-size: 12pt; width: 75%;">상품설명</th>
                         			<th style="font-family: inherit; font-size: 12pt; width: 10%;">이율(최대 연)</th>
                         		</tr>
                         	</table>
                         	<c:forEach items="${ saving }" var="deposit" varStatus="Loop">
                         		<div style="height: 120px; background-color: white; margin-bottom: 10px;">
                         			<hr style="border-color: #E6E6FA;">
                         			<p style="font-family: inherit; font-size: 11pt; text-align: left;">
	                         			<input type="checkbox" style="float: left; margin-top: 7px; margin-left: 20px; width: 15px; height: 15px;">
	                         			<span style="color: white; font-family: inherit; background-color: #008B8B; padding: 2px; float: left;">${ deposit.type }</span><br>
	                         			<span style="color: red; font-family: inherit; margin-right: 15px; font-size:16pt; float: right;">${ deposit.rate }</span><br>
	                         			<span style="clear: both; color: #008B8B; margin-left: 35px; font-size: 15pt;">${ deposit.name }</span><br>
	                         			<span style="margin-left: 35px; font-size: 12pt;">${ deposit.desc }</span><br>
	                         			<button id="savingJoinBtn" style="width: 100px; line-height: 30px; border-radius: 80px; color: white; background-color: #008B8B; border: none; font-size: 12pt; float: right;">가입하기</button>
                         			</p>
                         		</div>
                         		<br>
                         	</c:forEach>
                         </div>
                       </div>
                       <div id="tab3" class="panel group">
                           <div style="width: 100%;">
                         	<table style="width: 100%;">
                         		<tr>
                         			<th colspan="2" style="font-family: inherit; font-size: 12pt; width: 15%;">상품명</th>
                         			<th style="font-family: inherit; font-size: 12pt; width: 75%;">상품설명</th>
                         			<th style="font-family: inherit; font-size: 12pt; width: 10%;">이율(최대 연)</th>
                         		</tr>
                         	</table>
                         	<c:forEach items="${ account }" var="deposit" varStatus="Loop">
                         		<div style="height: 120px; background-color: white; margin-bottom: 10px;">
                         			<hr style="border-color: #E6E6FA;">
                         			<p style="font-family: inherit; font-size: 11pt; text-align: left;">
	                         			<input type="checkbox" style="float: left; margin-top: 7px; margin-left: 20px; width: 15px; height: 15px;">
	                         			<span style="color: white; font-family: inherit; background-color: #008B8B; padding: 2px; float: left;">${ deposit.type }</span><br>
	                         			<span style="color: #008B8B; font-family: inherit; margin-right: 15px; font-size:16pt; float: right;">${ deposit.rate }</span><br>
	                         			<span style="clear: both; color: #008B8B; margin-left: 35px; font-size: 13pt;">${ deposit.name }</span><br>
	                         			<span style="margin-left: 35px;">${ deposit.desc }</span>
	                         			<button style="width: 100px; line-height: 30px; border-radius: 80px; color: white; background-color: #008B8B; border: none; font-size: 12pt; float: right;">가입하기</button>
                         			</p>
                         		</div>
                         	</c:forEach>
                         </div>
                       </div>
                       <div id="tab4" class="panel group">
                           <div style="width: 100%;">
                         	<table style="width: 100%;">
                         		<tr>
                         			<th colspan="2" style="font-family: inherit; font-size: 12pt; width: 15%;">상품명</th>
                         			<th style="font-family: inherit; font-size: 12pt; width: 75%;">상품설명</th>
                         			<th style="font-family: inherit; font-size: 12pt; width: 10%;">이율(최대 연)</th>
                         		</tr>
                         	</table>
                         	<c:forEach items="${ deposit }" var="deposit" varStatus="Loop">
                         		<div style="height: 120px; background-color: white; margin-bottom: 10px;">
                         			<hr style="border-color: #E6E6FA;">
                         			<p style="font-family: inherit; font-size: 11pt; text-align: left;">
	                         			<input type="checkbox" style="float: left; margin-top: 7px; margin-left: 20px; width: 15px; height: 15px;">
	                         			<span style="color: white; font-family: inherit; background-color: #008B8B; padding: 2px; float: left;">${ deposit.type }</span><br>
	                         			<span style="color: #008B8B; font-family: inherit; margin-right: 15px; font-size:16pt; float: right;">${ deposit.rate }</span><br>
	                         			<span style="clear: both; color: #008B8B; margin-left: 35px; font-size: 13pt;">${ deposit.name }</span><br>
	                         			<span style="margin-left: 35px;">${ deposit.desc }</span>
	                         			<button id="joinBtn" style="width: 100px; line-height: 30px; border-radius: 80px; color: white; background-color: #008B8B; border: none; font-size: 12pt; float: right;">가입하기</button>
                         			</p>
                         		</div>
                         	</c:forEach>
                         </div>
                       </div>
                       <div id="tab5" class="panel group">
                           <div style="width: 100%;">
                         	<table style="width: 100%;">
                         		<tr>
                         			<th colspan="2" style="font-family: inherit; font-size: 12pt; width: 15%;">상품명</th>
                         			<th style="font-family: inherit; font-size: 12pt; width: 75%;">상품설명</th>
                         			<th style="font-family: inherit; font-size: 12pt; width: 10%;">이율(최대 연)</th>
                         		</tr>
                         	</table>
                         	<c:forEach items="${ deposit }" var="deposit" varStatus="Loop">
                         		<div style="height: 120px; background-color: white; margin-bottom: 10px;">
                         			<hr style="border-color: #E6E6FA;">
                         			<p style="font-family: inherit; font-size: 11pt; text-align: left;">
	                         			<input type="checkbox" style="float: left; margin-top: 7px; margin-left: 20px; width: 15px; height: 15px;">
	                         			<span style="color: white; font-family: inherit; background-color: #008B8B; padding: 2px; float: left;">${ deposit.type }</span><br>
	                         			<span style="color: #008B8B; font-family: inherit; margin-right: 15px; font-size:16pt; float: right;">${ deposit.rate }</span><br>
	                         			<span style="clear: both; color: #008B8B; margin-left: 35px; font-size: 13pt;">${ deposit.name }</span><br>
	                         			<span style="margin-left: 35px;">${ deposit.desc }</span>
	                         			<button id="joinBtn" style="width: 100px; line-height: 30px; border-radius: 80px; color: white; background-color: #008B8B; border: none; font-size: 12pt; float: right;">가입하기</button>
                         			</p>
                         		</div>
                         	</c:forEach>
                         </div>
                       </div>
                   </div>
               </div>
          <!-- The Modal -->
		    <div id="myModal" class="modal">
		 
		      <!-- Modal content -->
		      <div class="modal-content" style="border-color: #008B8B; border-width: 3px; width: 700px;">
	                <p style="text-align: center;"><span style="font-size: 14pt;"><b><span style="font-size: 15pt; color: #008B8B;">상품상세설명</span></b></span></p>
	                <hr style="border-color: #008B8B; border-width: 1px;">
	                <p style="text-align: left; font-size: 20pt;">영하나플러스통장</p>
	                <p style="text-align: left; font-size: 13pt;">젊은 그대, 당신을 위한 Must Have 통장</p>
		            <br><br>
		            <table style="width: 97%;">
		            	<tr style="background-color: white; border: none;">
		            		<th style="vertical-align: top;">상품특징</th>
		            		<td>다양한 수수료 우대서비스를 제공하는 YOUTH고객 전용통장</td>
		            	</tr>
		            	<tr style="background-color: white; border: none;">
		            		<th style="vertical-align: top;">가입대상</th>
		            		<td>만 30세 이하 실명의 개인 및 개인사업자 (1인 1계좌)</td>
		            	</tr>
		            	<tr style="background-color: white; border: none;">
		            		<th style="vertical-align: top;">예금종류</th>
		            		<td>저축예금</td>
		            	</tr>
		            	<tr style="background-color: white; border: none;">
		            		<th style="vertical-align: top;">전환여부</th>
		            		<td>
		            			① 저축예금에 한하여 동 상품으로 전환가능<br>
		            			(단, 기존 수수료면제통장에서 전환 시 수수료면제횟수는 해당월은 기존 상품의 잔여횟수를 적용하고,<br>
		            			다음달부터는 동 상품의 실적에 따라 수수료면제혜택 제공)<br>
		            			② 상품가입(전환) 후, 만 35세가 되는 시점의 익월 첫 영업일에 [주거래하나통장]으로 자동 전환됨.<br>
		            			(단, [주거래하나통장]을 보유하고 있는 경우에는 [저축예금]으로 자동전환 됨. 전환이후에는 전환된 상품의<br>
		            			우대서비스 및 혜택만 제공)
		            		</td>
		            	</tr>
		            	<tr style="background-color: white; border: none;">
		            		<th style="vertical-align: top;">금리</th>
		            		<td>
		            			<strong>영하나플러스 통장</strong><strong style="padding-left: 350px;">기준일자: 2021-09-08</strong><br>
		            			<table style="border-left: none; border-right: none; width: 95%;">
		            				<tr>
		            					<th><strong>분류</strong></th>
		            					<th><strong>금리(연율,세전)</strong></th>
		            				</tr>
		            				<tr style="background-color: white;">
		            					<td style="text-align: center; font-size: 10pt;">-</td>
		            					<td style="text-align: center; font-size: 10pt;">0.1%</td>
		            				</tr>
		            			</table>
		            		</td>
		            	</tr>
		            	<tr style="background-color: white; border: none;">
		            		<th style="vertical-align: top;">수수료 우대</th>
		            		<td>
		            			아래의 서비스 제공 조건 중 1가지 이상을 해당월에 충족한 경우, 충족월 다음달(익월 1일부터 말일까지)에 수수료<br>
		            			우대서비스를 제공<br><br>
		            			<strong>서비스 제공 조건</strong><br>
		            			① 본인명의 하나카드(신용/체크)의 대금을 이 통장에서 결제 시<br>
		            			② 타인으로부터 월 건당 10만원 이상 입금 시<br><br>
		            			<strong>수수료 우대</strong><br>
		            			① 당행 자동화기기를 통한 현금인출 수수료 무제한 면제<br>
		            			② 당행 자동화기기를 통한 타행이체 수수료 무제한 면제<br>
		            			③ 인터넷뱅킹, 스마트폰뱅킹, 폰뱅킹(ARS)을 통한 타행 이체 수수료 무제한 면제<br>
		            			④ 납부자자동이체 수수료 무제한 면제<br>
		            			⑤ 타행 자동화기기를 통한 현금 인출 수수료 월5회 면제<br><br>
		            			※ 이 통장을 신규 후 다음달 말일까지는 제공조건 충족여부와 관계없이 수수료 우대서비스 제공<br>
		            			※ 이 통장을 통한 거래에서 발생하는 수수료에 한하여 제공됨
		            		</td>
		            	</tr>
		            	<tr style="background-color: white; border: none;">
		            		<th style="vertical-align: top;">세제혜택</th>
		            		<td>비과세종합저축 가능 (전 금융기관 통합한도 범위 내)</td>
		            	</tr>
		            	<tr style="background-color: white; border: none;">
		            		<th style="vertical-align: top;">유의사항</th>
		            		<td>
		            			· 수수료 우대서비스는 이 통장에 의한 거래에만 적용되며, 매월 요건 충족여부를 확인하여 다음월에 수수료<br>
		            			　우대서비스를 제공합니다.<br>
		            			· 우대서비스 내용은 은행의 사정에 의해 변경될 수 있습니다. 동 내용 변경 시 변경사유, 변경내용 등 내용을<br>
		            			　영업점 및 당행 인터넷 홈페이지에 1개월간 게시합니다.<br><br>
		            		</td>
		            	</tr>
		            	<tr style="background-color: white; border: none;">
		            		<th style="vertical-align: top; width: 15%;">예금자 보호</th>
		            		<td>
		            			<img style="position:relative; float: left;" alt="보호인증마크" src="${ pageContext.request.contextPath }/resources/images/account/productMark.png">
		            			<span style="position:relative; float: left; width: 80%;">이 예금은 예금자보호법에 따라 예금보험공사가 보호하되, 보호한도는 본 은행에 있는 귀하의 모든 예금보호대상 금융상품의 원금과 소정의 이자를 합하여 1인당 “최고 5천만원”이며, 5천만원을 초과하는 나머지 금액은 보호하지 않습니다.</span>
		            		</td>
		            	</tr>
		            </table>
		            <br>
		            <div style="background-color:white;text-align: center;padding-bottom: 10px;padding-top: 10px; width: 200px; margin-left: 500px;">
		            	<a href="${ pageContext.request.contextPath }/account/join">
		            		<button style="font-size: 13pt; border: none; width: 100px; background-color: #008B8B; line-height: 25px; border-radius: 80px; color: white;">
		            			가입하기
		            		</button>
		            	</a>
		            	<span class="pop_bt" style="font-size: 13pt; border-color: #008B8B; background-color: white; line-height: 25px; color: red; float: right;" onClick="close_pop();">
		                     닫기
		                </span> 
		            </div>
		                      
		      </div>
		    </div>
	        <!--End Modal-->
	</section>
	<footer>
		<jsp:include page="/WEB-INF/include/footer.jsp" />
	</footer>
</body>
</html>