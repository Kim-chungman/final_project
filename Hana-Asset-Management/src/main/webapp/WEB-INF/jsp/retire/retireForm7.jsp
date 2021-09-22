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
	<section style="margin-top: 30px; width: 70%; margin-left: 250px;">
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
															id="wq_uuid_238" class="w2span ">은퇴준비<br>자가진단
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
														<li id="wq_uuid_258" class="w2group "><span
															id="wq_uuid_259" class="w2span ">4</span>
														<p id="wq_uuid_260" class="w2textbox ">은퇴준비결과</p></li>
													</ul>
												</div>
											</div>
										<form action="${ pageContext.request.contextPath }/retire/retireForm8" method="post">
											<div id="wq_uuid_1138" class="w2group contbox pt20 ">
											<p id="wq_uuid_1139" class="w2textbox fs15 mb15">은퇴생활을 위해
												준비하고 있는 ‘개인연금’을 입력해주세요 (연금저축/IRP. 연금보험 등)</p>
											<div id="wq_uuid_1140"
												class="w2group excompcont line tbltype inph30">
												<div id="wq_uuid_1141" class="w2group tformper toplineb">
													<div id="wq_uuid_1142" class="w2group cell tal w120">
														<span id="wq_uuid_1143" class="w2span fc3">거치식금액 /<br>
															총적립금액</span>
													</div>
													<div id="wq_uuid_1144" class="w2group cell pl10 pr10">
														<div id="wq_uuid_1145" class="w2group pr">
															<input id="ipt_개인연금" class="w2input tar pr40" type="tel" name="ipt_개인연금"
																title="개인연금" maxlength="6"><span
																id="wq_uuid_1147" style="right: 5PX; top: 7px;"
																class="w2span pa">만원</span>
														</div>
													</div>
												</div>
												<div id="wq_uuid_1148" class="w2group tformper">
													<div id="wq_uuid_1149" class="w2group cell tal w120">
														<span id="wq_uuid_1150" class="w2span fc3">매월 적립 금액</span>
													</div>
													<div id="wq_uuid_1151" class="w2group cell pl10 pr10">
														<div id="wq_uuid_1152" class="w2group pr">
															<input id="ipt_매월적립금액2" class="w2input tar pr40" name="ipt_매월적립금액2"
																type="tel" maxlength="6"><span id="wq_uuid_1154"
																style="top: 7px; right: 5px;" class="w2span pa">만원</span>
														</div>
													</div>
												</div>
												<div id="wq_uuid_1155" style="display: none;"
													class="w2group tformper">
													<div id="wq_uuid_1156" class="w2group cell tal w120">
														<span id="wq_uuid_1157" class="w2span circle_blue">2</span><span
															id="wq_uuid_1158" class="w2span fc3">펀드</span>
														<div id="wq_uuid_1159" class="w2textbox fc3">
															(국내/해외·주식/<br>채권 모두포함, ELS<br>/ELF 제외)
														</div>
													</div>
													<div id="wq_uuid_1160" class="w2group cell pl10 pr10">
														<div id="wq_uuid_1161" class="w2group pr">
															<input id="ipt_은퇴준비펀드" class="w2input tar pr40"
																type="tel" maxlength="6"><span id="wq_uuid_1163"
																style="right: 5PX; top: 7px;" class="w2span pa">만원</span>
														</div>
													</div>
												</div>
												<div id="wq_uuid_1164" style="display: none;"
													class="w2group tformper">
													<div id="wq_uuid_1165" class="w2group cell tal w120">
														<span id="wq_uuid_1166" class="w2span circle_blue">3</span><span
															id="wq_uuid_1167" class="w2span fc3">ELS형 투자상품</span>
													</div>
													<div id="wq_uuid_1168" class="w2group cell pl10 pr10">
														<div id="wq_uuid_1169" class="w2group pr">
															<input id="ipt_은퇴준비투자상품" class="w2input tar pr40"
																type="tel" maxlength="6"><span id="wq_uuid_1171"
																style="right: 5PX; top: 7px;" class="w2span pa">만원</span>
														</div>
													</div>
												</div>
											</div>
										</div>
										<table id="개인연금_cont" style="display: none;"
											class="w2group w2tb tableTyInput mt0">
											<caption id="wq_uuid_1173" class="w2group setcaption">은퇴&nbsp;이후&nbsp;몇&nbsp;년간&nbsp;연금으로&nbsp;받을&nbsp;예정입니까?
												을(를) 나타낸 표</caption>
											<colgroup id="wq_uuid_1174" class="w2group ">
												<col id="wq_uuid_1175" style="width: 18%;" class="w2group ">
												<col id="wq_uuid_1176" class="w2group ">
											</colgroup>
											<tbody>
												<tr id="wq_uuid_1177" class="w2group ">
													<th id="wq_uuid_1178" class="w2group w2tb_th b tal">은퇴&nbsp;이후&nbsp;몇&nbsp;년간&nbsp;연금으로&nbsp;받을&nbsp;예정입니까?</th>
													<td id="wq_uuid_1179" class="w2group w2tb_td"
														data-title="은퇴 이후 몇 년간 연금으로 받을 예정입니까?"><div
															id="wq_uuid_1180" class="w2group tformper formWrap">
															<div id="wq_uuid_1181" class="w2group cell">
																<div id="wq_uuid_1182" class="w2group radioGrp slim">
																	<div id="idx_연금년수" class="w2radio ">
																		<div class="w2radio_item w2radio_item_0">
																			<input type="radio" class="w2radio_input"
																				name="idx_연금년수_input" 
																				id="idx_연금년수_input_0"><label
																				class="w2radio_label " 
																				for="idx_연금년수_input_0">10년</label>
																		</div>
																		<div class="w2radio_item w2radio_item_1">
																			<input type="radio" class="w2radio_input"
																				name="idx_연금년수_input" 
																				id="idx_연금년수_input_1"><label
																				class="w2radio_label " 
																				for="idx_연금년수_input_1">20년</label>
																		</div>
																		<div class="w2radio_item w2radio_item_2">
																			<input type="radio" class="w2radio_input"
																				name="idx_연금년수_input" 
																				id="idx_연금년수_input_2"><label
																				class="w2radio_label " 
																				for="idx_연금년수_input_2">30년</label>
																		</div>
																		<div class="w2radio_item w2radio_item_3">
																			<input type="radio" class="w2radio_input"
																				name="idx_연금년수_input" 
																				id="idx_연금년수_input_3"><label
																				class="w2radio_label " 
																				for="idx_연금년수_input_3">기대수명</label>
																		</div>
																	</div>
																</div>
															</div>
															<div id="wq_uuid_1184" class="w2group cell">
																<input id="ipt_연금년수" style="width: 38px;"
																	class="w2input small" type="tel" title="년"
																	maxlength=><span id="wq_uuid_1186"
																	style="position: relative;" class="w2span ml5">년</span>
															</div>
														</div></td>
												</tr>
											</tbody>
										</table>
										<div id="wq_uuid_1221" class="w2group contbox pt20 ">
											<p id="wq_uuid_1222" class="w2textbox fs15">은퇴생활을 위해 준비하고
												있는 ‘금융자산’을 입력해주세요 (개인연금을 제외한 기타금융자산)</p>
											<div id="wq_uuid_1223"
												class="w2group excompcont line tbltype inph30">
												<div id="wq_uuid_1224" class="w2group tformper toplineb">
													<div id="wq_uuid_1225" class="w2group cell tal w120">
														<span id="wq_uuid_1226" class="w2span fc3">거치식금액 /<br>
															총적립금액</span>
													</div>
													<div id="wq_uuid_1227" class="w2group cell pl10 pr10">
														<div id="wq_uuid_1228" class="w2group pr">
															<input id="ipt_은퇴준비예금" class="w2input tar pr40" name="ipt_은퇴준비예금"
																type="tel" maxlength="6"><span id="wq_uuid_1230"
																style="right: 5PX; top: 7px;" class="w2span pa">만원</span>
														</div>
													</div>
												</div>
												<div id="wq_uuid_1231" class="w2group tformper">
													<div id="wq_uuid_1232" class="w2group cell tal w120">
														<span id="wq_uuid_1233" class="w2span fc3">매월 적립 금액</span>
													</div>
													<div id="wq_uuid_1234" class="w2group cell pl10 pr10">
														<div id="wq_uuid_1235" class="w2group pr">
															<input id="ipt_매월적립금액" class="w2input tar pr40" name="ipt_매월적립금액"
																type="tel" maxlength="6"><span id="wq_uuid_1237"
																style="top: 7px; right: 5px;" class="w2span pa">만원</span>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div id="wq_uuid_1221" class="w2group contbox pt20 ">
											<p id="wq_uuid_1222" class="w2textbox fs15">기대되는 예상수익률을 입력해주세요</p>
											<div id="wq_uuid_1223"
												class="w2group excompcont line tbltype inph30">
												<div id="wq_uuid_1224" class="w2group tformper toplineb">
													<div id="wq_uuid_1225" class="w2group cell tal w120">
														<span id="wq_uuid_1226" class="w2span fc3">예상 기대수익률</span>
													</div>
													<div id="wq_uuid_1227" class="w2group cell pl10 pr10">
														<div id="wq_uuid_1228" class="w2group pr">
															<input id="ipt_기대수익률" class="w2input tar pr40" name="ipt_기대수익률"
																type="tel" maxlength="6"><span id="wq_uuid_1230"
																style="right: 5PX; top: 7px;" class="w2span pa">%</span>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div id="wq_uuid_1238" style="display: none;"
											class="w2group mb15">
											<table id="wq_uuid_1239"
												class="w2group w2tb tableTyInput mt10">
												<caption id="wq_uuid_1240" class="w2group setcaption">금융자산
													적립식(적금, 펀드) : 을(를) 나타낸 표</caption>
												<colgroup id="wq_uuid_1241" class="w2group ">
													<col id="wq_uuid_1242" style="width: 18%;" class="w2group ">
													<col id="wq_uuid_1243" class="w2group ">
												</colgroup>
												<tbody>
													<tr id="wq_uuid_1244" class="w2group ">
														<th id="wq_uuid_1245" class="w2group w2tb_th b tal"><span
															id="wq_uuid_1246" class="w2span ">금융자산 적립식(적금, 펀드)
																: </span></th>
														<td id="wq_uuid_1247" class="w2group w2tb_td tal pb0"
															data-title="금융자산 적립식(적금, 펀드) : "><div
																id="wq_uuid_1248"
																class="w2group excompcont line tbltype inph30">
																<div id="wq_uuid_1249"
																	class="w2group tformper formWrap toplineb">
																	<div id="wq_uuid_1250"
																		class="w2group cell tal w120 mid">
																		<span id="wq_uuid_1251" class="w2span fc3">현재
																			적립 금액(잔액)</span>
																	</div>
																	<div id="wq_uuid_1252" class="w2group cell pl10 pr10">
																		<div id="wq_uuid_1253" class="w2group pr">
																			<input id="ipt_금융적립된금액" class="w2input pr40 tar"
																				type="tel" title="전화번호 앞자리" maxlength="6"><span
																				id="wq_uuid_1255" style="top: 7px; right: 5px;"
																				class="w2span pa">만원</span>
																		</div>
																	</div>
																</div>
															</div></td>
													</tr>
												</tbody>
											</table>
											<div id="con_금융적립된금액" style="display: none;"
												class="w2group contbox pl15 excompcont line tbltype inph30">
												<div id="wq_uuid_1257" class="w2group tformper">
													<div id="wq_uuid_1258" class="w2group cell tal w120">
														<span id="wq_uuid_1259" class="w2span fc3">적립 종료 시기</span>
													</div>
													<div id="wq_uuid_1260" class="w2group cell tal">
														<div id="wq_uuid_1261" style="width: 50%;"
															class="w2group dib pr mr5">
															<input id="ipt_적립종료년" class="w2input tar pr20" type="tel"
																maxlength="4"><span id="wq_uuid_1263"
																style="right: 5px; top: 7px;" class="w2span pa">년</span>
														</div>
														<div id="wq_uuid_1264" style="width: 40%"
															class="w2group dib pr">
															<input id="ipt_적립종료월" class="w2input tar pr20" type="tel"
																maxlength="2"><span id="wq_uuid_1266"
																style="right: 5px; top: 7px;" class="w2span pa">월</span>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div id="wq_uuid_1267" style="display: none;" class="w2group ">
											<table id="wq_uuid_1268"
												class="w2group w2tb tableTyInput mt0">
												<caption id="wq_uuid_1269" class="w2group setcaption">개인연금
													적립식(연금저축, 연금보험 등) : 을(를) 나타낸 표</caption>
												<colgroup id="wq_uuid_1270" class="w2group ">
													<col id="wq_uuid_1271" style="width: 18%;" class="w2group ">
													<col id="wq_uuid_1272" class="w2group ">
												</colgroup>
												<tbody>
													<tr id="wq_uuid_1273" class="w2group ">
														<th id="wq_uuid_1274" class="w2group w2tb_th b tal"><span
															id="wq_uuid_1275" class="w2span ">개인연금 적립식(연금저축,
																연금보험 등) : </span></th>
														<td id="wq_uuid_1276" class="w2group w2tb_td pb0"
															data-title="개인연금 적립식(연금저축, 연금보험 등) : "><div
																id="wq_uuid_1277"
																class="w2group excompcont line tbltype inph30">
																<div id="wq_uuid_1278"
																	class="w2group tformper formWrap toplineb">
																	<div id="wq_uuid_1279"
																		class="w2group cell tal w120 mid">
																		<span id="wq_uuid_1280" class="w2span fc3">현재
																			적립 금액(잔액)</span>
																	</div>
																	<div id="wq_uuid_1281" class="w2group cell pl10 pr10">
																		<div id="wq_uuid_1282" class="w2group pr">
																			<input id="ipt_개인연금적립된금액" class="w2input tar pr40"
																				type="tel" title="전화번호 앞자리" maxlength="6"><span
																				id="wq_uuid_1284" style="top: 7px; right: 5px;"
																				class="w2span pa">만원</span>
																		</div>
																	</div>
																</div>
															</div></td>
													</tr>
												</tbody>
											</table>
											<div id="con_개인연금적립된금액" style="display: none;"
												class="w2group contbox pl15 excompcont line tbltype inph30">
												<div id="wq_uuid_1286" class="w2group tformper">
													<div id="wq_uuid_1287" class="w2group cell tal w120">
														<span id="wq_uuid_1288" class="w2span fc3">적립 종료 시기</span>
													</div>
													<div id="wq_uuid_1289" class="w2group cell tal">
														<div id="wq_uuid_1290" style="width: 50%"
															class="w2group pr dib mr5">
															<input id="ipt_적립종료년2" class="w2input tar pr20"
																type="tel" maxlength="4"><span id="wq_uuid_1292"
																style="right: 5px; top: 7px;" class="w2span pa">년</span>
														</div>
														<div id="wq_uuid_1293" style="width: 40%"
															class="w2group pr dib">
															<input id="ipt_적립종료월2" class="w2input tar pr20"
																type="tel" maxlength="2"><span id="wq_uuid_1295"
																style="right: 5px; top: 7px;" class="w2span pa">월</span>
														</div>
													</div>
												</div>
												<p id="wq_uuid_1296" class="w2group  b tal mt10">은퇴&nbsp;이후&nbsp;몇&nbsp;년간&nbsp;연금으로&nbsp;받을&nbsp;예정입니까?</p>
												<table id="wq_uuid_1297"
													class="w2group w2tb tableTyInput slim mt0">
													<caption id="wq_uuid_1298" class="w2group setcaption">
														을(를) 나타낸 표</caption>
													<colgroup id="wq_uuid_1299" class="w2group ">
														<col id="wq_uuid_1300" style="width: 18%;"
															class="w2group ">
														<col id="wq_uuid_1301" class="w2group ">
													</colgroup>
													<tbody>
														<tr id="wq_uuid_1302" class="w2group ">
															<td id="wq_uuid_1303" class="w2group w2tb_td w2tb_noTH"><div
																	id="wq_uuid_1304" style="border: 0;"
																	class="w2group tformper formWrap">
																	<div id="wq_uuid_1305" style="background: transparent;"
																		class="w2group cell">
																		<div id="wq_uuid_1306" class="w2group radioGrp slim">
																			<div id="idx_은퇴연금년수" class="w2radio ">
																				<div class="w2radio_item w2radio_item_0">
																					<input type="radio" class="w2radio_input"
																						name="idx_은퇴연금년수_input"
																						id="idx_은퇴연금년수_input_0"><label
																						class="w2radio_label "
																						for="idx_은퇴연금년수_input_0">10년</label>
																				</div>
																				<div class="w2radio_item w2radio_item_1">
																					<input type="radio" class="w2radio_input"
																						name="idx_은퇴연금년수_input"
																						id="idx_은퇴연금년수_input_1"><label
																						class="w2radio_label " 
																						for="idx_은퇴연금년수_input_1">20년</label>
																				</div>
																				<div class="w2radio_item w2radio_item_2">
																					<input type="radio" class="w2radio_input"
																						name="idx_은퇴연금년수_input" 
																						id="idx_은퇴연금년수_input_2"><label
																						class="w2radio_label " 
																						for="idx_은퇴연금년수_input_2">30년</label>
																				</div>
																				<div class="w2radio_item w2radio_item_3">
																					<input type="radio" class="w2radio_input"
																						name="idx_은퇴연금년수_input" 
																						id="idx_은퇴연금년수_input_3"><label
																						class="w2radio_label " 
																						for="idx_은퇴연금년수_input_3">기대수명</label>
																				</div>
																			</div>
																		</div>
																	</div>
																	<div id="wq_uuid_1308" class="w2group cell">
																		<input id="ipt_은퇴후연금받을년수" style="width: 31px;"
																			class="w2input small" type="tel" title="년"
																			maxlength="4"><span id="wq_uuid_1310"
																			style="position: relative;" class="w2span ml5">년</span>
																	</div>
																</div></td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
										<div id="wq_uuid_382" class="w2group btnAreaBot btnFix item2" style="width: 50%; margin-left: 400px;">
											<a id="btn_F14이전" class="w2anchor2 btnTyGray02 big"
												href="${ pageContext.request.contextPath }/retire/retireForm6">이전</a>
											<input type="submit" id="btn_F14다음"
												class="w2anchor2 btnTyBlue02 big"
												style="background-color: #008B8B; float: right;" value="다음">
										</div>
									</form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
   </section>
</body>
</html>