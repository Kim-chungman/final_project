<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.2, user-scalable=yes" />
<title>Hana Solution - 포트폴리오</title>
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
		
		<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/plan/ow.css" type="text/css">
		
		<script type="text/javascript" src="https://www.google.com/jsapi"></script>
		<script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>

   google.charts.load("current", {packages:["corechart"]});
	/* 
   google.load('visualization','1', {
      'packages' : ['corechart']
   })
    */
   google.setOnLoadCallback(drawChart);
   
   var id = '${ portfolio.member_id }';
   var username = '${ userVO.name }';
   var investP = '${ portfolio.investmentPeriod }';
   var investM = '${ portfolio.investmentMoney }';
   var investR = '${ portfolio.investmentRate }';
   var min = '${ portfolio.minPer }';
   var max = '${ portfolio.maxPer }';
   var type = '${ portfolio.investmentType }';
   var stand = '${ portfolio.sd }';   
   var beta = '${ portfolio.bm }';     
   var sharpe = '${ portfolio.sr }';     
   var tracking = '${ portfolio.te }';     
   var jensen = '${ portfolio.ja }';     
   var information = '${ portfolio.ir }';     
   var fundRate = '${ portfolio.fund }';   
   var depositRate = '${ portfolio.deposit }';
   var savingRate = '${ portfolio.saving }'; 
   var pensionRate = '${ portfolio.pension }';
   var startDay = '${ portfolio.start }';  
   var lastDay = '${ portfolio.last }';
   
   function drawChart() {
	   
	   	  var jsonData = $.ajax({
	         
	         url : "${ pageContext.request.contextPath }/portfolioPlan",
	         data: { member_id : id, name : username, investmentPeriod : investP, investmentMoney : investM, investmentRate : investR,
	  		   minPer : min, maxPer : max, investmentType : type, sd : stand, bm : beta, sr : sharpe, te : tracking, ja : jensen, ir : information,
			   fund : fundRate, deposit : depositRate, saving : savingRate, pension : pensionRate, start : startDay, last : lastDay },
	         dataType : "JSON",
	         async : false
	      }).responseText;
	      console.log(jsonData);
	      
	      var data = new google.visualization.DataTable(jsonData);
	      
	         var chart = new google.visualization.PieChart(document.getElementById('chart_div')); 
	      /* var chart = new google.visualization.LineChart(document.getElementById('chart_div')); */
	      /* var chart = new google.visualization.ColumnChart(document.getElementById('chart_div')); */
	      
	      chart.draw(data, {
	    	 title : "<추천 포트폴리오 구성비>",
	         curveType : "function",
	         fontSize: 16,
	         width : 560,
	         height : 400,
	         pieHole: 0.7,
	         chartArea: {
	        	 'width': '98%',
	        	 'height' : '90%'
	       	}
	      });
	      
	}

   <%-- 작은 원형그래프 --%>
   google.load('visualization','1', {
      'packages' : ['corechart']
   })
   
   google.setOnLoadCallback(drawChart2);
   
   function drawChart2() {
	   
	   	  var jsonData = $.ajax({
	         
	         url : "${ pageContext.request.contextPath }/portfolioPlan",
	         data: { member_id : id, name : username, investmentPeriod : investP, investmentMoney : investM, investmentRate : investR,
	  		   minPer : min, maxPer : max, investmentType : type, sd : stand, bm : beta, sr : sharpe, te : tracking, ja : jensen, ir : information,
			   fund : fundRate, deposit : depositRate, saving : savingRate, pension : pensionRate, start : startDay, last : lastDay },
	         dataType : "JSON",
	         async : false
	      }).responseText;
	      console.log(jsonData);
	      
	      var data = new google.visualization.DataTable(jsonData);
	      
	         var chart = new google.visualization.PieChart(document.getElementById('chart_div2')); 
	      /* var chart = new google.visualization.LineChart(document.getElementById('chart_div')); */
	      /* var chart = new google.visualization.ColumnChart(document.getElementById('chart_div')); */
	      
	      chart.draw(data, {
	         curveType : "function",
	         fontSize: 16,
	         width : 300,
	         height : 200,
	         chartArea: {
	        	 'width': '98%',
	        	 'height' : '90%'
	       	}
	      });
	      
	}

