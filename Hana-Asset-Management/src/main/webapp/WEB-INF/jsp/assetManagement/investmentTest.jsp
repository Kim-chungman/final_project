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
			
			$('#unagreeBtn').click(function() {
				location.href= "${ pageContext.request.contextPath }/";
			})
			
			$('#helpBtn').click(function() {
				location.href= "${ pageContext.request.contextPath }/counseling";
			})
			
		})
		
		function checkOnlyOne(element) {
  
		  const checkboxes 
		      = document.getElementsByName("q1");
		  
		  checkboxes.forEach((cb) => {
		    cb.checked = false;
		  })
		  
		  element.checked = true;
		}
		
		function checkOnlyOne2(element) {
			  
		  const checkboxes 
		      = document.getElementsByName("q2");
		  
		  checkboxes.forEach((cb) => {
		    cb.checked = false;
		  })
		  
		  element.checked = true;
		}
		
		function checkOnlyOne3(element) {
			  
		  const checkboxes 
		      = document.getElementsByName("q3");
		  
		  checkboxes.forEach((cb) => {
		    cb.checked = false;
		  })
		  
		  element.checked = true;
		}
		
		function checkOnlyOne4(element) {
			  
			  const checkboxes 
			      = document.getElementsByName("q4");
			  
			  checkboxes.forEach((cb) => {
			    cb.checked = false;
			  })
			  
			  element.checked = true;
			}
		
		function checkOnlyOne5(element) {
			  
			  const checkboxes 
			      = document.getElementsByName("q5");
			  
			  checkboxes.forEach((cb) => {
			    cb.checked = false;
			  })
			  
			  element.checked = true;
			}
		
		function checkOnlyOne6(element) {
			  
			  const checkboxes 
			      = document.getElementsByName("q6");
			  
			  checkboxes.forEach((cb) => {
			    cb.checked = false;
			  })
			  
			  element.checked = true;
			}
		
		function checkOnlyOne8(element) {
			  
		  const checkboxes 
		      = document.getElementsByName("q8");
		  
		  checkboxes.forEach((cb) => {
		    cb.checked = false;
		  })
		  
		  element.checked = true;
		}
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
	                    <div class="hentry-post group">
	                        <a href="#" title="재무설계" class="manageMenu" style="font-size: 11pt;">연령별재무설계</a>
	                    </div>
	                    <div class="hentry-post group">
	                        <a href="#" title="재무설계" class="manageMenu" style="font-size: 11pt;">목표재무설계</a>
	                    </div>
	                    <div class="hentry-post group">
	                        <a href="#" title="재무설계" class="manageMenu" style="font-size: 11pt;">fun한재무설계</a>
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
					<td id="tdNum">3 분석결과</td>
					<td id="tdNum">4 설계받기</td>
				</tr>
			</table>
		</div>
		<div style="margin-top: 20px;">
			<h5 style="font-size: 13pt; font-family: inherit; text-align: center; margin-right: 100px;"><strong>※투자성향분석</strong></h5>
			<p style="font-family: inherit; font-size:12pt; padding-left: 10px; padding-top: 10px; padding-right: 10px;">다음 8개 문항에 답해주세요</p>
		</div>
		<div>
			<form action="${ pageContext.request.contextPath }/assetManagement/investmentResult" method="post">
				<input type="hidden" name="id" value="${ userVO.id }">
				<table style="width: 900px; align-content: center; margin-right: 100px;">
					<tr style="background-color: #F7F9FC;">
						<td style="padding:5px; font-size: 13pt; font-family: inherit; padding-left: 10px;"><strong>1. 금융투자상품의 취득 및 처분목적을 선택해주세요</strong></td>
					</tr>
					<tr style="background-color: #F7F9FC;">
						<td style="font-size: 12pt; font-family: inherit; padding-left: 10px;">
							<input type="checkbox" name="q1" value="1" onclick='checkOnlyOne(this)'>생활자금<br>
							<input type="checkbox" name="q1" value="2" onclick='checkOnlyOne(this)'>주택자금<br>
							<input type="checkbox" name="q1" value="3" onclick='checkOnlyOne(this)'>노후자금<br>
							<input type="checkbox" name="q1" value="4" onclick='checkOnlyOne(this)'>여유자금<br><br>
						</td>
					</tr>
					<tr style="background-color: #F7F9FC;">
						<td style="padding:5px; font-size: 13pt; font-family: inherit; padding-left: 10px;"><strong>2. 본인의 연령대를 선택해주세요</strong></td>
					</tr>
					<tr style="background-color: #F7F9FC;">
						<td style="font-size: 12pt; font-family: inherit; padding-left: 10px;">
							<c:if test="${ msg eq '10대' }">
								<input type="checkbox" name="q2" value="2.5" onclick='checkOnlyOne2(this)' checked="checked">19세 이하<br>
							</c:if>
							<c:if test="${ msg ne '10대' }">
								<input type="checkbox" name="q2" value="2.5" onclick='checkOnlyOne2(this)' disabled="disabled">19세 이하<br>
							</c:if>
							<c:if test="${ msg eq '20대' }">
								<input type="checkbox" name="q2" value="2.5" onclick='checkOnlyOne2(this)' checked="checked">20대<br>
							</c:if>
							<c:if test="${ msg ne '20대' }">
								<input type="checkbox" name="q2" value="2.5" onclick='checkOnlyOne2(this)' disabled="disabled">20대<br>
							</c:if>
							<c:if test="${ msg eq '30대' }">
								<input type="checkbox" name="q2" value="2" onclick='checkOnlyOne2(this)' checked="checked">30대<br>
							</c:if>
							<c:if test="${ msg ne '30대' }">
								<input type="checkbox" name="q2" value="2" onclick='checkOnlyOne2(this)' disabled="disabled">30대<br>
							</c:if>
							<c:if test="${ msg eq '40대' }">
								<input type="checkbox" name="q2" value="1.5" onclick='checkOnlyOne2(this)' checked="checked">40대<br>
							</c:if>
							<c:if test="${ msg ne '40대' }">
								<input type="checkbox" name="q2" value="1.5" onclick='checkOnlyOne2(this)' disabled="disabled">40대<br>
							</c:if>
							<c:if test="${ msg eq '50대' }">
								<input type="checkbox" name="q2" value="1" onclick='checkOnlyOne2(this)' checked="checked">50대<br>
							</c:if>
							<c:if test="${ msg ne '50대' }">
								<input type="checkbox" name="q2" value="1" onclick='checkOnlyOne2(this)' disabled="disabled">50대<br>
							</c:if>
							<c:if test="${ msg eq '60대' }">
								<input type="checkbox" name="q2" value="0.5" onclick='checkOnlyOne2(this)' checked="checked">60대 이상<br><br>
							</c:if>
							<c:if test="${ msg ne '60대' }">
								<input type="checkbox" name="q2" value="0.5" onclick='checkOnlyOne2(this)' disabled="disabled">60대 이상<br><br>
							</c:if>
						</td>
					</tr>
					<tr style="background-color: #F7F9FC;">
						<td style="padding:5px; font-size: 13pt; font-family: inherit; padding-left: 10px;"><strong>3. 현재 투자하는 자금에 대하여 기대수익 및 손실위험에 대한 태도를 선택해주세요.</strong></td>
					</tr>
					<tr style="background-color: #F7F9FC;">
						<td style="font-size: 12pt; font-family: inherit; padding-left: 10px;">
							<input type="checkbox" name="q3" value="10" onclick='checkOnlyOne3(this)'>기대수익이 높다면 위험이 높아도 상관하지 않아요.<br>
							<input type="checkbox" name="q3" value="8.5" onclick='checkOnlyOne3(this)'>투자원금에서 20% 초과 ~ 100% 이내의 손실을 감내할 수 있어요.<br>
							<input type="checkbox" name="q3" value="6" onclick='checkOnlyOne3(this)'>투자원금에서 20% 이내까지 손실을 감내할 수 있어요.<br>
							<input type="checkbox" name="q3" value="3" onclick='checkOnlyOne3(this)'>투자원금에서 10% 이내까지 손실을 감내할 수 있어요.<br>
							<input type="checkbox" name="q3" value="1" onclick='checkOnlyOne3(this)'>무슨 일이 있어도 투자 원금은 보전되어야 해요.<br><br>
						</td>
					</tr>
					<tr style="background-color: #F7F9FC;">
						<td style="padding:5px; font-size: 13pt; font-family: inherit; padding-left: 10px;"><strong>4. 현재 투자하는 자금의 투자 예정기간을 선택해주세요.</strong></td>
					</tr>
					<tr style="background-color: #F7F9FC;">
						<td style="font-size: 12pt; font-family: inherit; padding-left: 10px;">
							<input type="checkbox" name="q4" value="2.5" onclick='checkOnlyOne4(this)'>3년 이상<br>
							<input type="checkbox" name="q4" value="2" onclick='checkOnlyOne4(this)'>2년 이상 ~ 3년 미만<br>
							<input type="checkbox" name="q4" value="1.5" onclick='checkOnlyOne4(this)'>1년 이상 ~ 2년 미만<br>
							<input type="checkbox" name="q4" value="1" onclick='checkOnlyOne4(this)'>6개월 이상 ~ 1년 미만<br>
							<input type="checkbox" name="q4" value="0.5" onclick='checkOnlyOne4(this)'>6개월 미만<br>
							<input type="checkbox" name="q4" value="2.5" onclick='checkOnlyOne4(this)'>투자상품 특정만기일까지 보유(ELF. ELT. 목표전환형 등)<br>
							 ※1년 미만 선택시 ELF 가입불가<br><br>
						</td>
					</tr>
					<tr style="background-color: #F7F9FC;">
						<td style="padding:5px; font-size: 13pt; font-family: inherit; padding-left: 10px;"><strong>5. 총 자산대비 투자상품의 비중은 얼마나 되시나요?</strong></td>
					</tr>
					<tr style="background-color: #F7F9FC;">
						<td style="font-size: 12pt; font-family: inherit; padding-left: 10px;">
							<input type="checkbox" name="q5" value="1" onclick='checkOnlyOne5(this)'>5% 이하<br>
							<input type="checkbox" name="q5" value="2" onclick='checkOnlyOne5(this)'>10% 이하<br>
							<input type="checkbox" name="q5" value="2.5" onclick='checkOnlyOne5(this)'>15% 이하<br>
							<input type="checkbox" name="q5" value="3" onclick='checkOnlyOne5(this)'>20% 이하<br>
							<input type="checkbox" name="q5" value="3.5" onclick='checkOnlyOne5(this)'>25% 초과<br><br>
						</td>
					</tr>
					<tr style="background-color: #F7F9FC;">
						<td style="padding:5px; font-size: 13pt; font-family: inherit; padding-left: 10px;"><strong>6. 다음 중 손님의 수입원을 가장 잘 나타낸 것을 선택해 주세요.</strong></td>
					</tr>
					<tr style="background-color: #F7F9FC;">
						<td style="font-size: 12pt; font-family: inherit; padding-left: 10px;">
							<input type="checkbox" name="q6" value="5.5" onclick='checkOnlyOne6(this)'>현재 일정한 수입이 발생하고 있으며, 향후 현재 수준을 유지하거나 증가할 것으로 예상해요<br>
							<input type="checkbox" name="q6" value="3.5" onclick='checkOnlyOne6(this)'>현재 일정한 수입이 발생하고 있으나, 향후 감소하거나 불안정할 것으로 예상해요.<br>
							<input type="checkbox" name="q6" value="1" onclick='checkOnlyOne6(this)'>현재 일정한 수입이 없거나, 연금 등이 주 수입원이에요.<br><br>
						</td>
					</tr>
					<tr style="background-color: #F7F9FC;">
						<td style="padding:5px; font-size: 13pt; font-family: inherit; padding-left: 10px;"><strong>7. 손님의 투자경험과 가장 가까운 항목을 선택해 주세요.(중복선택가능)</strong></td>
					</tr>
					<tr style="background-color: #F7F9FC;">
						<td style="font-size: 12pt; font-family: inherit; padding-left: 10px;">
							<input type="checkbox" name="q7_1" value="1">은행 예적금, 국채, 지방채, 보증채, MMF, CMA 등<br>
							<input type="checkbox" name="q7_2" value="2.5">채권형펀드, 원금보장형 ELS, 금융채, 신용도가 높은 회사채<br>
							<input type="checkbox" name="q7_3" value="3.5">혼합형펀드, 원금의 일부만 보장되는 ELS, 신용도도 중간 등급의 회사채 등<br>
							<input type="checkbox" name="q7_4" value="4.5">시장수익률 수준의 수익을 추구하는 주식형펀드, 원금이 보장되지 않는 ELS, 신용도가 낮은 회사채, 주식 등<br>
							<input type="checkbox" name="q7_5" value="5.5">시장수익률 이상의 수익을 추구하는 주식형펀드, 파생상품펀드, ELW, 선물옵션, 주식, 신용거래 등<br><br>
						</td>
					</tr>
					<tr style="background-color: #F7F9FC;">
						<td style="padding:5px; font-size: 13pt; font-family: inherit; padding-left: 10px;"><strong>8. 금융상품 투자에 대한 손님의 지식수준이 어는정도라고 생각하시나요?</strong></td>
					</tr>
					<tr style="background-color: #F7F9FC;">
						<td style="font-size: 12pt; font-family: inherit; padding-left: 10px;">
							<input type="checkbox" name="q8" value="5.5" onclick='checkOnlyOne8(this)'>파생상품을 포함한 대부분의 금융상품의 구조 및 위험을 이해하고 있어요<br>
							<input type="checkbox" name="q8" value="4" onclick='checkOnlyOne8(this)'>널리 알려진 금융투자상품(주식, 채권 및 펀드 등)의 구조 및 위험을 깊이 있게 이해하고 있어요.<br>
							<input type="checkbox" name="q8" value="2.5" onclick='checkOnlyOne8(this)'>널리 알려진 금융투자상품(주식, 채권 및 펀드 등)의 구조 및 위험을 일정 부분 이해하고 있어요.<br>
							<input type="checkbox" name="q8" value="1" onclick='checkOnlyOne8(this)'>금융상품 중 예적금에 대해서만 이해하고 있어요.<br><br>
						</td>
					</tr>
				</table>
			<input type="submit" value="제출" style="font-size:13pt; width: 70px; height: 40px; color: white; background-color: #008B8B; border: none; margin-top: 30px; margin-left: 40%; cursor: pointer;">
			<button type="button" id="unagreeBtn" style="font-size:12pt; width: 70px; height: 40px; color: DimGray; background-color: #F7F9FC; border: none; cursor: pointer;">취소</button>
			</form>
			
		</div>
	</section>
	<footer style="clear: both;">
		<br><br>
		<jsp:include page="/WEB-INF/include/footer.jsp" />
	</footer>
</body>
</html>