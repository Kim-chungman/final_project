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
       
        <script type="text/javascript">
      
        
    	</script>
        
    </head>
    <!-- END HEAD -->
    
    <style>
    	
    	.manageMenu:hover {
    		color: #008B8B; 
    	}
    	
    	#manageNav{
    		width: 10%;
    		position: relative;
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
        	
        	<h2 style="margin-top: 50px;">
        		<span style="color: #008B8B;">${ investType }</span>성향 고객님을 위한 상품
        	</h2>
        </div>
        <div style="width: 900px; margin-top: 50px;">
            <div class="one-third">
                <div class="price-table">
                    <div class="head white">
                        <p>예금</p>
                        <h2 class="price">20%</h2>
                    </div>
                    <div class="body">
                        <ul>
                            <li>
                            	<strong style="font-size: 11pt;">하나 더예금</strong> <br>
                            	최저 연0.90%~최고 연<span style="font-size: 11pt; color: #008B8B;">1.40%
                            	</span>
                            </li>
                            <li>
                            	<strong style="font-size: 11pt;">주거래 정기예금</strong> <br>
                            	최저 연0.75%~최고 연<span style="font-size: 11pt; color: #008B8B;">1.25%
                            	</span>
                            </li>
                            <li>
                            	<strong style="font-size: 11pt;">언제나 청춘 정기예금</strong> <br>
                            	최저 연0.90%~최고 연<span style="font-size: 11pt; color: #008B8B;">1.10%
                            	</span>
                            </li>
                            <li>
                            	<strong style="font-size: 11pt;">3·6·9정기예금</strong> <br>
                            	최저 연0.85%~최고 연<span style="font-size: 11pt; color: #008B8B;">0.95%
                            	</span>
                            </li>
                        </ul>
                        <p class="more"><a href="#">더보기</a></p>
                    </div>
                </div>
            </div>
            <div class="one-third">
                <div class="price-table">
                    <div class="head grey">
                        <p>적금</p>
                        <h2 class="price">30%</h2>
                    </div>
                    <div class="body">
                        <ul>
                            <li>
                            	<strong style="font-size: 11pt;">하나 더예금</strong> <br>
                            	최저 연0.90%~최고 연<span style="font-size: 11pt; color: #008B8B;">1.40%
                            	</span>
                            </li>
                            <li>
                            	<strong style="font-size: 11pt;">주거래 정기예금</strong> <br>
                            	최저 연0.75%~최고 연<span style="font-size: 11pt; color: #008B8B;">1.25%
                            	</span>
                            </li>
                            <li>
                            	<strong style="font-size: 11pt;">언제나 청춘 정기예금</strong> <br>
                            	최저 연0.90%~최고 연<span style="font-size: 11pt; color: #008B8B;">1.10%
                            	</span>
                            </li>
                            <li>
                            	<strong style="font-size: 11pt;">3·6·9정기예금</strong> <br>
                            	최저 연0.85%~최고 연<span style="font-size: 11pt; color: #008B8B;">0.95%
                            	</span>
                            </li>
                        </ul>
                        <p class="more"><a href="#">더보기</a></p>
                    </div>
                </div>
            </div>
            <div class="one-third last">
                <div class="price-table">
                    <div class="head blue">
                        <p>펀드</p>
                        <h2 class="price">15%</h2>
                    </div>
                    <div class="body">
                        <ul>
                            <li>
                            	<strong style="font-size: 11pt;">하나 더예금</strong> <br>
                            	최저 연0.90%~최고 연<span style="font-size: 11pt; color: #008B8B;">1.40%
                            	</span>
                            </li>
                            <li>
                            	<strong style="font-size: 11pt;">주거래 정기예금</strong> <br>
                            	최저 연0.75%~최고 연<span style="font-size: 11pt; color: #008B8B;">1.25%
                            	</span>
                            </li>
                            <li>
                            	<strong style="font-size: 11pt;">언제나 청춘 정기예금</strong> <br>
                            	최저 연0.90%~최고 연<span style="font-size: 11pt; color: #008B8B;">1.10%
                            	</span>
                            </li>
                            <li>
                            	<strong style="font-size: 11pt;">3·6·9정기예금</strong> <br>
                            	최저 연0.85%~최고 연<span style="font-size: 11pt; color: #008B8B;">0.95%
                            	</span>
                            </li>
                        </ul>
                        <p class="more"><a href="#">더보기</a></p>
                    </div>
                </div>
            </div>
            <div class="one-third">
                <div class="price-table">
                    <div class="head red">
                        <p>연금</p>
                        <h2 class="price">20%</h2>
                    </div>
                    <div class="body">
                        <ul>
                            <li>
                            	<strong style="font-size: 11pt;">하나 더예금</strong> <br>
                            	최저 연0.90%~최고 연<span style="font-size: 11pt; color: #008B8B;">1.40%
                            	</span>
                            </li>
                            <li>
                            	<strong style="font-size: 11pt;">주거래 정기예금</strong> <br>
                            	최저 연0.75%~최고 연<span style="font-size: 11pt; color: #008B8B;">1.25%
                            	</span>
                            </li>
                            <li>
                            	<strong style="font-size: 11pt;">언제나 청춘 정기예금</strong> <br>
                            	최저 연0.90%~최고 연<span style="font-size: 11pt; color: #008B8B;">1.10%
                            	</span>
                            </li>
                            <li>
                            	<strong style="font-size: 11pt;">3·6·9정기예금</strong> <br>
                            	최저 연0.85%~최고 연<span style="font-size: 11pt; color: #008B8B;">0.95%
                            	</span>
                            </li>
                        </ul>
                        <p class="more"><a href="#">더보기</a></p>
                    </div>
                </div>
            </div>
            <div class="one-third">
                <div class="price-table">
                    <div class="head green">
                        <p>방카슈랑스</p>
                        <h2 class="price">10%</h2>
                    </div>
                    <div class="body">
                        <ul>
                            <li>
                            	<strong style="font-size: 11pt;">하나 더예금</strong> <br>
                            	최저 연0.90%~최고 연<span style="font-size: 11pt; color: #008B8B;">1.40%
                            	</span>
                            </li>
                            <li>
                            	<strong style="font-size: 11pt;">주거래 정기예금</strong> <br>
                            	최저 연0.75%~최고 연<span style="font-size: 11pt; color: #008B8B;">1.25%
                            	</span>
                            </li>
                            <li>
                            	<strong style="font-size: 11pt;">언제나 청춘 정기예금</strong> <br>
                            	최저 연0.90%~최고 연<span style="font-size: 11pt; color: #008B8B;">1.10%
                            	</span>
                            </li>
                            <li>
                            	<strong style="font-size: 11pt;">3·6·9정기예금</strong> <br>
                            	최저 연0.85%~최고 연<span style="font-size: 11pt; color: #008B8B;">0.95%
                            	</span>
                            </li>
                        </ul>
                        <p class="more"><a href="#">더보기</a></p>
                    </div>
                </div>
            </div>
            <div class="one-third last">
                <div class="price-table">
                    <div class="head yellow">
                        <p>주식</p>
                        <h2 class="price">5%</h2>
                    </div>
                    <div class="body">
                        <ul>
                            <li>
                            	<strong style="font-size: 11pt;">하나 더예금</strong> <br>
                            	최저 연0.90%~최고 연<span style="font-size: 11pt; color: #008B8B;">1.40%
                            	</span>
                            </li>
                            <li>
                            	<strong style="font-size: 11pt;">주거래 정기예금</strong> <br>
                            	최저 연0.75%~최고 연<span style="font-size: 11pt; color: #008B8B;">1.25%
                            	</span>
                            </li>
                            <li>
                            	<strong style="font-size: 11pt;">언제나 청춘 정기예금</strong> <br>
                            	최저 연0.90%~최고 연<span style="font-size: 11pt; color: #008B8B;">1.10%
                            	</span>
                            </li>
                            <li>
                            	<strong style="font-size: 11pt;">3·6·9정기예금</strong> <br>
                            	최저 연0.85%~최고 연<span style="font-size: 11pt; color: #008B8B;">0.95%
                            	</span>
                            </li>
                        </ul>
                        <p class="more"><a href="#">더보기</a></p>
                    </div>
                </div>
            </div>
        </div>
	</section>
	<footer style="clear: both;">
		<br><br>
		<jsp:include page="/WEB-INF/include/footer.jsp" />
	</footer>
</body>
</html>