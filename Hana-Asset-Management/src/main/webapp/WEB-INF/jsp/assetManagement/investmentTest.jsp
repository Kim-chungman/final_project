<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.2, user-scalable=yes" />
<head>
        
        <meta charset="UTF-8" />
        <!-- this line will appear only if the website is visited with an iPad -->
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.2, user-scalable=yes" />
        
        <title>Hana Solution - 투자성향분석</title>
        
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
        
        <script>
		$(document).ready(function() {
			
			$('#agreeBtn').click(function() {
				location.href= "${ pageContext.request.contextPath }/login";
			})
			
			$('#unagreeBtn').click(function() {
				location.href= "${ pageContext.request.contextPath }/";
			})
			
		})
		
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
	                        <a href="#" title="재무설계" class="manageMenu" style="font-size: 11pt;">소비지출분석</a>
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
					<td id="tdNum">2 성향분석</td>
					<td id="tdNum">3 분석결과</td>
					<td id="tdNum">4 설계받기</td>
				</tr>
			</table>
		</div>
		<div>
			<table style="width: 900px; align-content: center; margin-right: 100px; margin-top: 20px;">
				<tr>
					<td style="padding:5px; font-size: 11pt; font-family: inherit;"><strong>구속행위 규제 유의사항 안내<br><br></strong></td>
				</tr>
				<tr>
					<td style="padding:5px; font-size: 10pt; font-family: inherit;">중소기업 및 기업의 대표자, 개인인 금융소비자의 경우, 『금융소비자 보호에 관한 법률』등의 '구속행위'여부 판정에 따라 신용평가등급과 무관하게 아래의 '거래가 제한' 될 수 있습니다.<br><br></td>
				</tr>
				<tr>
					<td style="padding-left: 20px;"> 1.투자상품 신규 후 1개월 이내 대출거래 예정이거나, </td>
				</tr>
				<tr>
					<td style="padding-left: 20px;"> 2. 대출 거래 후 1개월 이내 투자상품 신규예정이 아님을 확인합니다.</td>
				</tr>
				<tr>
					<td style="padding: 5px;"><input type="checkbox" required="required">확인함<br><br></td>
				</tr>
			</table>
		</div>
		<div style="margin-top: 20px;">
			<h5 style="color: #008B8B; font-family: inherit;">※금융 취약소비자 우선설명</h5>
			<p style="font-size: 11pt; margin-left: 10px; margin-right: 20px;">!! 금융감독원의 금융소비자보호 모범규준에 따라 특정소비자(만 65세 이상 고령층,은퇴자,주부 등)에 대하여는 소비자의 불이익 사항을 우선적으로 설명해드립니다.</p>
            <br>
		</div>
		<div>
			<table style="width: 900px; align-content: center; margin-right: 100px; margin-top: 20px;">
				<tr>
					<td style="padding:5px; font-size: 11pt; font-family: inherit;"><strong>특정 소비자 해당여부에 대한 정보를 당행에 제공하는 것에 동의하십니까?<br><br></strong></td>
				</tr>
				<tr>
					<td style="padding: 5px;"><input type="checkbox" id="select1">개인정보 제공 미동의 or 금융취약소비자 해당 없음 (금융소비자 불이익 사항 우선 설명대상에서 제외)</td>
				</tr>
				<tr>
					<td style="padding: 5px;"><input type="checkbox" id="select1">개인정보 제공 동의</td>
				</tr>
				<tr>
					<td style="padding-left: 15px;"><input type="checkbox" id="select1" class="select2">만65세 이상</td>
				</tr>
				<tr>
					<td style="padding-left: 15px;"><input type="checkbox" id="select1" class="select2">은퇴자</td>
				</tr>
				<tr>
					<td style="padding-left: 15px;"><input type="checkbox" id="select1" class="select2">주부</td>
				</tr>
				<tr>
					<td style="padding-left: 15px;"><input type="checkbox" id="select1" class="select2">기타<br><br></td>
				</tr>
			</table>
		</div>
		<div style="margin-top: 20px;">
			<h5 style="color: #008B8B; font-family: inherit;">※금융소비자 불이익 사항</h5><br>
			<div style="background-color: #F7F9FC; width: 900px; align-content: center; margin-right: 100px;">
				<br>
				<div style="background-color:white; width: 95%; height: 70%; margin: auto;">
					<p style="font-family: inherit; padding-left: 10px; padding-top: 10px; padding-right: 10px;">▷ 투자상품은 예금자보호법에 따라 예금보험공사가 보호하지 않습니다.<br>
																												▷ 투자상품은 투자원금의 손실이 발생할 수 있으며, 손실가능범위는 투자원금의 전부 또는 일부에 대한 손실의 위험이 존재합니다.<br>
																												▷ 투자상품은 운용실적에 따라 이익 또는 손실이 발생할 수 있으며, 그 결과는 투자자에게 귀속됩니다.<br>
																												▷ 투자상품의 중도해지 시 환매수수료 또는 기타 비용이 발생할 수 있으며, 중도해지를 신청하는 경우라도 상품 종류에 따라 중도해지가 제한될 수 있으므로, 상품별 정하고 있는 중도해지 시 불이익 항목을 반드시 확인하시기 바랍니다.<br></p>
					<p style="font-family: inherit; padding-left: 10px; padding-top: 10px; padding-right: 10px;">※ 가입하시기 전 투자대상, 환매방법 및 보수 등에 관하여 설명서*를 확인하시고 상품의 내용을 충분히 이해한 후 투자여부를 결정하시기 바랍니다.<br>
																												   * (간이)투자설명서, 사모집합투자증권 상품설명서/(요약)제안서, 특정금전신탁 상품설명서 등</p>
				</div>
				<p style="font-family: inherit; padding-left: 30px; padding-top: 10px; padding-right: 10px;">금융소비자 불이익 사항에 대하여 우선적으로 설명 듣고 이해하였음<input type="checkbox" style="margin-left: 30px;">확인함</p>
				<br>
			</div>
		</div>
		<button id="agreeBtn" style="font-size:10pt; width: 70px; height: 40px; color: white; background-color: #008B8B; border: none; margin-top: 30px; margin-left: 40%;">확인</button>
		<button id="unagreeBtn" style="font-size:10pt; width: 70px; height: 40px; color: DimGray; background-color: #F7F9FC; border: none;">취소</button>
	</section>
	<footer style="clear: both;">
		<br><br>
		<jsp:include page="/WEB-INF/include/footer.jsp" />
	</footer>
</body>
</html>