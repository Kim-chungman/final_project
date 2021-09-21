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
   <div id="any_wrap" class="w2group">
      <div id="any_container" class="w2group ">
         <div id="any_contents" class="w2group ">
            <div id="wq_uuid_180" class="w2group pageWrap">
               <div id="wq_uuid_181" class="w2group pageCon pt0">
                  <div id="swh_step" class="w2Switch ">
                     <div id="case11"
                        style="left: 0px; z-index: 110; visibility: visible; display: block;"
                        class="w2group w2switch_case  " aria-hidden="false">
                        <div id="wq_uuid_184" class="w2wframe ">
                           <div id="wq_uuid_186" class="w2group fix_pb">
                              <div id="wq_uuid_187" class="w2group tabTy01 multi mb0">
                                 <ul id="wq_uuid_188" class="w2group item3">
                                    <li id="wq_uuid_189" class="w2group on" data-load="load"><a
                                       id="wq_uuid_190" class="w2group "
                                       href="" title="선택됨"><span
                                          id="wq_uuid_191" class="w2span ">은퇴준비<br>자가진단
                                       </span></a></li>
                                    <li id="wq_uuid_192" class="w2group " data-load="load"><a
                                       id="wq_uuid_193" class="w2group "
                                       href=""
                                       title=""><span id="wq_uuid_194" class="w2span ">미래설계<br>상품
                                       </span></a></li>
                                    <li id="wq_uuid_195" class="w2group " data-load="load"><a
                                       id="wq_uuid_196" class="w2group "
                                       href=""
                                       title=""><span id="wq_uuid_197" class="w2span ">은퇴상담<br>신청
                                       </span></a></li>
                                 </ul>
                              </div>
                              <div id="wq_uuid_198" class="w2group contbox bb1_gray">
                                 <div id="wq_uuid_199" class="w2group step_wrap">
                                    <div id="wq_uuid_200" class="w2group pt9bd"></div>
                                    <ul id="wq_uuid_201" class="w2group step4">
                                       <li id="wq_uuid_202" class="w2group on"><span
                                          id="wq_uuid_203" class="w2span ">1</span>
                                       <p id="wq_uuid_204" class="w2textbox ">기본정보</p></li>
                                       <li id="wq_uuid_205" class="w2group "><span
                                          id="wq_uuid_206" class="w2span ">2</span>
                                       <p id="wq_uuid_207" class="w2textbox ">은퇴목표</p></li>
                                       <li id="wq_uuid_208" class="w2group "><span
                                          id="wq_uuid_209" class="w2span ">3</span>
                                       <p id="wq_uuid_210" class="w2textbox ">은퇴준비자금</p></li>
                                       <li id="wq_uuid_211" class="w2group "><span
                                          id="wq_uuid_212" class="w2span ">4</span>
                                       <p id="wq_uuid_213" class="w2textbox ">은퇴준비결과</p></li>
                                    </ul>
                                 </div>
                              </div>
                              <div id="wq_uuid_214" class="w2group bluebox tac fc333 mt0">
                                 <div id="wq_uuid_215" class="w2textbox fontTy18"><strong style="font-size: 17pt; color: #008B8B;">Hana Solution</strong> 은퇴설계 서비스</div>
                                 <div id="wq_uuid_216" class="w2textbox fontTy15 mt10 fwn">은퇴설계 서비스에
                                    오신 것을 환영합니다.</div>
                              </div>
                              <div id="wq_uuid_217" class="w2group contbox pt20 ">
                                 <h2 id="wq_uuid_218" class="w2textbox titH02 fs15 b">필요/준비자금</h2>
                                 <div id="wq_uuid_219" class="w2group listDot mt10">
                                    <ul id="wq_uuid_220" class="w2group ">
                                       <li id="wq_uuid_221" class="w2textbox colorTyGray01">은퇴준비
                                          자가진단은 고객님께서 입력하시는 정보를 바탕으로 미래에 대한 가정과 예상치를 통해 산출된 것입니다.</li>
                                       <li id="wq_uuid_222" class="w2textbox colorTyGray01">개별적인
                                          상황과 가정이 변경되는 경우 그 결과가 달라질 수 있습니다.</li>
                                       <li id="wq_uuid_223" class="w2textbox colorTyGray01">더불어
                                          고객님의 판단을 돕는 참고자료로만 활용하시기 바라며 Hana Solution은 이에 대한 어떠한 법적 책임도 없음을
                                          알려드립니다.</li>
                                       <li id="wq_uuid_224" class="w2textbox colorTyGray01">고객님께서는
                                          입력하시는 모든 정보는 본 시뮬레이션 이외에는 다른 어떤 목적으로도 사용되지 않습니다.</li>
                                       <li id="wq_uuid_225" class="w2textbox colorTyGray01">처음
                                          설계를 하시는 경우 ‘생활비 등‘ 값이 통계를 참고하여 기본값으로 제공되어 있으며, 본인의 상황에 맞게
                                          수정하실 수 있습니다.</li>
                                    </ul>
                                 </div>
                                 <div id="wq_uuid_226" class="w2group bluebox mt30">
                                    <div id="wq_uuid_227" class="w2textbox fontTy14 fc555">*
                                       은퇴준비 자가진단은 고객 스스로 본인의 은퇴준비 정도를 파악할 수 있도록 점검해보고, 본인이 선택한
                                       지역에서 상담을 받을 수 있도록 연결해드리는 것입니다.</div>
                                 </div>
                              </div>
                              <div id="wq_uuid_228" class="w2group btnAreaBot btnFix item1" style="width: 50%; margin-left: 400px; margin-bottom: 100px;">
                                 <a id="btn_자가진단시작하기" class="w2anchor2 btnTyBlue02 big"
                                    href="${ pageContext.request.contextPath }/retire/retireForm" style="background-color: #008B8B;">자가진단 시작하기</a>
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