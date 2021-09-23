<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html class="ui-set-accessibility">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
				

	<title>Hana Solution - 연령별 목표설계</title>
	<link rel="shortcut icon" type="image/x-icon" href="${ pageContext.request.contextPath }/resources/images/favicon.png" />
        <!-- [favicon] begin -->
        <link rel="shortcut icon" type="image/x-icon" href="${ pageContext.request.contextPath }/resources/images/favicon.png" />
        <link rel="icon" type="image/x-icon" href="${ pageContext.request.contextPath }/resources/images/favicon.png" />
        <!-- Touch icons more info: http://mathiasbynens.be/notes/touch-icons -->
        <!-- For iPad3 with retina display: -->
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="${ pageContext.request.contextPath }/resources/apple-touch-icon-144x.png" />
        <!-- For first- and second-generation iPad: -->
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="${ pageContext.request.contextPath }/resources/apple-touch-icon-114x.png" />
        <!-- For first- and second-generation iPad: -->
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="${ pageContext.request.contextPath }/resources/apple-touch-icon-72x.png" />
        <!-- For non-Retina iPhone, iPod Touch, and Android 2.1+ devices: -->
        <link rel="apple-touch-icon-precomposed" href="${ pageContext.request.contextPath }/resources/apple-touch-icon-57x.png" />
        <!-- [favicon] end -->
        
        <!-- CSSs -->
        <link rel="stylesheet" type="text/css" media="all" href="${ pageContext.request.contextPath }/resources/css/reset.css" /> <!-- RESET STYLESHEET -->
        <link rel="stylesheet" type="text/css" media="all" href="${ pageContext.request.contextPath }/resources/style.css" /> <!-- MAIN THEME STYLESHEET -->
        <link rel="stylesheet" id="max-width-1024-css" href="${ pageContext.request.contextPath }/resources/css/max-width-1024.css" type="text/css" media="screen and (max-width: 1240px)" />
        <link rel="stylesheet" id="max-width-768-css" href="${ pageContext.request.contextPath }/resources/css/max-width-768.css" type="text/css" media="screen and (max-width: 987px)" />
        <link rel="stylesheet" id="max-width-480-css" href="${ pageContext.request.contextPath }/resources/css/max-width-480.css" type="text/css" media="screen and (max-width: 480px)" />
        <link rel="stylesheet" id="max-width-320-css" href="${ pageContext.request.contextPath }/resources/css/max-width-320.css" type="text/css" media="screen and (max-width: 320px)" />
        
        <!-- CSSs Plugin -->
        <link rel="stylesheet" id="thickbox-css" href="${ pageContext.request.contextPath }/resources/css/thickbox.css" type="text/css" media="all" />
        <link rel="stylesheet" id="styles-minified-css" href="${ pageContext.request.contextPath }/resources/css/style-minifield.css" type="text/css" media="all" />
        <link rel="stylesheet" id="buttons" href="${ pageContext.request.contextPath }/resources/css/buttons.css" type="text/css" media="all" />
        <link rel="stylesheet" id="cache-custom-css" href="${ pageContext.request.contextPath }/resources/css/cache-custom.css" type="text/css" media="all" />
        <link rel="stylesheet" id="custom-css" href="${ pageContext.request.contextPath }/resources/css/custom.css" type="text/css" media="all" />
	    
        <!-- FONTs -->
        <link rel="stylesheet" id="google-fonts-css" href="http://fonts.googleapis.com/css?family=Oswald%7CDroid+Sans%7CPlayfair+Display%7COpen+Sans+Condensed%3A300%7CRokkitt%7CShadows+Into+Light%7CAbel%7CDamion%7CMontez&amp;ver=3.4.2" type="text/css" media="all" />
        <link rel='stylesheet' href='${ pageContext.request.contextPath }/resources/css/font-awesome.css' type='text/css' media='all' />
        
        <!-- JAVASCRIPTs -->
        <script type="text/javascript" src="${ pageContext.request.contextPath }/resources/js/jquery.js"></script>
        <script type="text/javascript" src="${ pageContext.request.contextPath }/resources/js/comment-reply.js"></script>
        <script type="text/javascript" src="${ pageContext.request.contextPath }/resources/js/jquery.quicksand.js"></script>
        <script type="text/javascript" src="${ pageContext.request.contextPath }/resources/js/jquery.tipsy.js"></script>
        <script type="text/javascript" src="${ pageContext.request.contextPath }/resources/js/jquery.prettyPhoto.js"></script>
        <script type="text/javascript" src="${ pageContext.request.contextPath }/resources/js/jquery.cycle.min.js"></script>
        <script type="text/javascript" src="${ pageContext.request.contextPath }/resources/js/jquery.anythingslider.js"></script>
        <script type="text/javascript" src="${ pageContext.request.contextPath }/resources/js/jquery.eislideshow.js"></script>
        <script type="text/javascript" src="${ pageContext.request.contextPath }/resources/js/jquery.easing.js"></script>
        <script type="text/javascript" src="${ pageContext.request.contextPath }/resources/js/jquery.flexslider-min.js"></script>
        <script type="text/javascript" src="${ pageContext.request.contextPath }/resources/js/jquery.aw-showcase.js"></script>
        <script type="text/javascript" src="${ pageContext.request.contextPath }/resources/js/layerslider.kreaturamedia.jquery-min.js"></script>
        <script type="text/javascript" src="${ pageContext.request.contextPath }/resources/js/shortcodes.js"></script>
		<script type="text/javascript" src="${ pageContext.request.contextPath }/resources/js/jquery.colorbox-min.js"></script>
		<script type="text/javascript" src="${ pageContext.request.contextPath }/resources/js/jquery.tweetable.js"></script>
		<script type="text/javascript" src="https://www.google.com/jsapi"></script>
		<script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
		
		<!-- modal -->
        <script src="https://code.jquery.com/jquery-latest.js"></script>
        
        <script type="text/javascript">
		
        var modal = {
 		  open : function(){
 		    $('#myModal').show();
 		  },
 		  close : function(){
 		    $('#myModal').hide();    
 		  }
 		};
        
 		$(document).on('click', '.modal-content', function(){
 		  window.history.back();   
 		}).on('click', '#joinBtn', function(){
 		  window.history.pushState({}, 'modal', '/modal');
 		  modal.open();
 		});

 		window.onpopstate = history.onpushstate = function(e) {
 		    if(window.location.href.split('/').pop().indexOf('modal')===-1){ // 마지막 segment가 cards라면 모달이 아닌 리스트인 상태이어야한다.
 		    	modal.close(); // 현재의 모달을 닫는다.
 		    }
 		}

		</script>

		<style type="text/css">
			.modal {
	            display: none;
	            position: fixed;
	            z-index: 1;
	            left: 0;
	            top: 0;
	            width: 100%;
	            height: 100%;
	            overflow: auto;
	            background-color: rgb(0,0,0);
	            background-color: rgba(0,0,0,0.4);
	        }
	    
	        /* Modal Content/Box */
	        .modal-content {
	            background-color: #fefefe;
	            margin: 15% auto;
	            padding: 20px;
	            border: 1px solid #888;
	            width: 30%;                         
	        }
		</style>
		
		<style type="text/css">
		
		.manageMenu:hover {
    		color: #008B8B; 
	   	}
	   	
	   	#manageNav{
	   		width: 10%;
	   		position: relative;
	   		margin-left: 17%;
	   		float: left;
	   	}
	   	
	   	#manageSec{
	   		width: 55%;
	   		position: relative;
	   		float: left;
	   	}
		
		</style>
		<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/plan/ow.css" type="text/css">

