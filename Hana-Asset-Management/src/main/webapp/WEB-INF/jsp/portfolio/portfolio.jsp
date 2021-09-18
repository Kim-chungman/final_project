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

   
   <%--
   	function drawChart2() {
  	  	  var idCheck = '${ userVO.id }';
	      var jsonData = $.ajax({
	         
	         url : "${ pageContext.request.contextPath }/customerList2",
	         data: { id: idCheck},
	         dataType : "JSON",
	         async : false
	      }).responseText;
	      console.log(jsonData);
	      
	      var data = new google.visualization.DataTable(jsonData);
	      
	      /* var chart = new google.visualization.PieChart(document.getElementById('chart_div')); */
	      /* var chart = new google.visualization.LineChart(document.getElementById('chart_div')); */
	      var chart = new google.visualization.ColumnChart(document.getElementById('chart_div'));
	      
	      chart.draw(data, {
	         title : "<지난 6개월간 월별 지출액>",
	         curveType : "function",
	         fontSize: 16,
	         width : 800,
	         height : 400,
	         colors: ['red','orange','yellow','green'],
	         is3D: true
	      });
	      
	}
   	function drawChart3() {
  	  	  var idCheck = '${ userVO.id }';
	      var jsonData = $.ajax({
	         
	         url : "${ pageContext.request.contextPath }/customerList3",
	         data: { id: idCheck},
	         dataType : "JSON",
	         async : false
	      }).responseText;
	      console.log(jsonData);
	      
	      var data = new google.visualization.DataTable(jsonData);
	      
	      /* var chart = new google.visualization.PieChart(document.getElementById('chart_div')); */
	      /* var chart = new google.visualization.LineChart(document.getElementById('chart_div')); */
	      var chart = new google.visualization.ColumnChart(document.getElementById('chart_div'));
	      
	      chart.draw(data, {
	         title : "<지난 3개월간 월별 지출액>",
	         curveType : "function",
	         fontSize: 16,
	         width : 800,
	         height : 400,
	         colors: ['red','orange','yellow','green'],
	         is3D: true
	      });
	      
	}
   	--%>
</script>
<script>

   google.load('visualization','1', {
      'packages' : ['corechart']
   })
   
   google.setOnLoadCallback(drawChart2);
   
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
	                        <a href="${ pageContext.request.contextPath }/plan/expense" title="재무설계" class="manageMenu" style="color: #008B8B; font-size: 11pt;">소비지출분석</a>
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
		<div class="menu-wrap">
		<h3 style="font-family: 'inherit'; text-align: center; margin-right: 190px;"><strong><${userVO.name}님을 위한 포트폴리오></strong></h3>
		<hr style="border-color: #008B8B; margin-bottom: 20px; border-width: 1px; width: 23%; margin-left: 270px;">
        <button type="button" onclick="drawChart()" style="margin-left:120px; ">추천 포트폴리오 구성비</button>
		<button type="button" >6개월간 지출액</button>
		<button type="button" >3개월간 지출액</button>
        </div>
        
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
        			<th style="font-size: 12pt;"></th>
        			<th style="font-size: 12pt;"><strong>펀드</strong></th>
        			<th style="font-size: 12pt;"><strong>예금</strong></th>
        			<th style="font-size: 12pt;"><strong>적금</strong></th>
        			<th style="font-size: 12pt;"><strong>연금</strong></th>
        		</tr>
        		<tr>
        			<td style="text-align: center; font-size: 12pt;"><strong>비율</strong></td>
        			<td style="text-align: center; font-size: 12pt;">
        				<strong>${ portfolio.fund}%</strong>
        			</td>
        			<td style="text-align: center; font-size: 12pt;">
        				<strong>${ portfolio.deposit}%</strong>
        			</td>
        			<td style="text-align: center; font-size: 12pt;">
        				<strong>${ portfolio.saving}%</strong>
        			</td>
        			<td style="text-align: center; font-size: 12pt;">
        				<strong>${ portfolio.pension}%</strong>
        			</td>
        		</tr>
        	</table>
        	<div id="chart_div2" style="float: left;">
        		
        	</div>
        </div>
        <div style="clear: both; margin-top: 50px;">
        	<h3 style="font-family: 'inherit'; text-align: center; margin-right: 190px; color: #008B8B;"><strong>추천이유</strong></h3>
        	
        </div>
	</section>
	<footer style="clear: both;">
		<jsp:include page="/WEB-INF/include/footer.jsp" />
	</footer>
</body>
</html>