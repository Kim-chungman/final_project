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
   
   google.setOnLoadCallback(drawChart);
   function drawChart() {
      var jsonData = $.ajax({
         
         url : "${ pageContext.request.contextPath }/customerList",
         dataType : "JSON",
         async : false
      }).responseText;
      console.log(jsonData);
      
      var data = new google.visualization.DataTable(jsonData);
      
      var chart = new google.visualization.PieChart(document.getElementById('chart_div'));
      /* var chart = new google.visualization.LineChart(document.getElementById('chart_div')); */
      /* var chart = new google.visualization.ColumnChart(document.getElementById('chart_div')); */
      
      chart.draw(data, {
         title : "성별 신용한도",
         curveType : "function",
         width : 600,
         height : 400,
         colors: ['#E6EDF5', 'aqua'],
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
		<div id="chart_div">
   
   		</div>
   
   		<button id="btn" type="button" onclick="drawChart()">refresh</button>
	</section>
	<footer>
		<jsp:include page="/WEB-INF/include/footer.jsp" />
	</footer>
</body>
</html>