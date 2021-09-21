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
														<li id="wq_uuid_252" class="w2group "><span
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
											<div id="wq_uuid_301" class="w2group contbox pt20 ">
												<p id="wq_uuid_302" class="w2textbox fs15 ">본인과 배우자중에서
													누구를 기준으로 은퇴설계를 진행하시겠습니까?</p>
												<p id="wq_uuid_303" class="w2textbox fc3 fs13 mt15">* 기준이
													된 사람의 은퇴나이를 기준으로 설계가 진행됩니다.</p>
												<div id="wq_uuid_304" class="w2group mt35">
													<div id="rdo_stabdardType" class="w2radio bg_myspouse item2">
														<div class="w2radio_item w2radio_item_0" style="float: left;">
															<input type="radio" class="w2radio_input"
																name="rdo_stabdardType_input" 
																id="rdo_stabdardType_input_0"><label
																class="w2radio_label " 
																for="rdo_stabdardType_input_0">본인</label>
														</div>
														<div class="w2radio_item w2radio_item_1">
															<input type="radio" class="w2radio_input"
																name="rdo_stabdardType_input" 
																id="rdo_stabdardType_input_1"><label
																class="w2radio_label "
																for="rdo_stabdardType_input_1">배우자</label>
														</div>
													</div>
												</div>
												<div id="wq_uuid_306" class="w2group boxTyWhite mt30">
													<div id="wq_uuid_307" class="w2textbox tip fontTy13 fc555">맞벌이
														부부인 경우에는 소득이 더 크거나 직장을 더 오래 다니는 사람을 기준으로 은퇴설계를 진행하시면 됩니다.</div>
												</div>
											</div>
											<div id="wq_uuid_308" class="w2group btnAreaBot btnFix item2" style="width: 50%; margin-left: 400px; margin-bottom: 100px;">
												<a id="btn_F13이전" class="w2anchor2 btnTyGray02 big"
													href="${ pageContext.request.contextPath }/retire/retireForm">이전</a><a id="btn_F13다음"
													class="w2anchor2 btnTyBlue02 big"
													href="${ pageContext.request.contextPath }/retire/retireForm3" style="background-color: #008B8B;">다음</a>
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