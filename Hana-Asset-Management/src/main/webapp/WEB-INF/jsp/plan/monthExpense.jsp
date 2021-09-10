<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.2, user-scalable=yes" />
<title>Hana Solution - 월 지출 분석</title>
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
   google.load('visualization','1', {
      'packages' : ['corechart']
   })
   
   let idCheck = '${ userVO.id }';
   
   google.setOnLoadCallback(drawChart);
   function drawChart() {
	   
	      var jsonData = $.ajax({
	         
	         url : "${ pageContext.request.contextPath }/customerList",
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
	         title : "<지난 1년간 월별 지출액>",
	         curveType : "function",
	         fontSize: 16,
	         width : 800,
	         height : 400,
	         colors: ['red','orange','yellow','green','blue','navy','purple','black','LightBlue','PaleVioletRed','Olive','Thistle'],
	         is3D: true
	      });
	      
	}
   	function drawChart2() {
	   
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
	         colors: ['red','orange','yellow','green','blue','navy'],
	         is3D: true
	      });
	      
	}
   	function drawChart3() {
 	   
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
	         colors: ['red','orange','yellow'],
	         is3D: true
	      });
	      
	}
	  
</script>
<script>
   google.load('visualization','1', {
      'packages' : ['corechart']
   })
   
   let idCheck2 = '${ userVO.id }';
   
   google.setOnLoadCallback(drawPieChart);
   function drawPieChart() {
	   
	      var jsonData = $.ajax({
	         
	         url : "${ pageContext.request.contextPath }/pieChart",
	         data: { id: idCheck2},
	         dataType : "JSON",
	         async : false
	      }).responseText;
	      console.log(jsonData);
	      
	      var data = new google.visualization.DataTable(jsonData);
	      
	      var chart = new google.visualization.PieChart(document.getElementById('Piechart_div')); 
	      /* var chart = new google.visualization.LineChart(document.getElementById('Piechart_div')); */
	      /* var chart = new google.visualization.ColumnChart(document.getElementById('Piechart_div')); */
	      
	      chart.draw(data, {
	         title : "<지난 1달간 지출구성비>",
	         curveType : "function",
	         fontSize: 16,
	         width : 1000,
	         height : 500,
	         colors: ['red','orange','PaleVioletRed','green','blue','navy','purple','black'],
	         is3D: true
	      });
	      
	}
   function drawPieChart2() {
	   
	      var jsonData = $.ajax({
	         
	         url : "${ pageContext.request.contextPath }/pieChart2",
	         data: { id: idCheck2},
	         dataType : "JSON",
	         async : false
	      }).responseText;
	      console.log(jsonData);
	      
	      var data = new google.visualization.DataTable(jsonData);
	      
	      var chart = new google.visualization.PieChart(document.getElementById('Piechart_div')); 
	      /* var chart = new google.visualization.LineChart(document.getElementById('Piechart_div')); */
	      /* var chart = new google.visualization.ColumnChart(document.getElementById('Piechart_div')); */
	      
	      chart.draw(data, {
	         title : "<지난 3달간 지출구성비>",
	         curveType : "function",
	         fontSize: 16,
	         width : 1000,
	         height : 500,
	         colors: ['red','orange','PaleVioletRed','green','blue','navy','purple','black'],
	         is3D: true
	      });
	      
	}
   function drawPieChart3() {
	   
	      var jsonData = $.ajax({
	         
	         url : "${ pageContext.request.contextPath }/pieChart3",
	         data: { id: idCheck2},
	         dataType : "JSON",
	         async : false
	      }).responseText;
	      console.log(jsonData);
	      
	      var data = new google.visualization.DataTable(jsonData);
	      
	      var chart = new google.visualization.PieChart(document.getElementById('Piechart_div')); 
	      /* var chart = new google.visualization.LineChart(document.getElementById('Piechart_div')); */
	      /* var chart = new google.visualization.ColumnChart(document.getElementById('Piechart_div')); */
	      
	      chart.draw(data, {
	         title : "<지난 6달간 지출구성비>",
	         curveType : "function",
	         fontSize: 16,
	         width : 1000,
	         height : 500,
	         colors: ['red','orange','PaleVioletRed','green','blue','navy','purple','black'],
	         is3D: true
	      });
	      
	}
   function drawPieChart4() {
	   
	      var jsonData = $.ajax({
	         
	         url : "${ pageContext.request.contextPath }/pieChart4",
	         data: { id: idCheck2},
	         dataType : "JSON",
	         async : false
	      }).responseText;
	      console.log(jsonData);
	      
	      var data = new google.visualization.DataTable(jsonData);
	      
	      var chart = new google.visualization.PieChart(document.getElementById('Piechart_div')); 
	      /* var chart = new google.visualization.LineChart(document.getElementById('Piechart_div')); */
	      /* var chart = new google.visualization.ColumnChart(document.getElementById('Piechart_div')); */
	      
	      chart.draw(data, {
	         title : "<지난 1년간 지출구성비>",
	         curveType : "function",
	         fontSize: 16,
	         width : 1000,
	         height : 500,
	         colors: ['red','orange','PaleVioletRed','green','blue','navy','purple','black'],
	         is3D: true
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
		<h3 style="font-family: 'inherit'; text-align: center;"><strong>월별 지출액 한눈에 보기</strong></h3>
		<hr style="border-color: #008B8B; margin-bottom: 20px; border-width: 1px; width: 23%;">
        <button type="button" onclick="drawChart()" style="margin-left:260px; width: 130px; line-height: 28px; border-radius: 80px; color: white; background-color: #008B8B; border: none;">1년간 지출액</button>
		<button type="button" onclick="drawChart2()" style="width: 130px; line-height: 28px; border-radius: 80px; color: white; background-color: #008B8B; border: none;">6개월간 지출액</button>
		<button type="button" onclick="drawChart3()" style="width: 130px; line-height: 28px; border-radius: 80px; color: white; background-color: #008B8B; border: none;">3개월간 지출액</button>
        <div id="chart_div" align="center">

		</div>
		<h3 style="font-family: 'inherit'; text-align: center; margin-top: 30px;"><strong>지출 구성비 한눈에 보기</strong></h3>
		<hr style="border-color: #008B8B; margin-bottom: 20px; border-width: 1px; width: 23%;">
        <button type="button" onclick="drawPieChart()" style="margin-left:140px; width: 160px; line-height: 32px; border-radius: 80px; color: white; background-color: #008B8B; border: none;">최근 1달간 지출구성비</button>
		<button type="button" onclick="drawPieChart2()" style="width: 160px; line-height: 32px; border-radius: 80px; color: white; background-color: #008B8B; border: none;">최근 3달간 지출구성비</button>
		<button type="button" onclick="drawPieChart3()" style="width: 160px; line-height: 32px; border-radius: 80px; color: white; background-color: #008B8B; border: none;">최근 6달간 지출구성비</button>
		<button type="button" onclick="drawPieChart4()" style="width: 160px; line-height: 32px; border-radius: 80px; color: white; background-color: #008B8B; border: none;">최근 1년간 지출구성비</button>
        <div id="Piechart_div" align="center">

		</div>
	</section>
	<footer style="clear: both;">
		<jsp:include page="/WEB-INF/include/footer.jsp" />
	</footer>
</body>
</html>