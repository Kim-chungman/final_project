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
														<li id="wq_uuid_255" class="w2group "><span
															id="wq_uuid_256" class="w2span ">3</span>
														<p id="wq_uuid_257" class="w2textbox ">은퇴준비자금</p></li>
														<li id="wq_uuid_258" class="w2group "><span
															id="wq_uuid_259" class="w2span ">4</span>
														<p id="wq_uuid_260" class="w2textbox ">은퇴준비결과</p></li>
													</ul>
												</div>
											</div>
											<div id="wq_uuid_534" class="w2group contbox pt20 ">
											<p id="wq_uuid_535" class="w2textbox fs15">은퇴 후 월 생활비는
												얼마로 예상하십니까?</p>
											
											<div id="wq_uuid_538"
												class="w2group excompcont mt15  boxTyGray inph30">
												<div id="wq_uuid_539" class="w2group tformper">
													<div id="wq_uuid_540" class="w2group cell">
														<div id="wq_uuid_541" class="w2group pr">
															<span id="wq_uuid_542" style="left: 5px; top: 6px;"
																class="w2span pa">월</span><input id="input_mprice"
																class="w2input pl20 pr35 tar" type="tel"><span
																id="wq_uuid_544" style="right: 5px; top: 7px;"
																class="w2span pa">만원</span>
														</div>
													</div>
												</div>
											</div>
											<p id="wq_uuid_545" class="w2textbox fs15 mt20 mb15">생활비가
												감소되는 비율을 적용하시겠습니까?</p>
											<p id="wq_uuid_546" class="w2textbox fc3 fs13 mt10">* 은퇴
												후 생활비는 나이가 들수록 감소하는 경향이 있음.</p>
											<div id="wq_uuid_547" class="w2group btnAreaBot item2 mt15">
												<a id="btnApply2"
													class="w2anchor2 btnTyGray02 btn50per medium"
													href="javascript:void(null);">비적용</a><a id="btnApply1"
													class="w2anchor2 btnTyBlue02 btn50per medium ml10"
													href="javascript:void(null);">적용</a>
											</div>
											<table id="wq_uuid_550"
												class="w2group w2tb tableTyOutput aC slim mt20 inph30">
												<caption captiontitle="연령별 생활비 감소비율 정보 입력"
													class="setcaption">연령별 생활비 감소비율 정보 입력은(는)
													구분,69세&nbsp;이하,70세&nbsp;~&nbsp;79세,80세&nbsp;이후,생활비,비율 을(를)
													나타낸 표</caption>
												<colgroup id="wq_uuid_551" class="w2group ">
													<col id="wq_uuid_552" style="width: 20%;" class="w2group ">
													<col id="wq_uuid_553" style="width: 25.00%;"
														class="w2group ">
													<col id="wq_uuid_554" class="w2group ">
													<col id="wq_uuid_555" style="width: 25.00%;"
														class="w2group ">
												</colgroup>
												<thead id="wq_uuid_556" class="w2group ">
													<tr id="wq_uuid_557" class="w2group ">
														<th id="wq_uuid_558" class="w2group w2tb_th">구분</th>
														<th id="wq_uuid_559" class="w2group w2tb_th">69세&nbsp;이하</th>
														<th id="wq_uuid_560" class="w2group w2tb_th">70세&nbsp;~&nbsp;79세</th>
														<th id="wq_uuid_561" class="w2group w2tb_th">80세&nbsp;이후</th>
													</tr>
												</thead>
												<tbody id="wq_uuid_562" class="w2group ">
													<tr id="wq_uuid_563" class="w2group ">
														<th id="wq_uuid_564" class="w2group w2tb_th">생활비</th>
														<td id="wq_uuid_565" class="w2group w2tb_td"
															data-title="생활비"><div id="input_live_val0"
																class="w2textbox ">165</div></td>
														<td id="wq_uuid_567" class="w2group w2tb_td w2tb_noTH"><div
																id="input_live_val1" class="w2textbox ">127</div></td>
														<td id="wq_uuid_569" class="w2group w2tb_td w2tb_noTH"><div
																id="input_live_val2" class="w2textbox ">117</div></td>
													</tr>
													<tr id="wq_uuid_571" class="w2group ">
														<th id="wq_uuid_572" class="w2group w2tb_th">비율</th>
														<td id="wq_uuid_573" class="w2group w2tb_td"
															data-title="비율"><div id="input_live0"
																class="w2textbox ">100%</div></td>
														<td id="wq_uuid_575" class="w2group w2tb_td w2tb_noTH"><div
																id="wq_uuid_576" class="w2group pr">
																<input id="input_live1" class="w2input tar pr20"
																	type="tel" title="70~79세 생활비 감소 비율" maxlength="3"><span
																	id="wq_uuid_578" style="right: 5px; top: 7px;"
																	class="w2textbox unit pa">%</span>
															</div></td>
														<td id="wq_uuid_579" class="w2group w2tb_td w2tb_noTH"><div
																id="wq_uuid_580" class="w2group pr">
																<input id="input_live2" class="w2input tar pr20"
																	type="tel" title="80세 이후 생활비 감소 비율" maxlength="3"><span
																	id="wq_uuid_582" style="right: 5px; top: 7px;"
																	class="w2textbox unit pa">%</span>
															</div></td>
													</tr>
												</tbody>
											</table>
											<div id="wq_uuid_583" class="w2group boxTyWhite mt30">
												<div id="wq_uuid_584" class="w2textbox tip fontTy13 fc555">적용시의
													비율은 통계값(국민노후보장패널부가조사)을 적용하여 산출하였습니다.</div>
											</div>
										</div>
										<div id="wq_uuid_382" class="w2group btnAreaBot btnFix item2" style="width: 50%; margin-left: 400px;">
											<a id="btn_F14이전" class="w2anchor2 btnTyGray02 big"
												href="${ pageContext.request.contextPath }/retire/retireForm4">이전</a><a id="btn_F14다음"
												class="w2anchor2 btnTyBlue02 big"
												href="${ pageContext.request.contextPath }/retire/retireForm6" style="background-color: #008B8B;">다음</a>
										</div>
										
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