</head> 

<body>
	<header>
		<jsp:include page="/WEB-INF/include/header.jsp" />
	</header>
	<nav id="manageNav">
		<!-- START SIDEBAR -->
		<div class="inner group" style="width: 400px;">
	        <div class="sidebar group" style="width: 100%;">
	            
	            <div class="widget-first widget recent-posts" style="width: 100%;">
	                <h3 style="color: #008B8B; font-size: 15pt; padding-top: 30px;">목표설계</h3>
	                <hr style="border-color: #008B8B; width: 30%; float: left;">
	                <div class="recent-post group">
	                    <div class="hentry-post group">
	                        <a href="${ pageContext.request.contextPath }/plan/expense" title="재무설계" class="manageMenu" style="color: #008B8B; font-size: 11pt;">연령별 맞춤설계</a>
	                    </div>
	                    <div class="hentry-post group">
	                        <a href="#" title="재무설계" class="manageMenu" style="font-size: 11pt;">목표재무설계</a>
	                    </div>
	                    <div class="hentry-post group">
	                        <a href="${ pageContext.request.contextPath }/assetManagement/investmentForm" title="재무설계" class="manageMenu" style="font-size: 11pt;">fun한 재무설계</a>
	                    </div>
	                </div>
	            </div>
	            
	        </div>
	     </div>
	     <!-- END SIDEBAR -->
	</nav>

