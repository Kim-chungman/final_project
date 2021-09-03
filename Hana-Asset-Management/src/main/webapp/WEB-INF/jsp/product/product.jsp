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
        
        <script>
		$(document).ready(function() {
			
		})
		
		</script>

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
                           <h4><a href="#tab1" title="예금" style="color: #008B8B; font-family: inherit;">예금</a></h4>
                       </li>
                       <li>
                           <h4><a href="#tab2" title="적금" style="color: #008B8B; font-family: inherit;">적금</a></h4>
                       </li>
                       <li>
                           <h4><a href="#tab3" title="펀드" style="color: #008B8B; font-family: inherit;">펀드</a></h4>
                       </li>
                       <li>
                           <h4><a href="#tab4" title="연금" style="color: #008B8B; font-family: inherit;">연금</a></h4>
                       </li>
                       <li>
                           <h4><a href="#tab4" title="방카슈랑스" style="color: #008B8B; font-family: inherit;">방카슈랑스</a></h4>
                       </li>
                   </ul>
                   <div class="border-box group">
                       <div id="tab1" class="panel group">
                         <table style="width: 100%;">
                         	<tr>
                         		<th style="font-family: inherit; font-size: 12pt; width: 15%;">상품명</th>
                         		<th style="font-family: inherit; font-size: 12pt; width: 75%;">상품설명</th>
                         		<th style="font-family: inherit; font-size: 12pt; width: 10%; ">이율</th>
                         	</tr>
                         	<c:forEach items="${ deposit }" var="deposit" varStatus="Loop">
                         		<tr>
                         			<td style="font-family: inherit; font-size: 12pt;">${ deposit.name }</td>
                         			<td style="font-family: inherit; font-size: 12pt;">${ deposit.desc }</td>
                         			<td style="font-family: inherit; font-size: 12pt;">${ deposit.rate }</td>
                         		</tr>
                         	</c:forEach>
                         </table>
                       </div>
                       <div id="tab2" class="panel group">
                           <p>Lorem ipsum dolor sit amet, consectetur adipiscing lorem<br />
                               ipsum dolor sit amet, consectetur adipiscing elit.<br />
                               <strong>Donec blandit enim libero</strong>, quis tincidunt arcu.
                           </p>
                           <p>Eaque ipsa quae ab illo veritatis et quasi architecto beatae vitae dicta.</p>
                       </div>
                       <div id="tab3" class="panel group">
                           <ul class="short arrow">
                               <li>item</li>
                               <li>item</li>
                               <li>item</li>
                           </ul>
                       </div>
                       <div id="tab4" class="panel group">
                           <p>Lorem ipsum dolor sit amet, consectetur adipiscing lorem<br />
                               ipsum dolor sit amet, consectetur adipiscing elit.<br />
                               <strong>Donec blandit enim libero</strong>, quis tincidunt arcu.
                           </p>
                           <p>Eaque ipsa quae ab illo veritatis et quasi architecto beatae vitae dicta.</p>
                       </div>
                       <div id="tab5" class="panel group">
                           <p>Lorem ipsum dolor sit amet, consectetur adipiscing lorem<br />
                               ipsum dolor sit amet, consectetur adipiscing elit.<br />
                               <strong>Donec blandit enim libero</strong>, quis tincidunt arcu.
                           </p>
                           <p>Eaque ipsa quae ab illo veritatis et quasi architecto beatae vitae dicta.</p>
                       </div>
                   </div>
               </div>
	</section>
	<footer>
		<jsp:include page="/WEB-INF/include/footer.jsp" />
	</footer>
</body>
</html>