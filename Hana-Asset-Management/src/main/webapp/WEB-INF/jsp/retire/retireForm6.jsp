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
										<form action="${ pageContext.request.contextPath }/retire/retireForm7" method="post">
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
																	name="sbx_본인공적연금유형_input" value="국민연금"
																	id="sbx_본인공적연금유형_input_0"><label
																	class="w2radio_label " 
																	for="sbx_본인공적연금유형_input_0">국민연금</label>
															</div>
															<div class="w2radio_item w2radio_item_1">
																<input type="radio" class="w2radio_input"
																	name="sbx_본인공적연금유형_input" value="공무원연금"
																	id="sbx_본인공적연금유형_input_1"><label
																	class="w2radio_label " 
																	for="sbx_본인공적연금유형_input_1">공무원연금</label>
															</div>
															<div class="w2radio_item w2radio_item_2">
																<input type="radio" class="w2radio_input"
																	name="sbx_본인공적연금유형_input" value="사학연금"
																	id="sbx_본인공적연금유형_input_2"><label
																	class="w2radio_label "
																	for="sbx_본인공적연금유형_input_2">사학연금</label>
															</div>
															<div class="w2radio_item w2radio_item_3">
																<input type="radio" class="w2radio_input"
																	name="sbx_본인공적연금유형_input" value="군인연금"
																	id="sbx_본인공적연금유형_input_3"><label
																	class="w2radio_label "
																	for="sbx_본인공적연금유형_input_3">군인연금</label>
															</div>
															<div class="w2radio_item w2radio_item_4">
																<input type="radio" class="w2radio_input"
																	name="sbx_본인공적연금유형_input" value="미가입"
																	id="sbx_본인공적연금유형_input_4"><label
																	class="w2radio_label " 
																	for="sbx_본인공적연금유형_input_4">미가입</label>
															</div>
														</div>
													</div>
												</div>
											</div>
											
										</div>
										
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
																		name="sbx_배우자공적연금유형_input" value="국민연금"
																		id="sbx_배우자공적연금유형_input_0"><label
																		class="w2radio_label " 
																		for="sbx_배우자공적연금유형_input_0">국민연금</label>
																</div>
																<div class="w2radio_item w2radio_item_1">
																	<input type="radio" class="w2radio_input"
																		name="sbx_배우자공적연금유형_input" value="공무원연금"
																		id="sbx_배우자공적연금유형_input_1"><label
																		class="w2radio_label " 
																		for="sbx_배우자공적연금유형_input_1">공무원연금</label>
																</div>
																<div class="w2radio_item w2radio_item_2">
																	<input type="radio" class="w2radio_input"
																		name="sbx_배우자공적연금유형_input" value="사학연금"
																		id="sbx_배우자공적연금유형_input_2"><label
																		class="w2radio_label " 
																		for="sbx_배우자공적연금유형_input_2">사학연금</label>
																</div>
																<div class="w2radio_item w2radio_item_3">
																	<input type="radio" class="w2radio_input"
																		name="sbx_배우자공적연금유형_input" value="군인연금"
																		id="sbx_배우자공적연금유형_input_3"><label
																		class="w2radio_label "
																		for="sbx_배우자공적연금유형_input_3">군인연금</label>
																</div>
																<div class="w2radio_item w2radio_item_4">
																	<input type="radio" class="w2radio_input"
																		name="sbx_배우자공적연금유형_input" value="미가입"
																		id="sbx_배우자공적연금유형_input_4"><label
																		class="w2radio_label "
																		for="sbx_배우자공적연금유형_input_4">미가입</label>
																</div>
															</div>
														</div>
													</div>
												</div>
												
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
																<input type="radio" class="w2radio_input" value="납입중"
																	name="본인퇴직연금유형_input" id="본인퇴직연금유형_input_0"><label
																	class="w2radio_label " for="본인퇴직연금유형_input_0">납입중</label>
															</div>
															<div class="w2radio_item w2radio_item_1">
																<input type="radio" class="w2radio_input" value="수령중"
																	name="본인퇴직연금유형_input" id="본인퇴직연금유형_input_1"><label
																	class="w2radio_label "  for="본인퇴직연금유형_input_1">수령중</label>
															</div>
															<div class="w2radio_item w2radio_item_2">
																<input type="radio" class="w2radio_input" value="미가입"
																	name="본인퇴직연금유형_input" id="본인퇴직연금유형_input_2"><label
																	class="w2radio_label " for="본인퇴직연금유형_input_2">미가입</label>
															</div>
														</div>
													</div>
												</div>
											</div>
											
											<div id="spouse06" class="w2group ">
												<p id="wq_uuid_995" class="w2textbox fs15 ">배우자의 퇴직연금
													유형은 무엇입니까?</p>
												<div id="wq_uuid_996" class="w2group boxTyGray mb15 mt10">
													<div id="wq_uuid_997" class="w2group tformper">
														<div id="wq_uuid_998" class="w2group cell tal">
															<div id="배우자퇴직연금유형" class="w2radio right_align pb0">
																<div class="w2radio_item w2radio_item_0">
																	<input type="radio" class="w2radio_input"
																		name="배우자퇴직연금유형_input" value="납입중"
																		id="배우자퇴직연금유형_input_0"><label
																		class="w2radio_label " 
																		for="배우자퇴직연금유형_input_0">납입중</label>
																</div>
																<div class="w2radio_item w2radio_item_1">
																	<input type="radio" class="w2radio_input"
																		name="배우자퇴직연금유형_input" value="수령중"
																		id="배우자퇴직연금유형_input_1"><label
																		class="w2radio_label " 
																		for="배우자퇴직연금유형_input_1">수령중</label>
																</div>
																<div class="w2radio_item w2radio_item_2">
																	<input type="radio" class="w2radio_input"
																		name="배우자퇴직연금유형_input" value="미가입"
																		id="배우자퇴직연금유형_input_2"><label
																		class="w2radio_label " 
																		for="배우자퇴직연금유형_input_2">미가입</label>
																</div>
															</div>
														</div>
													</div>
												</div>
												
											</div>
										</div>
										<div id="wq_uuid_382" class="w2group btnAreaBot btnFix item2" style="width: 50%; margin-left: 400px;">
											<a id="btn_F14이전" class="w2anchor2 btnTyGray02 big"
												href="${ pageContext.request.contextPath }/retire/retireForm5">이전</a>
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