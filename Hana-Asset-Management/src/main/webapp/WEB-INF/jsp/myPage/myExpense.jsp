<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<title>Hana Solution - MyPortfolio</title>
<link rel="shortcut icon" type="image/x-icon" href="${ pageContext.request.contextPath }/resources/images/favicon.png" />
    
    <link
      href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;700;900&display=swap"
      rel="stylesheet"
    />
    <link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/board.css"></link>
    <link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/dashboard/public/build/css/tailwind.css" />
    <script src="https://cdn.jsdelivr.net/gh/alpine-collective/alpine-magic-helpers@0.5.x/dist/component.min.js"></script>
    <script src="https://cdn.jsdelivr.net/gh/alpinejs/alpine@v2.7.3/dist/alpine.min.js" defer></script>
 	<script type="text/javascript" src="https://www.google.com/jsapi"></script>
	<script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script>
	   
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
	   
	   google.load('visualization','1', {
		      'packages' : ['corechart']
		   })
		   
	   google.setOnLoadCallback(drawPieChart3);
	   function drawPieChart3() {
			  var idCheck = '${ userVO.id }'; 
		      var jsonData = $.ajax({
		         
		         url : "${ pageContext.request.contextPath }/pieChart4",
		         data: { id: idCheck},
		         dataType : "JSON",
		         async : false
		      }).responseText;
		      console.log(jsonData);
		      
		      var data = new google.visualization.DataTable(jsonData);

		      var chart = new google.visualization.ColumnChart(document.getElementById('chart_div3'));
		      
		      chart.draw(data, {
		         curveType : "function",
		         fontSize: 16,
		         width : 1200,
		         height : 400,
		         colors: ['#FAC8C8','#3CC8C8'],
		         chartArea: {
		        	 'width': '75%',
		        	 'height' : '90%'
		       	},
		       	animation: { //차트가 뿌려질때 실행될 애니메이션 효과
	                 startup: true,
	                 duration: 1000,
	                 easing: 'linear' 
	            },
		       	bar: {groupWidth: '70%'}
		         
		      });
		      
		}
	   
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
		         var chart = new google.visualization.LineChart(document.getElementById('chart_div')); 
		      /* var chart = new google.visualization.ColumnChart(document.getElementById('chart_div')); */
		      
		      chart.draw(data, {
		         curveType : "function",
		         fontSize: 16,
		         width : 900,
		         height : 400,
		         colors: ['#3CC8C8','#78EFAD','#46BEFF','#FFDAAB','#3CC8C8','navy','purple','black','LightBlue','PaleVioletRed','Olive','Thistle'],
                 lineWidth: 4,
                  gridlines: {
                    count: 4
                  }
		      });
		      
		}
	</script>
  
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
	
	
	</script>
	
	<script>
	
	$(document).ready(function() {
		
		$('#oneYear').click(function() {
			
			let member_id = '${ userVO.id }'
			let userName = '${ userVO.name }'
			let oneYear = $('#oneYear').val()
			
			$.ajax({
				url: '${ pageContext.request.contextPath }/myPage/daySelect',
				data: { id: member_id, select: oneYear, name: userName },
				success : function(msg) {
					console.log(msg)
					data = msg.trim()
					
					$('#result').html(msg.trim())
				}, 
				error : function() {
					alert('실패')
				}
			})
		})
		
		$('#sixMonth').click(function() {
			
			let member_id = '${ userVO.id }'
			let userName = '${ userVO.name }'
			let oneYear = $('#sixMonth').val()
			
			$.ajax({
				url: '${ pageContext.request.contextPath }/myPage/daySelect',
				data: { id: member_id, select: oneYear, name: userName },
				success : function(msg) {
					console.log(msg)
					data = msg.trim()
					
					$('#result').html(msg.trim())
				}, 
				error : function() {
					alert('실패')
				}
			})
		})
		
		$('#threeMonth').click(function() {
			
			let member_id = '${ userVO.id }'
			let userName = '${ userVO.name }'
			let oneYear = $('#threeMonth').val()
			
			$.ajax({
				url: '${ pageContext.request.contextPath }/myPage/daySelect',
				data: { id: member_id, select: oneYear, name: userName },
				success : function(msg) {
					console.log(msg)
					data = msg.trim()
					
					$('#result').html(msg.trim())
				}, 
				error : function() {
					alert('실패')
				}
			})
		})
		
		$('#selectMonth').click(function() {
			
			let member_id = '${ userVO.id }'
			let userName = '${ userVO.name }'
			let start = $('#startDay').val()
			let last = $('#lastDay').val()
			
			$.ajax({
				url: '${ pageContext.request.contextPath }/myPage/daySelect',
				data: { id: member_id, startDay: start, lastDay: last, name: userName },
				success : function(msg) {
					console.log(msg)
					data = msg.trim()
					
					$('#result').html(msg.trim())
				}, 
				error : function() {
					alert('실패')
				}
			})
		})
		
	})
	
	</script>
	
	<style>
	    
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
    <div x-data="setup()" x-init="$refs.loading.classList.add('hidden'); setColors(color);" :class="{ 'dark': isDark}">
      <div class="flex h-screen antialiased text-gray-900 bg-gray-100 dark:bg-dark dark:text-light">
        <!-- Loading screen -->
        <div
          x-ref="loading"
          class="fixed inset-0 z-50 flex items-center justify-center text-2xl font-semibold text-white bg-primary-darker"
        >
          Loading.....
        </div>

        <!-- Sidebar -->
        <jsp:include page="/WEB-INF/include/aside.jsp" />

        <div class="flex-1 h-full overflow-x-hidden overflow-y-auto">
          <!-- header -->
          <jsp:include page="/WEB-INF/include/myPageHeader.jsp" />
          
          <!-- Main content -->
          <main>
            <!-- Content header -->
            <div class="flex items-center justify-between px-4 py-4 border-b lg:py-6 dark:border-primary-darker">
              <h1 class="text-2xl font-semibold">내 소비내역</h1>
            </div>
              
              <!-- Content -->
	            <div class="mt-2">
	              <!-- State cards -->
	              <div class="grid grid-cols-1 gap-8 p-4 lg:grid-cols-2 xl:grid-cols-4">
	                <!-- Value card -->
	                <div class="flex items-center justify-between p-4 bg-white rounded-md dark:bg-darker">
	                  <div>
	                    <h6
	                      class="text-xs font-medium leading-none tracking-wider text-gray-500 uppercase dark:text-primary-light"
	                      style="font-size: 12pt;"
	                    >
	                      9월 한달간 소비금액
	                    </h6>
	                    <strong class="text-xl font-semibold" style="color: #F08080;"><fmt:formatNumber type="number" pattern="###,###,###,###,###,###" value="${ monthExpense }" />원</strong>
	                  </div>
	                  <div>
	                    <span>
	                      <svg
	                        class="w-12 h-12 text-gray-300 dark:text-primary-dark"
	                        xmlns="http://www.w3.org/2000/svg"
	                        fill="none"
	                        viewBox="0 0 24 24"
	                        stroke="currentColor"
	                      >
	                        <path
	                          stroke-linecap="round"
	                          stroke-linejoin="round"
	                          stroke-width="2"
	                          d="M12 8c-1.657 0-3 .895-3 2s1.343 2 3 2 3 .895 3 2-1.343 2-3 2m0-8c1.11 0 2.08.402 2.599 1M12 8V7m0 1v8m0 0v1m0-1c-1.11 0-2.08-.402-2.599-1M21 12a9 9 0 11-18 0 9 9 0 0118 0z"
	                        />
	                      </svg>
	                    </span>
	                  </div>
	                </div>
	
					<!-- Value card -->
	                <div class="flex items-center justify-between p-4 bg-white rounded-md dark:bg-darker">
	                  <div>
	                    <h6
	                      class="text-xs font-medium leading-none tracking-wider text-gray-500 uppercase dark:text-primary-light"
	                      style="font-size: 12pt;"
	                    >
	                      1년 평균 소비지출액
	                    </h6>
	                    <strong class="text-xl font-semibold" style="color: #F08080;"><fmt:formatNumber type="number" pattern="###,###,###,###,###,###" value="${ avgExpense }" />원</strong>
	                  </div>
	                  <div>
	                    <span>
	                      <svg
	                        class="w-12 h-12 text-gray-300 dark:text-primary-dark"
	                        xmlns="http://www.w3.org/2000/svg"
	                        fill="none"
	                        viewBox="0 0 24 24"
	                        stroke="currentColor"
	                      >
	                        <path
	                          stroke-linecap="round"
	                          stroke-linejoin="round"
	                          stroke-width="2"
	                          d="M12 8c-1.657 0-3 .895-3 2s1.343 2 3 2 3 .895 3 2-1.343 2-3 2m0-8c1.11 0 2.08.402 2.599 1M12 8V7m0 1v8m0 0v1m0-1c-1.11 0-2.08-.402-2.599-1M21 12a9 9 0 11-18 0 9 9 0 0118 0z"
	                        />
	                      </svg>
	                    </span>
	                  </div>
	                </div>
	
	                <!-- Orders card -->
	                <div class="flex items-center justify-between p-4 bg-white rounded-md dark:bg-darker">
	                  <div>
	                    <h6
	                      class="text-xs font-medium leading-none tracking-wider text-gray-500 uppercase dark:text-primary-light"
	                      style="font-size: 12pt;"
	                    >
	                      1년 평균대비 9월 지출액
	                    </h6>
	                    <c:if test="${ avgExpense - monthExpense gt 0 }">
	                    	<span class="text-xl font-semibold" style="color: #F08080;">
	                    	<fmt:formatNumber type="number" pattern="###,###,###,###,###,###" value="${ monthExpense - avgExpense }" />원</span>                
	                    <span class="inline-block px-2 py-px ml-2 text-xs text-green-500 bg-green-100 rounded-md" style="background-color: #F08080; color: white;">
	                      <fmt:formatNumber type="number" maxFractionDigits="0" value="${ ((monthExpense - avgExpense)*100) div avgExpense }" />%
	                    </span>
	                    </c:if>
	                    <c:if test="${ avgExpense - monthExpense lt 0 }">
	                    	<span class="text-xl font-semibold" style="color: #3CC8C8;">
	                    	<fmt:formatNumber type="number" pattern="###,###,###,###,###,###" value="${ monthExpense - avgExpense }" />원</span>                
	                    <span class="inline-block px-2 py-px ml-2 text-xs text-green-500 bg-green-100 rounded-md">
	                      <fmt:formatNumber type="number" maxFractionDigits="0" value="${ ((monthExpense - avgExpense)*100) div avgExpense }" />%
	                    </span>
	                    </c:if>
	                  </div>
	                  <div>
	                    <span>
	                      <svg
	                        class="w-12 h-12 text-gray-300 dark:text-primary-dark"
	                        xmlns="http://www.w3.org/2000/svg"
	                        fill="none"
	                        viewBox="0 0 24 24"
	                        stroke="currentColor"
	                      >
	                        <path
	                          stroke-linecap="round"
	                          stroke-linejoin="round"
	                          stroke-width="2"
	                          d="M13 7h8m0 0v8m0-8l-8 8-4-4-6 6"
	                        />
	                      </svg>
	                    </span>
	                  </div>
	                </div>
	                <!-- Value card -->
	                <div class="flex items-center justify-between p-4 bg-white rounded-md dark:bg-darker">
	                  <div>
	                    <h6
	                      class="text-xs font-medium leading-none tracking-wider text-gray-500 uppercase dark:text-primary-light"
	                      style="font-size: 12pt; margin-bottom: 5px;"
	                    >
	                      소비내역 엑셀 다운로드
	                    </h6>
	                    <span id="columnChart">
	                    		<a style="cursor: pointer;"><strong style="color: #F08080;">다운로드 받기</strong></a>
	                    </span>
	                  </div>
	                </div>
	              </div>
				<!-- The Modal -->
	    		<div id="myModal" class="modal">
	 
				 <!-- Modal content -->
			      <div class="modal-content" style="border-color: #008B8B; border-width: 3px; width: 1100px; height: 1100px;">
		                
		            <span style="margin-left: 35%;"><strong style="text-align: center; font-size: 20pt;">지출내역 다운로드받기</strong></span>
					<hr style="border-color: #008B8B; margin-bottom: 20px; border-width: 1px; width: 98%;">
			        
			        <input type="hidden" name="id" value="${ userVO.id }">
			        
			        <button type="button" id="oneYear" name="select" value="1" style="margin-left:26.5%; width: 150px; line-height: 28px; border-radius: 80px; color: white; background-color: #008B8B; border: none; margin-top: 20px; outline: 0px;">1년간 지출내액</button>
					<button type="button" id="sixMonth" name="select" value="2" style="width: 150px; line-height: 28px; border-radius: 80px; color: white; background-color: #008B8B; border: none; outline: 0px;">6개월간 지출내액</button>
					<button type="button" id="threeMonth" name="select" value="3" style="width: 150px; line-height: 28px; border-radius: 80px; color: white; background-color: #008B8B; border: none; outline: 0px;">3개월간 지출내액</button>
					
					<p style="font-size: 16pt; text-align: center; margin-top: 20px; margin-bottom: 20px;">직접 기간 입력</p>
					<span style="font-size: 13pt; margin-left: 23%; margin-right: 10px;">시작일 : </span>
					<input type="date" id="startDay">
					<span style="font-size: 13pt; margin-left: 10px; margin-right: 10px;"> ~ </span>
					<span style="font-size: 13pt; margin-right: 10px;"> 종료일 : </span>
					<input type="date" id="lastDay">
					<button type="button" id="selectMonth" style="margin-left: 50px; width: 150px; line-height: 28px; border-radius: 80px; color: #008B8B; border-color: #008B8B; background-color: white; border-width: 1px; outline: 0px; font-size: 13pt;">
						검색
					</button>
					
					<div align="center">
						<span id="result"></span>
					</div>
			        <div style="cursor:pointer;background-color:#DDDDDD;text-align: center;padding-bottom: 10px;padding-top: 10px; margin-top: 20px;" id="columnClose">
		                <span class="pop_bt" style="font-size: 13pt;" >
		                     닫기
		                </span>
		            </div>           
			      </div>
			    </div>
		        <!--End Modal-->
	
	              <!-- Two grid columns -->
	             
	                <!-- Line chart card -->
	                <div class="col-span-2 bg-white rounded-md dark:bg-darker" x-data="{ isOn: false }" style="width: 98%; margin-left: 15px;">
	                  <!-- Card header -->
	                  <div class="flex items-center justify-between p-4 border-b dark:border-primary">
	                    <h4 class="text-lg font-semibold text-gray-500 dark:text-light" style="color: #3CC8C8">또래와의 비교</h4>
	                    <div class="flex items-center">
	                        <div
	                          class="absolute top-0 left-0 inline-flex items-center justify-center w-6 h-6 transition-all duration-200 ease-in-out transform scale-110 rounded-full shadow-sm"
	                          :class="{ 'translate-x-0  bg-white dark:bg-primary-100': !isOn, 'translate-x-6 bg-primary-light dark:bg-primary': isOn }"
	                        ></div>
	                    </div>
	                  </div>
	                  <!-- Chart -->
	                  <div id="chart_div3" align="center">
	                  
	                  </div>
	                </div>
	                
	                <div class="grid grid-cols-1 p-4 space-y-8 lg:gap-8 lg:space-y-0 lg:grid-cols-3" style="height: 550px;">
	                <!-- Bar chart card -->
	                <div class="col-span-2 bg-white rounded-md dark:bg-darker" x-data="{ isOn: false }">
	                  <!-- Card header -->
	                  <div class="flex items-center justify-between p-4 border-b dark:border-primary">
	                    <h4 class="text-lg font-semibold text-gray-500 dark:text-light" style="color: #3CC8C8">최근 1년간 월별 소비지출액</h4>
	                   
	                  </div>
	                  <!-- Chart -->
	                  <div id="chart_div" align="center">
	                    
	                  </div>
	                </div>
	
	                <!-- Doughnut chart card -->
	                <div class="bg-white rounded-md dark:bg-darker" x-data="{ isOn: false }">
	                  <!-- Card header -->
	                  <div class="flex items-center justify-between p-4 border-b dark:border-primary">
	                    <h4 class="text-lg font-semibold text-gray-500 dark:text-light" style="color: #3CC8C8; font-size: 14pt;">지출 Best Top 5</h4>
	                    <div class="flex items-center">
	                      <button
	                        class="relative focus:outline-none"
	                        x-cloak
	                        @click="isOn = !isOn; $parent.updateDoughnutChart(isOn)"
	                      >
	                        <div
	                          class="w-12 h-6 transition rounded-full outline-none bg-primary-100 dark:bg-primary-darker"
	                        ></div>
	                        <div
	                          class="absolute top-0 left-0 inline-flex items-center justify-center w-6 h-6 transition-all duration-200 ease-in-out transform scale-110 rounded-full shadow-sm"
	                          :class="{ 'translate-x-0  bg-white dark:bg-primary-100': !isOn, 'translate-x-6 bg-primary-light dark:bg-primary': isOn }"
	                        ></div>
	                      </button>
	                    </div>
	                  </div>
	                  <!-- content -->
	                  <div align="center">
	                  	<br>
	                  	<p style="font-size: 15pt;"><span style="font-size: 15pt; color: #008B8B;">${ userVO.name }님</span> 
							<span style="font-size: 15pt; color: red; text-decoration: underline;">${ maxMonth }</span>에 무슨 일 있으셨나요?</p>
						<br>
						<p style="font-size: 15pt;">1년 지출 평균액 
							<span style="font-size: 15pt; color: red;">
								<fmt:formatNumber type="number" pattern="###,###,###,###,###,###" value="${ avgExpense }" />원</span> 대비<br> 약 
							<span style="font-size: 15pt; color: red;">
								<fmt:formatNumber type="number" maxFractionDigits="0" value="${ ((maxExpense - avgExpense)*100) div avgExpense }" />%</span> 더 지출하셨어요!!
						</p><br>
						<p style="font-size: 13pt;"><
							<span style="font-size: 15pt; color: red;">${ maxMonth }</span> 지출항목이 가장 큰 항목 
							<span style="font-size: 15pt; color: red;">BEST 5</span> 알아보기!!><br>
						</p><br>	
						<table style="width: 400px; text-align: center;" >
							
							<tr>
								<td style="text-align: center; font-size: 16pt;">순위</td>
								<td style="text-align: center; font-size: 16pt;">항목</td>
								<td style="text-align: center; font-size: 16pt;">결제일</td>
							</tr>
							<c:forEach items="${ expenseList }" var="expenseList" varStatus="Loop">
							<tr>
								<td style="text-align: center; font-size: 14pt; color: red;">
								TOP ${ Loop.index+1 } 
								</td>
								<td style="text-align: center; font-size: 14pt;">
								${ expenseList.category } (<fmt:formatNumber type="number" pattern="###,###,###,###,###,###" value="${ expenseList.expense }" />원)
								</td>
								<td style="text-align: center; font-size: 14pt;">
								${ expenseList.reg_date }
								</td>
							</tr>
							</c:forEach>
							
						</table>
	                  </div>
	                </div>
	              </div>
	                
	            </div>
            </main>
          </div>
        </div>

        <!-- Panels -->

        <!-- Settings Panel -->
        <!-- Backdrop -->
        <div
          x-transition:enter="transition duration-300 ease-in-out"
          x-transition:enter-start="opacity-0"
          x-transition:enter-end="opacity-100"
          x-transition:leave="transition duration-300 ease-in-out"
          x-transition:leave-start="opacity-100"
          x-transition:leave-end="opacity-0"
          x-show="isSettingsPanelOpen"
          @click="isSettingsPanelOpen = false"
          class="fixed inset-0 z-10 bg-primary-darker"
          style="opacity: 0.5"
          aria-hidden="true"
        ></div>
        <!-- Panel -->
        <section
          x-transition:enter="transition duration-300 ease-in-out transform sm:duration-500"
          x-transition:enter-start="translate-x-full"
          x-transition:enter-end="translate-x-0"
          x-transition:leave="transition duration-300 ease-in-out transform sm:duration-500"
          x-transition:leave-start="translate-x-0"
          x-transition:leave-end="translate-x-full"
          x-ref="settingsPanel"
          tabindex="-1"
          x-show="isSettingsPanelOpen"
          @keydown.escape="isSettingsPanelOpen = false"
          class="fixed inset-y-0 right-0 z-20 w-full max-w-xs bg-white shadow-xl dark:bg-darker dark:text-light sm:max-w-md focus:outline-none"
          aria-labelledby="settinsPanelLabel"
        >
          <div class="absolute left-0 p-2 transform -translate-x-full">
            <!-- Close button -->
            <button
              @click="isSettingsPanelOpen = false"
              class="p-2 text-white rounded-md focus:outline-none focus:ring"
            >
              <svg
                class="w-5 h-5"
                xmlns="http://www.w3.org/2000/svg"
                fill="none"
                viewBox="0 0 24 24"
                stroke="currentColor"
              >
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12" />
              </svg>
            </button>
          </div>
          <!-- Panel content -->
          <div class="flex flex-col h-screen">
            <!-- Panel header -->
            <div
              class="flex flex-col items-center justify-center flex-shrink-0 px-4 py-8 space-y-4 border-b dark:border-primary-dark"
            >
              <span aria-hidden="true" class="text-gray-500 dark:text-primary">
                <svg
                  class="w-8 h-8"
                  xmlns="http://www.w3.org/2000/svg"
                  fill="none"
                  viewBox="0 0 24 24"
                  stroke="currentColor"
                >
                  <path
                    stroke-linecap="round"
                    stroke-linejoin="round"
                    stroke-width="2"
                    d="M12 6V4m0 2a2 2 0 100 4m0-4a2 2 0 110 4m-6 8a2 2 0 100-4m0 4a2 2 0 110-4m0 4v2m0-6V4m6 6v10m6-2a2 2 0 100-4m0 4a2 2 0 110-4m0 4v2m0-6V4"
                  />
                </svg>
              </span>
              <h2 id="settinsPanelLabel" class="text-xl font-medium text-gray-500 dark:text-light">Settings</h2>
            </div>
            <!-- Content -->
            <div class="flex-1 overflow-hidden hover:overflow-y-auto">
              <!-- Theme -->
              <div class="p-4 space-y-4 md:p-8">
                <h6 class="text-lg font-medium text-gray-400 dark:text-light">Mode</h6>
                <div class="flex items-center space-x-8">
                  <!-- Light button -->
                  <button
                    @click="setLightTheme"
                    class="flex items-center justify-center px-4 py-2 space-x-4 transition-colors border rounded-md hover:text-gray-900 hover:border-gray-900 dark:border-primary dark:hover:text-primary-100 dark:hover:border-primary-light focus:outline-none focus:ring focus:ring-primary-lighter focus:ring-offset-2 dark:focus:ring-offset-dark dark:focus:ring-primary-dark"
                    :class="{ 'border-gray-900 text-gray-900 dark:border-primary-light dark:text-primary-100': !isDark, 'text-gray-500 dark:text-primary-light': isDark }"
                  >
                    <span>
                      <svg
                        class="w-6 h-6"
                        xmlns="http://www.w3.org/2000/svg"
                        fill="none"
                        viewBox="0 0 24 24"
                        stroke="currentColor"
                      >
                        <path
                          stroke-linecap="round"
                          stroke-linejoin="round"
                          stroke-width="2"
                          d="M11.049 2.927c.3-.921 1.603-.921 1.902 0l1.519 4.674a1 1 0 00.95.69h4.915c.969 0 1.371 1.24.588 1.81l-3.976 2.888a1 1 0 00-.363 1.118l1.518 4.674c.3.922-.755 1.688-1.538 1.118l-3.976-2.888a1 1 0 00-1.176 0l-3.976 2.888c-.783.57-1.838-.197-1.538-1.118l1.518-4.674a1 1 0 00-.363-1.118l-3.976-2.888c-.784-.57-.38-1.81.588-1.81h4.914a1 1 0 00.951-.69l1.519-4.674z"
                        />
                      </svg>
                    </span>
                    <span>Light</span>
                  </button>

                  <!-- Dark button -->
                  <button
                    @click="setDarkTheme"
                    class="flex items-center justify-center px-4 py-2 space-x-4 transition-colors border rounded-md hover:text-gray-900 hover:border-gray-900 dark:border-primary dark:hover:text-primary-100 dark:hover:border-primary-light focus:outline-none focus:ring focus:ring-primary-lighter focus:ring-offset-2 dark:focus:ring-offset-dark dark:focus:ring-primary-dark"
                    :class="{ 'border-gray-900 text-gray-900 dark:border-primary-light dark:text-primary-100': isDark, 'text-gray-500 dark:text-primary-light': !isDark }"
                  >
                    <span>
                      <svg
                        class="w-6 h-6"
                        xmlns="http://www.w3.org/2000/svg"
                        fill="none"
                        viewBox="0 0 24 24"
                        stroke="currentColor"
                      >
                        <path
                          stroke-linecap="round"
                          stroke-linejoin="round"
                          stroke-width="2"
                          d="M20.354 15.354A9 9 0 018.646 3.646 9.003 9.003 0 0012 21a9.003 9.003 0 008.354-5.646z"
                        />
                      </svg>
                    </span>
                    <span>Dark</span>
                  </button>
                </div>
              </div>

              <!-- Colors -->
              <div class="p-4 space-y-4 md:p-8">
                <h6 class="text-lg font-medium text-gray-400 dark:text-light">Colors</h6>
                <div>
                  <button
                    @click="setColors('cyan')"
                    class="w-10 h-10 rounded-full"
                    style="background-color: var(--color-cyan)"
                  ></button>
                  <button
                    @click="setColors('teal')"
                    class="w-10 h-10 rounded-full"
                    style="background-color: var(--color-teal)"
                  ></button>
                  <button
                    @click="setColors('green')"
                    class="w-10 h-10 rounded-full"
                    style="background-color: var(--color-green)"
                  ></button>
                  <button
                    @click="setColors('fuchsia')"
                    class="w-10 h-10 rounded-full"
                    style="background-color: var(--color-fuchsia)"
                  ></button>
                  <button
                    @click="setColors('blue')"
                    class="w-10 h-10 rounded-full"
                    style="background-color: var(--color-blue)"
                  ></button>
                  <button
                    @click="setColors('violet')"
                    class="w-10 h-10 rounded-full"
                    style="background-color: var(--color-violet)"
                  ></button>
                </div>
              </div>
            </div>
          </div>
        </section>

        <!-- Notification panel -->
        <!-- Backdrop -->
        <div
          x-transition:enter="transition duration-300 ease-in-out"
          x-transition:enter-start="opacity-0"
          x-transition:enter-end="opacity-100"
          x-transition:leave="transition duration-300 ease-in-out"
          x-transition:leave-start="opacity-100"
          x-transition:leave-end="opacity-0"
          x-show="isNotificationsPanelOpen"
          @click="isNotificationsPanelOpen = false"
          class="fixed inset-0 z-10 bg-primary-darker"
          style="opacity: 0.5"
          aria-hidden="true"
        ></div>
        <!-- Panel -->
        <section
          x-transition:enter="transition duration-300 ease-in-out transform sm:duration-500"
          x-transition:enter-start="-translate-x-full"
          x-transition:enter-end="translate-x-0"
          x-transition:leave="transition duration-300 ease-in-out transform sm:duration-500"
          x-transition:leave-start="translate-x-0"
          x-transition:leave-end="-translate-x-full"
          x-ref="notificationsPanel"
          x-show="isNotificationsPanelOpen"
          @keydown.escape="isNotificationsPanelOpen = false"
          tabindex="-1"
          aria-labelledby="notificationPanelLabel"
          class="fixed inset-y-0 z-20 w-full max-w-xs bg-white dark:bg-darker dark:text-light sm:max-w-md focus:outline-none"
        >
          <div class="absolute right-0 p-2 transform translate-x-full">
            <!-- Close button -->
            <button
              @click="isNotificationsPanelOpen = false"
              class="p-2 text-white rounded-md focus:outline-none focus:ring"
            >
              <svg
                class="w-5 h-5"
                xmlns="http://www.w3.org/2000/svg"
                fill="none"
                viewBox="0 0 24 24"
                stroke="currentColor"
              >
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12" />
              </svg>
            </button>
          </div>
          <div class="flex flex-col h-screen" x-data="{ activeTabe: 'action' }">
            <!-- Panel header -->
            <div class="flex-shrink-0">
              <div class="flex items-center justify-between px-4 pt-4 border-b dark:border-primary-darker">
                <h2 id="notificationPanelLabel" class="pb-4 font-semibold">Notifications</h2>
                <div class="space-x-2">
                  <button
                    @click.prevent="activeTabe = 'action'"
                    class="px-px pb-4 transition-all duration-200 transform translate-y-px border-b focus:outline-none"
                    :class="{'border-primary-dark dark:border-primary': activeTabe == 'action', 'border-transparent': activeTabe != 'action'}"
                  >
                    Action
                  </button>
                  <button
                    @click.prevent="activeTabe = 'user'"
                    class="px-px pb-4 transition-all duration-200 transform translate-y-px border-b focus:outline-none"
                    :class="{'border-primary-dark dark:border-primary': activeTabe == 'user', 'border-transparent': activeTabe != 'user'}"
                  >
                    User
                  </button>
                </div>
              </div>
            </div>

            <!-- Panel content (tabs) -->
            <div class="flex-1 pt-4 overflow-y-hidden hover:overflow-y-auto">
              <!-- Action tab -->
              <div class="space-y-4" x-show.transition.in="activeTabe == 'action'">
                <p class="px-4">Action tab content</p>
                <!--  -->
                <!-- Action tab content -->
                <!--  -->
              </div>

              <!-- User tab -->
              <div class="space-y-4" x-show.transition.in="activeTabe == 'user'">
                <p class="px-4">User tab content</p>
                <!--  -->
                <!-- User tab content -->
                <!--  -->
              </div>
            </div>
          </div>
        </section>

        <!-- Search panel -->
        <!-- Backdrop -->
        <div
          x-transition:enter="transition duration-300 ease-in-out"
          x-transition:enter-start="opacity-0"
          x-transition:enter-end="opacity-100"
          x-transition:leave="transition duration-300 ease-in-out"
          x-transition:leave-start="opacity-100"
          x-transition:leave-end="opacity-0"
          x-show="isSearchPanelOpen"
          @click="isSearchPanelOpen = false"
          class="fixed inset-0 z-10 bg-primary-darker"
          style="opacity: 0.5"
          aria-hidden="ture"
        ></div>
        <!-- Panel -->
        <section
          x-transition:enter="transition duration-300 ease-in-out transform sm:duration-500"
          x-transition:enter-start="-translate-x-full"
          x-transition:enter-end="translate-x-0"
          x-transition:leave="transition duration-300 ease-in-out transform sm:duration-500"
          x-transition:leave-start="translate-x-0"
          x-transition:leave-end="-translate-x-full"
          x-show="isSearchPanelOpen"
          @keydown.escape="isSearchPanelOpen = false"
          class="fixed inset-y-0 z-20 w-full max-w-xs bg-white shadow-xl dark:bg-darker dark:text-light sm:max-w-md focus:outline-none"
        >
          <div class="absolute right-0 p-2 transform translate-x-full">
            <!-- Close button -->
            <button @click="isSearchPanelOpen = false" class="p-2 text-white rounded-md focus:outline-none focus:ring">
              <svg
                class="w-5 h-5"
                xmlns="http://www.w3.org/2000/svg"
                fill="none"
                viewBox="0 0 24 24"
                stroke="currentColor"
              >
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12" />
              </svg>
            </button>
          </div>

          <h2 class="sr-only">Search panel</h2>
          <!-- Panel content -->
          <div class="flex flex-col h-screen">
            <!-- Panel header (Search input) -->
            <div
              class="relative flex-shrink-0 px-4 py-8 text-gray-400 border-b dark:border-primary-darker dark:focus-within:text-light focus-within:text-gray-700"
            >
              <span class="absolute inset-y-0 inline-flex items-center px-4">
                <svg
                  class="w-5 h-5"
                  xmlns="http://www.w3.org/2000/svg"
                  fill="none"
                  viewBox="0 0 24 24"
                  stroke="currentColor"
                >
                  <path
                    stroke-linecap="round"
                    stroke-linejoin="round"
                    stroke-width="2"
                    d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z"
                  />
                </svg>
              </span>
              <input
                x-ref="searchInput"
                type="text"
                class="w-full py-2 pl-10 pr-4 border rounded-full dark:bg-dark dark:border-transparent dark:text-light focus:outline-none focus:ring"
                placeholder="Search..."
              />
            </div>

            <!-- Panel content (Search result) -->
            <div class="flex-1 px-4 pb-4 space-y-4 overflow-y-hidden h hover:overflow-y-auto">
              <h3 class="py-2 text-sm font-semibold text-gray-600 dark:text-light">History</h3>
              <p class="px=4">Search resault</p>
              <!--  -->
              <!-- Search content -->
              <!--  -->
            </div>
          </div>
        </section>
      </div>
    </div>
    <!-- All javascript code in this project for now is just for demo DON'T RELY ON IT  -->
    <script>
      const setup = () => {
        const getTheme = () => {
          if (window.localStorage.getItem('dark')) {
            return JSON.parse(window.localStorage.getItem('dark'))
          }
          return !!window.matchMedia && window.matchMedia('(prefers-color-scheme: dark)').matches
        }

        const setTheme = (value) => {
          window.localStorage.setItem('dark', value)
        }

        const getColor = () => {
          if (window.localStorage.getItem('color')) {
            return window.localStorage.getItem('color')
          }
          return 'cyan'
        }

        const setColors = (color) => {
          const root = document.documentElement
          root.style.setProperty('--color-primary', `var(--color-${color})`)
          root.style.setProperty('--color-primary-50', `var(--color-${color}-50)`)
          root.style.setProperty('--color-primary-100', `var(--color-${color}-100)`)
          root.style.setProperty('--color-primary-light', `var(--color-${color}-light)`)
          root.style.setProperty('--color-primary-lighter', `var(--color-${color}-lighter)`)
          root.style.setProperty('--color-primary-dark', `var(--color-${color}-dark)`)
          root.style.setProperty('--color-primary-darker', `var(--color-${color}-darker)`)
          this.selectedColor = color
          window.localStorage.setItem('color', color)
        }

        return {
          loading: true,
          isDark: getTheme(),
          color: getColor(),
          selectedColor: 'cyan',
          toggleTheme() {
            this.isDark = !this.isDark
            setTheme(this.isDark)
          },
          setLightTheme() {
            this.isDark = false
            setTheme(this.isDark)
          },
          setDarkTheme() {
            this.isDark = true
            setTheme(this.isDark)
          },
          setColors,
          toggleSidbarMenu() {
            this.isSidebarOpen = !this.isSidebarOpen
          },
          isSettingsPanelOpen: false,
          openSettingsPanel() {
            this.isSettingsPanelOpen = true
            this.$nextTick(() => {
              this.$refs.settingsPanel.focus()
            })
          },
          isNotificationsPanelOpen: false,
          openNotificationsPanel() {
            this.isNotificationsPanelOpen = true
            this.$nextTick(() => {
              this.$refs.notificationsPanel.focus()
            })
          },
          isSearchPanelOpen: false,
          openSearchPanel() {
            this.isSearchPanelOpen = true
            this.$nextTick(() => {
              this.$refs.searchInput.focus()
            })
          },
          isMobileSubMenuOpen: false,
          openMobileSubMenu() {
            this.isMobileSubMenuOpen = true
            this.$nextTick(() => {
              this.$refs.mobileSubMenu.focus()
            })
          },
          isMobileMainMenuOpen: false,
          openMobileMainMenu() {
            this.isMobileMainMenuOpen = true
            this.$nextTick(() => {
              this.$refs.mobileMainMenu.focus()
            })
          },
        }
      }
    </script>
  </body>
</html>