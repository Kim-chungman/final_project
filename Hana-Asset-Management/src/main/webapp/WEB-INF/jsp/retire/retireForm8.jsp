<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0,user-scalable=no,target-densitydpi=medium-dpi">

<title>Hana Solution - 은퇴설계</title>
<link rel="shortcut icon" type="image/x-icon" href="${ pageContext.request.contextPath }/resources/images/favicon.png" />
<link href="${ pageContext.request.contextPath }/resources/retire/layout_mnew.css" type="text/css" rel="stylesheet">
<link href="${ pageContext.request.contextPath }/resources/retire/template_mnew.css" type="text/css" rel="stylesheet">
<link href="${ pageContext.request.contextPath }/resources/retire/any_mnew.css" type="text/css" rel="stylesheet">
<link href="${ pageContext.request.contextPath }/resources/retire/contents.css" type="text/css" rel="stylesheet">

<script src="${ pageContext.request.contextPath }/resources/js/jquery-3.6.0.min.js"></script>

<style type="text/css">
.w2grid.gridTyDefault .gridBodyDefault.inP_cellTit {
   text-align: left !important;
   padding: 0 0 0 10px;
   letter-spacing: -0.07em;
}

.w2grid.gridTyDefault .gridBodyDefault.inP_cellNum {
   padding: 0 2px;
   letter-spacing: -0.05em;
}
</style>
<style type="text/css" media="screen">
object.FusionCharts:focus, embed.FusionCharts:focus {
   outline: none
}
</style>
</head>
<body class="any_mobile" style="">
	<header>
		<jsp:include page="/WEB-INF/include/header.jsp" />
	</header>
	<section style="margin-top: 30px; width: 70%; margin-left: 250px; height: 900px;">
   		<div id="any_wrap" class="w2group ">
			<div id="any_container" class="w2group ">
				<div id="any_contents" class="w2group ">
					<div id="wq_uuid_180" class="w2group pageWrap">
						<div id="wq_uuid_181" class="w2group pageCon pt0">
							<div id="swh_step" class="w2Switch ">
								<div id="case12"
									style="display: block; z-index: 110; visibility: visible; left: 0px;"
									class="w2group w2switch_case" aria-hidden="false">
									<div id="wq_uuid_231" class="w2wframe ">
										<div id="wq_uuid_233" class="w2group fix_pb">
											<div id="wq_uuid_234" class="w2group tabTy01 multi mb0">
												<ul id="wq_uuid_235" class="w2group item3">
													<li id="wq_uuid_236" class="w2group on" data-load="load"><a
														id="wq_uuid_237" class="w2group "
														href="" title="선택됨"><span
															id="wq_uuid_238" class="w2span " >은퇴준비<br>자가진단
														</span></a></li>
													<li id="wq_uuid_239" class="w2group " data-load="load"><a
														id="wq_uuid_240" class="w2group "
														href=""
														title=""><span id="wq_uuid_241" class="w2span ">미래설계<br>상품
														</span></a></li>
													<li id="wq_uuid_242" class="w2group " data-load="load"><a
														id="wq_uuid_243" class="w2group "
														href=""
														title=""><span id="wq_uuid_244" class="w2span ">은퇴상담<br>신청
														</span></a></li>
												</ul>
											</div>
											<div id="wq_uuid_245" class="w2group contbox bb1_gray">
												<div id="wq_uuid_246" class="w2group step_wrap">
													<div id="wq_uuid_247" class="w2group pt9bd"></div>
													<ul id="wq_uuid_248" class="w2group step4">
														<li id="wq_uuid_249" class="w2group on"><span
															id="wq_uuid_250" class="w2span ">1</span>
														<p id="wq_uuid_251" class="w2textbox ">기본정보</p></li>
														<li id="wq_uuid_252" class="w2group on"><span
															id="wq_uuid_253" class="w2span ">2</span>
														<p id="wq_uuid_254" class="w2textbox ">은퇴목표</p></li>
														<li id="wq_uuid_255" class="w2group on"><span
															id="wq_uuid_256" class="w2span ">3</span>
														<p id="wq_uuid_257" class="w2textbox ">은퇴준비자금</p></li>
														<li id="wq_uuid_258" class="w2group on"><span
															id="wq_uuid_259" class="w2span ">4</span>
														<p id="wq_uuid_260" class="w2textbox ">은퇴준비결과</p></li>
													</ul>
												</div>
											</div>
											<div id="wq_uuid_1517" class="w2group contbox pt20 ">
											<div id="wq_uuid_1518" class="w2group tabTy03 multi">
												<ul id="wq_uuid_1519" class="w2group ">
													<li id="wq_uuid_1520" class="w2group on"><a
														id="wq_uuid_1521" class="w2group "
														href="javascript:void(null);"><span id="wq_uuid_1522"
															class="w2span ">설계<br>결과
														</span></a></li>
												</ul>
											</div>
											<h2 id="wq_uuid_1535"
												class="w2textbox titH02 fs15 b mb10 mt5">필요/준비자금</h2>
											<div id="wq_uuid_1536" class="w2group mb15 ba1_gray bl0 br0">
												<div id="id_준비자금메인도넛그래프" style="height: 220px;"
													type="Doughnut2D" drawtype="javascript"></div>
													<div id="div_chart">
													
													</div>
													<p id="wq_uuid_1540" class="w2textbox tac">은퇴자금 준비율</p>
												</div>
											</div>
											<div id="wq_uuid_1541" class="w2textbox tar fs12">(단위:만원)</div>
											<table id="wq_uuid_1542"
												class="w2group w2tb tableTyInfo mb15" summary="준비자금 달성률 테이블">
												<caption id="wq_uuid_1543" class="w2group setcaption">구분,필요자금,준비자금,과부족,현재가치,미래가치
													을(를) 나타낸 표</caption>
												<colgroup id="wq_uuid_1544" class="w2group ">
													<col id="wq_uuid_1545" class="w2group ">
													<col id="wq_uuid_1546" class="w2group ">
													<col id="wq_uuid_1547" class="w2group ">
													<col id="wq_uuid_1548" class="w2group ">
												</colgroup>
												<tbody>
													<tr id="wq_uuid_1549" class="w2group ">
														<th id="wq_uuid_1550" class="w2group w2tb_th"><div
																id="wq_uuid_1551" class="w2textbox ">구분</div></th>
														<th id="wq_uuid_1552" class="w2group w2tb_th"><div
																id="wq_uuid_1553" class="w2textbox ">필요자금</div></th>
														<th id="wq_uuid_1554" class="w2group w2tb_th"><div
																id="wq_uuid_1555" class="w2textbox ">준비자금</div></th>
														<th id="wq_uuid_1556" class="w2group w2tb_th"><div
																id="wq_uuid_1557" class="w2textbox ">과부족</div></th>
													</tr>
													<tr id="wq_uuid_1558" class="w2group ">
														<th id="wq_uuid_1559" class="w2group w2tb_th"><div
																id="wq_uuid_1560" class="w2textbox ">현재가치</div></th>
														<td id="wq_uuid_1561" class="w2group w2tb_td"
															data-title="현재가치"><div id="현재_필요자금"
																class="w2textbox "></div></td>
														<td id="wq_uuid_1563" class="w2group w2tb_td w2tb_noTH"><div
																id="현재_준비자금" class="w2textbox "></div></td>
														<td id="wq_uuid_1565" class="w2group w2tb_td w2tb_noTH"><div
																id="현재_과부족" class="w2textbox "></div></td>
													</tr>
													<tr id="wq_uuid_1567" class="w2group ">
														<th id="wq_uuid_1568" class="w2group w2tb_th"><div
																id="wq_uuid_1569" class="w2textbox ">미래가치</div></th>
														<td id="wq_uuid_1570" class="w2group w2tb_td"
															data-title="미래가치"><div id="미래_필요자금"
																class="w2textbox "></div></td>
														<td id="wq_uuid_1572" class="w2group w2tb_td w2tb_noTH"><div
																id="미래_준비자금" class="w2textbox "></div></td>
														<td id="wq_uuid_1574" class="w2group w2tb_td w2tb_noTH"><div
																id="미래_과부족" class="w2textbox "></div></td>
													</tr>
												</tbody>
											</table>
											<div id="wq_uuid_1576" class="w2group listDot">
												<ul id="wq_uuid_1577" class="w2group ">
													<li id="wq_uuid_1578" class="w2textbox ">은퇴자금 준비율 :
														준비자금/필요자금*100%</li>
													<li id="wq_uuid_1579" class="w2textbox ">미래가치는 은퇴시점의
														가치이며, 기 은퇴자는 현재가치와 같습니다.</li>
												</ul>
											</div>
											<div id="wq_uuid_1580" style="display: none;"
												class="w2group pr mt20">
												<h2 id="wq_uuid_1581"
													class="w2textbox titH02 fs15 b mb10 pr70">신한미래설계지수</h2>
												<div id="wq_uuid_1582"
													style="width: 100%; overflow-y: hidden; overflow-x: auto;"
													class="w2group ">
													<div id="wq_uuid_1583" style="min-width: 300px;"
														class="w2group ">
														<div id="wq_uuid_1584" class="w2group tformper">
															<div id="wq_uuid_1585" class="w2group cell">
																<div id="wq_uuid_1586" style="min-width: 300px;"
																	class="w2group cb">
																	<div id="wq_uuid_1587"
																		style="min-width: 100px; width: 33%;"
																		class="w2group fl">
																		<div id="id_준비자금도넛그래프"
																			style="height: 108px; marginheight: 0px; width: 100%; marginwidth: 0px;"
																			type="Doughnut2D" drawtype="javascript"></div>
																		<div id="wq_uuid_1589" class="w2group chartTit">
																			<strong id="ipt_준비자금"
																				class="w2textbox txtPercent txtColor01"></strong>
																			<p id="wq_uuid_1591" class="w2textbox ">준비자금 달성률</p>
																		</div>
																	</div>
																	<div id="wq_uuid_1592"
																		style="min-width: 100px; width: 33%;"
																		class="w2group fl">
																		<div id="id_현금흐름도넛그래프"
																			style="height: 108px; width: 100%;" type="Doughnut2D"
																			drawtype="javascript"></div>
																		<div id="wq_uuid_1594" class="w2group chartTit">
																			<strong id="ipt_현금흐름"
																				class="w2textbox txtPercent txtColor02"></strong>
																			<p id="wq_uuid_1596" class="w2textbox ">현금흐름 달성률</p>
																		</div>
																	</div>
																	<div id="wq_uuid_1597"
																		style="min-width: 100px; width: 33%;"
																		class="w2group fl">
																		<div id="id_금융자산도넛그래프"
																			style="height: 108px; width: 100%;" type="Doughnut2D"
																			drawtype="javascript"></div>
																		<div id="wq_uuid_1599" class="w2group chartTit">
																			<strong id="ipt_금융자산"
																				class="w2textbox txtPercent txtColor03"></strong>
																			<p id="wq_uuid_1601" class="w2textbox ">금융자산 안정성</p>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div id="wq_uuid_1602" style="top: 0; right: 0;"
													class="w2group pa">
													<span id="ipt_신한미래설계지수" class="w2span fs35 fc3 b">65</span><span
														id="wq_uuid_1604" class="w2span ml5 fs15 fc333 mbm10">점</span>
												</div>
											</div>
											<table id="wq_uuid_1605" style="display: none;"
												class="w2group w2tb tableTyInfo mb15" summary="준비자금 달성률 테이블">
												<caption id="wq_uuid_1606" class="w2group setcaption">지표,가중치,준비자금
													달성률,현금흐름달성률,금융 자산 안정성 을(를) 나타낸 표</caption>
												<colgroup id="wq_uuid_1607" class="w2group ">
													<col id="wq_uuid_1608" style="width: 60%;" class="w2group ">
													<col id="wq_uuid_1609" class="w2group ">
												</colgroup>
												<tbody>
													<tr id="wq_uuid_1610" class="w2group ">
														<th id="wq_uuid_1611" class="w2group w2tb_th"><div
																id="wq_uuid_1612" class="w2textbox ">지표</div></th>
														<th id="wq_uuid_1613" class="w2group w2tb_th"><div
																id="wq_uuid_1614" class="w2textbox ">가중치</div></th>
													</tr>
													<tr id="wq_uuid_1615" class="w2group ">
														<th id="wq_uuid_1616" class="w2group w2tb_th"><div
																id="wq_uuid_1617" class="w2textbox ">준비자금 달성률</div></th>
														<td id="wq_uuid_1618" class="w2group w2tb_td"
															data-title="준비자금 달성률"><div id="id_준비자금달성률"
																class="w2textbox "></div></td>
													</tr>
													<tr id="wq_uuid_1620" class="w2group ">
														<th id="wq_uuid_1621" class="w2group w2tb_th"><div
																id="wq_uuid_1622" class="w2textbox ">현금흐름달성률</div></th>
														<td id="wq_uuid_1623" class="w2group w2tb_td"
															data-title="현금흐름달성률"><div id="id_현금흐름달성률"
																class="w2textbox "></div></td>
													</tr>
													<tr id="wq_uuid_1625" class="w2group ">
														<th id="wq_uuid_1626" class="w2group w2tb_th"><div
																id="wq_uuid_1627" class="w2textbox ">금융 자산 안정성</div></th>
														<td id="wq_uuid_1628" class="w2group w2tb_td"
															data-title="금융 자산 안정성"><div id="id_금융자산안정성"
																class="w2textbox "></div></td>
													</tr>
												</tbody>
											</table>
											<div id="wq_uuid_1630" style="display: none;"
												class="w2group listDot">
												<ul id="wq_uuid_1631" class="w2group ">
													<li id="wq_uuid_1632" class="w2textbox ">신한미래설계지수<br>=(준비자금*50%)
														+ (현금흐름*30%)<br> &nbsp;+(금융 자산 안정성*20%)
													</li>
												</ul>
											</div>
											<div id="wq_uuid_1633" style="display: none;"
												class="w2group pr mt20">
												<h2 id="wq_uuid_1634" class="w2textbox titH02 fs15 b mb10">은퇴생활기간의중요시기</h2>
											</div>
											<ol id="wq_uuid_1635" style="display: none;"
												class="w2group legend mb15">
												<div id="generatorT1_항목명"></div>
												<div id="wq_uuid_1637" class="w2group pt10 bb1_gray"></div>
												<ul id="wq_uuid_1638" class="w2group agebar mt20">
													<div id="generatorT1" class="on dib"></div>
												</ul>
											</ol>
										</div>
										
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		<div align="center">
			<a id="btn_F14다음" class="w2anchor2 btnTyBlue02 big"
				href="${ pageContext.request.contextPath }/" style="background-color: #008B8B;">메인으로</a>
		</div>	
   </section>
   
</body>
</html>