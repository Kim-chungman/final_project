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
        
        <title>Hana Solution - 재무설계란?</title>
        
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
	                    	<a href="${ pageContext.request.contextPath }/assetManagement/explain" title="재무설계" class="manageMenu" style="color: #008B8B; font-size: 11pt;">재무설계란?</a>
	                    </div>
	                    <div class="hentry-post group">
	                        <a href="${ pageContext.request.contextPath }/assetManagement/investmentForm" title="재무설계" class="manageMenu" style="font-size: 11pt;">투자성향확인</a>
	                    </div>
	                    <div class="hentry-post group">
	                        <a href="${ pageContext.request.contextPath }/plan/expense" title="재무설계" class="manageMenu" style="font-size: 11pt;">소비지출분석</a>
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
	     <h2 style="margin: auto; color: #008B8B; font-family: inherit;">재무설계란?</h2><br><br>
         <div class="tabs-container" style="width:100%; margin: auto;">
             <ul class="tabs">
                 <li>
                     <h4><a href="#tab1" title="재무설계란" style="color: #ca874b; font-family: inherit;">재무설계란</a></h4>
                 </li>
                 <li>
                     <h4><a href="#tab2" title="리스크관리원칙/보험설계과정" style="color: #ca874b; font-family: inherit;">리스크관리원칙/보험설계과정</a></h4>
                 </li>
                 <li>
                     <h4><a href="#tab3" title="투자설계" style="color: #ca874b; font-family: inherit;">투자설계</a></h4>
                 </li>
                 <li>
                     <h4><a href="#tab4" title="재무설계과정주요원칙" style="color: #ca874b; font-family: inherit;">재무설계과정주요원칙</a></h4>
                 </li>
             </ul>
             <div class="border-box group">
                 <div id="tab1" class="panel group">
                     <h3 style="color: #008B8B; font-family: inherit;">재무설계란?</h3>
                     <p style="font-size: 11pt;">재무설계란 개인의 재정 자원을 가장 효율적으로 활용하여 목표를 달성할 수 있도록 전문가로부터 자문을 받는 하나의 과정입니다.</p>
                     <br>
                     <h3 style="color: #008B8B; font-family: inherit;">재무설계의 역할</h3>
                     <p style="font-size: 11pt;">재무설계를 하는 것은 의사, 변호사, 회계사가 전문적인 업무를 수행하는 것과 동일한 것으로, 기본 지식으로 할 수 있는 것이 아닙니다. 따라서 좋은 재무설계사를 만나는 것이 무엇보다 중요합니다. 재무설계사는 고객의 목표를 분석하고 전략적인 자문을 제공할 수 있어야 합니다. 그리고 그 목표를 달성할 수 있도록 정기적으로 고객의 포지셔닝을 검토하고, 바뀌는 고객 상황과 환경에 따라 전략을 변경할 수 있도록 합니다. 이와 같이 재무설계사는 전략을 잘 짜고 모니터를 해야 합니다.</p>
                 	 <br>
                 	 <h3 style="color: #008B8B; font-family: inherit;">생애주기에 맞는 재무설계의 중요성</h3>
                 	 <p style="font-size: 11pt;">재무설계는 인간의 전체 생애주기에 걸쳐 관련 된 것으로, 모든 사람에게 적용될 수 있습니다. 생애주기는 20대에서 30대 초반인 축적기, 30대 초반에서 40대 중반까지의 저축기, 40대 중반부터 50대 후반까지의 퇴직 전 시기, 그리고 50대 후반 이후의 퇴직시기로 구분되며, 단계별 중점사항, 필요사항 및 우려사항은 다음과 같습니다.</p>
                     <br>
                     <table style="width: 100%; height: 500px;">
                     	<tr>
                     		<th style="width: 18%;"><strong>구분</strong></th>
                     		<th style="width: 18%;"><strong>증식</strong></th>
                     		<th style="width: 24%;"><strong>저축</strong></th>
                     		<th style="width: 19%;"><strong>퇴직전</strong></th>
                     		<th style="width: 19%;"><strong>퇴직후</strong></th>
                     	</tr>
                     	<tr>
                     		<td style="text-align: center;"><strong>연령</strong></td>
                     		<td style="text-align: center; color: #008B8B;">20 ~ 30대초반</td>
                     		<td style="text-align: center; color: #008B8B;">30대초반 ~ 40대 후반</td>
                     		<td style="text-align: center; color: #008B8B;">40대 중반 ~ 50대 후반</td>
                     		<td style="text-align: center; color: #008B8B;">50대 후반 이후</td>
                     	</tr>
                     	<tr>
                     		<td style="text-align: center;"><strong>중점</strong></td>
                     		<td style="text-align: center; color: #008B8B;">경력구축 ＆ 자산축적</td>
                     		<td style="text-align: center; color: #008B8B;">자산축적 및 증식</td>
                     		<td style="text-align: center; color: #008B8B;">자산증식</td>
                     		<td style="text-align: center; color: #008B8B;">자산보존</td>
                     	</tr>
                     	<tr>
                     		<td style="text-align: center;"><strong>저축능력</strong></td>
                     		<td style="text-align: center; color: #008B8B;">낮음</td>
                     		<td style="text-align: center; color: #008B8B;">늘어남</td>
                     		<td style="text-align: center; color: #008B8B;">높음</td>
                     		<td style="text-align: center; color: #008B8B;">줄어듬</td>
                     	</tr>
                     	<tr>
                     		<td style="text-align: center;"><strong>단기필요사항 및 우려사항</strong></td>
                     		<td style="text-align: center; color: #008B8B;">채무상환,<br> 주택구입,<br> 차량구매</td>
                     		<td style="text-align: center; color: #008B8B;">채무상환,<br> 자녀의 현재 교육 및 과외비,<br> 자산축적</td>
                     		<td style="text-align: center; color: #008B8B;">채무상환,<br> 자녀의 고등교육,<br> 창업,<br> 주택개량,<br> 자산증식</td>
                     		<td style="text-align: center; color: #008B8B;">포트폴리오 재구성,<br> 재산증여,<br> 자산보존</td>
                     	</tr>
                     	<tr>
                     		<td style="text-align: center;"><strong>장기필요사항 및 우려사항</strong></td>
                     		<td style="text-align: center; color: #008B8B;">가족형성시작,<br>
														  자녀의 향후 교육문제,<br>
													      자산축적노후설계,<br>
														  가치증식
							</td>
                     		<td style="text-align: center; color: #008B8B;">자녀의 고등교육,<br>
														  노후설계,<br> 
														  가치증식
							</td>
                     		<td style="text-align: center; color: #008B8B;">노후설계,<br>
								                          자산보존,<br>
								                          가치증식 및 소득
                     		</td>
                     		<td style="text-align: center; color: #008B8B;">자산설계,<br>
								                     	  가치증식,<br>
								                     	  자산소비,<br>
								                     	  높은소득
                     		</td>
                     	</tr>
                     </table>
                     <br>
                 	 <h3 style="color: #008B8B; font-family: inherit;">재무설계의 6단계과정</h3>
                     <p style="font-size: 11pt;">효과적인 재무설계는 6단계 과정으로 이루어집니다.</p><br>
                     <p style="font-size: 10pt;"><strong>① 정성적 및 정량적 자료를 취합해야 합니다.</strong></p><br>
                     <p style="font-size: 10pt;">재무설계 시 수집하는 정보는 의뢰인의 모든 상황에 대해 자문을 제공할 때 매우 중요한 역할을 합니다. 정성적 데이터는 가족관련 세부사항, 비즈니스 관심사항 및 건강정보를 포함합니다. 정량적 데이터는 측정이 가능한 정보 및 재무적 사실을 포함합니다.</p><br>
                     <p style="font-size: 10pt;"><strong>② 목표를 정해야 합니다.</strong></p><br>
                     <p style="font-size: 10pt;">의뢰인의 목표를 알지 못하면 재무자문을 제공할 수 없기 때문에 목표를 수립하고 설정하는 것은 매우 중요합니다. 이 때 목표는 측정 가능해야 합니다. 측정 가능하지 않은 목표는 목표가 될 수 없다는 것을 기억하시기 바랍니다.</p><br>
                     <p style="font-size: 10pt;"><strong>③ 재무문제를 파악해야 합니다.</strong></p><br>
                     <p style="font-size: 10pt;">의뢰인이 목표달성을 위해 자원을 활용하는 방식에 문제점을 알아야 합니다. 재정자원 및 목표가 파악되어야 재무전략 결정을 하고, 전략을 시행할 수 있습니다. 예를 들어, 7년 후에 은퇴할 고객이 당좌계좌에 50만 달러를 보유하고 있다면, 문제가 있는 것입니다. 은퇴 후를 대비하기 위해 이자가 발생하지 않거나 성장 가능성이 없는 계좌에 자금을 예치하기 보다는, 앞으로 7년간 이 자금을 효율적으로 운용해야 하기 때문입니다</p><br>
                     <p style="font-size: 10pt;"><strong>④ 투자제안서를 작성해야 합니다.</strong></p><br>
                     <p style="font-size: 10pt;">서면 권고 준비는 재무계획의 준비단계입니다.</p><br>
                     <p style="font-size: 10pt;"><strong>⑤ 상호동의한 설계를 준비해 실행해야 합니다.</strong></p><br>
                     <p style="font-size: 10pt;">의뢰인과 합의한 계획 실행 단계는 관리상의 업무이며 재무상담사의 조율 하에 여러 명의 전문가가 실시해야 합니다.</p><br>
                     <p style="font-size: 10pt;"><strong>⑥ 개인의 재정설계를 검토, 수정 및 관리해야 합니다</strong></p><br>
                     <p style="font-size: 10pt;">재무설계는 거래행위가 아닙니다. 일단 재무 전략을 실행하고 나면, 그 이후 최소한 1년에 한번은 관련지표와 대조검토를 통해 투자 및 목표 달성까지의 진척정도를 측정해야 합니다. 이를 통해 재무설계사는 의뢰인의 목표 달성 과정에서 필요한 전략 조정에 대해 지속적으로 조언할 수 있습니다.</p><br>
                     
                 </div>
                 <div id="tab2" class="panel group">
                 	 <h3 style="color: #008B8B; font-family: inherit;">리스크 관리의 기본원칙</h3><br>
                 	 <ul>
                 	 	<li style="font-size: 11pt;">손실을 받아들일 수 있는 이상의 리스크를 감수하지 말아야 합니다. 투자를 할때 투자금액 전부를 한 종목에 투자할 경우, 그 종목이 하락하면 모든 것을 잃게 됩니다. 따라서 분산투자를 해야 합니다.</li>
                 	 	<li style="font-size: 11pt;">확률을 고려해야 합니다. 발생가능성이 높은 리스크일 경우 보험을 고려해야 합니다. 반면에 리스크의 발생가능성이 낮을 경우, 리스크를 이전할 필요성이 낮아집니다.</li>
                 	 	<li style="font-size: 11pt;">낮은 수익을 위해 높은 리스크를 감수하지 말아야 합니다. 시세가 10억인 아파트의 보장을 위해 1년에 보험료 5만원을 지불하지 않을 이유가 없듯이, 리스크 이전 비용을 잘 파악하고 판단해야 합니다.</li>
                 	 </ul>
                     <br>
                     <h3 style="color: #008B8B; font-family: inherit;">보험설계과정</h3><br>
                     <p style="font-size: 11pt;"><strong>① 데이터 수집</strong></p><br>
                     <p style="font-size: 11pt;"><strong>② 목표파악</strong></p><br>
                     <p style="font-size: 11pt;"><strong>③ 리스트평가 및 수치화</strong></p><br>
                     <p style="font-size: 11pt;"><strong>④ 해결책(상품)제시</strong></p><br>
                     <p style="font-size: 11pt;"><strong>⑤ 실행</strong></p><br>
                     <p style="font-size: 9pt;">※사실파악 및 자료취합을 통해 리스크 익스포져를 이해하고 정량화 해야 합니다. 그리고 다양한 익스포져를 분석하고 리스크 관리 기법을 적용하여, 이의 원칙을 검토해야 합니다. 마지막으로 적절한 상품 및 비상품 해결 안을 실행해야 합니다.</p><br>
                     
                 </div>
                 <div id="tab3" class="panel group">
                 	 <p style="color: #008B8B; font-size: 11pt;"><strong>포트폴리오의 실적은 자산 종류의 선택 혹은 시장에 계속 참여하기로 하는 결정 여부에 있습니다. 투자자들은 분산투자를 통해 리스크를 줄여 손실 확률을 높일 수 있습니다.</strong></p><br>
                     <h3 style="color: #008B8B; font-family: inherit;">분산투자의 원칙 및 확신</h3><br>
                 	 <ul>
                 	 	<li style="font-size: 11pt;">자본시장은 효율적이고 제 기능을 수행하기 때문에, 투자의 목적으로 자산가격은 적정하게 책정해야 합니다.</li>
                 	 	<li style="font-size: 11pt;">리스크와 수익률간에 상관관계가 존재하기 때문에 가격에 반영된 리스크 요인에 따라 기대수익률이 결정됩니다.</li>
                 	 	<li style="font-size: 11pt;">분산투자는 불확실성을 감소시키기 때문에 필수적입니다.</li>
                 	 	<li style="font-size: 11pt;">분산투자된 포트폴리오의 수익률 결정요인은 원칙적인 자산배분이므로, 적절한 투자구조의 모습을 보여야 합니다</li>
                 	 </ul>
                     <br>
                     <h3 style="color: #008B8B; font-family: inherit;">세가지 리스크 요인</h3><br>
                 	 <ul>
                 	 	<li style="font-size: 11pt;">시장 요인으로는 주식의 가치 가중 전체집합으로 정의하며, 대체로 주식의 기대수익률이 채권보다 높습니다.</li>
                 	 	<li style="font-size: 11pt;">기업규모 효과는 소형주의 자본비용이 높고, 이에 따라 대형주에 비해 기대수익률이 높은 것을 말합니다.</li>
                 	 	<li style="font-size: 11pt;">가치효과는 가격에 낮게 책정된 가치주의 기대수익률이 가격이 높게 형성된 성장주보다 높은 것을 말합니다.</li>
                 	 	<li style="font-size: 11pt;">이는 상대적으로 재무적 어려움에 처해있는 가치주의 자본비용이 높기 때문에 이에 따라 기대수익률도 높기 때문입니다.</li>
                 	 </ul>
                     <br>
                     <h3 style="color: #008B8B; font-family: inherit;">포트폴리오 구성</h3><br>
                 	 <ul>
                 	 	<li style="font-size: 11pt;">기본적으로 최소한 시장 수익률을 보장할 수 있는 포트폴리오를 구성해야 합니다.</li>
                 	 	<li style="font-size: 11pt;">연구조사 등에 의해서 파악된 세가지 리스크 요인 중 한가지를 추구하도록 해야합니다.</li>
                 	 	<li style="font-size: 11pt;">거래비용을 최소화하고, 넷째로 매매비용을 최소화해서 수익률을 향상시켜야 합니다.</li>
                 	 </ul>
                     <br>
                 </div>
                 <div id="tab4" class="panel group">
                     <p style="color: #008B8B; font-size: 11pt;"><strong>재무설계를 할 때 앞서 본 보험, 투자 및 노후설계를 통합할 수 있어야 합니다.</strong></p><br>
                     <h3 style="color: #008B8B; font-family: inherit;">목표 및 목적 결정</h3><br>
                 	 <ul>
                 	 	<li style="font-size: 11pt;">목표는 자신의 상황에 맞게 결정하는 것이기 때문에 기준이 없습니다.</li>
                 	 	<li style="font-size: 11pt;">그러나 모호한 재정 목표 대신 합리적이고 현실적인 목표를 설정할 수 있어야 합니다.</li>
                 	 	<li style="font-size: 11pt;">"저는 재정적으로 자립하고 싶습니다"라는 표현은 전혀 뜻하는 바가 없습니다.</li>
                 	 	<li style="font-size: 11pt;">"은퇴 후에는 은퇴 전 임금의 70%의 수입을 갖고 싶습니다"와 같이, 이슈가 들어 나고 숫자로 표현된 구체적인 목표이어야 합니다. 또한 단기 및 장기 목표 별로 적절한 목표 달성 시간표가 정해져 있어야 합니다.</li>
                 	 	<li style="font-size: 11pt;">이 시간표는 우선 순위에 따라 순서가 정해져야 합니다.</li>
                 	 </ul>
                     <br>
                     <h3 style="color: #008B8B; font-family: inherit;">현재 상황 분석</h3><br>
                 	 <ul>
                 	 	<li style="font-size: 11pt;">자신의 현재 상태는 어떠하고, 목표 달성을 위해 필요한 조치 및 투자구조가 무엇인지 알아야 합니다.</li>
                 	 	<li style="font-size: 11pt;">세금을 최소화할 수 있는 기회가 있는지, 또 상속설계 목적이 무엇인지도 생각해봐야 합니다.</li>
                 	 	<li style="font-size: 11pt;">재정상태의 강점 및 약점을 분석하고, 재무 목표 달성을 방해할 수 있는 잠재적 위험을 알아, 보다 전략적인 재무설계를 할 수 있도록 해야 합니다.</li>
                 	 </ul>
                     <br>
                     <h3 style="color: #008B8B; font-family: inherit;">과정 단계 검토</h3><br>
                 	 <ul>
                 	 	<li style="font-size: 11pt;">우선 설계 검토 및 모니터링에 있어서 재무설계사의 역할을 명시하는 서면 계약서의 작성이 요망됩니다.</li>
                 	 	<li style="font-size: 11pt;">목표, 목적, 니즈 등에 대한 검토가 일년에 1회 이상 검토되어야 하고, 리스크 성향이 바뀔 수도 있기 때문에 검토할 때 마다 논의를 해야 합니다. 또한 모든 법규 및 경제상황의 변화가 투자 여건에 미치는 영향에 대해서도 논의가 필요합니다.</li>
                 	 	<li style="font-size: 11pt;">투자상품을 관련 지수에 대비해 평가하여 시장초과수익률을 측정하여 재무 목표를 달성하기 위한 진전사항을 알아봐야 합니다. 이를 통해 계획대로 진행되고 있지 않으면, 시정조치를 취할 수 있습니다.</li>
                 	 </ul>
                     <br>
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