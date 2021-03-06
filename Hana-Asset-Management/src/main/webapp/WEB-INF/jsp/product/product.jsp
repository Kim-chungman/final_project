<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
        <meta charset="UTF-8" />
        <!-- this line will appear only if the website is visited with an iPad -->
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.2, user-scalable=yes" />
        
        <title>Hana Solution - μνμΆμ²</title>
        
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
 		    if(window.location.href.split('/').pop().indexOf('modal')===-1){ // λ§μ§λ§ segmentκ° cardsλΌλ©΄ λͺ¨λ¬μ΄ μλ λ¦¬μ€νΈμΈ μνμ΄μ΄μΌνλ€.
 		    	modal.close(); // νμ¬μ λͺ¨λ¬μ λ«λλ€.
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
                               <div style="position: absolute; top:297px; left: 30px;"> <a href="${ pageContext.request.contextPath }/product/deposit" class="btn btn-xlarge  btn-mfast-3">μνλ³΄κΈ°</a> </div>
                           </div>
                           <div class="inner ls-s6" style="position:absolute; left:50%; slidedirection : left; slideoutdirection : left; parallaxin : .45; parallaxout : .45; durationin : 1500; durationout : 1500; easingin : easeOutQuint; easingout : easeInOutQuint; delayin : 900; delayout : 0;">
                               <div style="position: absolute; top:186px; left: 30px;">
                                   <p style="width:340px; font-size: 18px; color: #DimGray; font-family: inherit;">κ°νΈνκ³  μ½κ² κ°μνμ€μ μμ΅λλ€!!</p>
                               </div>
                           </div>
                           <div class="inner ls-s4" style="position:absolute; left:50%; slidedirection : left; slideoutdirection : left; parallaxin : .45; parallaxout : .45; durationin : 1500; durationout : 1500; easingin : easeOutQuint; easingout : easeInOutQuint; delayin : 700; delayout : 0;">
                               <h3 style="position: absolute; top:130px; left: 30px;  font-size: 23px; color: #c97e08; font-family:inherit;"> μκΈ, μ κΈ, νλ, μ°κΈ λ€μν μνλ€μ </h3>
                           </div>
                           <div class="inner ls-s1" style="position:absolute; left:50%; slidedirection : left; slideoutdirection : left; parallaxin : .45; parallaxout : .45; durationin : 1500; durationout : 1500; easingin : easeOutQuint; easingout : easeInOutQuint; delayin : 500; delayout : 0;">
                               <h2 style="position: absolute; top:94px; left: 30px;  font-size: 30px; color: #008B8B; font-family: inherit;"> μΉμμλ, νλΈλ¦Ώμμλ, λͺ¨λ°μΌμμλ </h2>
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
                                   <p style="width:340px; padding-right:470px; font-size: 20px; margin-left: 200px;">λ λ§μ μνμ΄ κΆκΈνμΈμ?<br> <a href="${ pageContext.request.contextPath }/product/deposit" style="color:#c97509; font-size: 23px;">μ§κΈ ν΄λ¦­ν΄λ³΄μΈμ!</a></p>
                               </div>
                           </div>
                       </div>
                       <div class="ls-layer" style="background-image: url('${ pageContext.request.contextPath }/resources/images/slider-layer/bg.png');slidedirection: right; slidedelay: 4000; durationin: 1500; durationout: 1500; easingin: easeInOutQuint; easingout: easeInOutQuint; delayin: 0; delayout: 0;">
                           <div class="inner ls-s2" style="position:absolute; left:50%; slidedirection : left; slideoutdirection : left; parallaxin : .45; parallaxout : .45; durationin : 1600; durationout : 1500; easingin : easeInOutQuint; easingout : easeInOutQuint; delayin : 200; delayout : 0;"><img src="${ pageContext.request.contextPath }/resources/images/slider-layer/layer11.png" alt="sublayer" style="position: absolute; top: 0px; left: -449px; " /></div>
                           <div class="inner ls-s3" style="position:absolute; left:50%; slidedirection : top; slideoutdirection : right; parallaxin : .45; parallaxout : .45; durationin : 1000; durationout : 1500; easingin : easeOutExpo; easingout : easeInOutQuint; delayin : 1400; delayout : 0;">
                               <div style="position: absolute; top:90px; left: 573px;  font-size: 30px; color: #2e2d2d; font-family: inherit;"> μμ κΈ λΏλ§μλλΌ ν¬μμνκΉμ§ </div>
                           </div>
                           <div class="inner ls-s4" style="position:absolute; left:50%; slidedirection : right; slideoutdirection : right; parallaxin : .45; parallaxout : .45; durationin : 1000; durationout : 1500; easingin : easeOutExpo; easingout : easeInOutQuint; delayin : 2000; delayout : 0;">
                               <div style="position: absolute; top:120px; left: 573px; margin-top:10px; font-size: 30px; color: #c97e08; font-family: inherit;"> κ°μ‘±, μΉκ΅¬, μ§μΈκ³Ό κ³΅μ νμΈμ </div>
                           </div>
                           <div class="inner ls-s5" style="position:absolute; left:50%; slidedirection : fade; slideoutdirection : right; parallaxin : .45; parallaxout : .45; durationin : 1500; durationout : 1500; easingin : easeOutExpo; easingout : easeInOutQuint; delayin : 3000; delayout : 0;">
                               <div style="position: absolute; top:170px; left: 573px;  font-size: 13px; color: #4f4f4e; font-family: inherit; line-height:20px;">
                                   <p style="width:340px; font-family: inherit; font-size: 12pt;">λ§μΆ€ν SolutionκΉμ§ μ κ³΅ν΄μ£Όλ Hana Solution</p>
                               </div>
                           </div>
                           <div class="inner ls-s6" style="position:absolute; left:50%; slidedirection : bottom; slideoutdirection : right; parallaxin : .45; parallaxout : .45; durationin : 2000; durationout : 1500; easingin : easeOutQuint; easingout : easeInOutQuint; delayin : 2800; delayout : 0;">
                               <div style="position: absolute; top:265px; left: 573px;  ">
                                   <p><a href="${ pageContext.request.contextPath }/product/deposit" class="btn btn-xlarge  btn-mfast-3" style="color: #008B8B; font-family: inherit;">μνλ³΄κΈ°</a></p>
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
           
           <h2 style="width: 80%;  margin: auto; color: #008B8B; font-family: inherit;">μν νλμ λ³΄κΈ°</h2><br>
               <div class="tabs-container" style="width:80%; margin: auto;">
                   <ul class="tabs">
                       <li>
                           <h4><a href="#tab1" title="μκΈ" style="color: #008B8B; font-family: inherit; width: 13%;">μ κΈ°μκΈ</a></h4>
                       </li>
                       <li>
                           <h4><a href="#tab2" title="μ κΈ" style="color: #008B8B; font-family: inherit; width: 13%;">μ κΈ</a></h4>
                       </li>
                       <li>
                           <h4><a href="#tab3" title="νλ" style="color: #008B8B; font-family: inherit; width: 13%;">μμμμΆκΈ</a></h4>
                       </li>
                       <li>
                           <h4><a href="#tab4" title="μ°κΈ" style="color: #008B8B; font-family: inherit; width: 13%;">μ°κΈ</a></h4>
                       </li>
                       <li>
                           <h4><a href="#tab4" title="λ°©μΉ΄μλμ€" style="color: #008B8B; font-family: inherit; width: 17.55%;">λ°©μΉ΄μλμ€</a></h4>
                       </li>
                   </ul>
                   <div class="border-box group">
                       <div id="tab1" class="panel group">
                         <div style="width: 100%;">
                         	<table style="width: 100%;">
                         		<tr>
                         			<th colspan="2" style="font-family: inherit; font-size: 12pt; width: 15%;">μνλͺ</th>
                         			<th style="font-family: inherit; font-size: 12pt; width: 75%;">μνμ€λͺ</th>
                         			<th style="font-family: inherit; font-size: 12pt; width: 10%;">μ΄μ¨(μ΅λ μ°)</th>
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
	                         			<button id="joinBtn" style="width: 100px; line-height: 30px; border-radius: 80px; color: white; background-color: #008B8B; border: none; font-size: 12pt; float: right;">κ°μνκΈ°</button>
                         			</p>
                         		</div>
                         	</c:forEach>
                         </div>
                       </div>
                       <div id="tab2" class="panel group">
                           <div style="width: 100%;">
                         	<table style="width: 100%;">
                         		<tr>
                         			<th colspan="2" style="font-family: inherit; font-size: 12pt; width: 15%;">μνλͺ</th>
                         			<th style="font-family: inherit; font-size: 12pt; width: 75%;">μνμ€λͺ</th>
                         			<th style="font-family: inherit; font-size: 12pt; width: 10%;">μ΄μ¨(μ΅λ μ°)</th>
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
	                         			<button id="savingJoinBtn" style="width: 100px; line-height: 30px; border-radius: 80px; color: white; background-color: #008B8B; border: none; font-size: 12pt; float: right;">κ°μνκΈ°</button>
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
                         			<th colspan="2" style="font-family: inherit; font-size: 12pt; width: 15%;">μνλͺ</th>
                         			<th style="font-family: inherit; font-size: 12pt; width: 75%;">μνμ€λͺ</th>
                         			<th style="font-family: inherit; font-size: 12pt; width: 10%;">μ΄μ¨(μ΅λ μ°)</th>
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
	                         			<button style="width: 100px; line-height: 30px; border-radius: 80px; color: white; background-color: #008B8B; border: none; font-size: 12pt; float: right; cursor: pointer;" id="joinBtn">κ°μνκΈ°</button>
                         			</p>
                         		</div>
                         	</c:forEach>
                         </div>
                       </div>
                       <div id="tab4" class="panel group">
                           <div style="width: 100%;">
                         	<table style="width: 100%;">
                         		<tr>
                         			<th colspan="2" style="font-family: inherit; font-size: 12pt; width: 15%;">μνλͺ</th>
                         			<th style="font-family: inherit; font-size: 12pt; width: 75%;">μνμ€λͺ</th>
                         			<th style="font-family: inherit; font-size: 12pt; width: 10%;">μ΄μ¨(μ΅λ μ°)</th>
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
	                         			<button id="joinBtn" style="width: 100px; line-height: 30px; border-radius: 80px; color: white; background-color: #008B8B; border: none; font-size: 12pt; float: right;">κ°μνκΈ°</button>
                         			</p>
                         		</div>
                         	</c:forEach>
                         </div>
                       </div>
                       <div id="tab5" class="panel group">
                           <div style="width: 100%;">
                         	<table style="width: 100%;">
                         		<tr>
                         			<th colspan="2" style="font-family: inherit; font-size: 12pt; width: 15%;">μνλͺ</th>
                         			<th style="font-family: inherit; font-size: 12pt; width: 75%;">μνμ€λͺ</th>
                         			<th style="font-family: inherit; font-size: 12pt; width: 10%;">μ΄μ¨(μ΅λ μ°)</th>
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
	                         			<button id="joinBtn" style="width: 100px; line-height: 30px; border-radius: 80px; color: white; background-color: #008B8B; border: none; font-size: 12pt; float: right;">κ°μνκΈ°</button>
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
	                <p style="text-align: center;"><span style="font-size: 14pt;"><b><span style="font-size: 15pt; color: #008B8B;">μνμμΈμ€λͺ</span></b></span></p>
	                <hr style="border-color: #008B8B; border-width: 1px;">
	                <p style="text-align: left; font-size: 23pt;">μνλνλ¬μ€ν΅μ₯</p>
	                <p style="text-align: left; font-size: 15pt;">μ μ κ·Έλ, λΉμ μ μν Must Have ν΅μ₯</p>
		            <br><br>
		            <table style="width: 97%;">
		            	<tr style="background-color: white; border: none;">
		            		<th style="vertical-align: top; font-size: 11pt;">μννΉμ§</th>
		            		<td style="font-size: 11pt;">λ€μν μμλ£ μ°λμλΉμ€λ₯Ό μ κ³΅νλ YOUTHκ³ κ° μ μ©ν΅μ₯</td>
		            	</tr>
		            	<tr style="background-color: white; border: none;">
		            		<th style="vertical-align: top; font-size: 11pt;">κ°μλμ</th>
		            		<td style="font-size: 11pt;">λ§ 30μΈ μ΄ν μ€λͺμ κ°μΈ λ° κ°μΈμ¬μμ (1μΈ 1κ³μ’)</td>
		            	</tr>
		            	<tr style="background-color: white; border: none;">
		            		<th style="vertical-align: top; font-size: 11pt;">μκΈμ’λ₯</th>
		            		<td style="font-size: 11pt;">μ μΆμκΈ</td>
		            	</tr>
		            	<tr style="background-color: white; border: none;">
		            		<th style="vertical-align: top; font-size: 11pt;">μ νμ¬λΆ</th>
		            		<td style="font-size: 11pt;">
		            			β  μ μΆμκΈμ ννμ¬ λ μνμΌλ‘ μ νκ°λ₯<br>
		            			(λ¨, κΈ°μ‘΄ μμλ£λ©΄μ ν΅μ₯μμ μ ν μ μμλ£λ©΄μ νμλ ν΄λΉμμ κΈ°μ‘΄ μνμ μμ¬νμλ₯Ό μ μ©νκ³ , λ€μλ¬λΆν°λ λ μνμ μ€μ μ λ°λΌ μμλ£λ©΄μ νν μ κ³΅)<br>
		            			β‘ μνκ°μ(μ ν) ν, λ§ 35μΈκ° λλ μμ μ μ΅μ μ²« μμμΌμ [μ£Όκ±°λνλν΅μ₯]μΌλ‘ μλ μ νλ¨.<br>
		            			(λ¨, [μ£Όκ±°λνλν΅μ₯]μ λ³΄μ νκ³  μλ κ²½μ°μλ [μ μΆμκΈ]μΌλ‘ μλμ ν λ¨. μ νμ΄νμλ μ νλ μνμ
		            			μ°λμλΉμ€ λ° ννλ§ μ κ³΅)
		            		</td>
		            	</tr>
		            	<tr style="background-color: white; border: none;">
		            		<th style="vertical-align: top; font-size: 11pt;">κΈλ¦¬</th>
		            		<td style="font-size: 11pt;">
		            			<strong>μνλνλ¬μ€ ν΅μ₯</strong><strong style="padding-left: 300px;">κΈ°μ€μΌμ: 2021-09-08</strong><br>
		            			<table style="border-left: none; border-right: none; width: 95%;">
		            				<tr>
		            					<th style="font-size: 11pt;"><strong>λΆλ₯</strong></th>
		            					<th style="font-size: 11pt;"><strong>κΈλ¦¬(μ°μ¨,μΈμ )</strong></th>
		            				</tr>
		            				<tr style="background-color: white;">
		            					<td style="text-align: center; font-size: 11pt;">-</td>
		            					<td style="text-align: center; font-size: 11pt;">0.1%</td>
		            				</tr>
		            			</table>
		            		</td>
		            	</tr>
		            	<tr style="background-color: white; border: none;">
		            		<th style="vertical-align: top; font-size: 11pt;">μμλ£ μ°λ</th>
		            		<td style="font-size: 11pt;">
		            			μλμ μλΉμ€ μ κ³΅ μ‘°κ±΄ μ€ 1κ°μ§ μ΄μμ ν΄λΉμμ μΆ©μ‘±ν κ²½μ°, μΆ©μ‘±μ λ€μλ¬(μ΅μ 1μΌλΆν° λ§μΌκΉμ§)μ μμλ£<br>
		            			μ°λμλΉμ€λ₯Ό μ κ³΅<br><br>
		            			<strong>μλΉμ€ μ κ³΅ μ‘°κ±΄</strong><br>
		            			β  λ³ΈμΈλͺμ νλμΉ΄λ(μ μ©/μ²΄ν¬)μ λκΈμ μ΄ ν΅μ₯μμ κ²°μ  μ<br>
		            			β‘ νμΈμΌλ‘λΆν° μ κ±΄λΉ 10λ§μ μ΄μ μκΈ μ<br><br>
		            			<strong>μμλ£ μ°λ</strong><br>
		            			β  λΉν μλνκΈ°κΈ°λ₯Ό ν΅ν νκΈμΈμΆ μμλ£ λ¬΄μ ν λ©΄μ <br>
		            			β‘ λΉν μλνκΈ°κΈ°λ₯Ό ν΅ν ννμ΄μ²΄ μμλ£ λ¬΄μ ν λ©΄μ <br>
		            			β’ μΈν°λ·λ±νΉ, μ€λ§νΈν°λ±νΉ, ν°λ±νΉ(ARS)μ ν΅ν νν μ΄μ²΄ μμλ£ λ¬΄μ ν λ©΄μ <br>
		            			β£ λ©λΆμμλμ΄μ²΄ μμλ£ λ¬΄μ ν λ©΄μ <br>
		            			β€ νν μλνκΈ°κΈ°λ₯Ό ν΅ν νκΈ μΈμΆ μμλ£ μ5ν λ©΄μ <br><br>
		            			β» μ΄ ν΅μ₯μ μ κ· ν λ€μλ¬ λ§μΌκΉμ§λ μ κ³΅μ‘°κ±΄ μΆ©μ‘±μ¬λΆμ κ΄κ³μμ΄ μμλ£ μ°λμλΉμ€ μ κ³΅<br>
		            			β» μ΄ ν΅μ₯μ ν΅ν κ±°λμμ λ°μνλ μμλ£μ ννμ¬ μ κ³΅λ¨
		            		</td>
		            	</tr>
		            	<tr style="background-color: white; border: none;">
		            		<th style="vertical-align: top; font-size: 11pt;">μΈμ νν</th>
		            		<td style="font-size: 11pt;">λΉκ³ΌμΈμ’ν©μ μΆ κ°λ₯ (μ  κΈμ΅κΈ°κ΄ ν΅ν©νλ λ²μ λ΄)</td>
		            	</tr>
		            	<tr style="background-color: white; border: none;">
		            		<th style="vertical-align: top; font-size: 11pt;">μ μμ¬ν­</th>
		            		<td style="font-size: 11pt;">
		            			Β· μμλ£ μ°λμλΉμ€λ μ΄ ν΅μ₯μ μν κ±°λμλ§ μ μ©λλ©°, λ§€μ μκ±΄ μΆ©μ‘±μ¬λΆλ₯Ό νμΈνμ¬ λ€μμμ μμλ£
		            			γμ°λμλΉμ€λ₯Ό μ κ³΅ν©λλ€.<br>
		            			Β· μ°λμλΉμ€ λ΄μ©μ μνμ μ¬μ μ μν΄ λ³κ²½λ  μ μμ΅λλ€. λ λ΄μ© λ³κ²½ μ λ³κ²½μ¬μ , λ³κ²½λ΄μ© λ± λ΄μ©μ
		            			γμμμ  λ° λΉν μΈν°λ· ννμ΄μ§μ 1κ°μκ° κ²μν©λλ€.<br><br>
		            		</td>
		            	</tr>
		            	<tr style="background-color: white; border: none;">
		            		<th style="vertical-align: top; width: 15%; font-size: 11pt;">μκΈμ λ³΄νΈ</th>
		            		<td>
		            			<img style="position:relative; float: left;" alt="λ³΄νΈμΈμ¦λ§ν¬" src="${ pageContext.request.contextPath }/resources/images/account/productMark.png">
		            			<span style="position:relative; float: left; width: 80%; font-size: 11pt;">μ΄ μκΈμ μκΈμλ³΄νΈλ²μ λ°λΌ μκΈλ³΄νκ³΅μ¬κ° λ³΄νΈνλ, λ³΄νΈνλλ λ³Έ μνμ μλ κ·νμ λͺ¨λ  μκΈλ³΄νΈλμ κΈμ΅μνμ μκΈκ³Ό μμ μ μ΄μλ₯Ό ν©νμ¬ 1μΈλΉ βμ΅κ³  5μ²λ§μβμ΄λ©°, 5μ²λ§μμ μ΄κ³Όνλ λλ¨Έμ§ κΈμ‘μ λ³΄νΈνμ§ μμ΅λλ€.</span>
		            		</td>
		            	</tr>
		            </table>
		            <br>
		            <div style="background-color:white;text-align: center;padding-bottom: 10px;padding-top: 10px; width: 200px; margin-left: 500px;">
		            	<a href="${ pageContext.request.contextPath }/account/join">
		            		<button style="font-size: 13pt; border: none; width: 100px; background-color: #008B8B; line-height: 25px; border-radius: 80px; color: white; cursor: pointer;">
		            			κ°μνκΈ°
		            		</button>
		            	</a>
		            	<span class="pop_bt" style="font-size: 13pt; border-color: #008B8B; background-color: white; line-height: 25px; color: red; float: right; cursor: pointer;" onClick="close_pop();">
		                     λ«κΈ°
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