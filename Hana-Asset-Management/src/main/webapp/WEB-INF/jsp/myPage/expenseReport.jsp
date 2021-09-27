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
		function slideChk9(){
			$("#my_asset_detail_body5").slideDown();
		}
		function slideChk10(){
			$("#my_asset_detail_body5").slideUp();
		}
		function slideChk11(){
			$("#my_asset_detail_body6").slideDown();
		}
		function slideChk12(){
			$("#my_asset_detail_body6").slideUp();
		}
		function slideChk13(){
			$("#my_asset_detail_body7").slideDown();
		}
		function slideChk14(){
			$("#my_asset_detail_body7").slideUp();
		}
		function slideChk15(){
			$("#my_asset_detail_body8").slideDown();
		}
		function slideChk16(){
			$("#my_asset_detail_body8").slideUp();
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
              <h1 class="text-2xl font-semibold">소비지출분석보고서</h1>
            </div>
              
              <!-- Content -->
	            <div class="mt-2">
	              <!-- State cards -->
	              <div class="grid grid-cols-1 gap-8 p-4 lg:grid-cols-2 xl:grid-cols-4">
	                <!-- Value card -->
	                <div class="flex items-center justify-between p-4 bg-white rounded-md dark:bg-darker">
	                  <div>
	                  	<c:if test="${ myReport eq 'expenseReport' }">
		                    <a
		                      class="text-xs font-medium leading-none tracking-wider text-gray-500 uppercase dark:text-primary-light"
		                      style="font-size: 12pt; color: #3CC8C8;"
		                      href="${ pageContext.request.contextPath }/myPage/assetReport"
		                    >
		                      <strong>소비지출분석보고서</strong>
		                    </a>
	                    </c:if>
	                    <c:if test="${ myReport ne 'expenseReport' }">
		                    <a
		                      class="text-xs font-medium leading-none tracking-wider text-gray-500 uppercase dark:text-primary-light"
		                      style="font-size: 12pt;"
		                      href="${ pageContext.request.contextPath }/myPage/assetReport"
		                    >
		                      소비지출분석보고서
		                    </a>
	                    </c:if>
	                  </div>
	                  <div>
	                    <span>
	                      <c:if test="${ myReport eq 'expenseReport' }">
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
	                      <c:if test="${ myReport ne 'expenseReport' }">
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
	               
	              </div>
	
	              <!-- Two grid columns -->
	             
	                <!-- Line chart card -->
	                <div class="col-span-2 bg-white rounded-md dark:bg-darker" x-data="{ isOn: false }" style="width: 98%; margin-left: 15px;">
	                  <!-- Card header -->
	                  <div class="flex items-center justify-between p-4 border-b dark:border-primary">
	                    <h4 class="text-lg font-semibold text-gray-500 dark:text-light" style="color: #3CC8C8">소비지출분석보고서</h4>
	                    <div class="flex items-center">
	                        <div
	                          class="absolute top-0 left-0 inline-flex items-center justify-center w-6 h-6 transition-all duration-200 ease-in-out transform scale-110 rounded-full shadow-sm"
	                          :class="{ 'translate-x-0  bg-white dark:bg-primary-100': !isOn, 'translate-x-6 bg-primary-light dark:bg-primary': isOn }"
	                        ></div>
	                    </div>
	                  </div>
	                  <!-- main content -->
	                  <div style="width: 100%;">
						
						<div class="psw_asset_wrap">
						     
						     <div class="psw_content my_deposit_analysis" style="width: 95%;">
						         <h3 class="psw_asset_tit1" style="font-size: 20pt; text-align: center; color: #3CC8C8; margin-top: 20px;">
						    	 <strong>소비지출분석보고서</strong></h3>
						         
						         <div class="my_deposit_chk">
						             <h3 class="psw_head"><strong>${ userVO.name }님의 소비내역</strong></h3>
						                     
						             <div class="owm-table1">
						                 <table border="1">
						                     <caption><strong style="font-size: 15pt;">입출금 계좌 상세</strong></caption>
						                     <colgroup>
						                         <col width="*">
						                         <col span="2" width="33.33%">
						                     </colgroup>
						                     <thead>
						                         <tr>
						                             <th scope="col" style="font-size: 14pt;">은행</th>
						                             <th scope="col" style="font-size: 14pt;">계좌수</th>
						                             <th scope="col" style="font-size: 14pt;">잔액</th>
						                         </tr>
						                     </thead>
						                     <tbody>
						                         <c:forEach items="${ list }" var="list" varStatus="Loop">
						                         <tr id="totlaBankTr">
						                             <td style="font-size: 12pt;">하나은행</td>
						                             <td style="font-size: 12pt;">1개</td>
						                             <td class="txt-r" style="font-size: 12pt;"><fmt:formatNumber type="number" pattern="###,###,###,###,###,###" value="${ list.balance }" />원</td>
						                         </tr>
						                         </c:forEach>
						                     </tbody>
						                 </table>
						             </div>
						             
						         </div>
						         
						         <div class="my_deposit_detail_wrap">
								     <p class="psw_asset_tit_sub">하나은행 소비내역을 분석해 드립니다.</p>
								     <h3 class="psw_head" style="margin-top: 40px;">
								     	<strong><em class="color_blue1">한달 전(2021.08.01) </em> 가장 큰 거래</strong>
								     </h3>`
								     <div class="my_deposit_detail">
								         <div class="my_deposit_detail_item">
								             
												<div class="owm-table1">
									                 <table border="1">
									                     <caption><strong style="font-size: 15pt;">입금<br><span style="font-size: 20pt; color: red;">TOP5</span></strong></caption>
									                     <colgroup>
									                         <col width="15%">
									                         <col width="20%">
									                         <col width="30%">
									                         <col width="35%">
									                     </colgroup>
									                     <thead>
									                         <tr>
									                         	 <th scope="col" style="font-size: 14pt;">순위</th>
									                             <th scope="col" style="font-size: 14pt;">예금주</th>
									                             <th scope="col" style="font-size: 14pt;">입금액</th>
									                             <th scope="col" style="font-size: 14pt;">날짜</th>
									                         </tr>
									                     </thead>
									                     <tbody>
									                         <tr id="totlaBankTr">
									                         	 <td style="font-size: 12pt; color: red;">1</td>
									                             <td style="font-size: 12pt;">급여</td>
									                             <td class="txt-r" style="font-size: 12pt;"><fmt:formatNumber type="number" pattern="###,###,###,###,###,###" value="3000000" />원</td>
									                             <td style="font-size: 12pt;">2021/08/10</td>
									                         </tr>
									                         <tr id="totlaBankTr">
									                         	 <td style="font-size: 12pt; color: red;">2</td>
									                             <td style="font-size: 12pt;">김**</td>
									                             <td class="txt-r" style="font-size: 12pt;"><fmt:formatNumber type="number" pattern="###,###,###,###,###,###" value="20000" />원</td>
									                             <td style="font-size: 12pt;">2021/08/22</td>
									                         </tr>
									                         <tr id="totlaBankTr">
									                         	 <td style="font-size: 12pt; color: red;">3</td>
									                             <td style="font-size: 12pt;">유**</td>
									                             <td class="txt-r" style="font-size: 12pt;"><fmt:formatNumber type="number" pattern="###,###,###,###,###,###" value="15000" />원</td>
									                             <td style="font-size: 12pt;">2021/08/26</td>
									                         </tr>
									                         <tr id="totlaBankTr">
									                         	 <td style="font-size: 12pt; color: red;">4</td>
									                             <td style="font-size: 12pt;">박**</td>
									                             <td class="txt-r" style="font-size: 12pt;"><fmt:formatNumber type="number" pattern="###,###,###,###,###,###" value="5200" />원</td>
									                             <td style="font-size: 12pt;">2021/08/01</td>
									                         </tr>
									                         <tr id="totlaBankTr">
									                         	 <td style="font-size: 12pt; color: red;">5</td>
									                             <td style="font-size: 12pt;">예금이자</td>
									                             <td class="txt-r" style="font-size: 12pt;"><fmt:formatNumber type="number" pattern="###,###,###,###,###,###" value="452" />원</td>
									                             <td style="font-size: 12pt;">2021/08/18</td>
									                         </tr>
									                     </tbody>
									                 </table>
									             </div>
								                 
								         </div>
								         <div class="my_deposit_detail_item">
								             
								             <div class="owm-table1">
									                 <table border="1">
									                     <caption><strong style="font-size: 15pt;">출금<br><span style="font-size: 20pt; color: blue;">TOP5</span></strong></caption>
									                     <colgroup>
									                         <col width="15%">
									                         <col width="20%">
									                         <col width="30%">
									                         <col width="35%">
									                     </colgroup>
									                     <thead>
									                         <tr>
									                         	 <th scope="col" style="font-size: 14pt;">순위</th>
									                             <th scope="col" style="font-size: 14pt;">예금주</th>
									                             <th scope="col" style="font-size: 14pt;">입금액</th>
									                             <th scope="col" style="font-size: 14pt;">날짜</th>
									                         </tr>
									                     </thead>
									                     <tbody>
									                     	<c:forEach items="${ expenseList }" var="list" varStatus="Loop">
									                     		<tr>
									                     			 <td style="font-size: 12pt; color: blue;">${ Loop.index + 1 }</td>
										                             <td style="font-size: 12pt;">${ list.category }</td>
										                             <td class="txt-r" style="font-size: 12pt;"><fmt:formatNumber type="number" pattern="###,###,###,###,###,###" value="${ list.expense }" />원</td>
										                             <td style="font-size: 12pt;">${ list.reg_date }</td>
									                     		</tr>
									                     	</c:forEach>
									                     </tbody>
									                 </table>
									             </div>
								             
								         </div>
								     </div>
								 </div>
								 
						         
							         
								         <div class="my_report">
								             <h3 class="psw_head"><strong>당행 거래 리포트</strong></h3>

											<div id="subCont01" class="mt40">
												
												<div>
													<div class="clearfix">
														<h4 class="con-tit1 fleft">
															주요지출 분석 <span class="ml10 font-c-6 font-14">주요지출
																총합 : <strong class="color_blue1">
																<fmt:formatNumber type="number" pattern="###,###,###,###,###,###" value="${ total }" />원
																</strong>
															</span>
														</h4>
													</div>
													<div class="owm-tgl-list">
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
																					<strong class="psw_asset_tit_sub">식비 (${ expense.jan })</strong>
																				</div>
																			</td>
																			<td>
																				<div class="values_area">
																					<span class="value"> 
																						<strong style="font-size: 20pt;">
																							<fmt:formatNumber type="number" pattern="###,###,###,###,###,###" value="${ expenseNum.jan }" />원
																						</strong>
																					</span>
																				</div>
																			</td>
																		</tr>
																	</tbody>
																</table>
															</div>
															<div class="my_asset_detail_body box-con" id="my_asset_detail_body" onclick="slideChk2()">
																<div class="my_asset_detail_cont">
																	<div class="owm-table1">
																		<table border="1">
																			<caption><strong style="font-size: 15pt;">카드대금 상세</strong></caption>
																			<colgroup>
																				<col width="21%">
																				<col width="15%">
																				<col width="22%">
																				<col width="23%">
																				<col width="19%">
																			</colgroup>
																			<thead>
																				<tr>
																					<th scope="col">거래일시</th>
																					<th scope="col">항목</th>
																					<th scope="col">통장</th>
																					<th scope="col">출금계좌번호</th>
																					<th scope="col">금액</th>
																				</tr>
																			</thead>
																			<tbody>
																				<c:forEach items="${ food_cost }" var="list" varStatus="Loop">
																					<tr>
																						<td style="font-size: 12pt; color: blue;">${ list.reg_date }</td>
															                            <td style="font-size: 12pt;">${ list.category }</td>
															                            <td style="font-size: 12pt;">영하나플러스 통장</td>				                       
															                            <td style="font-size: 12pt;">101013020036</td>
															                            <td class="txt-r" style="font-size: 12pt;"><fmt:formatNumber type="number" pattern="###,###,###,###,###,###" value="${ list.expense }" />원</td>		             
																					</tr>
																				</c:forEach>
																			</tbody>
																		</table>
																	</div>
																</div>
															</div>
														</div>
														<div class="my_asset_detail js-owm-toggleTarget">
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
																					<strong class="psw_asset_tit_sub">쇼핑/의류
																						(${ expense.feb })</strong>
																				</div>
																			</td>
																			<td>
																				<div class="values_area">
																					<span class="value"> 
																						<strong style="font-size: 20pt;">
																							<fmt:formatNumber type="number" pattern="###,###,###,###,###,###" value="${ expenseNum.feb }" />원
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
																	<div class="owm-table1">
																		<table border="1">
																			<caption><strong style="font-size: 15pt;">카드대금 상세</strong></caption>
																			<colgroup>
																				<col width="21%">
																				<col width="15%">
																				<col width="22%">
																				<col width="23%">
																				<col width="19%">
																			</colgroup>
																			<thead>
																				<tr>
																					<th scope="col">거래일시</th>
																					<th scope="col">항목</th>
																					<th scope="col">통장</th>
																					<th scope="col">출금계좌번호</th>
																					<th scope="col">금액</th>
																				</tr>
																			</thead>
																			<tbody>
																				<c:forEach items="${ apparel }" var="list" varStatus="Loop">
																					<tr>
																						<td style="font-size: 12pt; color: blue;">${ list.reg_date }</td>
															                            <td style="font-size: 12pt;">${ list.category }</td>
															                            <td style="font-size: 12pt;">영하나플러스 통장</td>				                       
															                            <td style="font-size: 12pt;">101013020036</td>
															                            <td class="txt-r" style="font-size: 12pt;"><fmt:formatNumber type="number" pattern="###,###,###,###,###,###" value="${ list.expense }" />원</td>		             
																					</tr>
																				</c:forEach>
																			</tbody>
																		</table>
																	</div>
																</div>
															</div>
														</div>
														<div class="my_asset_detail js-owm-toggleTarget">
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
																					<strong class="psw_asset_tit_sub">교통비 (${ expense.mar })</strong>
																				</div>
																			</td>
																			<td>
																				<div class="values_area">
																					<span class="value"> 
																						<strong style="font-size: 20pt;">
																							<fmt:formatNumber type="number" pattern="###,###,###,###,###,###" value="${ expenseNum.mar }" />원
																						</strong>
																					</span>
																				</div>
																			</td>
																		</tr>
																	</tbody>
																</table>
															</div>
															<div class="my_asset_detail_body box-con" id="my_asset_detail_body3" onclick="slideChk6()">
																<div class="my_asset_detail_cont">
																	<div class="owm-table1">
																		<table border="1">
																			<caption><strong style="font-size: 15pt;">카드대금 상세</strong></caption>
																			<colgroup>
																				<col width="21%">
																				<col width="15%">
																				<col width="22%">
																				<col width="23%">
																				<col width="19%">
																			</colgroup>
																			<thead>
																				<tr>
																					<th scope="col">거래일시</th>
																					<th scope="col">항목</th>
																					<th scope="col">통장</th>
																					<th scope="col">출금계좌번호</th>
																					<th scope="col">금액</th>
																				</tr>
																			</thead>
																			<tbody>
																				<c:forEach items="${ transportation }" var="list" varStatus="Loop">
																					<tr>
																						<td style="font-size: 12pt; color: blue;">${ list.reg_date }</td>
															                            <td style="font-size: 12pt;">${ list.category }</td>
															                            <td style="font-size: 12pt;">영하나플러스 통장</td>				                       
															                            <td style="font-size: 12pt;">101013020036</td>
															                            <td class="txt-r" style="font-size: 12pt;"><fmt:formatNumber type="number" pattern="###,###,###,###,###,###" value="${ list.expense }" />원</td>		             
																					</tr>
																				</c:forEach>
																			</tbody>
																		</table>
																	</div>
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
																					<strong class="psw_asset_tit_sub">문화/오락 (${ expense.apr })</strong>
																				</div>
																			</td>
																			<td>
																				<div class="values_area">
																					<span class="value"> 
																						<strong style="font-size: 20pt;">
																							<fmt:formatNumber type="number" pattern="###,###,###,###,###,###" value="${ expenseNum.apr }" />원
																						</strong>
																					</span>
																				</div>
																			</td>
																		</tr>
																	</tbody>
																</table>
															</div>
															<div class="my_asset_detail_body box-con" id="my_asset_detail_body4" onclick="slideChk8()">
																<div class="my_asset_detail_cont">
																	<div class="owm-table1">
																		<table border="1">
																			<caption><strong style="font-size: 15pt;">카드대금 상세</strong></caption>
																			<colgroup>
																				<col width="21%">
																				<col width="15%">
																				<col width="22%">
																				<col width="23%">
																				<col width="19%">
																			</colgroup>
																			<thead>
																				<tr>
																					<th scope="col">거래일시</th>
																					<th scope="col">항목</th>
																					<th scope="col">통장</th>
																					<th scope="col">출금계좌번호</th>
																					<th scope="col">금액</th>
																				</tr>
																			</thead>
																			<tbody>
																				<c:forEach items="${ entertainment }" var="list" varStatus="Loop">
																					<tr>
																						<td style="font-size: 12pt; color: blue;">${ list.reg_date }</td>
															                            <td style="font-size: 12pt;">${ list.category }</td>
															                            <td style="font-size: 12pt;">영하나플러스 통장</td>				                       
															                            <td style="font-size: 12pt;">101013020036</td>
															                            <td class="txt-r" style="font-size: 12pt;"><fmt:formatNumber type="number" pattern="###,###,###,###,###,###" value="${ list.expense }" />원</td>		             
																					</tr>
																				</c:forEach>
																			</tbody>
																		</table>
																	</div>
																</div>
															</div>
														</div>
														<div class="my_asset_detail js-owm-toggleTarget">
															<div class="my_asset_detail_head" onclick="slideChk9()">
																<table>
																	<colgroup>
																		<col style="width: 340px">
																		<col style="width: *">
																	</colgroup>
																	<tbody>
																		<tr>
																			<td>
																				<div class="title_area">
																					<strong class="psw_asset_tit_sub">보험료 (${ expense.may })</strong>
																				</div>
																			</td>
																			<td>
																				<div class="values_area">
																					<span class="value"> 
																						<strong style="font-size: 20pt;">
																							<fmt:formatNumber type="number" pattern="###,###,###,###,###,###" value="${ expenseNum.may }" />원
																						</strong>
																					</span>
																				</div>
																			</td>
																		</tr>
																	</tbody>
																</table>
															</div>
															<div class="my_asset_detail_body box-con" id="my_asset_detail_body5" onclick="slideChk10()">
																<div class="my_asset_detail_cont">
																	<div class="owm-table1">
																		<table border="1">
																			<caption><strong style="font-size: 15pt;">카드대금 상세</strong></caption>
																			<colgroup>
																				<col width="21%">
																				<col width="15%">
																				<col width="22%">
																				<col width="23%">
																				<col width="19%">
																			</colgroup>
																			<thead>
																				<tr>
																					<th scope="col">거래일시</th>
																					<th scope="col">항목</th>
																					<th scope="col">통장</th>
																					<th scope="col">출금계좌번호</th>
																					<th scope="col">금액</th>
																				</tr>
																			</thead>
																			<tbody>
																				<c:forEach items="${ insurance }" var="list" varStatus="Loop">
																					<tr>
																						<td style="font-size: 12pt; color: blue;">${ list.reg_date }</td>
															                            <td style="font-size: 12pt;">${ list.category }</td>
															                            <td style="font-size: 12pt;">영하나플러스 통장</td>				                       
															                            <td style="font-size: 12pt;">101013020036</td>
															                            <td class="txt-r" style="font-size: 12pt;"><fmt:formatNumber type="number" pattern="###,###,###,###,###,###" value="${ list.expense }" />원</td>		             
																					</tr>
																				</c:forEach>
																			</tbody>
																		</table>
																	</div>
																</div>
															</div>
														</div>
														<div class="my_asset_detail js-owm-toggleTarget">
															<div class="my_asset_detail_head" onclick="slideChk11()">
																<table>
																	<colgroup>
																		<col style="width: 340px">
																		<col style="width: *">
																	</colgroup>
																	<tbody>
																		<tr>
																			<td>
																				<div class="title_area">
																					<strong class="psw_asset_tit_sub">의료비 (${ expense.jun })</strong>
																				</div>
																			</td>
																			<td>
																				<div class="values_area">
																					<span class="value"> 
																						<strong style="font-size: 20pt;">
																							<fmt:formatNumber type="number" pattern="###,###,###,###,###,###" value="${ expenseNum.jun }" />원
																						</strong>
																					</span>
																				</div>
																			</td>
																		</tr>
																	</tbody>
																</table>
															</div>
															<div class="my_asset_detail_body box-con" id="my_asset_detail_body6" onclick="slideChk12()">
																<div class="my_asset_detail_cont">
																	<div class="owm-table1">
																		<table border="1">
																			<caption><strong style="font-size: 15pt;">카드대금 상세</strong></caption>
																			<colgroup>
																				<col width="21%">
																				<col width="15%">
																				<col width="22%">
																				<col width="23%">
																				<col width="19%">
																			</colgroup>
																			<thead>
																				<tr>
																					<th scope="col">거래일시</th>
																					<th scope="col">항목</th>
																					<th scope="col">통장</th>
																					<th scope="col">출금계좌번호</th>
																					<th scope="col">금액</th>
																				</tr>
																			</thead>
																			<tbody>
																				<c:forEach items="${ health_care }" var="list" varStatus="Loop">
																					<tr>
																						<td style="font-size: 12pt; color: blue;">${ list.reg_date }</td>
															                            <td style="font-size: 12pt;">${ list.category }</td>
															                            <td style="font-size: 12pt;">영하나플러스 통장</td>				                       
															                            <td style="font-size: 12pt;">101013020036</td>
															                            <td class="txt-r" style="font-size: 12pt;"><fmt:formatNumber type="number" pattern="###,###,###,###,###,###" value="${ list.expense }" />원</td>		             
																					</tr>
																				</c:forEach>
																			</tbody>
																		</table>
																	</div>
																</div>
															</div>
														</div>
														<div class="my_asset_detail js-owm-toggleTarget">
															<div class="my_asset_detail_head" onclick="slideChk13()">
																<table>
																	<colgroup>
																		<col style="width: 340px">
																		<col style="width: *">
																	</colgroup>
																	<tbody>
																		<tr>
																			<td>
																				<div class="title_area">
																					<strong class="psw_asset_tit_sub">통신비 (${ expense.jul })</strong>
																				</div>
																			</td>
																			<td>
																				<div class="values_area">
																					<span class="value"> 
																						<strong style="font-size: 20pt;">
																							<fmt:formatNumber type="number" pattern="###,###,###,###,###,###" value="${ expenseNum.jul }" />원
																						</strong>
																					</span>
																				</div>
																			</td>
																		</tr>
																	</tbody>
																</table>
															</div>
															<div class="my_asset_detail_body box-con" id="my_asset_detail_body7" onclick="slideChk14()">
																<div class="my_asset_detail_cont">
																	<div class="owm-table1">
																		<table border="1">
																			<caption><strong style="font-size: 15pt;">카드대금 상세</strong></caption>
																			<colgroup>
																				<col width="21%">
																				<col width="15%">
																				<col width="22%">
																				<col width="23%">
																				<col width="19%">
																			</colgroup>
																			<thead>
																				<tr>
																					<th scope="col">거래일시</th>
																					<th scope="col">항목</th>
																					<th scope="col">통장</th>
																					<th scope="col">출금계좌번호</th>
																					<th scope="col">금액</th>
																				</tr>
																			</thead>
																			<tbody>
																				<c:forEach items="${ communication }" var="list" varStatus="Loop">
																					<tr>
																						<td style="font-size: 12pt; color: blue;">${ list.reg_date }</td>
															                            <td style="font-size: 12pt;">${ list.category }</td>
															                            <td style="font-size: 12pt;">영하나플러스 통장</td>				                       
															                            <td style="font-size: 12pt;">101013020036</td>
															                            <td class="txt-r" style="font-size: 12pt;"><fmt:formatNumber type="number" pattern="###,###,###,###,###,###" value="${ list.expense }" />원</td>		             
																					</tr>
																				</c:forEach>
																			</tbody>
																		</table>
																	</div>
																</div>
															</div>
														</div>
														<div class="my_asset_detail js-owm-toggleTarget">
															<div class="my_asset_detail_head" onclick="slideChk15()">
																<table>
																	<colgroup>
																		<col style="width: 340px">
																		<col style="width: *">
																	</colgroup>
																	<tbody>
																		<tr>
																			<td>
																				<div class="title_area">
																					<strong class="psw_asset_tit_sub">주거비 (${ expense.aug })</strong>
																				</div>
																			</td>
																			<td>
																				<div class="values_area">
																					<span class="value"> 
																						<strong style="font-size: 20pt;">
																							<fmt:formatNumber type="number" pattern="###,###,###,###,###,###" value="${ expenseNum.aug }" />원
																						</strong>
																					</span>
																				</div>
																			</td>
																		</tr>
																	</tbody>
																</table>
															</div>
															<div class="my_asset_detail_body box-con" id="my_asset_detail_body8" onclick="slideChk16()">
																<div class="my_asset_detail_cont">
																	<div class="owm-table1">
																		<table border="1">
																			<caption><strong style="font-size: 15pt;">카드대금 상세</strong></caption>
																			<colgroup>
																				<col width="21%">
																				<col width="15%">
																				<col width="22%">
																				<col width="23%">
																				<col width="19%">
																			</colgroup>
																			<thead>
																				<tr>
																					<th scope="col">거래일시</th>
																					<th scope="col">항목</th>
																					<th scope="col">통장</th>
																					<th scope="col">출금계좌번호</th>
																					<th scope="col">금액</th>
																				</tr>
																			</thead>
																			<tbody>
																				<c:forEach items="${ housing }" var="list" varStatus="Loop">
																					<tr>
																						<td style="font-size: 12pt; color: blue;">${ list.reg_date }</td>
															                            <td style="font-size: 12pt;">${ list.category }</td>
															                            <td style="font-size: 12pt;">영하나플러스 통장</td>				                       
															                            <td style="font-size: 12pt;">101013020036</td>
															                            <td class="txt-r" style="font-size: 12pt;"><fmt:formatNumber type="number" pattern="###,###,###,###,###,###" value="${ list.expense }" />원</td>		             
																					</tr>
																				</c:forEach>
																			</tbody>
																		</table>
																	</div>
																</div>
															</div>
														</div>
														<ul class="list-type">
															<li class="font-c-6" style="color: red;">고객님의 거래 확인을 도와드리기 위한 자료로, 실제 이용
																내역과 100% 일치하지 않을 수 있습니다.</li>
															<li class="font-c-6" style="color: red;">분석결과는 최근 300건에 한해 조회됩니다.</li>
														</ul>
													</div>
													
												</div>
											</div>
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