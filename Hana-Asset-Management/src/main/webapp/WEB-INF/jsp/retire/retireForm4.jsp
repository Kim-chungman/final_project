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
										<form action="${ pageContext.request.contextPath }/retire/retireForm5" method="post">	
											<div id="wq_uuid_416" class="w2group contbox pt20 ">
											<div id="wq_uuid_417" class="w2group contbox pd0">
												<p id="wq_uuid_418" class="w2textbox fs15 fl pt10">기대수명을
													입력해주세요</p>
											</div>
											<p id="wq_uuid_420" class="w2textbox fc3 fs13 mt15">*
												은퇴연령~기대수명까지가 은퇴기간이 됩니다.</p>
											<div id="wq_uuid_421"
												class="w2group excompcont mt10 boxTyGray inph30">
												<div id="wq_uuid_422" class="w2group tformper">
													<div id="wq_uuid_423" class="w2group cell tal w100">
														<span id="wq_uuid_424" class="w2span fc2">본인</span>
													</div>
													<div id="wq_uuid_425" class="w2group cell tal">
														<div id="wq_uuid_426" class="w2group pr">
															<span id="wq_uuid_427" style="left: 5px; top: 6px;"
																class="w2span pa">만</span><input id="ipt_본인기대수명" name="ipt_본인기대수명"
																class="w2input pl20 pr20 tar" type="tel"><span
																id="wq_uuid_429" style="right: 5px; top: 7px;"
																class="w2span pa">세</span>
														</div>
													</div>
												</div>
												<div id="spouse03" class="w2group tformper mt5">
													<div id="wq_uuid_431" class="w2group cell tal w100">
														<span id="wq_uuid_432" class="w2span fc2">배우자</span>
													</div>
													<div id="wq_uuid_433" class="w2group cell tal">
														<div id="wq_uuid_434" class="w2group pr">
															<span id="wq_uuid_435" style="left: 5px; top: 6px;"
																class="w2span pa">만</span><input id="ipt_배우자기대수명" name="ipt_배우자기대수명"
																class="w2input pl20 pr20 tar" type="tel"><span
																id="wq_uuid_437" style="right: 5px; top: 7px;"
																class="w2span pa">세</span>
														</div>
													</div>
												</div>
											</div>
											<div id="wq_uuid_438" class="w2group boxTyWhite mt30">
												<div id="wq_uuid_439" class="w2textbox tip fontTy13 fc555">의료기술의
													발달, 식생활 개선 등으로 수명이 점차 증가하고 있습니다. 예상보다 실제 생존연령이 더 길어지는 경우 더
													많은 노후자금이 필요하게 되어 안정적인 은퇴생활에 위험이 될 수 있습니다. 이를 고려하여, 기대수명을
													입력하는 경우에는 통계정보보다 3~5세정도 높게 가정하는 것이 좋습니다.</div>
											</div>
											<p id="wq_uuid_440" class="w2textbox  fs15 mt20">(예상) 은퇴
												나이를 입력해주세요.</p>
											<div id="wq_uuid_441"
												class="w2group excompcont mt10 boxTyGray inph30">
												<div id="wq_uuid_442" class="w2group tformper">
													<div id="wq_uuid_443" class="w2group cell tal w100">
														<span id="wq_uuid_444" class="w2span fc2">본인</span>
													</div>
													<div id="wq_uuid_445" class="w2group cell tal">
														<div id="wq_uuid_446" class="w2group pr">
															<span id="wq_uuid_447" style="left: 5px; top: 6px;"
																class="w2span pa">만</span><input id="ipt_본인은퇴예상나이" name="ipt_본인은퇴예상나이"
																class="w2input pl20 pr20 tar" type="tel"><span
																id="wq_uuid_449" style="right: 5px; top: 7px;"
																class="w2span pa">세</span>
														</div>
													</div>
												</div>
												<div id="spouse04" class="w2group tformper mt5">
													<div id="wq_uuid_451" class="w2group cell tal w100">
														<span id="wq_uuid_452" class="w2span fc2">배우자</span>
													</div>
													<div id="wq_uuid_453" class="w2group cell tal">
														<div id="wq_uuid_454" class="w2group pr">
															<span id="wq_uuid_455" style="left: 5px; top: 6px;"
																class="w2span pa">만</span><input id="ipt_배우자은퇴예상나이" name="ipt_배우자은퇴예상나이"
																class="w2input pl20 pr20 tar" type="tel"><span
																id="wq_uuid_457" style="right: 5px; top: 7px;"
																class="w2span pa">세</span>
														</div>
													</div>
												</div>
											</div>
											<div id="wq_uuid_458" class="w2group boxTyWhite mt30">
												<div id="wq_uuid_459" class="w2textbox tip fontTy13 fc555">전업주부
													또는 은퇴를 하신 경우에는 현재나이를 입력하세요.</div>
											</div>
										</div>
										<div id="wq_uuid_382" class="w2group btnAreaBot btnFix item2" style="width: 50%; margin-left: 400px; margin-bottom: 20px;">
											<a id="btn_F14이전" class="w2anchor2 btnTyGray02 big"
												href="${ pageContext.request.contextPath }/retire/retireForm3">이전</a>
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
		</div>
   </section>
</body>
</html>