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
        
        <title>Hana Solution - 투자성향분석결과</title>
        
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
        
        <!-- modal -->
        <script src="https://code.jquery.com/jquery-latest.js"></script>
        
        <script type="text/javascript">
      
        jQuery(document).ready(function() {
                $('#myModal').show();
        });
        
        // 팝업 Close 기능
        function close_pop(flag) {
             $('#myModal').hide();
        };
        
      	// 다시 분석하기
        function replay(flag) {
             location.href='${ pageContext.request.contextPath }/assetManagement/investmentTest';
        };
        
      	// 상품설계하기로 이동
        function design(flag) {
             location.href='${ pageContext.request.contextPath }/assetManagement/productDesign/${investType}';
        };
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
	            
	             <!-- The Modal -->
			    <div id="myModal" class="modal">
			 
			      <!-- Modal content -->
			      <div class="modal-content">
			                <p style="text-align: center;"><span style="font-size: 14pt;"><b><span style="font-size: 24pt;">투자성향분석결과</span></b></span></p>
			                <c:if test="${ investType eq '안전형' }">
				                <p style="text-align: center; line-height: 1.5; font-size: 12pt; color: #008B8B;"><br />${ userVO.name }님은</p>
				                <p style="text-align: center; line-height: 1.5; font-size: 12pt;">${ investType }입니다.</p>
				                <p><br /></p>
			                </c:if>
			                <c:if test="${ investType ne '안전형' }">
				                <p style="text-align: center; line-height: 1.5; font-size: 12pt; color: #008B8B;"><br />${ userVO.name }님</p>
				                <p style="text-align: center; line-height: 1.5; font-size: 12pt;">총점 ${ score }점으로</p>
				                <p style="text-align: center; line-height: 1.5; font-size: 12pt; color: #FF4500;"> ${ investType }입니다.</p>
				                <p><br /></p>
			                </c:if>
			            <div style="cursor:pointer;background-color:#DDDDDD;text-align: center;padding-bottom: 10px;padding-top: 10px;" onClick="close_pop();">
			                <span class="pop_bt" style="font-size: 13pt;" >
			                     닫기
			                </span>
			            </div>           
			      </div>
			    </div>
		        <!--End Modal-->
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
					<td id="tdNum">4 설계받기</td>
				</tr>
			</table>
		</div>
		<div style="margin-top: 30px;">
			<h4 style="color: #008B8B; font-family: inherit; text-align: center; margin-right: 30px;">※투자성향결과※</h4><br>
			<div style="background-color: #F7F9FC; width: 900px; align-content: center; margin-right: 100px;">
				<br>
				<div style="background-color:white; width: 95%; height: 70%; margin: auto;">
					<p style="font-family: inherit; padding-left: 10px; padding-top: 10px; padding-right: 10px; text-align: center; font-size: 15pt;"><strong style="color: #008B8B;">${ userVO.name }님</strong>의</p>
					<p style="font-family: inherit; padding-left: 10px; padding-top: 10px; padding-right: 10px; text-align: center; font-size: 15pt;">투자성향은 <strong style="color: #FF4500;">${ investType }</strong>입니다.<br><br></p>
				</div>
				<c:if test="${ investType eq '안전형' }">
					<img alt="안전형" src="${ pageContext.request.contextPath }/resources/images/investmentType/safety.png" style="display: block; margin: auto;">
				</c:if>
				<c:if test="${ investType eq '안전추구형' }">
					<img alt="안전추구형" src="${ pageContext.request.contextPath }/resources/images/investmentType/safetyPursuit.png" style="display: block; margin: auto;">
				</c:if>
				<c:if test="${ investType eq '위험중립형' }">
					<img alt="위험중립형" src="${ pageContext.request.contextPath }/resources/images/investmentType/riskNeutral.png" style="display: block; margin: auto;">
				</c:if>
				<c:if test="${ investType eq '적극투자형' }">
					<img alt="적극투자형" src="${ pageContext.request.contextPath }/resources/images/investmentType/active.png" style="display: block; margin: auto;">
				</c:if>
				<c:if test="${ investType eq '공격투자형' }">
					<img alt="공격투자형" src="${ pageContext.request.contextPath }/resources/images/investmentType/attack.png" style="display: block; margin: auto;">
				</c:if>
				<div style="background-color:white; width: 95%; height: 20%;">
					<img alt="투자성향설명" src="${ pageContext.request.contextPath }/resources/images/investmentType/explain.png" style="display: block; margin: auto;">
				</div>
				<br>
				<br>
			</div>
			<button onClick="replay();" style="font-size:10pt; width: 150px; border-radius:10px; height: 40px; color: white; background-color: #008B8B; border: none; margin-top: 30px; margin-left: 33%;">다시분석하기</button>
			<button onClick="design();" style="font-size:10pt; width: 150px; border-radius:10px; height: 40px; color: DimGray; background-color: #F7F9FC; border: none;">설계받기</button>
		</div>
	</section>
	<footer style="clear: both;">
		<br><br>
		<jsp:include page="/WEB-INF/include/footer.jsp" />
	</footer>
</body>
</html>