<section id="manageSec">

<div class="owm-con">
<div class="owm-tit-area">
    <h2 style="margin: 0px; padding-left: 50px;">연령별재무설계</h2>
    <hr style="border-color: #008B8B; border-width: 1px; width: 20%; text-align: center;">
</div>
<ol class="owm-fin-tab2 clearfix" style="margin-top: 17px; background-color: #F7F9FC; vertical-align: middle; padding-top: 50px;">
    <li style="list-style: none; margin-left: 100px;">
        <a href="${ pageContext.request.contextPath }/design2030" style="color: #008B8B; font-size: 14pt;">
            <strong style="color: #008B8B; font-size: 35pt;">2030’s</strong>
            <br>
            <span style="font-size: 12pt;">사회초년기·자산형성기</span>
        </a>
    </li>
    <li style="list-style: none; margin-left: 20px;">
        <a href="${ pageContext.request.contextPath }/design3040" style="font-size: 14pt;">
            <strong>3040’s</strong><br><span style="font-size: 12pt;">가족형성기·자산증식기</span>
        </a>
    </li>
    <li style="list-style: none; margin-left: 20px;">
        <a href="${ pageContext.request.contextPath }/design4050" style="font-size: 14pt;">
            <strong>4050’s</strong><br><span style="font-size: 12pt;">노후준비기·자산보존기</span>
        </a>
    </li>
    <li style="list-style: none; margin-left: 20px;">
        <a href="${ pageContext.request.contextPath }/design5060" style="font-size: 14pt;">
            <strong>5060’s</strong><br><span style="font-size: 12pt;">청춘100세·제2의 인생</span>
        </a>
    </li>
