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
<script type="text/javascript">
	$(document).ready(function() {
		searchajax();
		searchajax2();
	})
</script>

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
											<div id="wq_uuid_342" class="w2group contbox pt20 ">
											<p id="wq_uuid_343" class="w2textbox fs15">현재 나이(태어난 연도와
												월)을 입력해주세요</p>
											<div id="wq_uuid_344"
												class="w2group excompcont mt10 boxTyGray inph30">
												<p id="wq_uuid_345" class="w2textbox mb10">본인</p>
												<div id="grp_본인나이" class="w2group tformper">
													<div id="wq_uuid_347" class="w2group cell tal">
														<div id="wq_uuid_348" style="width: 70%;"
															class="w2group dib ">
															<input id="ipt_본인생년" style="width: 60px;"
																class="w2input " type="tel" maxlength="4"><span
																id="wq_uuid_350" class="w2span ml5 mr10">년</span><input
																id="ipt_본인생월" style="width: 40px;" class="w2input "
																type="tel" maxlength="2"><span id="wq_uuid_352"
																class="w2span ml5">월</span>
														</div>
														<div id="wq_uuid_353" style="width: 30%;"
															class="w2group dib tar">
															<span id="wq_uuid_354" class="w2span ">만</span><span
																id="ipt_본인나이" class="w2span dib w35" style="font-size: 13pt; color: black;"></span><span
																id="wq_uuid_356" class="w2span ml5">세</span>
														</div>
													</div>
												</div>
												<div id="spouse01" class="w2group mt15">
													<p id="wq_uuid_358" class="w2textbox mb5">배우자</p>
													<div id="wq_uuid_359" class="w2group tformper mt5">
														<div id="wq_uuid_360" class="w2group cell tal">
															<div id="wq_uuid_361" style="width: 70%;"
																class="w2group dib ">
																<input id="ipt_배우자생년" style="width: 60px;"
																	class="w2input " type="tel" maxlength="4"><span
																	id="wq_uuid_363" class="w2span ml5 mr10">년</span><input
																	id="ipt_배우자생월" style="width: 40px;" class="w2input "
																	type="tel" maxlength="2"><span id="wq_uuid_365"
																	class="w2span ml5">월</span>
															</div>
															<div id="wq_uuid_366" style="width: 30%; margin-bottom: 20px;"
																class="w2group dib tar">
																<span id="wq_uuid_367" class="w2span ">만</span><span
																	id="ipt_배우자나이" class="w2span dib w35" style="font-size: 13pt; color: black;"></span><span
																	id="wq_uuid_369" class="w2span ml5">세</span>
															</div>
														</div>
													</div>
												</div>
											</div>
											<p id="wq_uuid_370" class="w2textbox  fs15 mt20">성별을
												입력해주세요</p>
												<div id="wq_uuid_371"
													class="w2group excompcont boxTyGray inph30 mt10">
													<div id="grp_본인성별" class="w2group tformper">
														<div id="wq_uuid_373" class="w2group cell tal w70">
															<span id="wq_uuid_374" class="w2span fc2">본인</span>
														</div>
														<div id="wq_uuid_375" class="w2group cell tal">
															<div id="rdo_sexType" class="w2radio ">
																<div class="w2radio_item w2radio_item_0">
																	<input type="radio" class="w2radio_input"
																		name="rdo_sexType_input" index="0"
																		id="rdo_sexType_input_0"><label
																		class="w2radio_label " index="0"
																		for="rdo_sexType_input_0">남</label>
																</div>
																<div class="w2radio_item w2radio_item_1">
																	<input type="radio" class="w2radio_input"
																		name="rdo_sexType_input" index="1"
																		id="rdo_sexType_input_1"><label
																		class="w2radio_label " index="1"
																		for="rdo_sexType_input_1">여</label>
																</div>
															</div>
														</div>
													</div>
													<div id="spouse02" class="w2group tformper">
														<div id="wq_uuid_378" class="w2group cell tal w70">
															<span id="wq_uuid_379" class="w2span fc2">배우자</span>
														</div>
														<div id="wq_uuid_380" class="w2group cell tal">
															<div id="rdo_sexWifeType" class="w2radio ">
																<div class="w2radio_item w2radio_item_0">
																	<input type="radio" class="w2radio_input"
																		name="rdo_sexWifeType_input" index="0"
																		id="rdo_sexWifeType_input_0"><label
																		class="w2radio_label " index="0"
																		for="rdo_sexWifeType_input_0">남</label>
																</div>
																<div class="w2radio_item w2radio_item_1">
																	<input type="radio" class="w2radio_input"
																		name="rdo_sexWifeType_input" index="1"
																		id="rdo_sexWifeType_input_1"><label
																		class="w2radio_label " index="1"
																		for="rdo_sexWifeType_input_1">여</label>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div id="wq_uuid_382" class="w2group btnAreaBot btnFix item2" style="width: 50%; margin-left: 400px; margin-bottom: 50px;">
												<a id="btn_F14이전" class="w2anchor2 btnTyGray02 big"
													href="${ pageContext.request.contextPath }/retire/retireForm2">이전</a><a id="btn_F14다음"
													class="w2anchor2 btnTyBlue02 big"
													href="${ pageContext.request.contextPath }/retire/retireForm4" style="background-color: #008B8B;">다음</a>
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
   <script type="text/javascript">
   		function searchajax(){
   			$("#wq_uuid_348").keyup(function() {
   				var words = $("#ipt_본인생년").val();
   				var months = $("#ipt_본인생월").val();
   				if( words != '' && months != ''){
   					$.ajax({
   						type : 'POST',
   						url : '${ pageContext.request.contextPath }/retire/ageCheck',
   						data : { word : words, month : months},
   						contentType: "application/x-www-form-urlencoded; charset=UTF-8",
   						success : function(data){
   							console.log(data)
   							$('#ipt_본인나이').text(data)
   							
   						},
   						error : function(e) { console.log('error : ' + e.status); }
   					});
   				}
   			});
   		}
   		
   		function searchajax2(){
   			$("#wq_uuid_361").keyup(function() {
   				var words = $("#ipt_배우자생년").val();
   				var months = $("#ipt_배우자생월").val();
   				if( words != '' && months != ''){
   					$.ajax({
   						type : 'POST',
   						url : '${ pageContext.request.contextPath }/retire/ageCheck',
   						data : { word : words, month : months},
   						contentType: "application/x-www-form-urlencoded; charset=UTF-8",
   						success : function(data){
   							console.log(data)
   							$('#ipt_배우자나이').text(data)
   							
   						},
   						error : function(e) { console.log('error : ' + e.status); }
   					});
   				}
   			});
   		}
   </script>
</body>
</html>