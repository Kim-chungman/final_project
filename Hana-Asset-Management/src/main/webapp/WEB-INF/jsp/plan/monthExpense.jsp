<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
   
   google.setOnLoadCallback(drawChart);
   function drawChart() {
	   
	   	  var idCheck = '${ userVO.id }';
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
	         colors: ['red','orange','yellow','green','blue','navy'],
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
	         colors: ['red','orange','yellow'],
	         is3D: true
	      });
	      
	}
</script>
<script>
   google.load('visualization','1', {
      'packages' : ['corechart']
   })
   
   google.setOnLoadCallback(drawPieChart);
   function drawPieChart() {
		  var idCheck = '${ userVO.id }';
	      var jsonData = $.ajax({
	         
	         url : "${ pageContext.request.contextPath }/pieChart",
	         data: { id: idCheck},
	         dataType : "JSON",
	         async : false
	      }).responseText;
	      console.log(jsonData);
	      
	      var data = new google.visualization.DataTable(jsonData);
	      
	      /* var chart = new google.visualization.PieChart(document.getElementById('Piechart_div')); */
	      /* var chart = new google.visualization.LineChart(document.getElementById('Piechart_div')); */
	       var chart = new google.visualization.ColumnChart(document.getElementById('Piechart_div')); 
	      
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
		  var idCheck = '${ userVO.id }';
	      var jsonData = $.ajax({
	         
	         url : "${ pageContext.request.contextPath }/pieChart2",
	         data: { id: idCheck},
	         dataType : "JSON",
	         async : false
	      }).responseText;
	      console.log(jsonData);
	      
	      var data = new google.visualization.DataTable(jsonData);
	      
	      /* var chart = new google.visualization.PieChart(document.getElementById('Piechart_div')); */
	      /* var chart = new google.visualization.LineChart(document.getElementById('Piechart_div')); */
	       var chart = new google.visualization.ColumnChart(document.getElementById('Piechart_div')); 
	      
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
		  var idCheck = '${ userVO.id }';
	      var jsonData = $.ajax({
	         
	         url : "${ pageContext.request.contextPath }/pieChart3",
	         data: { id: idCheck},
	         dataType : "JSON",
	         async : false
	      }).responseText;
	      console.log(jsonData);
	      
	      var data = new google.visualization.DataTable(jsonData);
	      
	      /* var chart = new google.visualization.PieChart(document.getElementById('Piechart_div')); */
	      /* var chart = new google.visualization.LineChart(document.getElementById('Piechart_div')); */
	       var chart = new google.visualization.ColumnChart(document.getElementById('Piechart_div')); 
	      
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
		  var idCheck = '${ userVO.id }'; 
	      var jsonData = $.ajax({
	         
	         url : "${ pageContext.request.contextPath }/pieChart4",
	         data: { id: idCheck},
	         dataType : "JSON",
	         async : false
	      }).responseText;
	      console.log(jsonData);
	      
	      var data = new google.visualization.DataTable(jsonData);
	      
	      /* var chart = new google.visualization.PieChart(document.getElementById('Piechart_div')); */
	      /* var chart = new google.visualization.LineChart(document.getElementById('Piechart_div')); */
	         var chart = new google.visualization.ColumnChart(document.getElementById('Piechart_div')); 
	      
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
<!-- 
<script>

	google.load('visualization','1', {
	    'packages' : ['corechart']
	 })
	 
	 google.setOnLoadCallback(drawAgeChart);
	 function drawAgeChart() {
		  var idCheck = '${ userVO.id }';
	      var jsonData = $.ajax({
	         
	         url : "${ pageContext.request.contextPath }/ageChart",
	         data: { id: idCheck},
	         dataType : "JSON",
	         async : false
	      }).responseText;
	      console.log(jsonData);
	      
	      var data = new google.visualization.DataTable(jsonData);
	      
	      var chart = new google.visualization.PieChart(document.getElementById('agechart_div')); 
	      
	      chart.draw(data, {
	         title : "<${ myage }고객님 지난 1달간 지출구성비>",
	         curveType : "function",
	         fontSize: 16,
	         width : 1000,
	         height : 500,
	         colors: ['red','orange','PaleVioletRed','green','blue','navy','purple','black','Chocolate','CadetBlue'],
	         is3D: true
	      });
		      
		}
	 function drawAgeChart2() {
		  var idCheck = '${ userVO.id }';  
	      var jsonData = $.ajax({
	         
	         url : "${ pageContext.request.contextPath }/ageChart2",
	         data: { id: idCheck},
	         dataType : "JSON",
	         async : false
	      }).responseText;
	      console.log(jsonData);
	      
	      var data = new google.visualization.DataTable(jsonData);
	      
	      var chart = new google.visualization.PieChart(document.getElementById('agechart_div')); 
	      
	      chart.draw(data, {
	         title : "<${ myage }고객님 지난 3달간 지출구성비>",
	         curveType : "function",
	         fontSize: 16,
	         width : 1000,
	         height : 500,
	         colors: ['red','orange','PaleVioletRed','green','blue','navy','purple','black','Chocolate','CadetBlue'],
	         is3D: true
	      });
		      
		}
	 function drawAgeChart3() {
		 var idCheck = '${ userVO.id }';   
	      var jsonData = $.ajax({
	         
	         url : "${ pageContext.request.contextPath }/ageChart3",
	         data: { id: idCheck},
	         dataType : "JSON",
	         async : false
	      }).responseText;
	      console.log(jsonData);
	      
	      var data = new google.visualization.DataTable(jsonData);
	      
	      var chart = new google.visualization.PieChart(document.getElementById('agechart_div')); 
	      
	      chart.draw(data, {
	         title : "<${ myage }고객님 지난 6달간 지출구성비>",
	         curveType : "function",
	         fontSize: 16,
	         width : 1000,
	         height : 500,
	         colors: ['red','orange','PaleVioletRed','green','blue','navy','purple','black','Chocolate','CadetBlue'],
	         is3D: true
	      });
		      
		}
	 function drawAgeChart4() {
		  var idCheck = '${ userVO.id }';  
	      var jsonData = $.ajax({
	         
	         url : "${ pageContext.request.contextPath }/ageChart4",
	         data: { id: idCheck},
	         dataType : "JSON",
	         async : false
	      }).responseText;
	      console.log(jsonData);
	      
	      var data = new google.visualization.DataTable(jsonData);
	      
	      var chart = new google.visualization.PieChart(document.getElementById('agechart_div')); 
	      
	      chart.draw(data, {
	         title : "<${ myage }고객님 지난 1년간 지출구성비>",
	         curveType : "function",
	         fontSize: 16,
	         width : 1000,
	         height : 500,
	         colors: ['red','orange','PaleVioletRed','green','blue','navy','purple','black','Chocolate','CadetBlue'],
	         is3D: true
	      });
		      
		}

</script>
 -->
<!-- modal -->
	    <script src="https://code.jquery.com/jquery-latest.js"></script>
	     
	    <script type="text/javascript">
	
	    var modal = {
		  open : function(){
		    $('#myModal').show();
		  },
		  close : function(){
		    $('#myModal').hide();    
		  }
		};
		     
		$(document).on('click', '#columnChart', function(){
		  modal.open();
		});
		
		$(document).on('click', '#columnClose', function(){
		  modal.close();
		});
		
		var modal2 = {
		  open : function(){
		    $('#myModal2').show();
		  },
		  close : function(){
		    $('#myModal2').hide();    
		  }
		};
		     
		$(document).on('click', '#lineChart', function(){
		  modal2.open();
		});
		
		$(document).on('click', '#closeBtn', function(){
		  modal2.close();
		});
		
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
		<h3 style="font-family: 'inherit'; text-align: center; margin-top: 30px;"><strong style="color: #008B8B;">${ userVO.name }님 소비지출분석</strong></h3>
		<hr style="border-color: #008B8B; margin-bottom: 20px; border-width: 1px; width: 25%;">
		<button type="button" id="columnChart" style="margin-left:260px; width: 130px; line-height: 28px; border-radius: 80px; color: white; background-color: #008B8B; border: none;">월별 지출액 보기</button>
		<!-- The Modal -->
	    <div id="myModal" class="modal">
	 
	      <!-- Modal content -->
	      <div class="modal-content" style="border-color: #008B8B; border-width: 3px; width: 1000px;">
                
            <h3 style="font-family: 'inherit'; text-align: center;"><strong>월별 지출액 한눈에 보기</strong></h3>
			<hr style="border-color: #008B8B; margin-bottom: 20px; border-width: 1px; width: 23%;">
	        <button type="button" onclick="drawChart()" style="margin-left:260px; width: 130px; line-height: 28px; border-radius: 80px; color: white; background-color: #008B8B; border: none;">1년간 지출액</button>
			<button type="button" onclick="drawChart2()" style="width: 130px; line-height: 28px; border-radius: 80px; color: white; background-color: #008B8B; border: none;">6개월간 지출액</button>
			<button type="button" onclick="drawChart3()" style="width: 130px; line-height: 28px; border-radius: 80px; color: white; background-color: #008B8B; border: none;">3개월간 지출액</button>
	        <div id="chart_div" align="center">
	
			</div>
			<div align="center">
				<p style="font-size: 12pt;"><span style="font-size: 14pt; color: #008B8B;">${ userVO.name }님</span> 
					<span style="font-size: 14pt; color: red; text-decoration: underline;">${ maxMonth }</span>에 무슨 일 있으셨나요?</p>
				<p style="font-size: 12pt;">1년 지출 평균액 
					<span style="font-size: 14pt; color: red;">
						<fmt:formatNumber type="number" pattern="###,###,###,###,###,###" value="${ avgExpense }" />원</span> 대비 약 
					<span style="font-size: 14pt; color: red;">
						<fmt:formatNumber type="number" maxFractionDigits="0" value="${ ((maxExpense - avgExpense)*100) div avgExpense }" />%</span> 더 지출하셨어요!!
				</p>
				<p style="font-size: 12pt;">
					<${ maxMonth } 지출항목이 가장 큰 항목 BEST 5><br>
					<c:forEach items="${ expenseList }" var="expenseList" varStatus="Loop">
						TOP ${ Loop.index+1 } : ${ expenseList.category } (<fmt:formatNumber type="number" pattern="###,###,###,###,###,###" value="${ expenseList.expense }" />원) ${ expenseList.reg_date }<br>
					</c:forEach>
				</p>
			</div>
	        <div style="cursor:pointer;background-color:#DDDDDD;text-align: center;padding-bottom: 10px;padding-top: 10px; margin-top: 20px;" id="columnClose">
                <span class="pop_bt" style="font-size: 13pt;" >
                     닫기
                </span>
            </div>           
	      </div>
	    </div>
        <!--End Modal-->
        
        <button type="button" id="lineChart" style="margin-left:260px; width: 130px; line-height: 28px; border-radius: 80px; color: white; background-color: #008B8B; border: none;">${ myage }와 비교하기</button>
		<!-- The Modal -->
	    <div id="myModal2" class="modal">
	 
	      <!-- Modal content -->
	      <div class="modal-content" style="border-color: #008B8B; border-width: 3px; width: 1000px;">
            <div align="center">
				<h3 style="font-family: 'inherit'; text-align: center; margin-top: 30px;"><strong>${ myage } 고객과 비교하기</strong></h3>
				<hr style="border-color: #008B8B; margin-bottom: 20px; border-width: 1px; width: 20%;">
		        <button type="button" onclick="drawPieChart()" style="margin-left:20px; width: 100px; line-height: 28px; border-radius: 80px; color: white; background-color: #008B8B; border: none;">최근 1달간</button>
				<button type="button" onclick="drawPieChart2()" style="width: 100px; line-height: 28px; border-radius: 80px; color: white; background-color: #008B8B; border: none;">최근 3달간</button>
				<button type="button" onclick="drawPieChart3()" style="width: 100px; line-height: 28px; border-radius: 80px; color: white; background-color: #008B8B; border: none;">최근 6달간</button>
				<button type="button" onclick="drawPieChart4()" style="width: 100px; line-height: 28px; border-radius: 80px; color: white; background-color: #008B8B; border: none;">최근 1년간</button>
				<div id="Piechart_div" align="center">
				
		        
				</div>
				</div>
				<div>
				<h3 style="font-family: 'inherit'; text-align: center; margin-top: 30px;"><strong>2021년 ${ userVO.name }님 vs ${ myage } 연령대 고객님</strong></h3>
				<hr style="border-color: #008B8B; margin-bottom: 20px; border-width: 1px; width: 40%;">
				<table style="width: 1000px; align-content: center; margin-right: 100px; margin-top: 20px;">
					<tr>
						<th colspan="2" style ="padding:5px; font-size: 11pt; font-family: inherit;">${ userVO.name }님</th>
						<th colspan="2" style ="padding:5px; font-size: 11pt; font-family: inherit;">${ myage } 고객님</th>
						<th style ="padding:5px; font-size: 11pt; font-family: inherit;">비교</th>
					</tr>
					<tr>
						<th style ="padding:5px; font-size: 11pt; font-family: inherit;">카테고리</th>
						<th style ="padding:5px; font-size: 11pt; font-family: inherit;">지출액</th>
						<th style ="padding:5px; font-size: 11pt; font-family: inherit;">카테고리</th>
						<th style ="padding:5px; font-size: 11pt; font-family: inherit;">지출액</th>
						<th style ="padding:5px; font-size: 11pt; font-family: inherit;">%</th>
					</tr>
					<c:forEach items="${ myData }" var="myData" varStatus="Loop">
					<c:forEach items="${ yourData }" var="yourData" varStatus="Loop">
						<tr style="background-color: white;">
						<c:if test="${ myData.category eq yourData.category }">
							<td style ="text-align: center; padding:5px; font-size: 10pt; font-family: inherit;">${ myData.category }</td>
							<td style ="text-align: center; padding:5px; font-size: 10pt; font-family: inherit;">
								<fmt:formatNumber type="number" pattern="###,###,###,###,###,###" value="${ myData.expense }" />
							</td>
							<td style ="text-align: center; padding:5px; font-size: 10pt; font-family: inherit;">${ yourData.category }</td>
							<td style ="text-align: center; padding:5px; font-size: 10pt; font-family: inherit;">
								<fmt:formatNumber type="number" pattern="###,###,###,###,###,###" value="${ yourData.expense }" />
							</td>
							<c:if test="${ myData.expense gt yourData.expense }">
								<td style ="padding:5px; font-size: 10pt; font-family: inherit; color: red; text-align: center;">
									약 <fmt:formatNumber type="number" maxFractionDigits="0" value="${ ((myData.expense - yourData.expense)*100) div yourData.expense }" />%↑
								</td>
							</c:if>
							<c:if test="${ yourData.expense gt myData.expense }">
								<td style ="padding:5px; font-size: 10pt; font-family: inherit; color: blue; text-align: center;">
									약 <fmt:formatNumber type="number" maxFractionDigits="0" value="${ ((yourData.expense - myData.expense)*100) div myData.expense }" />%↓
								</td>
							</c:if>
						</c:if>
						</tr>
					</c:forEach>
					</c:forEach>
				</table>
				<br>
				<br>
			</div>    
            
	        <div style="cursor:pointer;background-color:#DDDDDD;text-align: center;padding-bottom: 10px;padding-top: 10px; margin-top: 20px;" id="closeBtn">
                <span class="pop_bt" style="font-size: 13pt;" >
                     닫기
                </span>
            </div>           
	      </div>
	    </div>
        <!--End Modal-->
		<%-- 
		<h3 style="font-family: 'inherit'; text-align: center;"><strong>월별 지출액 한눈에 보기</strong></h3>
		<hr style="border-color: #008B8B; margin-bottom: 20px; border-width: 1px; width: 23%;">
        <button type="button" onclick="drawChart()" style="margin-left:260px; width: 130px; line-height: 28px; border-radius: 80px; color: white; background-color: #008B8B; border: none;">1년간 지출액</button>
		<button type="button" onclick="drawChart2()" style="width: 130px; line-height: 28px; border-radius: 80px; color: white; background-color: #008B8B; border: none;">6개월간 지출액</button>
		<button type="button" onclick="drawChart3()" style="width: 130px; line-height: 28px; border-radius: 80px; color: white; background-color: #008B8B; border: none;">3개월간 지출액</button>
        <div id="chart_div" align="center">

		</div>
		<div align="center">
			<p style="font-size: 12pt;"><span style="font-size: 14pt; color: #008B8B;">${ userVO.name }님</span> 
				<span style="font-size: 14pt; color: red; text-decoration: underline;">${ maxMonth }</span>에 무슨 일 있으셨나요?</p>
			<p style="font-size: 12pt;">1년 지출 평균액 
				<span style="font-size: 14pt; color: red;">
					<fmt:formatNumber type="number" pattern="###,###,###,###,###,###" value="${ avgExpense }" />원</span> 대비 약 
				<span style="font-size: 14pt; color: red;">
					<fmt:formatNumber type="number" maxFractionDigits="0" value="${ ((maxExpense - avgExpense)*100) div avgExpense }" />%</span> 더 지출하셨어요!!
			</p>
			<p style="font-size: 12pt;">
				<${ maxMonth } 지출항목이 가장 큰 항목 BEST 5><br>
				<c:forEach items="${ expenseList }" var="expenseList" varStatus="Loop">
					TOP ${ Loop.index+1 } : ${ expenseList.category } (<fmt:formatNumber type="number" pattern="###,###,###,###,###,###" value="${ expenseList.expense }" />원) ${ expenseList.reg_date }<br>
				</c:forEach>
			</p>
		</div>
		 --%>

		<!-- 
		<div style="position:relative; clear:both; width: 450px;">
			<h3 style="font-family: 'inherit'; text-align: center; margin-top: 30px;"><strong>나의 연령대와 비교하기</strong></h3>
			<hr style="border-color: #008B8B; margin-bottom: 20px; border-width: 1px; width: 23%;">
	        <button type="button" onclick="drawAgeChart()" style="margin-left:40px; width: 100px; line-height: 28px; border-radius: 80px; color: white; background-color: #008B8B; border: none;">최근 1달간</button>
			<button type="button" onclick="drawAgeChart2()" style="width: 100px; line-height: 28px; border-radius: 80px; color: white; background-color: #008B8B; border: none;">최근 3달간</button>
			<button type="button" onclick="drawAgeChart3()" style="width: 100px; line-height: 28px; border-radius: 80px; color: white; background-color: #008B8B; border: none;">최근 6달간</button>
			<button type="button" onclick="drawAgeChart4()" style="width: 100px; line-height: 28px; border-radius: 80px; color: white; background-color: #008B8B; border: none;">최근 1년간</button>
	        
			<div id="agechart_div" align="center" style="position:relative; float: left; width: 430px;">
	
			</div>
		</div>
		 -->
		<div>
			<h3 style="font-family: 'inherit'; text-align: center; margin-top: 30px;"><strong>2021년 ${ userVO.name }님 vs ${ myage } 연령대 고객님</strong></h3>
			<hr style="border-color: #008B8B; margin-bottom: 20px; border-width: 1px; width: 40%;">
			<table style="width: 1000px; align-content: center; margin-right: 100px; margin-top: 20px;">
				<tr>
					<th colspan="2" style ="padding:5px; font-size: 11pt; font-family: inherit;">${ userVO.name }님</th>
					<th colspan="2" style ="padding:5px; font-size: 11pt; font-family: inherit;">${ myage } 고객님</th>
					<th style ="padding:5px; font-size: 11pt; font-family: inherit;">비교</th>
				</tr>
				<tr>
					<th style ="padding:5px; font-size: 11pt; font-family: inherit;">카테고리</th>
					<th style ="padding:5px; font-size: 11pt; font-family: inherit;">지출액</th>
					<th style ="padding:5px; font-size: 11pt; font-family: inherit;">카테고리</th>
					<th style ="padding:5px; font-size: 11pt; font-family: inherit;">지출액</th>
					<th style ="padding:5px; font-size: 11pt; font-family: inherit;">%</th>
				</tr>
				<c:forEach items="${ myData }" var="myData" varStatus="Loop">
				<c:forEach items="${ yourData }" var="yourData" varStatus="Loop">
					<tr style="background-color: white;">
					<c:if test="${ myData.category eq yourData.category }">
						<td style ="text-align: center; padding:5px; font-size: 10pt; font-family: inherit;">${ myData.category }</td>
						<td style ="text-align: center; padding:5px; font-size: 10pt; font-family: inherit;">
							<fmt:formatNumber type="number" pattern="###,###,###,###,###,###" value="${ myData.expense }" />
						</td>
						<td style ="text-align: center; padding:5px; font-size: 10pt; font-family: inherit;">${ yourData.category }</td>
						<td style ="text-align: center; padding:5px; font-size: 10pt; font-family: inherit;">
							<fmt:formatNumber type="number" pattern="###,###,###,###,###,###" value="${ yourData.expense }" />
						</td>
						<c:if test="${ myData.expense gt yourData.expense }">
							<td style ="padding:5px; font-size: 10pt; font-family: inherit; color: red; text-align: center;">
								약 <fmt:formatNumber type="number" maxFractionDigits="0" value="${ ((myData.expense - yourData.expense)*100) div yourData.expense }" />%↑
							</td>
						</c:if>
						<c:if test="${ yourData.expense gt myData.expense }">
							<td style ="padding:5px; font-size: 10pt; font-family: inherit; color: blue; text-align: center;">
								약 <fmt:formatNumber type="number" maxFractionDigits="0" value="${ ((yourData.expense - myData.expense)*100) div myData.expense }" />%↓
							</td>
						</c:if>
					</c:if>
					</tr>
				</c:forEach>
				</c:forEach>
			</table>
			<br>
			<br>
		</div>
        
	</section>
	<footer style="clear: both;">
		<jsp:include page="/WEB-INF/include/footer.jsp" />
	</footer>
</body>
</html>