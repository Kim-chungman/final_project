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
            
                <!-- START COPYRIGHT -->
                <div id="copyright">
                    <div class="inner group" style="height: 10px;">
                        <div class="left">
                            <a href="#" style="color: white; font-size: 11pt;"><strong>손님의소리(전자민원접수) | </strong></a>
                            <a href="#" style="color: white; font-size: 11pt;"><strong> 사고신고 | </strong></a>
                            <a href="#" style="color: white; font-size: 11pt;"><strong> 경영공시 | </strong></a>
                            <a href="#" style="color: white; font-size: 11pt;"><strong> 영업점 찾기</strong></a>
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
                            <a href="#" style="color: white; font-size: 11pt;"><strong>개인정보처리방침 | </strong></a>
                            <a href="#" style="color: white; font-size: 11pt;"><strong>본인정보이용 제공현황 | </strong></a>
                            <a href="#" style="color: white; font-size: 11pt;"><strong> 그룹사간 고객정보 제공내역조회 |</strong></a>
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
                            <a href="#" style="color: white; font-size: 15pt;"><img src="${ pageContext.request.contextPath }/resources/images/minilogo.png" /><strong>Hana Solution</strong></a>
                        	<a href="#" style="color: white; margin-left: 50px; font-size: 11pt;">회사소개 | </a>
                        	<a href="#" style="color: white; font-size: 11pt;"> 사회공헌 | </a>
                        	<a href="#" style="color: white; font-size: 11pt;"> 이용약관</a>
                        </div>
                        <div class="right">
                            <a href="#" class="socials-small rss-small" title="Rss">rss</a>
                            <a href="#" class="socials-small flickr-small" title="Flickr">flickr</a>
                            <a href="#" class="socials-small google-small" title="Google">google</a>
                        </div>
                        <br>
                        <br>
                        <div style="clear: both;">
                        	<img alt="call" src="${ pageContext.request.contextPath }/resources/images/call.png" style="margin-left: 160px;"/>
                        	<a href="#" style="color: white; font-size: 11pt;"> 
                        	 대표전화 1588-1111 / 1599-1111 </a>
                        	<br>
                        	<a href="#" style="color: white; margin-left: 196px; font-size: 11pt;"> 
                        	 해외 +82-42-520-2500 </a>
                        </div>
                    </div>
                </div>
                <!-- END COPYRIGHT -->        
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