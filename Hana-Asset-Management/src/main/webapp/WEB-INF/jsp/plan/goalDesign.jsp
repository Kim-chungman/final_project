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
		
		<style type="text/css">
		
		.manageMenu:hover {
    		color: #008B8B; 
	   	}
	   	
	   	#manageNav{
	   		width: 7%;
	   		position: relative;
	   		margin-top: 20px;
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
		
		</style>

		<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/plan/ow.css" type="text/css">

</head> 

<body>
	<header>
		<jsp:include page="/WEB-INF/include/header.jsp" />
	</header>
	<nav id="manageNav">
		<!-- START SIDEBAR -->
		<div class="inner group" style="width: 400px;">
	        <div class="sidebar group" style="width: 100%;">
	            
	            <div class="widget-first widget recent-posts" style="width: 100%;">
	                <h3 style="color: #008B8B; font-size: 15pt; padding-top: 30px;">목표설계</h3>
	                <hr style="border-color: #008B8B; width: 30%; float: left;">
	                <div class="recent-post group">
	                    <div class="hentry-post group">
	                        <a href="${ pageContext.request.contextPath }/plan/expense" title="재무설계" class="manageMenu" style="color: #008B8B; font-size: 11pt;">연령별 맞춤설계</a>
	                    </div>
	                    <div class="hentry-post group">
	                        <a href="#" title="재무설계" class="manageMenu" style="font-size: 11pt;">목표재무설계</a>
	                    </div>
	                    <div class="hentry-post group">
	                        <a href="${ pageContext.request.contextPath }/assetManagement/investmentForm" title="재무설계" class="manageMenu" style="font-size: 11pt;">fun한 재무설계</a>
	                    </div>
	                </div>
	            </div>
	            
	        </div>
	     </div>
	     <!-- END SIDEBAR -->
	</nav>

<section id="manageSec">

<div>
    <div class="owm-tit-area" style="margin: auto;">
        <h2>연령별 재무설계</h2>
        <p class="tit-copy" style="margin-bottom: 20px;">아래 그림에서 연령대를 선택하시면, 자세한 연령별 재무설계를 받으실 수 있습니다.</p>
    </div>
    <ol class="owm-fin-tab1 clearfix on over2" style="margin: auto; background-image: url('${ pageContext.request.contextPath }/resources/plan/assetplan.png');">
        <li style="list-style: none;">
             <a href="#">
                <strong class="tit" style="margin-top: 35px; margin-right: 5px;"><em>2030’s</em>사회초년기·자산형성기</strong>
                <span class="txt">
                    <span>학자금마련</span>
                    <span>결혼비용마련</span>
                    <span>전세자금마련</span>
                    <span>자동차구입</span>
                    <span>재테크관심</span>
                </span>
            </a>
        </li>
        <li style="list-style: none;">
            <a href="#">
                <strong class="tit" style="margin-top: 35px; margin-right: 5px;"><em>3040’s</em>가족형성기·자산증식기</strong>
                <span class="txt">
                    <span>재무설계관심</span>
                    <span>주택구입/확대</span>
                    <span>자녀교육자금</span>
                    <span>재테크</span>
                    <span>건강관리</span>
                </span>
            </a>
        </li>
        <li style="list-style: none;">
            <a href="#">
                <strong class="tit" style="margin-top: 35px; margin-right: 5px;"><em>4050’s</em>노후준비기·자산보존기</strong>
                <span class="txt">
                    <span>자녀교육비급증</span>
                    <span>자녀결혼자금</span>
                    <span>건강관리/여행</span>
                    <span>주택교환/확대</span>
                    <span>노후대비시작</span>
                </span>
            </a>
        </li>
        <li style="list-style: none;">
            <a href="#">
                <strong class="tit" style="margin-top: 35px; margin-right: 5px;"><em>5060’s</em>청춘100세·제2의 인생</strong>
                <span class="txt">
                    <span>상속 및 증세</span>
                    <span>건강관리</span>
                    <span>의료비/간병비준비</span>
                    <span>노후생활비준비</span>
                    <span>여행</span>
                </span>
            </a>
        </li>
    </ol>
</div>
	
	</section>
	<footer style="clear: both;">
		<jsp:include page="/WEB-INF/include/footer.jsp" />
	</footer>
</body>
</html>