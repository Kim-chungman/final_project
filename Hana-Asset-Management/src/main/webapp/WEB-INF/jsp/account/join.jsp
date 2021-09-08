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
        
        <title>Hana Solution - 예금통장개설</title>
        
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
<body>
	
	<section>
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
	</section>

</body>
</html>