</ol>

    <div class="owm-fin-con">
        <h3 class="hidden" style="padding-top: 5px;">2030's 사회초년기 : 자산형성기</h3>
        <dl class="f-con1">
            <dt>재테크의 기본은 지출관리!</dt>
            <dd style="font-size: 11pt;">용돈통장, 급여통장, 생활비통장 등 통장을 분리하여 <br>목적별로 관리하고 주거래은행을 만들자!</dd>
            <dd class="btn_fin1">
                <a href="#"><img alt="은퇴설계" src="${ pageContext.request.contextPath }/resources/plan/btn1.png"></a>
                <a href="#"><img alt="결혼자금 설계" src="${ pageContext.request.contextPath }/resources/plan/btn2.png"></a>
                <a href="#"><img alt="교육자금 설계" src="${ pageContext.request.contextPath }/resources/plan/btn3.png"></a>
                <a href="#"><img alt="주택자금 설계" src="${ pageContext.request.contextPath }/resources/plan/btn4.png"></a>
            </dd>
        </dl>
        <div class="f-con2 clearfix">
            <div class="fleft" style="position: relative; float: left; width: 33%;">
                <h4>2030's 재무목표</h4>
                <div class="img"><img src="${ pageContext.request.contextPath }/resources/plan/img_f2030_1.gif" alt="학자금 마련, 재테크 관심, 자동차 구입, 결혼비용 마련, 전세자금 마련"></div>
            </div>
            <div class="fleft fin_txt" style="position: relative; float: left; width: 30%;">
                <div>
                    <strong class="tit_copy">더 넓은 세상을 향한 준비, <br>적정한 목표를 세워 실천하자!</strong>
                    <span style="font-size: 10pt;">대학에 입학하고 어학연수를 떠나고, <br>더 넓은 세상을 준비하는 20대, <br>사회생활을 시작하는 사회초년생!<br>첫 월급을 받기 시작하는 순간부터 재테크 습관을<br>
                    생활화 해 보세요.<br>전세자금, 결혼자금 등 구체적인 금액과 기간을<br>목표로 정한 후 절약과 저축을 생활화하면<br>올바른 소비습관이 형성됩니다.</span>
                </div>
            </div>
            <div class="fleft" style="position: relative; float: left; width: 33%; margin-bottom: 20px;">
                <h4>자산배분비율</h4>
                <div class="graph"><img src="${ pageContext.request.contextPath }/resources/plan/graph_f2030.gif" alt="비상금 10%, 노후자금 10% , 주택자금 30%, 결혼자금 50%"></div>
            </div>
        </div>
        <div class="owm-infobox mt40" style="clear: both; text-align: left; margin-bottom: 20px;">
            <dl>
                <dt class="hidden" style="font-size: 12pt;">안내</dt>
                <dd style="font-size: 12pt;">우선순위가 높은 단기목표에 집중하여 적금을 기본으로 저축하고 적립식 펀드는 중장기적인 목적자금 마련을 목표로 활용하세요. <br>내집마련 준비를 위한 청약통장, 위험대비를 위한 보장성보험, 소득공제 상품으로 절세와 균형을 맞춰보세요.</dd>
            </dl>
        </div>
        <div class="owm-table2 mt50 pb80">
            <table border="1" summary="용돈, 급여, 모임, 목돈만들기, 절세상품, 세테크, 추천서비스 제공 등 상품 목록을 확인하실 수 있습니다."> 
                <caption style="font-size: 15pt; text-align: center;"><strong style="color: #4F76A3;">상품 목록</strong></caption>
                <colgroup><col width="20%"><col></colgroup>
                <tbody>
                    <tr>
                        <th class="txt-c" scope="row" style="text-align: center;">
                            <div class="img"><img src="${ pageContext.request.contextPath }/resources/plan/ico_f2030_1.gif" alt=""></div>
                            용돈, 급여, 모임
                        </th>
                        <td>
                            <ul class="product_list">
                                <li style="margin-left: 10px;">
                                    <dl>
                                        <dt>영하나플러스 통장</dt>
                                        <dd>젊은 그대, 당신을 위한 Must Have 통장 <br>다양한 수수료 우대서비스를 제공하는 YOUTH고객 전용통장!!</dd>
                                        <dd class="btn"><a class="owm-btn-s bl" id="joinBtn" style="background-color: #008B8B; border: none;">가입하기</a></dd>
                                    </dl>
                                </li>
                                <li style="margin-left: 10px;">
                                    <dl>
                                        <dt>주거래하나 통장</dt>
                                        <dd>이체거래 하나면 된다!  <br>카드대금, 공과금 등 매월 간단한 이체거래로 수수료면제서비스가 제공되는 우리집 생활비 통장!</dd>
                                        <dd class="btn"><a href="#" class="owm-btn-s bl" style="background-color: #008B8B; border: none;">가입하기</a></dd>
                                    </dl>
                                </li>
                                <li style="margin-left: 10px;">
                                    <dl>
                                        <dt>모임통장</dt>
                                        <dd>더 이상 손으로 회비를 관리하지 마세요. <br>인터넷 뱅킹을 통한 회비관리, 회원관리, 일정관리, 알림서비스등의 간편한 모임관리 서비스!</dd>
                                        <dd class="btn"><a href="#" class="owm-btn-s bl" style="background-color: #008B8B; border: none;">가입하기</a></dd>
                                    </dl>
                                </li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <th class="txt-c" scope="row" style="text-align: center;">
                            <div class="img"><img src="${ pageContext.request.contextPath }/resources/plan/ico_f2030_2.gif" alt=""></div>
                            목돈만들기
                        </th>
                        <td>
                            <ul class="product_list">
                                <li style="margin-left: 10px;">
                                    <dl>
                                        <dt>급여하나 월복리 적금</dt>
                                        <dd>급여 하나로 우대금리 OK!  <br>월복리로 이자에 이자가 OK!</dd>
                                        <dd class="btn"><a href="#" class="owm-btn-s bl" style="background-color: #008B8B; border: none;">가입하기</a></dd>
                                    </dl>
                                </li>
                                <li style="margin-left: 10px;">
                                    <dl>
                                        <dt>하나의 여행 적금</dt>
                                        <dd>기다리던 여행, 하나의 여행 적금으로 떠나보세요!<br>여행사 혜택도 받고, 여행 다녀오면 우대금리까지!</dd>
                                        <dd class="btn"><a href="#" class="owm-btn-s bl" style="background-color: #008B8B; border: none;">가입하기</a></dd>
                                    </dl>
                                </li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <th class="txt-c" scope="row" style="text-align: center;">
                            <div class="img"><img src="${ pageContext.request.contextPath }/resources/plan/ico_f2030_3.gif" alt=""></div>
                            절세상품
                        </th>
                        <td>
                            <ul class="product_list">
                                <li style="margin-left: 10px;">
                                    <dl>
                                        <dt>주택청약종합저축</dt>
                                        <dd>주택마련의 시작! 국민, 민영주택 분양 우선권이 주어지는 주택청약종합상품</dd>
                                        <dd class="btn"><a href="#" class="owm-btn-s bl" style="background-color: #008B8B; border: none;">가입하기</a></dd>
                                    </dl>
                                </li>
                                <li style="margin-left: 10px;">
                                    <dl>
                                        <dt>【일임형】개인종합자산관리계좌(ISA)</dt>
                                        <dd>예금,펀드 등 다양한 금융상품을 담아 통합 관리할 수 있는 계좌로 <br>
				                                            일정기간 동안 상품 운용 결과로 계좌 내 발생하는 이익·손실 간 통산 후 <br>
				                                            순이익에 세제혜택이 부여되는 절세종합통장입니다.
				                        </dd>
                                        <dd class="btn"><a href="#" class="owm-btn-s bl" style="background-color: #008B8B; border: none;">가입하기</a></dd>
                                    </dl>
                                </li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <th class="txt-c" scope="row" style="text-align: center;">
                            <div class="img"><img src="${ pageContext.request.contextPath }/resources/plan/ico_f2030_4.gif" alt=""></div>
                            세테크
                        </th>
                        <td>
                            <ul class="product_list">
                                <li style="margin-left: 10px;">
                                    <dl>
                                        <dt>연금저축펀드</dt>
                                        <dd>노후생활 준비와 세액공제 혜택을 동시에!!</dd>
                                        <dd class="btn">
                                        <a href="#" class="owm-btn-s bl" style="background-color: #008B8B; border: none;">상품보기</a>
                                        </dd>
                                    </dl>
                                </li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <th class="txt-c" scope="row" style="text-align: center;">
                            <div class="img"><img src="${ pageContext.request.contextPath }/resources/plan/ico_f2030_5.gif" alt=""></div>
                            추천서비스
                        </th>
                        <td>
                            <ul class="product_list">
                                <li style="margin-left: 10px;">
                                    <dl>
                                        <dt>재무설계</dt>
                                        <dd>교육자금, 주택자금, 결혼자금 설계로 더 나은 미래를 미리 준비해 보세요.</dd>
                                        <dd class="btn"><a href="#" class="owm-btn-s bl" style="background-color: #008B8B; border: none;">서비스보기</a></dd>
                                    </dl>
                                </li>
                                <li style="margin-left: 10px;">
                                    <dl>
                                        <dt>은퇴설계</dt>
                                        <dd>고객님의 100세 시대 은퇴 설계 가이드를 해드리기 위한 <br>Hana Solution 자산관리 서비스입니다.</dd>
                                        <dd class="btn"><a href="#" class="owm-btn-s bl" style="background-color: #008B8B; border: none;">서비스보기</a></dd>
                                    </dl>
                                </li>
                            </ul>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>

	<!-- The Modal -->
    <div id="myModal" class="modal">
 
      <!-- Modal content -->
      <div class="modal-content" style="border-color: #008B8B; border-width: 3px; width: 700px;">
               <p style="text-align: center;"><span style="font-size: 14pt;"><b><span style="font-size: 15pt; color: #008B8B;">상품상세설명</span></b></span></p>
               <hr style="border-color: #008B8B; border-width: 1px;">
               <p style="text-align: left; font-size: 23pt;">영하나플러스통장</p>
               <p style="text-align: left; font-size: 15pt;">젊은 그대, 당신을 위한 Must Have 통장</p>
            <br><br>
            <table style="width: 97%;">
            	<tr style="background-color: white; border: none;">
            		<th style="vertical-align: top; font-size: 11pt;">상품특징</th>
            		<td style="font-size: 11pt;">다양한 수수료 우대서비스를 제공하는 YOUTH고객 전용통장</td>
            	</tr>
            	<tr style="background-color: white; border: none;">
            		<th style="vertical-align: top; font-size: 11pt;">가입대상</th>
            		<td style="font-size: 11pt;">만 30세 이하 실명의 개인 및 개인사업자 (1인 1계좌)</td>
            	</tr>
            	<tr style="background-color: white; border: none;">
            		<th style="vertical-align: top; font-size: 11pt;">예금종류</th>
            		<td style="font-size: 11pt;">저축예금</td>
            	</tr>
            	<tr style="background-color: white; border: none;">
            		<th style="vertical-align: top; font-size: 11pt;">전환여부</th>
            		<td style="font-size: 11pt;">
            			① 저축예금에 한하여 동 상품으로 전환가능<br>
            			(단, 기존 수수료면제통장에서 전환 시 수수료면제횟수는 해당월은 기존 상품의 잔여횟수를 적용하고, 다음달부터는 동 상품의 실적에 따라 수수료면제혜택 제공)<br>
            			② 상품가입(전환) 후, 만 35세가 되는 시점의 익월 첫 영업일에 [주거래하나통장]으로 자동 전환됨.<br>
            			(단, [주거래하나통장]을 보유하고 있는 경우에는 [저축예금]으로 자동전환 됨. 전환이후에는 전환된 상품의
            			우대서비스 및 혜택만 제공)
            		</td>
            	</tr>
            	<tr style="background-color: white; border: none;">
            		<th style="vertical-align: top; font-size: 11pt;">금리</th>
            		<td style="font-size: 11pt;">
            			<strong>영하나플러스 통장</strong><strong style="padding-left: 300px;">기준일자: 2021-09-08</strong><br>
            			<table style="border-left: none; border-right: none; width: 95%;">
            				<tr>
            					<th style="font-size: 11pt;"><strong>분류</strong></th>
            					<th style="font-size: 11pt;"><strong>금리(연율,세전)</strong></th>
            				</tr>
            				<tr style="background-color: white;">
            					<td style="text-align: center; font-size: 11pt;">-</td>
            					<td style="text-align: center; font-size: 11pt;">0.1%</td>
            				</tr>
            			</table>
            		</td>
            	</tr>
            	<tr style="background-color: white; border: none;">
            		<th style="vertical-align: top; font-size: 11pt;">수수료 우대</th>
            		<td style="font-size: 11pt;">
            			아래의 서비스 제공 조건 중 1가지 이상을 해당월에 충족한 경우, 충족월 다음달(익월 1일부터 말일까지)에 수수료<br>
            			우대서비스를 제공<br><br>
            			<strong>서비스 제공 조건</strong><br>
            			① 본인명의 하나카드(신용/체크)의 대금을 이 통장에서 결제 시<br>
            			② 타인으로부터 월 건당 10만원 이상 입금 시<br><br>
            			<strong>수수료 우대</strong><br>
            			① 당행 자동화기기를 통한 현금인출 수수료 무제한 면제<br>
            			② 당행 자동화기기를 통한 타행이체 수수료 무제한 면제<br>
            			③ 인터넷뱅킹, 스마트폰뱅킹, 폰뱅킹(ARS)을 통한 타행 이체 수수료 무제한 면제<br>
            			④ 납부자자동이체 수수료 무제한 면제<br>
            			⑤ 타행 자동화기기를 통한 현금 인출 수수료 월5회 면제<br><br>
            			※ 이 통장을 신규 후 다음달 말일까지는 제공조건 충족여부와 관계없이 수수료 우대서비스 제공<br>
            			※ 이 통장을 통한 거래에서 발생하는 수수료에 한하여 제공됨
            		</td>
            	</tr>
            	<tr style="background-color: white; border: none;">
            		<th style="vertical-align: top; font-size: 11pt;">세제혜택</th>
            		<td style="font-size: 11pt;">비과세종합저축 가능 (전 금융기관 통합한도 범위 내)</td>
            	</tr>
            	<tr style="background-color: white; border: none;">
            		<th style="vertical-align: top; font-size: 11pt;">유의사항</th>
            		<td style="font-size: 11pt;">
            			· 수수료 우대서비스는 이 통장에 의한 거래에만 적용되며, 매월 요건 충족여부를 확인하여 다음월에 수수료
            			　우대서비스를 제공합니다.<br>
            			· 우대서비스 내용은 은행의 사정에 의해 변경될 수 있습니다. 동 내용 변경 시 변경사유, 변경내용 등 내용을
            			　영업점 및 당행 인터넷 홈페이지에 1개월간 게시합니다.<br><br>
            		</td>
            	</tr>
            	<tr style="background-color: white; border: none;">
            		<th style="vertical-align: top; width: 15%; font-size: 11pt;">예금자 보호</th>
            		<td>
            			<img style="position:relative; float: left;" alt="보호인증마크" src="${ pageContext.request.contextPath }/resources/images/account/productMark.png">
            			<span style="position:relative; float: left; width: 80%; font-size: 11pt;">이 예금은 예금자보호법에 따라 예금보험공사가 보호하되, 보호한도는 본 은행에 있는 귀하의 모든 예금보호대상 금융상품의 원금과 소정의 이자를 합하여 1인당 “최고 5천만원”이며, 5천만원을 초과하는 나머지 금액은 보호하지 않습니다.</span>
            		</td>
            	</tr>
            </table>
            <br>
            <div style="background-color:white;text-align: center;padding-bottom: 10px;padding-top: 10px; width: 200px; margin-left: 500px;">
            	<a href="${ pageContext.request.contextPath }/account/join">
            		<button style="font-size: 13pt; border: none; width: 100px; background-color: #008B8B; line-height: 25px; border-radius: 80px; color: white;">
            			가입하기
            		</button>
            	</a>
            	<span class="pop_bt" style="font-size: 13pt; border-color: #008B8B; background-color: white; line-height: 25px; color: red; float: right;" onClick="close_pop();">
                     닫기
                </span> 
            </div>
                      
      </div>
    </div>
       <!--End Modal-->
	</section>
	<footer style="clear: both;">
		<jsp:include page="/WEB-INF/include/footer.jsp" />
	</footer>
</body>
</html>