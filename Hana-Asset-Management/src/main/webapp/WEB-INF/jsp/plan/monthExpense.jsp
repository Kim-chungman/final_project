<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.2, user-scalable=yes" />
<title>Hana Solution - 월 지출 분석</title>
<link rel="shortcut icon" type="image/x-icon" href="${ pageContext.request.contextPath }/resources/images/favicon.png" />
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
	         title : "지난 1년간 월별 지출액",
	         curveType : "function",
	         fontSize: 20,
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
	         title : "지난 6개월간 월별 지출액",
	         curveType : "function",
	         fontSize: 20,
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
	         title : "지난 3개월간 월별 지출액",
	         curveType : "function",
	         fontSize: 20,
	         width : 800,
	         height : 400,
	         colors: ['red','orange','yellow'],
	         is3D: true
	      });
	      
	}
	  
</script>

</head>
<body>
	<header>
		<jsp:include page="/WEB-INF/include/header.jsp" />
	</header>
	<section>
		<div id="chart_div" align="center">
   
   		</div>
   		
   		<button type="button" onclick="drawChart()">1년간 지출액</button>
		<button type="button" onclick="drawChart2()">6개월간 지출액</button>
		<button type="button" onclick="drawChart3()">3개월간 지출액</button>
	</section>
	<footer>
		<jsp:include page="/WEB-INF/include/footer.jsp" />
	</footer>
</body>
</html>