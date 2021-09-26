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
    <link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/dashboard/public/build/css/tailwind.css" />
    <link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/plan/ow.css" type="text/css">
    <link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/plan/psw_asset.css">
    
    <script src="https://cdn.jsdelivr.net/gh/alpine-collective/alpine-magic-helpers@0.5.x/dist/component.min.js"></script>
    <script src="https://cdn.jsdelivr.net/gh/alpinejs/alpine@v2.7.3/dist/alpine.min.js" defer></script>
 	<script type="text/javascript" src="https://www.google.com/jsapi"></script>
	<script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>

	<script>
	
	 var total = '${ totalAsset }';
	 var depositAsset = '${ deposit }';
	 var savingAsset = '${ saving }';
	 var pensionAsset = '${ pension }';
	
	 google.load('visualization','1', {
		      'packages' : ['corechart']
	 })
		   
	 google.setOnLoadCallback(drawPieChart);
	 function drawPieChart() {
		 
		      var jsonData = $.ajax({
		         
		         url : "${ pageContext.request.contextPath }/myPage/depositRatio",
		         data: { totalAsset: total, deposit: depositAsset, saving: savingAsset, pension: pensionAsset},
		         dataType : "JSON",
		         async : false
		      }).responseText;
		      console.log(jsonData);
		      
		      var data = new google.visualization.DataTable(jsonData);
	
		      var chart = new google.visualization.PieChart(document.getElementById('depositChart'));
		      
		      chart.draw(data, {
		         curveType : "function",
		         fontSize: 16,
		         width : 400,
		         height : 200,
		         colors: ['#FAC8C8','PaleVioletRed'],
		         backgroundColor: '#3CC8C8',
		         borderColor: '#3CC8C8',
		         is3D: true,
		         chartArea: {
		        	 'width': '90%',
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
			   
		google.setOnLoadCallback(drawPieChart2);
		function drawPieChart2() {
			 	  
				  var fundAsset = '${ fundValue }';
			      var jsonData = $.ajax({
			         
			         url : "${ pageContext.request.contextPath }/myPage/fundRatio",
			         data: { totalAsset: total, fund: fundAsset },
			         dataType : "JSON",
			         async : false
			      }).responseText;
			      console.log(jsonData);
			      
			      var data = new google.visualization.DataTable(jsonData);
		
			      var chart = new google.visualization.PieChart(document.getElementById('fundChart'));
			      
			      chart.draw(data, {
			         curveType : "function",
			         fontSize: 16,
			         width : 400,
			         height : 200,
			         colors: ['#F0B6B6','#3CC8C8'],
			         backgroundColor: '#FFDCFF',
			         borderColor: '#FFDCFF',
			         is3D: true,
			         chartArea: {
			        	 'width': '90%',
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
	</script>

	<script type="text/javascript">
		function slideChk(){
			$("#my_asset_detail_body").slideDown();
		}
		function slideChk2(){
			$("#my_asset_detail_body").slideUp();
		}
		function slideChk3(){
			$("#my_asset_detail_body2").slideDown();
		}
		function slideChk4(){
			$("#my_asset_detail_body2").slideUp();
		}
		function slideChk5(){
			$("#my_asset_detail_body3").slideDown();
		}
		function slideChk6(){
			$("#my_asset_detail_body3").slideUp();
		}
		function slideChk7(){
			$("#my_asset_detail_body4").slideDown();
		}
		function slideChk8(){
			$("#my_asset_detail_body4").slideUp();
		}
	</script>
	
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
              <h1 class="text-2xl font-semibold">자산운용보고서</h1>
            </div>
              
              <!-- Content -->
	            <div class="mt-2">
	              <!-- State cards -->
	              <div class="grid grid-cols-1 gap-8 p-4 lg:grid-cols-2 xl:grid-cols-4">
	                <!-- Value card -->
	                <div class="flex items-center justify-between p-4 bg-white rounded-md dark:bg-darker">
	                  <div>
	                  	<c:if test="${ myReport eq 'assetReport' }">
		                    <a
		                      class="text-xs font-medium leading-none tracking-wider text-gray-500 uppercase dark:text-primary-light"
		                      style="font-size: 12pt; color: #3CC8C8;"
		                      href="${ pageContext.request.contextPath }/myPage/assetReport"
		                    >
		                      <strong>자산운용현황</strong>
		                    </a>
	                    </c:if>
	                    <c:if test="${ myReport ne 'assetReport' }">
		                    <a
		                      class="text-xs font-medium leading-none tracking-wider text-gray-500 uppercase dark:text-primary-light"
		                      style="font-size: 12pt;"
		                      href="${ pageContext.request.contextPath }/myPage/assetReport"
		                    >
		                      자산운용현황
		                    </a>
	                    </c:if>
	                  </div>
	                  <div>
	                    <span>
	                      <c:if test="${ myReport eq 'assetReport' }">
	                      <svg
	                        class="w-12 h-12 text-gray-300 dark:text-primary-dark"
	                        xmlns="http://www.w3.org/2000/svg"
	                        fill="none"
	                        viewBox="0 0 24 24"
	                        stroke="currentColor"
	                        style="color: #3CC8C8;"
	                      >
	                        <path
	                          stroke-linecap="round"
	                          stroke-linejoin="round"
	                          stroke-width="2"
	                          d="M12 8c-1.657 0-3 .895-3 2s1.343 2 3 2 3 .895 3 2-1.343 2-3 2m0-8c1.11 0 2.08.402 2.599 1M12 8V7m0 1v8m0 0v1m0-1c-1.11 0-2.08-.402-2.599-1M21 12a9 9 0 11-18 0 9 9 0 0118 0z"
	                        />
	                      </svg>
	                      </c:if>
	                      <c:if test="${ myReport ne 'assetReport' }">
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
	                      </c:if>
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
	                      투자스타일
	                    </h6>
	                    
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
	               
	              </div>
				
	
	              <!-- Two grid columns -->
	             
	                <!-- Line chart card -->
	                <div class="col-span-2 bg-white rounded-md dark:bg-darker" x-data="{ isOn: false }" style="width: 98%; margin-left: 15px;">
	                  <!-- Card header -->
	                  <div class="flex items-center justify-between p-4 border-b dark:border-primary">
	                    <h4 class="text-lg font-semibold text-gray-500 dark:text-light" style="color: #3CC8C8">자산운용현황</h4>
	                    <div class="flex items-center">
	                        <div
	                          class="absolute top-0 left-0 inline-flex items-center justify-center w-6 h-6 transition-all duration-200 ease-in-out transform scale-110 rounded-full shadow-sm"
	                          :class="{ 'translate-x-0  bg-white dark:bg-primary-100': !isOn, 'translate-x-6 bg-primary-light dark:bg-primary': isOn }"
	                        ></div>
	                    </div>
	                  </div>
	                  <!-- main content -->
	                  <div>
						<div class="psw_content" style="width: 90%;">
							<div class="mt60">
								<div class="txt-c">
									<p class="psw_head">
										${ userVO.name }님의 Hana Solution 자산 총합은<br>
										<strong style="color: #008B8B;">
										<fmt:formatNumber type="number" pattern="###,###,###,###,###,###" value="${ totalAsset }" />원
										</strong>입니다.
									</p>
									<p class="mt20 font-c-6" style="margin-top: 10px; font-size: 11pt;">
										자산의 총합에 골드, 대출은 제외됩니다.<br>펀드는 평가금액 기준, 보험은 납입금액 기준입니다.<br>※
										펀드 평가금액이 금일미평가상태일 경우 합산에 포함되지 않을 수 있습니다.
									</p>
								</div>
								<div id="depositChart" style="float: right; width: 25%; margin-top: 80px; margin-right: 95px;">
											
								</div>
								<div class="my_asset_state_wrap">
									<div class="my_asset_summary type2" style="height: 200px; background-color: #3CC8C8; width: 70%;">
										<div class="description_area">
											<h4 class="psw_asset_tit_sub2">
												<strong>투자비중 관점</strong>
											</h4>
											<p class="psw_asset_tit_sub3" style="font-size: 12pt;">
												총 자산대비 <strong class="color_blue1" style="font-size: 14pt;">투자자산</strong>은 
												<strong	class="color_blue1" style="font-size: 15pt;">
												<fmt:formatNumber type="number" maxFractionDigits="0" value="${ ((saving + pension - deposit)*100) div (saving + pension) }" />%	
												</strong>의 비중으로<br> 보유하고
												계시네요.
											</p>
										</div>
										<div class="graph_area">
											<div class="graph" id="investChartDiv"
												style="display: none;">투자비중 관점 그래프</div>
											
										</div>
									</div>
									
									<div class="owm-tgl-list">

										<div class="my_asset_detail">
											<div class="my_asset_detail_head" onclick="slideChk3()">
												<table>
													<colgroup>
														<col style="width: 340px">
														<col style="width: *">
													</colgroup>
													<tbody>
														<tr>
															<td>
																<div class="title_area">
																	<strong class="psw_asset_tit_sub">투자자산 (2)</strong>
																	<p class="font-c-6 mt8">안전자산을 제외한 자산입니다.</p>
																</div>
															</td>
															<td>
																<div class="values_area">
																	<span class="value"> <span class="hidden">투자자산
																			비율</span> 
																	</span> 
																	<span class="value"> <span class="hidden">투자자산
																			총 평가금액</span> <strong style="font-size: 20pt;">
																			<fmt:formatNumber type="number" pattern="###,###,###,###,###,###" value="${ saving + pension }" />원
																			</strong>
																	</span>
																</div>
															</td>
														</tr>
													</tbody>
												</table>
											</div>
											<div class="my_asset_detail_body box-con" id="my_asset_detail_body2" onclick="slideChk4()">

												<div class="my_asset_detail_cont">
													<h4 class="con-tit1">
														금융상품(2) <span class="small">총잔액 
														<strong	class="color_blue1" style="font-size: 14pt;">
															<fmt:formatNumber type="number" pattern="###,###,###,###,###,###" value="${ saving + pension }" />
															원</strong>
														</span>
													</h4>
													<div class="owm-table1">
														<table border="1">
															<caption><strong style="font-size: 15pt;">투자자산 상세</strong></caption>
															<colgroup>
																<col width="*">
																<col width="32%">
																<col width="15%">
																<col width="19%">
															</colgroup>
															<thead>
																<tr>
																	<th scope="col" style="font-size: 14pt;">투자상품명</th>
																	<th scope="col" style="font-size: 14pt;">계좌번호</th>
																	<th scope="col" style="font-size: 14pt;">최종거래일</th>
																	<th scope="col" style="font-size: 14pt;">잔액</th>
																</tr>
															</thead>
															<tbody>
																<tr>
																	<td class="txt-l" style="font-size: 12pt;">급여하나 월복리적금</td>
																	<td style="font-size: 12pt;"><strong>802353020921</strong></td>
																	<td style="font-size: 12pt;">2021.09.10</td>
																	<td class="txt-r" style="font-size: 12pt;"><fmt:formatNumber type="number" pattern="###,###,###,###,###,###" value="${ saving }" />원</td>
																</tr>
																<tr>
																	<td class="txt-l" style="font-size: 12pt;">하나UBS 인BEST연금 증권자투자신탁(제1호)(채권)</td>
																	<td style="font-size: 12pt;"><strong>140354896541</strong></td>
																	<td style="font-size: 12pt;">2021.09.10</td>
																	<td class="txt-r" style="font-size: 12pt;"><fmt:formatNumber type="number" pattern="###,###,###,###,###,###" value="${ pension }" />원</td>
																</tr>
															</tbody>
														</table>
													</div>
												</div>
											</div>
										</div>

										<div class="my_asset_detail js-owm-toggleTarget">
											<div class="my_asset_detail_head" onclick="slideChk()">
												<table>
													<colgroup>
														<col style="width: 340px">
														<col style="width: *">
													</colgroup>
													<tbody>
														<tr>
															<td>
																<div class="title_area">
																	<strong class="psw_asset_tit_sub">안전자산(${ depositNum })</strong>
																	<p class="font-c-6 mt8">예금, 유동성, 방카슈랑스로 분류된
																		자산입니다.</p>
																</div>
															</td>
															<td>
																<div class="values_area">
																	<span class="value"> <span class="hidden">안전자산
																			비율</span> 
																	</span> 
																	<span class="value"> <span class="hidden">안전자산
																			총 평가금액</span> <strong style="font-size: 20pt;">
																			<fmt:formatNumber type="number" pattern="###,###,###,###,###,###" value="${ deposit }" />원
																			</strong>
																	</span>
																</div>
															</td>
														</tr>
													</tbody>
												</table>
												<button class="js-owm-toggleBtn">
													<span class="hidden">상세보기</span>
												</button>
											</div>
											<div class="my_asset_detail_body box-con" id="my_asset_detail_body" onclick="slideChk2()">

												<div class="my_asset_detail_cont">
													<h4 class="con-tit1">
														입출금(${ depositNum }) <span class="small">총잔액 <strong
															class="color_blue1" style="font-size: 14pt;">
															<fmt:formatNumber type="number" pattern="###,###,###,###,###,###" value="${ deposit }" />
															원</strong>
														</span>
													</h4>
													<div class="owm-table1">
														<table border="1">
															<caption><strong style="font-size: 15pt;">입출금자산 상세</strong></caption>
															<colgroup>
																<col width="*">
																<col width="32%">
																<col width="15%">
																<col width="19%">
															</colgroup>
															<thead>
																<tr>
																	<th scope="col" style="font-size: 14pt;">예금명</th>
																	<th scope="col" style="font-size: 14pt;">계좌번호</th>
																	<th scope="col" style="font-size: 14pt;">최종거래일</th>
																	<th scope="col" style="font-size: 14pt;">잔액</th>
																</tr>
															</thead>
															<tbody>
																<c:forEach items="${ list }" var="list" varStatus="Loop">
																<tr>
																	<td class="txt-l" style="font-size: 12pt;">${ list.accName }</td>
																	<td style="font-size: 12pt;"><strong>${ list.accNo }</strong></td>
																	<td style="font-size: 12pt;">2021.09.27</td>
																	<td class="txt-r" style="font-size: 12pt;"><fmt:formatNumber type="number" pattern="###,###,###,###,###,###" value="${ deposit }" />원</td>
																</tr>
																</c:forEach>
															</tbody>
														</table>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								
								<div id="fundChart" style="float: right; width: 25%; margin-top: 60px; margin-right: 95px;">
											
								</div>
								<div class="my_asset_state_wrap">
									<div class="my_asset_summary type1" style="height: 200px; width: 70%; background-color: #FFDCFF;">
										<div class="description_area">
											<h4 class="psw_asset_tit_sub2">
												<strong>포트폴리오 관점</strong>
											</h4>
											<p class="psw_asset_tit_sub3" style="font-size: 12pt;">
												총 자산대비 <strong class="color_blue1" style="font-size: 14pt;">포트폴리오</strong>는 
												<strong	class="color_blue1" style="font-size: 15pt;">
												<fmt:formatNumber type="number" maxFractionDigits="0" value="${ (fundValue*100) div totalAsset }" />%	
												</strong>의 비중으로<br> 구성되어 있습니다.
											</p>
										</div>
										<div class="graph_area">
											<div class="graph_area">
												<div class="graph" id="portpolioChartDiv"
													style="display: none;">포트폴리오 관점 그래프</div>
												<div class="graph_area_nodata type2" id="noDataType2"
													style="">
												</div>
												
											</div>
										</div>
									</div>
									
									<div class="owm-tgl-list">

										<div class="my_asset_detail">
											<div class="my_asset_detail_head" onclick="slideChk5()">
												<table>
													<colgroup>
														<col style="width: 340px">
														<col style="width: *">
													</colgroup>
													<tbody>
														<tr>
															<td>
																<div class="title_area">
																	<strong class="psw_asset_tit_sub">포트폴리오 (1)</strong>
																	<p class="font-c-6 mt8">포트폴리오로 가입된 자산(포트폴리오에 속한
																		펀드)입니다.</p>
																</div>
															</td>
															<td>
																<div class="values_area">
																	<span class="value"> <span class="hidden">포트폴리오
																			비율</span> 
																	</span> 
																	<span class="value"> <span class="hidden">포트폴리오
																			총 평가금액</span> <strong style="font-size: 20pt;">
																			<fmt:formatNumber type="number" pattern="###,###,###,###,###,###" value="${ fundValue }" />원
																			</strong>
																	</span>
																</div>
															</td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
										<div class="my_asset_detail_body box-con" id="my_asset_detail_body3" onclick="slideChk6()">

											<div class="my_asset_detail_cont">
												<h4 class="con-tit1">
													포트폴리오(1) <span class="small">총잔액 <strong
														class="color_blue1" style="font-size: 14pt;">
														<fmt:formatNumber type="number" pattern="###,###,###,###,###,###" value="${ fundValue }" />
														원</strong>
													</span>
												</h4>
												<div class="owm-table1">
													<table border="1">
														<caption><strong style="font-size: 15pt;">포트폴리오 자산 상세</strong></caption>
														<colgroup>
															<col width="*">
															<col width="22%">
															<col width="15%">
															<col width="19%">
															<col width="10%">
														</colgroup>
														<thead>
															<tr>
																<th scope="col" style="font-size: 14pt;">펀드명</th>
																<th scope="col" style="font-size: 14pt;">분류</th>
																<th scope="col" style="font-size: 14pt;">원금</th>
																<th scope="col" style="font-size: 14pt;">평가액</th>
																<th scope="col" style="font-size: 14pt;">손익</th>
															</tr>
														</thead>
														<tbody>
															<c:forEach items="${ fundList }" var="list" varStatus="Loop">
															<tr>
																<td class="txt-l" style="font-size: 12pt;">${ list.fund_name }</td>
																<td style="font-size: 12pt;"><strong>${ list.type }</strong></td>
																<td style="font-size: 12pt;">
																	<fmt:formatNumber type="number" pattern="###,###,###,###,###,###" value="${ (fund * list.ratio)/100 }" />원
																</td>
																<td class="txt-r" style="font-size: 12pt;">
																	<fmt:formatNumber type="number" pattern="###,###,###,###,###,###" value="${ ((fund * list.ratio)/100) * ((rate/200)+1) }" />원
																</td>
																<td class="txt-r" style="font-size: 12pt; color: red;">
																	+<fmt:formatNumber type="number" pattern="###,###,###,###,###,###" value="${ ((fund * list.ratio)/100) * (rate/200) }" />원
																</td>
															</tr>
															</c:forEach>
															<tr>
																<td colspan="2" style="text-align: center; font-size: 14pt;"><strong>총합</strong></td>
																<td class="txt-r" style="font-size: 12pt;">
																	<fmt:formatNumber type="number" pattern="###,###,###,###,###,###" value="${ fund }" />원
																</td>
																<td class="txt-r" style="font-size: 12pt;">
																	<fmt:formatNumber type="number" pattern="###,###,###,###,###,###" value="${ fundValue }" />원
																</td>
																<td class="txt-r" style="font-size: 12pt; color: red;">
																	+<fmt:formatNumber type="number" pattern="###,###,###,###,###,###" value="${ fundValue - fund }" />원
																</td>
															</tr>
														</tbody>
													</table>
												</div>
											</div>
										</div>
										<div class="my_asset_detail js-owm-toggleTarget">
											<div class="my_asset_detail_head" onclick="slideChk7()">
												<table>
													<colgroup>
														<col style="width: 340px">
														<col style="width: *">
													</colgroup>
													<tbody>
														<tr>
															<td>
																<div class="title_area">
																	<strong class="psw_asset_tit_sub">포트폴리오 외 자산
																		(3)</strong>
																</div>
															</td>
															<td>
																<div class="values_area">
																	<span class="value"> <span class="hidden">포트폴리오
																			외 자산 비율</span>
																	</span> <span class="value"> <span class="hidden">포트폴리오
																			외 자산 총 평가금액</span> <strong style="font-size: 20pt;">
																			<fmt:formatNumber type="number" pattern="###,###,###,###,###,###" value="${ totalAsset-fundValue }" />원</strong>
																	</span>
																</div>
															</td>
														</tr>
													</tbody>
												</table>
												<button class="js-owm-toggleBtn">
													<span class="hidden">상세보기</span>
												</button>
											</div>
											<div class="my_asset_detail_body box-con" id="my_asset_detail_body4" onclick="slideChk8()">
	
												<div class="my_asset_detail_cont">			
													<h4 class="con-tit1">
														포트폴리오 외 자산(3) <span class="small">총잔액 <strong
															class="color_blue1" style="font-size: 14pt;">
															<fmt:formatNumber type="number" pattern="###,###,###,###,###,###" value="${ totalAsset - fundValue }" />
															원</strong>
														</span>
													</h4>
													<div class="owm-table1">
														<table border="1">
															<caption><strong style="font-size: 15pt;">포트폴리오 외 자산 상세</strong></caption>
															<colgroup>
																<col width="*">
																<col width="22%">
																<col width="15%">
																<col width="19%">
																<col width="10%">
															</colgroup>
															<thead>
																<tr>
																	<th scope="col" style="font-size: 14pt;">상품명</th>
																	<th scope="col" style="font-size: 14pt;">계좌번호</th>
																	<th scope="col" style="font-size: 14pt;">분류</th>
																	<th scope="col" style="font-size: 14pt;">최종거래일</th>
																	<th scope="col" style="font-size: 14pt;">잔액</th>	
																</tr>
															</thead>
															<tbody>
																<tr>
																	<td class="txt-l" style="font-size: 12pt;">급여하나 월복리적금</td>
																	<td style="font-size: 12pt;"><strong>802353020921</strong></td>
																	<td style="font-size: 12pt;">적금</td>
																	<td style="font-size: 12pt;">2021.09.10</td>
																	<td class="txt-r" style="font-size: 12pt;"><fmt:formatNumber type="number" pattern="###,###,###,###,###,###" value="${ saving }" />원</td>
																</tr>
																<tr>
																	<td class="txt-l" style="font-size: 12pt;">하나UBS 인BEST연금 증권자투자신탁(제1호)(채권)</td>
																	<td style="font-size: 12pt;"><strong>140354896541</strong></td>
																	<td style="font-size: 12pt;">연금</td>
																	<td style="font-size: 12pt;">2021.09.10</td>
																	<td class="txt-r" style="font-size: 12pt;"><fmt:formatNumber type="number" pattern="###,###,###,###,###,###" value="${ pension }" />원</td>
																</tr>
																<c:forEach items="${ list }" var="list" varStatus="Loop">
																<tr>
																	<td class="txt-l" style="font-size: 12pt;">${ list.accName }</td>
																	<td style="font-size: 12pt;"><strong>${ list.accNo }</strong></td>
																	<td style="font-size: 12pt;">수시입출금</td>
																	<td style="font-size: 12pt;">2021.09.27</td>
																	<td class="txt-r" style="font-size: 12pt;"><fmt:formatNumber type="number" pattern="###,###,###,###,###,###" value="${ deposit }" />원</td>
																</tr>
																</c:forEach>
																<tr>
																	<td colspan="4" style="text-align: center; font-size: 14pt;"><strong>총합</strong></td>
																	<td class="txt-r" style="font-size: 12pt; color: red;">
																		<fmt:formatNumber type="number" pattern="###,###,###,###,###,###" value="${ deposit + pension + saving }" />원
																	</td>
																</tr>
															</tbody>
														</table>
													</div>
												</div>
											</div>
											
										</div>
									</div>
								</div>

								<div class="my_asset_state_wrap">
									<div class="my_asset_summary type3" style="height: 200px;">
										<div class="description_area">
											<h4 class="psw_asset_tit_sub2">
												<strong>통화분산 관점</strong>
											</h4>
											<p class="psw_asset_tit_sub3" style="font-size: 12pt;">
												외화자산은 <strong class="color_blue1" style="font-size: 14pt;">총 0개의 통화</strong>에 투자되고
												있습니다.
											</p>
										</div>
										<div class="graph_area">
											
										</div>
									</div>
									<div class="owm-tgl-list">
										<div class="my_asset_detail js-owm-toggleTarget">
											<div class="my_asset_detail_head">
												<table>
													<colgroup>
														<col style="width: 340px">
														<col style="width: *">
													</colgroup>
													<tbody>
														<tr>
															<td>
																<div class="title_area">
																	<strong class="psw_asset_tit_sub">원화자산 (4)</strong>
																</div>
															</td>
															<td>
																<div class="values_area">
																	<span class="value"> <span class="hidden">원화자산
																			비율</span> 
																	</span> <span class="value"> <span class="hidden">원화자산
																			총 평가금액</span> <strong style="font-size: 20pt;">
																			<fmt:formatNumber type="number" pattern="###,###,###,###,###,###" value="${ totalAsset }" />원</strong>
																	</span>
																</div>
															</td>
														</tr>
													</tbody>
												</table>
												<button class="js-owm-toggleBtn">
													<span class="hidden">상세보기</span>
												</button>
											</div>
											<div class="my_asset_detail_body box-con">

												<div class="my_asset_detail_cont">
													<h4 class="con-tit1">
														입출금(1) <span class="small">총잔액 <strong
															class="color_blue1">0원</strong>
														</span>
													</h4>
													<div class="owm-table1">
														<table border="1">
															<caption>입출금자산 상세</caption>
															<colgroup>
																<col width="*">
																<col width="32%">
																<col width="15%">
																<col width="19%">
															</colgroup>
															<thead>
																<tr>
																	<th scope="col">예금명</th>
																	<th scope="col">계좌번호</th>
																	<th scope="col">최종거래일</th>
																	<th scope="col">잔액</th>
																</tr>
															</thead>
															<tbody>
																<tr>
																	<td class="txt-l">우리 SUPER주거래 통장</td>
																	<td><strong><a
																			href="https://spot.wooribank.com/pot/Dream?withyou=WAASM0012#"
																			class="font-c-6"
																			onclick="detailView(&#39;1002862557893&#39;,&#39;A04&#39;,&#39;우리 SUPER주거래 통장&#39;,&#39;0&#39;,&#39;002&#39;,&#39;0&#39;,&#39;KRW&#39;,&#39;0021870000000&#39;)">1002-862-557893
																		</a></strong></td>
																	<td>2021.09.18</td>
																	<td class="txt-r">0원</td>
																</tr>
															</tbody>
														</table>
													</div>
												</div>
											</div>
										</div>

										<div class="my_asset_detail">
											<div class="my_asset_detail_head">
												<table>
													<colgroup>
														<col style="width: 340px">
														<col style="width: *">
													</colgroup>
													<tbody>
														<tr>
															<td>
																<div class="title_area">
																	<strong class="psw_asset_tit_sub">외화자산 (0)</strong>
																</div>
															</td>
															<td>
																<div class="values_area">
																	<p class="txt_no_data">보유하신 외화자산이 없습니다.</p>
																</div>
															</td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>

									</div>
								</div>
								<div class="psw_myw_wrap mt80 mb40">
									<a
										href="https://spot.wooribank.com/pot/Dream?withyou=WAASM0012#none"
										class="ban_ad_myrecipe"
										onclick="wbUI.showLoading(); location.href=&#39;/pot/Dream?withyou=WAASM0013&#39;">
										<strong class="tit">나의 금융레시피</strong>
										<p class="desc">김충만님의 우리은행 활동지수를 확인해 보세요~</p>
									</a>
								</div>
							</div>
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