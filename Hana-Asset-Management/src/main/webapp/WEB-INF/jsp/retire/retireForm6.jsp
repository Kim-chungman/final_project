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
											<div id="wq_uuid_858" class="w2group contbox pt20 ">
											<input id="본인공적연금일련번호" style="display: none;"
												class="w2input " type="text"><input id="배우자공적연금일련번호"
												style="display: none;" class="w2input " type="text"><input
												id="개인연금거치식일련번호" style="display: none;" class="w2input "
												type="text"><input id="개인연금적립식일련번호"
												style="display: none;" class="w2input " type="text">
											<p id="wq_uuid_863" class="w2textbox fs15">본인의 공적연금 유형은
												무엇입니까?</p>
											<div id="wq_uuid_864" class="w2group boxTyGray mb15 mt10">
												<div id="wq_uuid_865" class="w2group tformper">
													<div id="wq_uuid_866" class="w2group cell tal">
														<div id="sbx_본인공적연금유형" class="w2radio right_align">
															<div class="w2radio_item w2radio_item_0">
																<input type="radio" class="w2radio_input"
																	name="sbx_본인공적연금유형_input" index="0"
																	id="sbx_본인공적연금유형_input_0"><label
																	class="w2radio_label " index="0"
																	for="sbx_본인공적연금유형_input_0">국민연금</label>
															</div>
															<div class="w2radio_item w2radio_item_1">
																<input type="radio" class="w2radio_input"
																	name="sbx_본인공적연금유형_input" index="1"
																	id="sbx_본인공적연금유형_input_1"><label
																	class="w2radio_label " index="1"
																	for="sbx_본인공적연금유형_input_1">공무원연금</label>
															</div>
															<div class="w2radio_item w2radio_item_2">
																<input type="radio" class="w2radio_input"
																	name="sbx_본인공적연금유형_input" index="2"
																	id="sbx_본인공적연금유형_input_2"><label
																	class="w2radio_label " index="2"
																	for="sbx_본인공적연금유형_input_2">사학연금</label>
															</div>
															<div class="w2radio_item w2radio_item_3">
																<input type="radio" class="w2radio_input"
																	name="sbx_본인공적연금유형_input" index="3"
																	id="sbx_본인공적연금유형_input_3"><label
																	class="w2radio_label " index="3"
																	for="sbx_본인공적연금유형_input_3">군인연금</label>
															</div>
															<div class="w2radio_item w2radio_item_4">
																<input type="radio" class="w2radio_input"
																	name="sbx_본인공적연금유형_input" index="4"
																	id="sbx_본인공적연금유형_input_4"><label
																	class="w2radio_label " index="4"
																	for="sbx_본인공적연금유형_input_4">미가입</label>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div id="본인공적연금유형_cont1" style="display: none;"
												class="w2group tac mb15">
												<a id="btn_연금정보바로가기"
													class="w2anchor2 btnTyGray01 medium fs15 w100_"
													href="javascript:void(null);">연금정보 바로가기</a>
											</div>
										</div>
										<table id="본인공적연금유형_cont2" style="display: none;"
											class="w2group w2tb tableTyInput mt0 mb20">
											<caption id="wq_uuid_871" class="w2group setcaption">본인의&nbsp;(예상)&nbsp;월&nbsp;수령액을&nbsp;입력해주세요.
												을(를) 나타낸 표</caption>
											<colgroup id="wq_uuid_872" class="w2group ">
												<col id="wq_uuid_873" style="width: 18%;" class="w2group ">
												<col id="wq_uuid_874" class="w2group ">
											</colgroup>
											<tbody>
												<tr id="wq_uuid_875" class="w2group ">
													<th id="wq_uuid_876" class="w2group w2tb_th b tal">
														본인의&nbsp;(예상)&nbsp;월&nbsp;수령액을&nbsp;입력해주세요.</th>
													<td id="wq_uuid_877" class="w2group w2tb_td"
														data-title="본인의 (예상) 월 수령액을 입력해주세요.">
														<div id="wq_uuid_878" class="w2group boxTyGray  inph30 mt0">
															<div id="wq_uuid_879" class="w2group tformper formWrap">
																<div id="wq_uuid_880" class="w2group cell">
																	<div id="wq_uuid_881" class="w2group pr">
																		<span id="wq_uuid_882" style="top: 6px; left: 5px;"
																			class="w2span pa">월</span><input id="본인예상수령액"
																			class="w2input pl20 pr40 tar" type="tel"
																			title="전화번호 앞자리" maxlength="7"><span
																			id="wq_uuid_884" style="top: 7px; right: 5px;"
																			class="w2span pa">만원</span>
																	</div>
																</div>
															</div>
														</div></td>
												</tr>
											</tbody>
										</table>
										<div id="wq_uuid_885" class="w2group contbox">
											<div id="spouse05" class="w2group ">
												<p id="wq_uuid_887" class="w2textbox fs15">배우자의 공적연금 유형은
													무엇입니까?</p>
												<div id="wq_uuid_888" class="w2group boxTyGray mb15 mt10">
													<div id="wq_uuid_889" class="w2group tformper">
														<div id="wq_uuid_890" class="w2group cell tal">
															<div id="sbx_배우자공적연금유형" class="w2radio right_align">
																<div class="w2radio_item w2radio_item_0">
																	<input type="radio" class="w2radio_input"
																		name="sbx_배우자공적연금유형_input" index="0"
																		id="sbx_배우자공적연금유형_input_0"><label
																		class="w2radio_label " index="0"
																		for="sbx_배우자공적연금유형_input_0">국민연금</label>
																</div>
																<div class="w2radio_item w2radio_item_1">
																	<input type="radio" class="w2radio_input"
																		name="sbx_배우자공적연금유형_input" index="1"
																		id="sbx_배우자공적연금유형_input_1"><label
																		class="w2radio_label " index="1"
																		for="sbx_배우자공적연금유형_input_1">공무원연금</label>
																</div>
																<div class="w2radio_item w2radio_item_2">
																	<input type="radio" class="w2radio_input"
																		name="sbx_배우자공적연금유형_input" index="2"
																		id="sbx_배우자공적연금유형_input_2"><label
																		class="w2radio_label " index="2"
																		for="sbx_배우자공적연금유형_input_2">사학연금</label>
																</div>
																<div class="w2radio_item w2radio_item_3">
																	<input type="radio" class="w2radio_input"
																		name="sbx_배우자공적연금유형_input" index="3"
																		id="sbx_배우자공적연금유형_input_3"><label
																		class="w2radio_label " index="3"
																		for="sbx_배우자공적연금유형_input_3">군인연금</label>
																</div>
																<div class="w2radio_item w2radio_item_4">
																	<input type="radio" class="w2radio_input"
																		name="sbx_배우자공적연금유형_input" index="4"
																		id="sbx_배우자공적연금유형_input_4"><label
																		class="w2radio_label " index="4"
																		for="sbx_배우자공적연금유형_input_4">미가입</label>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div id="배우자공적연금유형_cont1" style="display: none;"
													class="w2group tac mb15">
													<a id="btn_연금정보바로가기1"
														class="w2anchor2 btnTyGray01 medium fs15 w100_"
														href="javascript:void(null);">연금정보 바로가기</a>
												</div>
												<table id="배우자공적연금유형_cont2" style="display: none;"
													class="w2group w2tb tableTyInput mt0">
													<caption id="wq_uuid_895" class="w2group setcaption">배우자의&nbsp;(예상)&nbsp;월&nbsp;수령액을&nbsp;입력해주세요.
														을(를) 나타낸 표</caption>
													<colgroup id="wq_uuid_896" class="w2group ">
														<col id="wq_uuid_897" style="width: 18%;" class="w2group ">
														<col id="wq_uuid_898" class="w2group ">
													</colgroup>
													<tbody>
														<tr id="wq_uuid_899" class="w2group ">
															<th id="wq_uuid_900" class="w2group w2tb_th b tal">
																배우자의&nbsp;(예상)&nbsp;월&nbsp;수령액을&nbsp;입력해주세요.</th>
															<td id="wq_uuid_901" class="w2group w2tb_td"
																data-title="배우자의 (예상) 월 수령액을 입력해주세요.">
																<div id="wq_uuid_902" class="w2group boxTyGray inph30 mt0">
																	<div id="wq_uuid_903" class="w2group tformper formWrap">
																		<div id="wq_uuid_904" class="w2group cell">
																			<div id="wq_uuid_905" class="w2group pr">
																				<span id="wq_uuid_906" style="top: 6px; left: 5px;"
																					class="w2span pa">월</span><input id="배우자예상수령액"
																					class="w2input pl20 pr40 tar" type="tel"
																					title="전화번호 앞자리" maxlength="7"><span
																					id="wq_uuid_908" style="top: 6px; right: 5px;"
																					class="w2span pa">만원</span>
																			</div>
																		</div>
																	</div>
																</div></td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
											<div id="wq_uuid_943" style="left: -1px; top: 52px;"
											class="w2group contbox pt20 ">
											<input id="본인_전문퇴직연금유형" style="display: none;"
												class="w2input " type="text"><input
												id="배우자_전문퇴직연금유형" style="display: none;" class="w2input "
												type="text"><input id="본인퇴직연금일련번호"
												style="display: none;" class="w2input " type="text"><input
												id="배우자퇴직연금일련번호" style="display: none;" class="w2input "
												type="text">
											<p id="wq_uuid_948" class="w2textbox fs15">본인의 퇴직연금 유형은
												무엇입니까?</p>
											<div id="wq_uuid_949" class="w2group boxTyGray mb25 mt10">
												<div id="wq_uuid_950" class="w2group tformper">
													<div id="wq_uuid_951" class="w2group cell tal">
														<div id="본인퇴직연금유형" class="w2radio right_align pb0">
															<div class="w2radio_item w2radio_item_0">
																<input type="radio" class="w2radio_input"
																	name="본인퇴직연금유형_input" index="0" id="본인퇴직연금유형_input_0"><label
																	class="w2radio_label " index="0" for="본인퇴직연금유형_input_0">납입중</label>
															</div>
															<div class="w2radio_item w2radio_item_1">
																<input type="radio" class="w2radio_input"
																	name="본인퇴직연금유형_input" index="1" id="본인퇴직연금유형_input_1"><label
																	class="w2radio_label " index="1" for="본인퇴직연금유형_input_1">수령중</label>
															</div>
															<div class="w2radio_item w2radio_item_2">
																<input type="radio" class="w2radio_input"
																	name="본인퇴직연금유형_input" index="2" id="본인퇴직연금유형_input_2"><label
																	class="w2radio_label " index="2" for="본인퇴직연금유형_input_2">미가입</label>
															</div>
														</div>
													</div>
												</div>
											</div>
											<table id="본인퇴직연금유형_cont1" style="display: none;"
												class="w2group w2tb tableTyInput mt0 nopd mb20">
												<caption id="wq_uuid_954" class="w2group setcaption">은퇴시점
													본인의 퇴직금(연금)은 얼마입니까? 을(를) 나타낸 표</caption>
												<colgroup id="wq_uuid_955" class="w2group ">
													<col id="wq_uuid_956" style="width: 18%;" class="w2group ">
													<col id="wq_uuid_957" class="w2group ">
												</colgroup>
												<tbody>
													<tr id="wq_uuid_958" class="w2group ">
														<th id="wq_uuid_959" class="w2group w2tb_th b tal">은퇴시점
															본인의 퇴직금(연금)은 얼마입니까?</th>
														<td id="wq_uuid_960" class="w2group w2tb_td"
															data-title="은퇴시점 본인의 퇴직금(연금)은 얼마입니까?"><div
																id="wq_uuid_961" class="w2group boxTyGray  inph30 mt0">
																<div id="wq_uuid_962" class="w2group tformper formWrap">
																	<div id="wq_uuid_963" class="w2group cell">
																		<div id="wq_uuid_964" class="w2group pr">
																			<span id="wq_uuid_965" style="top: 6px; left: 5px;"
																				class="w2span pa">연</span><input id="본인예상퇴직금"
																				class="w2input pl20 pr40 tar" type="tel"
																				title="금액 입력" maxlength="6"><span
																				id="wq_uuid_967" style="top: 6px; right: 5px;"
																				class="w2span pa">만원</span>
																		</div>
																	</div>
																</div>
															</div>
															<div id="wq_uuid_968" class="w2group tac mt10">
																<a id="btn_본인퇴직금계산하기"
																	class="w2anchor2 btnTyGray01 medium fs15 w100_"
																	href="javascript:void(null);">계산하기</a>
															</div></td>
													</tr>
												</tbody>
											</table>
											<table id="본인퇴직연금유형_cont2" style="display: none;"
												class="w2group w2tb tableTyInput mt0 nopd mb20">
												<caption id="wq_uuid_971" class="w2group setcaption">본인의&nbsp;(예상)&nbsp;월&nbsp;수령액은&nbsp;얼마입니까?,본인의&nbsp;퇴직연금&nbsp;수령종료&nbsp;연령은&nbsp;몇&nbsp;세입니까?
													을(를) 나타낸 표</caption>
												<colgroup id="wq_uuid_972" class="w2group ">
													<col id="wq_uuid_973" style="width: 18%;" class="w2group ">
													<col id="wq_uuid_974" class="w2group ">
												</colgroup>
												<tbody>
													<tr id="wq_uuid_975" class="w2group ">
														<th id="wq_uuid_976" class="w2group w2tb_th b tal">본인의&nbsp;(예상)&nbsp;월&nbsp;수령액은&nbsp;얼마입니까?</th>
														<td id="wq_uuid_977" class="w2group w2tb_td"
															data-title="본인의 (예상) 월 수령액은 얼마입니까?"><div
																id="wq_uuid_978" class="w2group boxTyGray  inph30 mt0">
																<div id="wq_uuid_979" class="w2group tformper formWrap">
																	<div id="wq_uuid_980" class="w2group cell">
																		<div id="wq_uuid_981" class="w2group pr">
																			<span id="wq_uuid_982" style="top: 6px; left: 5px;"
																				class="w2span pa">월</span><input id="본인월수령액"
																				class="w2input pl20 pr40 tar" type="tel"
																				title="전화번호 앞자리" maxlength="7"><span
																				id="wq_uuid_984" style="top: 6px; right: 5px;"
																				class="w2span pa">만원</span>
																		</div>
																	</div>
																</div>
															</div></td>
													</tr>
													<tr id="wq_uuid_985" class="w2group ">
														<th id="wq_uuid_986" class="w2group w2tb_th b tal">
															본인의&nbsp;퇴직연금&nbsp;수령종료&nbsp;연령은&nbsp;몇&nbsp;세입니까?</th>
														<td id="wq_uuid_987" class="w2group w2tb_td"
															data-title="본인의 퇴직연금 수령종료 연령은 몇 세입니까?">
															<div id="wq_uuid_988" class="w2group boxTyGray  inph30 mt0">
																<div id="wq_uuid_989" class="w2group tformper formWrap">
																	<div id="wq_uuid_990" class="w2group cell">
																		<div id="wq_uuid_991" class="w2group pr">
																			<input id="본인종료나이" class="w2input pr20 tar"
																				type="tel" title="전화번호 앞자리" maxlength="3"><span
																				id="wq_uuid_993" style="top: 6px; right: 5px;"
																				class="w2span pa">세</span>
																		</div>
																	</div>
																</div>
															</div></td>
													</tr>
												</tbody>
											</table>
											<div id="spouse06" class="w2group ">
												<p id="wq_uuid_995" class="w2textbox fs15 ">배우자의 퇴직연금
													유형은 무엇입니까?</p>
												<div id="wq_uuid_996" class="w2group boxTyGray mb15 mt10">
													<div id="wq_uuid_997" class="w2group tformper">
														<div id="wq_uuid_998" class="w2group cell tal">
															<div id="배우자퇴직연금유형" class="w2radio right_align pb0">
																<div class="w2radio_item w2radio_item_0">
																	<input type="radio" class="w2radio_input"
																		name="배우자퇴직연금유형_input" index="0"
																		id="배우자퇴직연금유형_input_0"><label
																		class="w2radio_label " index="0"
																		for="배우자퇴직연금유형_input_0">납입중</label>
																</div>
																<div class="w2radio_item w2radio_item_1">
																	<input type="radio" class="w2radio_input"
																		name="배우자퇴직연금유형_input" index="1"
																		id="배우자퇴직연금유형_input_1"><label
																		class="w2radio_label " index="1"
																		for="배우자퇴직연금유형_input_1">수령중</label>
																</div>
																<div class="w2radio_item w2radio_item_2">
																	<input type="radio" class="w2radio_input"
																		name="배우자퇴직연금유형_input" index="2"
																		id="배우자퇴직연금유형_input_2"><label
																		class="w2radio_label " index="2"
																		for="배우자퇴직연금유형_input_2">미가입</label>
																</div>
															</div>
														</div>
													</div>
												</div>
												<table id="배우자퇴직연금유형_cont1" style="display: none;"
													class="w2group w2tb tableTyInput mt0 nopd">
													<caption id="wq_uuid_1001" class="w2group setcaption">배우자의&nbsp;퇴직금(연금)은&nbsp;얼마입니까?
														을(를) 나타낸 표</caption>
													<colgroup id="wq_uuid_1002" class="w2group ">
														<col id="wq_uuid_1003" style="width: 18%;"
															class="w2group ">
														<col id="wq_uuid_1004" class="w2group ">
													</colgroup>
													<tbody>
														<tr id="wq_uuid_1005" class="w2group ">
															<th id="wq_uuid_1006" class="w2group w2tb_th b tac">배우자의&nbsp;퇴직금(연금)은&nbsp;얼마입니까?</th>
															<td id="wq_uuid_1007" class="w2group w2tb_td"
																data-title="배우자의 퇴직금(연금)은 얼마입니까?"><div
																	id="wq_uuid_1008" class="w2group boxTyGray  inph30 mt0">
																	<div id="wq_uuid_1009"
																		class="w2group tformper formWrap">
																		<div id="wq_uuid_1010" class="w2group cell">
																			<div id="wq_uuid_1011" class="w2group pr">
																				<span id="wq_uuid_1012" style="top: 6px; left: 5px;"
																					class="w2span pa">연</span><input id="배우자예상퇴직금"
																					class="w2input pl20 pr40 tar" type="tel"
																					title="금액 입력" maxlength="6"><span
																					id="wq_uuid_1014" style="top: 6px; right: 5px;"
																					class="w2span pa">만원</span>
																			</div>
																		</div>
																	</div>
																</div>
																<div id="wq_uuid_1015" class="w2group tac mt10">
																	<a id="btn_배우자퇴직금계산하기"
																		class="w2anchor2 btnTyGray01 medium fs15 w100_"
																		href="javascript:void(null);">계산하기</a>
																</div></td>
														</tr>
													</tbody>
												</table>
												<table id="배우자퇴직연금유형_cont2" style="display: none;"
													class="w2group w2tb tableTyInput mt0 nopd">
													<caption id="wq_uuid_1018" class="w2group setcaption">배우자의&nbsp;(예상)&nbsp;월&nbsp;수령액은&nbsp;얼마입니까?,배우자의&nbsp;퇴직연금&nbsp;수령종료&nbsp;연령은&nbsp;몇&nbsp;세입니까?
														을(를) 나타낸 표</caption>
													<colgroup id="wq_uuid_1019" class="w2group ">
														<col id="wq_uuid_1020" style="width: 18%;"
															class="w2group ">
														<col id="wq_uuid_1021" class="w2group ">
													</colgroup>
													<tbody>
														<tr id="wq_uuid_1022" class="w2group ">
															<th id="wq_uuid_1023" class="w2group w2tb_th b tac">배우자의&nbsp;(예상)&nbsp;월&nbsp;수령액은&nbsp;얼마입니까?</th>
															<td id="wq_uuid_1024" class="w2group w2tb_td"
																data-title="배우자의 (예상) 월 수령액은 얼마입니까?"><div
																	id="wq_uuid_1025" class="w2group boxTyGray  inph30 mt0">
																	<div id="wq_uuid_1026"
																		class="w2group tformper formWrap">
																		<div id="wq_uuid_1027" class="w2group cell">
																			<div id="wq_uuid_1028" class="w2group pr">
																				<span id="wq_uuid_1029" style="top: 6px; left: 5px;"
																					class="w2span pa">월</span><input id="배우자월수령액"
																					class="w2input " type="tel" title="전화번호 앞자리"
																					maxlength="7"><span id="wq_uuid_1031"
																					style="right: 5px; top: 7px;" class="w2span pa">만원</span>
																			</div>
																		</div>
																	</div>
																</div></td>
														</tr>
														<tr id="wq_uuid_1032" class="w2group ">
															<th id="wq_uuid_1033" class="w2group w2tb_th b tac">
																배우자의&nbsp;퇴직연금&nbsp;수령종료&nbsp;연령은&nbsp;몇&nbsp;세입니까?</th>
															<td id="wq_uuid_1034" class="w2group w2tb_td"
																data-title="배우자의 퇴직연금 수령종료 연령은 몇 세입니까?"><div
																	id="wq_uuid_1035" class="w2group boxTyGray  inph30 mt0">
																	<div id="wq_uuid_1036"
																		class="w2group tformper formWrap">
																		<div id="wq_uuid_1037" class="w2group cell">
																			<div id="wq_uuid_1038" class="w2group pr">
																				<input id="배우자종료나이" class="w2input " type="tel"
																					title="전화번호 앞자리" maxlength="3"><span
																					id="wq_uuid_1040" style="right: 5px; top: 7px;"
																					class="w2span pa">세</span>
																			</div>
																		</div>
																	</div>
																</div></td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
										<div id="wq_uuid_382" class="w2group btnAreaBot btnFix item2" style="width: 50%; margin-left: 400px;">
											<a id="btn_F14이전" class="w2anchor2 btnTyGray02 big"
												href="${ pageContext.request.contextPath }/retire/retireForm5">이전</a><a id="btn_F14다음"
												class="w2anchor2 btnTyBlue02 big"
												href="${ pageContext.request.contextPath }/retire/retireForm7" style="background-color: #008B8B;">다음</a>
										</div>
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