</script>

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
    
    button{
    	width: 170px; 
    	line-height: 30px; 
    	border-radius: 80px; 
    	color: white; 
    	background-color: #008B8B; 
    	border: none; 
    }

</style>
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
	                <h3 style="color: #008B8B; font-size: 15pt;">재무설계</h3>
	                <hr style="border-color: #008B8B; width: 30%; float: left;">
	                <div class="recent-post group">
	                    <div class="hentry-post group">
	                    	<a href="${ pageContext.request.contextPath }/assetManagement/explain" title="재무설계" class="manageMenu" style="font-size: 11pt;">재무설계란?</a>
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
		<div class="menu-wrap">
		<h3 style="font-family: 'inherit'; text-align: center;"><strong><${userVO.name}님을 위한 포트폴리오></strong></h3>
		<hr style="border-color: #008B8B; margin-bottom: 20px; border-width: 1px; width: 23%; text-align: center;">
        <button type="button" onclick="drawChart()" style="margin-left:385px; text-align: center;">추천 포트폴리오 구성비</button>
		</div>
        
        <div id="menu1">
        <div id="chart_div" style="margin-top: 50px; width: 600px; float: left;">

		</div>
        <div style="margin-top: 50px;">
        	<h3 style="font-size: 13pt;">
        		<strong style="font-family: 'inherit'; font-size: 16pt; color: #008B8B;">${ portfolio.investmentType }</strong>의 
        		<span style="text-decoration: underline;">${ userVO.name }</span>님에게 
        	</h3>
        	<p style="margin-top: 5px; font-size: 13pt; font-family: 'inherit';">추천하는 포트폴리오</p>
        	
        	<table style="float: left; width: 300px; margin-top: 30px;">
        		<tr>
        			<th style="font-size: 12pt; background-color: white; color: red;"></th>
        			<th style="font-size: 12pt; background-color: white; color: red;"><strong>펀드</strong></th>
        			<th style="font-size: 12pt; background-color: white; color: red;"><strong>예금</strong></th>
        			<th style="font-size: 12pt; background-color: white; color: red;"><strong>적금</strong></th>
        			<th style="font-size: 12pt; background-color: white; color: red;"><strong>연금</strong></th>
        		</tr>
        		<tr>
        			<td style="text-align: center; font-size: 12pt; background-color: white;"><strong>비율</strong></td>
        			<td style="text-align: center; font-size: 12pt; background-color: white;">
        				<strong>${ portfolio.fund}%</strong>
        			</td>
        			<td style="text-align: center; font-size: 12pt; background-color: white;">
        				<strong>${ portfolio.deposit}%</strong>
        			</td>
        			<td style="text-align: center; font-size: 12pt; background-color: white;">
        				<strong>${ portfolio.saving}%</strong>
        			</td>
        			<td style="text-align: center; font-size: 12pt; background-color: white;">
        				<strong>${ portfolio.pension}%</strong>
        			</td>
        		</tr>
        	</table>
        	<div id="chart_div2" style="float: left;">
        		
        	</div>
        </div>
        <div style="clear: both; margin-top: 50px;">
        	<c:if test="${ portfolio.start eq '93/01/01' }">
        	<div class="owm-fin-con">
		        <h3 class="hidden" style="padding-top: 5px; text-align: center;">2030's 사회초년기 : 자산형성기</h3>
		        <dl class="f-con1" style="text-align: center;">
		            <dt>재테크의 기본은 지출관리!</dt>
		            <dd style="font-size: 11pt;">용돈통장, 급여통장, 생활비통장 등 통장을 분리하여 <br>목적별로 관리하고 주거래은행을 만들자!</dd>
		        </dl>
		        <div class="f-con2 clearfix">
		            <div class="fleft" style="position: relative; float: left; width: 33%;">
		                <h4>2030's 재무목표</h4>
		                <div class="img"><img src="${ pageContext.request.contextPath }/resources/plan/img_f2030_1.gif" alt="학자금 마련, 재테크 관심, 자동차 구입, 결혼비용 마련, 전세자금 마련"></div>
		            </div>
		            <div class="fleft fin_txt" style="position: relative; float: left; width: 30%;">
		                <div>
		                    <strong class="tit_copy">더 넓은 세상을 향한 준비, <br>적정한 목표를 세워 실천하자!</strong>
		                    <span style="font-size: 10pt;">대학에 입학하고 어학연수를 떠나고, <br>더 넓은 세상을 준비하는 20대, <br>사회생활을 시작하는 사회초년생!<br>첫 월급을 받기 시작하는 순간부터 재테크 습관을<br>
		                    생활화 해 보세요.<br>전세자금, 결혼자금 등 구체적인 금액과 기간을<br>목표로 정한 후 절약과 저축을 생활화하면<br>올바른 소비습관이 형성됩니다.</span>
		                </div>
		            </div>
		            <div class="fleft" style="position: relative; float: left; width: 33%; margin-bottom: 20px;">
		                <h4>자산배분비율</h4>
		                <div class="graph"><img src="${ pageContext.request.contextPath }/resources/plan/graph_f2030.gif" alt="비상금 10%, 노후자금 10% , 주택자금 30%, 결혼자금 50%"></div>
		            </div>
		        </div>
		        <div class="owm-infobox mt40" style="clear: both; text-align: left; margin-bottom: 20px;">
		            <dl>
		                <dt class="hidden" style="font-size: 12pt;">안내</dt>
		                <dd style="font-size: 12pt;">우선순위가 높은 단기목표에 집중하여 적금을 기본으로 저축하고 적립식 펀드는 중장기적인 목적자금 마련을 목표로 활용하세요. <br>내집마련 준비를 위한 청약통장, 위험대비를 위한 보장성보험, 소득공제 상품으로 절세와 균형을 맞춰보세요.</dd>
		            </dl>
		        </div>
		     </div>
		     </c:if>
		     <c:if test="${ portfolio.start eq '83/01/01' }">
		     <div class="owm-fin-con">
		        <h3 class="hidden" style="padding-top: 5px; text-align: center;">3040's 가족형성기 · 자산증식기</h3>
		        <dl class="f-con1" style="text-align: center;">
		            <dt>목적자금마련을 위해<br> 가장 중요한 것은 굳은 의지!</dt>
		            <dd style="font-size: 11pt;">지출이 많아지는 시기로 급여통장, 생활비통장, 비상금통장 등<br> 통장을 분리하여 관리하고, 체크카드를 이용하여 규모 있는 지출을 생활화 하자.</dd>
		            </dl>
		        <div class="f-con2 clearfix">
		            <div class="fleft" style="position: relative; float: left; width: 33%;">
		                <h4>3040's 재무목표</h4>
		                <div class="img"><img src="${ pageContext.request.contextPath }/resources/plan/img_f3040_1.gif" alt="학자금 마련, 재테크 관심, 자동차 구입, 결혼비용 마련, 전세자금 마련"></div>
		            </div>
		            <div class="fleft fin_txt" style="position: relative; float: left; width: 30%;">
		                <div>
		                    <strong class="tit_copy">규모 있는 지출관리로 목돈을 모아 내 집 마련의 꿈을 이루자!</strong>
		                    <span style="font-size: 10pt;">결혼과 함께 가정을 형성하고, <br>지출이 많아지게 되는 시기로 통장을 목적 별로<br>분리하여 관리하고,<br>
		                    체크카드와 신용카드의 규모 있는 사용으로<br>합리적인 지출습관을 길러 저축금액을 늘리세요.<br>가장 기본적인 재테크는 절약과 저축입니다.<br>주기적인 자산현황의 점검과<br>저축은 내 집 마련의 시작입니다.</span>
		                </div>
		            </div>
		            <div class="fleft" style="position: relative; float: left; width: 33%; margin-bottom: 20px;">
		                <h4>자산배분비율</h4>
		                <div class="graph"><img src="${ pageContext.request.contextPath }/resources/plan/graph_f3040.gif" alt="비상금 10%, 노후자금 10% , 주택자금 30%, 결혼자금 50%"></div>
		            </div>
		        </div>
		        <div class="owm-infobox mt40" style="clear: both; text-align: left; margin-bottom: 20px;">
		            <dl>
		                <dt class="hidden" style="font-size: 12pt;">안내</dt>
		                <dd style="font-size: 12pt;">내집마련, 자녀교육 등 분명한 목적을 정하고 목적과 기간에 따라 나에게 맞는 금융상품을 선택한 후 <br>계획적인 소비생활로 저축금액을 늘리고 꾸준히 저축하세요.</dd>
		            </dl>
		        </div>
		        </div>
		     </c:if>
		     <c:if test="${ portfolio.start eq '73/01/01' }">
		     	<div class="owm-fin-con">
			        <h3 class="hidden" style="padding-top: 5px; text-align: center;">4050's 노후준비기 : 자산보존기</h3>
			        <dl class="f-con1" style="text-align: center;">
			            <dt>행복한 100세 시대의<br>미래를 준비하자!</dt>
			            <dd style="font-size: 11pt;">은퇴준비를 위해 가장 중요한 투자는 자신에 대한 투자! <br>자기계발을 게을리 하지 말자!</dd>
			        </dl>
			        <div class="f-con2 clearfix">
			            <div class="fleft" style="position: relative; float: left; width: 33%;">
			                <h4>4050's 재무목표</h4>
			                <div class="img"><img src="${ pageContext.request.contextPath }/resources/plan/img_f4050_1.gif" alt="학자금 마련, 재테크 관심, 자동차 구입, 결혼비용 마련, 전세자금 마련"></div>
			            </div>
			            <div class="fleft fin_txt" style="position: relative; float: left; width: 30%;">
			                <div>
			                    <strong class="tit_copy">안정성 위주로 자산을 운용하고 <br>본격적으로 은퇴준비를 하자!</strong>
			                    <span style="font-size: 10pt;">자녀가 성장하여 결혼과 취업으로 <br>목돈이 많이 소요되는 시기입니다. <br>안정성 중심으로 금융상품과 노후준비를 위한<br>은퇴자금을 반드시 준비하세요.<br>
			                    미래의 자신을 위해 꾸준히 투자하세요.</span>
			                </div>
			            </div>
			            <div class="fleft" style="position: relative; float: left; width: 33%; margin-bottom: 20px;">
			                <h4>자산배분비율</h4>
			                <div class="graph"><img src="${ pageContext.request.contextPath }/resources/plan/graph_f4050.gif" alt="비상금 10%, 노후자금 10% , 주택자금 30%, 결혼자금 50%"></div>
			            </div>
			        </div>
			        <div class="owm-infobox mt40" style="clear: both; text-align: left; margin-bottom: 20px;">
			            <dl>
			                <dt class="hidden" style="font-size: 12pt;">안내</dt>
			                <dd style="font-size: 12pt;">자녀교육비, 자녀결혼자금은 예금, 적금 등으로 준비자금을 마련하시고 <br>노후생활 대비를 위하여 절세 효과와 안정성을 갖춘 상품을 중심으로 포트폴리오를 구성하세요.</dd>
			            </dl>
			        </div>
			    </div>
		     </c:if>
		     <c:if test="${ portfolio.start eq '63/01/01' }">
		     	<div class="owm-fin-con">
			        <h3 class="hidden" style="padding-top: 5px;text-align: center;">5060's 청춘100세 · 제2의인생</h3>
			        <dl class="f-con1" style="text-align: center;">
			            <dt>수입보다 지출이 많은<br>60대의 은퇴 준비</dt>
			            <dd style="font-size: 11pt;">빠른 퇴직, 부족한 노후 일자리, 수입이 있을 때 대비하라!</dd>
			        </dl>
			        <div class="f-con2 clearfix">
			            <div class="fleft" style="position: relative; float: left; width: 33%;">
			                <h4>5060's 재무목표</h4>
			                <div class="img"><img src="${ pageContext.request.contextPath }/resources/plan/img_f5060_1.gif" alt="학자금 마련, 재테크 관심, 자동차 구입, 결혼비용 마련, 전세자금 마련"></div>
			            </div>
			            <div class="fleft fin_txt" style="position: relative; float: left; width: 30%;">
			                <div>
			                    <strong class="tit_copy">안정적인 은퇴생활을 위해 <br>준비자금을 확보하자!</strong>
			                    <span style="font-size: 10pt;">안정적인 자산을 운영하는 시기로 은퇴 후 <br>필요자금을 구체적으로 파악해야 합니다. <br>부동산과 금융자산의 비중을 재점검하고 노후의료비 등<br>비상예비자금을 확보해야 합니다.<br>
			                    </span>
			                </div>
			            </div>
			            <div class="fleft" style="position: relative; float: left; width: 33%; margin-bottom: 20px;">
			                <h4>자산배분비율</h4>
			                <div class="graph"><img src="${ pageContext.request.contextPath }/resources/plan/graph_f4050.gif" alt="비상금 10%, 노후자금 10% , 주택자금 30%, 결혼자금 50%"></div>
			            </div>
			        </div>
			        <div class="owm-infobox mt40" style="clear: both; text-align: left; margin-bottom: 20px;">
			            <dl>
			                <dt class="hidden" style="font-size: 12pt;">※ 안내</dt>
			                <dd style="font-size: 12pt;">노후는 나를 위해 즐길 수 있는 소중한 시간입니다. <br>노후생활자금으로 매월 생활비를 확보할 수 있는 안정적인 금융상품을 이용하시고,<br> 비과세 저축 활용등 절세상품과 상속증여에 유리한 금융상품을 가입하세요. <br>보유주택을 활용한 노후대비도 고려해 보세요.</dd>
			            </dl>
			        </div>
			 	</div>
		     </c:if>
        </div>
        </div>
        <form action="${ pageContext.request.contextPath }/fundPortfolio" method="post" style="margin-bottom: 50px;">
        	<input type="hidden" name="member_id" value="${ portfolio.member_id }">
        	<input type="hidden" name="name" value="${ userVO.name }">
        	<input type="hidden" name="investmentPeriod" value="${ portfolio.investmentPeriod }">
        	<input type="hidden" name="investmentMoney" value="${ portfolio.investmentMoney }">
        	<input type="hidden" name="investmentRate" value="${ portfolio.investmentRate }">
        	<input type="hidden" name="minPer" value="${ portfolio.minPer }">
        	<input type="hidden" name="maxPer" value="${ portfolio.maxPer }">
        	<input type="hidden" name="investmentType" value="${ portfolio.investmentType }">
        	<input type="hidden" name="sd" value="${ portfolio.sd }">
        	<input type="hidden" name="bm" value="${ portfolio.bm }">
        	<input type="hidden" name="sr" value="${ portfolio.sr }">
        	<input type="hidden" name="te" value="${ portfolio.te }">
        	<input type="hidden" name="ja" value="${ portfolio.ja }">
        	<input type="hidden" name="ir" value="${ portfolio.ir }">
        	<input type="hidden" name="fund" value="${ portfolio.fund }">
        	<input type="hidden" name="deposit" value="${ portfolio.deposit }">
        	<input type="hidden" name="saving" value="${ portfolio.saving }">
        	<input type="hidden" name="pension" value="${ portfolio.pension }">
        	<input type="hidden" name="start" value="${ portfolio.start }">
        	<input type="hidden" name="last" value="${ portfolio.last }">
   			<input type="submit" value="상품별 자세히보기" style="font-size:13pt; width: 300px; height: 40px; border-radius: 15px; color: white; background-color: #008B8B; border: none; margin-left: 300px; cursor: pointer;">
        </form>
        
	</section>
	<footer style="clear: both;">
		<jsp:include page="/WEB-INF/include/footer.jsp" />
	</footer>
</body>
</html>