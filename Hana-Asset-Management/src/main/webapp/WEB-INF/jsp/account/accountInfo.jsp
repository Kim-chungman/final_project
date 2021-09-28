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
		<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>

		<script type="text/javascript">
		
		$(document).ready(function(){
			
			$('#unagreeBtn').click(function() {
				location.href= "${ pageContext.request.contextPath }/";
			})
	
		});
		
		</script>
		<script>

			var sum = 0;//함수 안에 지역변수로 선언하면 0으로 계속 초기화돼서 sum+=으로 더해지지 않는 거였음.
			
			function calc(button) {
				
				if(parseInt(button.value) != 0)
					sum+= parseInt(button.value);//parseInt를 안하면 값이 더하기가 안되고 옆에 붙여넣기가 됨		
				else
					sum = 0;
				
				document.getElementById("balance").value = sum;
			}
		
		</script>

</head>

<style>
	.manageMenu:hover {
    		color: #008B8B; 
   	}
   	
   	#manageNav{
   		width: 10%;
   		position: relative;
   		margin-left: 17%;
   		float: left;
   	}
   	
   	#manageSec{
   		width: 55%;
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
	
	.menubar, .menubar2, .menubar3, .menubar4{
		position: relative;
		color: #5f6368;
		border: solid 1px #dadce0;
		border-radius: 1vw;
		display: inline-block;
		padding: 6px 8px 6px 8px; 
		/*padding: top right bottom left*/
		cursor: pointer;
	}

	.clicked_menu{
		color: ;border-color: #4285f4;
		color: white;
		background: #008B8B;
    }
    
    #changeBtn{
    	background-color: #F7F9FC;
    	border: none;
    	color: #008B8B;
    	width: 70px;
    	height: 30px;
    }
    
    input {
		border: none;
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
	                <h3 style="color: #008B8B; font-size: 15pt;">계좌개설</h3>
	                <hr style="border-color: #008B8B; width: 30%; float: left;">
	                <div class="recent-post group">
	                    <div class="hentry-post group">
	                    	<a href="${ pageContext.request.contextPath }/account/join" title="계좌개설" class="manageMenu" style="color: #008B8B; font-size: 11pt;">계좌개설</a>
	                    </div>
	                    <div class="hentry-post group">
	                        <a href="#" title="계좌개설" class="manageMenu" style="font-size: 11pt;">계좌조회</a>
	                    </div>
	                    <div class="hentry-post group">
	                        <a href="#" title="재무설계" class="manageMenu" style="font-size: 11pt;">오픈뱅킹</a>
	                    </div>
	                    <div class="hentry-post group">
	                        <a href="#" title="재무설계" class="manageMenu" style="font-size: 11pt;">오픈뱅킹조회</a>
	                    </div>
	                </div>
	            </div>
	            
	        </div>
	     </div>
	     <!-- END SIDEBAR -->
	</nav>
	<section id="manageSec">
	
		<%-- 정보입력 --%>
		<div style="width: 100%;">
			<table style="width: 100%; align-content: center; margin-right: 100px;">
				<tr>
					<td id="tdNum" style="color: #008B8B;">
						<a href="${ pageContext.request.contextPath }/account/join" style="color: #008B8B; font-size: 12pt; font-family: inherit;">1 약관동의</a>
					</td>
					<td id="tdNum" style="color: #008B8B;">
						<a href="${ pageContext.request.contextPath }/account/accountInfo" style="color: #008B8B; font-size: 12pt; font-family: inherit;">2 정보입력</a>
					</td>
					<td id="tdNum">3 개설완료</td>
				</tr>
			</table><br><br>
			<h2 style="text-align: left;">예금상품 가입</h2>
			<hr>
			<h3 style="text-align: left; color: #008B8B; margin-top: 40px; margin-bottom: 40px;">영하나플러스 통장</h3>
		</div>
		<div>
			<h4 style="text-align: left; margin-top: 40px;"><strong>정보입력</strong></h4>
			<form method="post">
				<input type="hidden" id="memberId" name="memberId" value="${ userVO.id }">
				<input type="hidden" id="corporationCode" name="corporationCode" value="081">
				<input type="hidden" id="mgr" name="mgr" value="10108413">
				<hr>
				<table style="width: 100%; text-align: left;">
					<tr style="height: 100px; background-color: #F7F9FC;">
						<th style="width: 20%; font-size: 12pt; font-family: inherit;">고객아이디</th>
						<td style="font-size: 12pt; font-family: inherit; background-color: white; padding-left: 20px;">
							<input type="text" value="${ userVO.id }" readonly="readonly" style="width: 200px; height: 40px; border-color: #DCDCDC; background-color: #F7F9FC; border: none;">
						</td>
					</tr>
					<tr style="height: 100px; background-color: #F7F9FC;">
						<th style="width: 20%; font-size: 12pt; font-family: inherit;">계좌 비밀번호</th>
						<td style="font-size: 12pt; font-family: inherit; background-color: white; padding-left: 20px;">
							<input type="password" id="password" name="password" placeholder="숫자 4자리 비밀번호" style="width: 200px; height: 40px; border-color: #DCDCDC; background-color: #F7F9FC; outline: none; box-shadow: none;">
						</td>
					</tr>
					<tr style="height: 100px; background-color: #F7F9FC;">
						<th style="width: 20%; font-size: 12pt; font-family: inherit;">계좌 비밀번호</th>
						<td style="font-size: 12pt; font-family: inherit; background-color: white; padding-left: 20px;">
							<button type="button" id="changeBtn" value="1000000" onclick="calc(this)">+100만원</button>
							<button type="button" id="changeBtn" value="500000" onclick="calc(this)">+50만원</button>
							<button type="button" id="changeBtn" value="100000" onclick="calc(this)">+10만원</button>
							<button type="button" id="changeBtn" value="10000" onclick="calc(this)">+1만원</button>
							<button type="button" id="changeBtn" value="0" onclick="calc(this)">정정</button><br>
							<input type="text" id="balance" name="balance" placeholder="최초 입금액" style="margin-top:20px; width: 200px; height: 40px; border-color: #DCDCDC; background-color: #F7F9FC; border: none;">
						</td>
					</tr>
					<tr style="height: 100px; background-color: #F7F9FC;">
						<th style="width: 20%; font-size: 12pt; font-family: inherit;">계좌유형</th>
						<td style="font-size: 12pt; font-family: inherit; background-color: white; padding-left: 20px;">
							<input type="text" id="accType" name="accType" value="입출금통장" readonly="readonly" style="width: 200px; height: 40px; border-color: #DCDCDC; background-color: #F7F9FC; border: none;">
						</td>
					</tr>
					<tr style="height: 100px; background-color: #F7F9FC;">
						<th style="width: 20%; font-size: 12pt; font-family: inherit;">상품이름</th>
						<td style="font-size: 12pt; font-family: inherit; background-color: white; padding-left: 20px;">
							<input type="text" id="accName" name="accName" value="영하나플러스" readonly="readonly" style="width: 200px; height: 40px; border-color: #DCDCDC; background-color: #F7F9FC; border: none;">
						</td>
					</tr>
				</table>
	        	<input type="submit" value="가입" style="font-size:12pt; width: 70px; height: 40px; color: white; background-color: #008B8B; border: none; margin-top: 30px; margin-left: 40%; cursor: pointer;">
				<button id="unagreeBtn" style="font-size:12pt; width: 70px; height: 40px; color: DimGray; background-color: #F7F9FC; border: none; cursor: pointer;">취소</button> 
			</form>
			<br><br>
		</div>
	</section>
	<footer style="clear: both;">
		<jsp:include page="/WEB-INF/include/footer.jsp" />
	</footer>
</body>
</html>