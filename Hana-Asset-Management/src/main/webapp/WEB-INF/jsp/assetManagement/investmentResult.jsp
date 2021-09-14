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
            width: 50%;                         
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
			                <c:if test="${ investType eq '안정형' }">
				                <p style="text-align: center; line-height: 1.5; font-size: 15pt; color: #008B8B;"><br />${ userVO.name }<span style="color: black;">님은</span></p>
				                <p style="text-align: center; line-height: 1.5; font-size: 15pt;"><span style="color: red; text-decoration: underline;">${ investType }</span>입니다.</p>
				                <p><br /></p>
			                </c:if>
			                <c:if test="${ investType ne '안정형' }">
				                <p style="text-align: center; line-height: 1.5; font-size: 15pt; color: #008B8B;"><br />${ userVO.name }<span style="color: black;">님</span></p>
				                <p style="text-align: center; line-height: 1.5; font-size: 15pt;">총점 <span style="color: red; text-decoration: underline;">${ score }점</span>으로</p>
				                <p style="text-align: center; line-height: 1.5; font-size: 15pt; color: #FF4500;"> ${ investType }입니다.</p>
				                <p><br /></p>
			                </c:if>
			                <table style="width: 100%; height: 600px;">
			                	<tr>
			                		<th style="font-size: 12pt;">투자성향</th>
			                		<th style="font-size: 12pt;">투자성향 설명</th>
			                		<th style="font-size: 12pt;">적합한 상품 위험등급</th>
			                	</tr>
			                	<tr style="background-color: white;">
			                		<td style="text-align: center; width: 20%; font-size: 12pt;">
			                			<c:if test="${ investType eq '안정형' }"><span style="color: red;">안정형<br>42점 이하</span></c:if>
			                			<c:if test="${ investType ne '안정형' }">안정형<br>42점 이하</c:if>
			                		</td>
			                		<td style="font-size: 12pt;">
			                			<c:if test="${ investType eq '안정형' }"><span style="color: red;">예금 또는 적금 수준의 수익률을 기대하며, 투자원금에 손실이 발생하는 것을 원하지 않습니다.</span></c:if>
			                			<c:if test="${ investType ne '안정형' }">예금 또는 적금 수준의 수익률을 기대하며, 투자원금에 손실이 발생하는 것을 원하지 않습니다.</c:if>
			                		</td>
			                		<td style="text-align: center; width: 20%; font-size: 12pt;">
			                			<c:if test="${ investType eq '안정형' }"><span style="color: red;">매우낮은위험<br>(6등급)상품</span></c:if>
			                			<c:if test="${ investType ne '안정형' }">매우낮은위험<br>(6등급)상품</c:if>
			                		</td>
			                	</tr>
			                	<tr>
			                		<td style="text-align: center; width: 20%; font-size: 12pt;">
			                			<c:if test="${ investType eq '안정추구형' }"><span style="color: red;">안정추구형<br>43~54점 이하</span></c:if>
			                			<c:if test="${ investType ne '안정추구형' }">안정추구형<br>43~54점 이하</c:if>
			                		</td>
			                		<td style="font-size: 12pt;">
			                			<c:if test="${ investType eq '안정추구형' }"><span style="color: red;">투자원금 손실위험은 최소화하고 이자소득이나 배당소득 수준의 안정적인 투자를 목표로 합니다.
			                			다만, 수익을 위해 단기적인 손실을 수용할 수 있으며 예 적금보다 높은 수익을 위해 자산 중 일부를 변동성 높은 상품에 투자할 의향이 있습니다.</span></c:if>
			                			<c:if test="${ investType ne '안정추구형' }">투자원금 손실위험은 최소화하고 이자소득이나 배당소득 수준의 안정적인 투자를 목표로 합니다.
			                			다만, 수익을 위해 단기적인 손실을 수용할 수 있으며 예 적금보다 높은 수익을 위해 자산 중 일부를 변동성 높은 상품에 투자할 의향이 있습니다.</c:if>
			                		</td>
			                		<td style="text-align: center; width: 20%; font-size: 12pt;">
			                			<c:if test="${ investType eq '안정추구형' }"><span style="color: red;">낮은위험<br>(5등급) 이하 상품</span></c:if>
			                			<c:if test="${ investType ne '안정추구형' }">낮은위험<br>(5등급) 이하 상품</c:if>
			                		</td>
			                	</tr>
			                	<tr style="background-color: white;">
			                		<td style="text-align: center; width: 20%; font-size: 12pt;">
			                			<c:if test="${ investType eq '위험중립형' }"><span style="color: red;">위험중립형<br>55~67점 이하</span></c:if>
			                			<c:if test="${ investType ne '위험중립형' }">위험중립형<br>55~67점 이하</c:if>
			                		</td>
			                		<td style="font-size: 12pt;">
			                			<c:if test="${ investType eq '위험중립형' }"><span style="color: red;">투자에는 그에 상응하는 투자위험이 있음을 충분히 인식하고 있으며, 예 적금보다 높은 수익을 기대할 수 있다면 일정수준의 손실위험을 감수할 수 있습니다.</span></c:if>
			                			<c:if test="${ investType ne '위험중립형' }">투자에는 그에 상응하는 투자위험이 있음을 충분히 인식하고 있으며, 예 적금보다 높은 수익을 기대할 수 있다면 일정수준의 손실위험을 감수할 수 있습니다.</c:if>
			                		</td>
			                		<td style="text-align: center; width: 20%; font-size: 12pt;">
			                			<c:if test="${ investType eq '위험중립형' }"><span style="color: red;">보통위험<br>(4등급)이하 상품</span></c:if>
			                			<c:if test="${ investType ne '위험중립형' }">보통위험<br>(4등급)이하 상품</c:if>
			                		</td>
			                	</tr>
			                	<tr>
			                		<td style="text-align: center; width: 20%; font-size: 12pt;">
			                			<c:if test="${ investType eq '적극투자형' }"><span style="color: red;">적극투자형<br>68~80점 이하</span></c:if>
			                			<c:if test="${ investType ne '적극투자형' }">적극투자형<br>68~80점 이하</c:if>
			                		</td>
			                		<td style="font-size: 12pt;">
			                			<c:if test="${ investType eq '적극투자형' }"><span style="color: red;">투자원금의 보존보다는 위험을 감내하더라도 높은 수준의 투자수익 실현을 추구합니다.
			                			투자자금의 상당부분을 주식, 주식형펀드 또는 파생상품등의 위험자산에 투자할 의향이 있습니다.</span></c:if>
			                			<c:if test="${ investType ne '적극투자형' }">투자원금의 보존보다는 위험을 감내하더라도 높은 수준의 투자수익 실현을 추구합니다.
			                			투자자금의 상당부분을 주식, 주식형펀드 또는 파생상품등의 위험자산에 투자할 의향이 있습니다.</c:if>
			                		</td>
			                		<td style="text-align: center; width: 20%; font-size: 12pt;">
			                			<c:if test="${ investType eq '적극투자형' }"><span style="color: red;">다소높은위험<br>(3등급)이하 상품</span></c:if>
			                			<c:if test="${ investType ne '적극투자형' }">다소높은위험<br>(3등급)이하 상품</c:if>
			                		</td>
			                	</tr>
			                	<tr style="background-color: white;">
			                		<td style="text-align: center; width: 20%; font-size: 12pt;">
			                			<c:if test="${ investType eq '공격투자형' }"><span style="color: red;">공격투자형<br>81점 이상</span></c:if>
			                			<c:if test="${ investType ne '공격투자형' }">공격투자형<br>81점 이상</c:if>
			                		</td>
			                		<td style="font-size: 12pt;">
			                			<c:if test="${ investType eq '공격투자형' }"><span style="color: red;">시장평균 수익률을 넘어서는 높은 수준의 투자수익을 추구하며, 이를 위해 자산가치의 변동에 따른 손실 위험을 적극수용, 투자자금 대부분을 주식, 주식형펀드 또는 파생상품등의 위험자산에 투자할 의향이 있습니다.</span></c:if>
			                			<c:if test="${ investType ne '공격투자형' }">시장평균 수익률을 넘어서는 높은 수준의 투자수익을 추구하며, 이를 위해 자산가치의 변동에 따른 손실 위험을 적극수용, 투자자금 대부분을 주식, 주식형펀드 또는 파생상품등의 위험자산에 투자할 의향이 있습니다.</c:if>
			                		</td>
			                		<td style="text-align: center; width: 20%; font-size: 12pt;">
			                			<c:if test="${ investType eq '공격투자형' }"><span style="color: red;">매우높은위험<br>(1등급)이하 상품</span></c:if>
			                			<c:if test="${ investType ne '공격투자형' }">매우높은위험<br>(1등급)이하 상품</c:if>
			                		</td>
			                	</tr>
			                </table>
			            <div style="cursor:pointer;background-color:#DDDDDD;text-align: center;padding-bottom: 10px;padding-top: 10px; margin-top: 20px;" onClick="close_pop();">
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
				<c:if test="${ investType eq '안정형' }">
					<img alt="안정형" src="${ pageContext.request.contextPath }/resources/images/investmentType/safety.png" style="display: block; margin: auto;">
				</c:if>
				<c:if test="${ investType eq '안정추구형' }">
					<img alt="안정추구형" src="${ pageContext.request.contextPath }/resources/images/investmentType/safetyPursuit.png" style="display: block; margin: auto;">
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