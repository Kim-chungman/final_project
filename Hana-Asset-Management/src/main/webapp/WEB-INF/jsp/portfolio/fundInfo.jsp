<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.2, user-scalable=yes" />
<title>Hana Solution - 펀드가입</title>
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
		
		<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/plan/common_section.css" type="text/css">
		<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/plan/ps.css" type="text/css">
			
		
		<script type="text/javascript" src="https://www.google.com/jsapi"></script>
		<script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>

</script>

<style>
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
   	
   	#tdNum {
	text-align: center;
	font-size: 12pt;
	font-family: 'inherit';
	border-bottom: solid;
	border-bottom-width: 2px;
	background-color: white;
	}
	

</style>
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
	                <h3 style="color: #008B8B; font-size: 15pt;">재무설계</h3>
	                <hr style="border-color: #008B8B; width: 30%; float: left;">
	                <div class="recent-post group">
	                    <div class="hentry-post group">
	                    	<a href="${ pageContext.request.contextPath }/assetManagement/explain" title="재무설계" class="manageMenu" style="font-size: 11pt;">재무설계란?</a>
	                    </div>
	                    <div class="hentry-post group">
	                        <a href="${ pageContext.request.contextPath }/assetManagement/investmentForm" title="재무설계" class="manageMenu" style="font-size: 11pt;">투자성향확인</a>
	                    </div>
	                    <div class="hentry-post group">
	                        <a href="${ pageContext.request.contextPath }/plan/expense" title="재무설계" class="manageMenu" style="font-size: 11pt;">소비지출분석</a>
	                    </div>
	                    <div class="hentry-post group">
	                        <a href="#" title="재무설계" class="manageMenu" style="font-size: 11pt;">재무상태분석</a>
	                    </div>
	                    <div class="hentry-post group">
	                        <a href="#" title="재무설계" class="manageMenu" style="font-size: 11pt;">연령별재무설계</a>
	                    </div>
	                    <div class="hentry-post group">
	                        <a href="#" title="재무설계" class="manageMenu" style="font-size: 11pt;">목표재무설계</a>
	                    </div>
	                    <div class="hentry-post group">
	                        <a href="#" title="재무설계" class="manageMenu" style="font-size: 11pt;">fun한재무설계</a>
	                    </div>
	                </div>
	            </div>
	            
	        </div>
	     </div>
	     <!-- END SIDEBAR -->
	</nav>
	<section id="manageSec">
		<!-- content -->
				<div id="content">

	<div class="title-area mt30">
		<h3 style="color: #008B8B;"><strong>정보입력</strong></h3>
	</div>

	<table class="tbl-type mb20 ui-set-tbl-type" border="1" style="width: 100%; margin-top: 40px;">
		<caption><span style="font-size: 13pt;"><strong>펀드 정보 요약</strong></span></caption>
		<colgroup>
			<col width="170">
			<col>
			<col width="170">
			<col>
		</colgroup>
		<tbody>
			<c:forEach items="${ planA }" var="list" varStatus="Loop">
			<tr>
				<th scope="row" style="font-size: 12pt; background-color: #E6EDF5;">펀드명</th>
				<td colspan="3" style="font-size: 12pt;">${ list.fund_name }</td>
			</tr>
			<tr>
				<th scope="row" style="font-size: 12pt; background-color: #E6EDF5;">펀드유형 및 형태</th>
				<td style="font-size: 12pt;">
				 
					채권형 / 개방형
				
				</td>
				<th scope="row" style="font-size: 12pt; background-color: #E6EDF5;">운용사</th>
				<td style="font-size: 12pt;">${ list.fund_company }</td>
			</tr>
			</c:forEach>
		</tbody>
	</table>

	<fieldset>
		<table class="tbl-type mb20 ui-set-tbl-type" border="1" style="width: 100%; margin-top: 40px;">
			<caption><span style="font-size: 13pt;"><strong>펀드 가입정보 입력 1</strong></span></caption>
			<colgroup>
				<col width="170">
				<col>
				<col width="170">
				<col>
			</colgroup>
			<tbody>		
				<tr>
					<th scope="row" style="font-size: 12pt; background-color: #E6EDF5;"><label for="txt01">매수금액<br>(신규가입금액)</label></th>
					<td colspan="3">
						<label for="TRN_AM" class="w170" style="font-size: 12pt;">총 신규금액</label> 
						<span style="font-size: 13pt; text-align: right; margin-left: 20pt;"><strong><fmt:formatNumber type="number" maxFractionDigits="0" value="${ portfolio.investmentMoney }" /></strong></span>
						<strong id="TRN_AM_KorAmt" style="font-size: 12pt;">원</strong>
						&nbsp;<span class="i-dsc" style="font-size: 12pt;">(1,000원 이상)</span>
													
					</td>
				</tr>
			
				<tr>
					<th scope="row" style="font-size: 12pt; background-color: #E6EDF5;"><label for="NEW_ACT_PWNO">신규계좌 비밀번호</label></th>
					<td>
						<input type="password" name="password" id="password1" style="border: none; font-size: 12pt; text-align: right; width: 96%; height: 40px;">
					</td> 
					<th scope="row" style="font-size: 12pt; background-color: #E6EDF5;"><label for="NEW_ACT_PWNO_check">비밀번호 재확인</label></th>
					<td> 
						<input type="password" name="password" id="password2" style="border: none; font-size: 12pt; text-align: right; width: 96%; height: 40px;">
					</td>
				</tr>

				<tr>
					<th scope="row" style="font-size: 12pt; background-color: #E6EDF5;">운용보고서 통보</th>
					<td colspan="3">
						<input type="radio" id="rd24" name="FNC_HIS_NTC_DIS" value="4"><label for="rd24" style="font-size: 12pt;">E-mail</label>
						<input type="radio" id="rd21" name="FNC_HIS_NTC_DIS" value="1"><label for="rd21" style="font-size: 12pt;">자택</label>
						<input type="radio" id="rd22" name="FNC_HIS_NTC_DIS" value="2"><label for="rd22" style="font-size: 12pt;">직장</label> 
						<input type="radio" id="rd25" name="FNC_HIS_NTC_DIS" value="3"><label for="rd25" style="font-size: 12pt;">미통보</label> 
					</td>
				</tr>
		
				<tr>
					<th scope="row" style="font-size: 12pt; background-color: #E6EDF5;">실질 투자수익률<br>보고서 통보</th>
					<td colspan="3">
						<input type="radio" id="ACBL_NTC_RQ_YN_1" name="ACBL_NTC_RQ_YN" value="1"><label for="ACBL_NTC_RQ_YN_1" style="font-size: 12pt;">E-mail</label> 
						<input type="radio" id="ACBL_NTC_RQ_YN_2" name="ACBL_NTC_RQ_YN" value="2"><label for="ACBL_NTC_RQ_YN_2" style="font-size: 12pt;">SMS</label>
						<input type="radio" id="ACBL_NTC_RQ_YN_3" name="ACBL_NTC_RQ_YN" value="3"><label for="ACBL_NTC_RQ_YN_3" style="font-size: 12pt;">미신청</label>
						<br><span class="i-dsc" style="font-size: 11pt; color: #F08080;">신청하시면 매월 말일 발송됩니다</span>
					</td>
				</tr>
				
			</tbody>
		</table>
	</fieldset>
	<fieldset>
		<table class="tbl-type ui-set-tbl-type" border="1" style="width: 100%; margin-top: 40px;">
			<caption><span style="font-size: 13pt;"><strong>펀드 가입정보 입력 2</strong></span></caption>
			<colgroup>
				<col width="170">
				<col>
				<col>
			</colgroup>
			<tbody>
			
				<tr>
					<th scope="rowgroup" rowspan="2" style="font-size: 12pt; background-color: #E6EDF5;">수익률 알림 <br> 문자서비스</th>
					<td colspan="2">
						<input type="radio" id="rd51" name="CHR_SRVC_RQ_DIS" value="1" onclick="SMScheck(&#39;1&#39;)"> <label for="rd51" style="font-size: 12pt;">고객지정</label> 
						<input type="radio" id="rd52" name="CHR_SRVC_RQ_DIS" value="2" onclick="SMScheck(&#39;2&#39;)"> <label for="rd52" style="font-size: 12pt;">은행지정</label>
						
						<input type="radio" id="rd53" name="CHR_SRVC_RQ_DIS" value="3" onclick="SMScheck(&#39;3&#39;)"> <label for="rd53" style="font-size: 12pt;">미신청</label>
						<br>
						<span class="i-dsc" style="font-size: 10pt; color: #F08080;">은행지정으로 신청하시면 목표수익률 5%, 허용손실률 -5% 도달시 발송됩니다. </span>
					</td>
				</tr>
				<tr>
					<td style="font-size: 12pt;">목표수익률   + 
						<input type="text" size="4" id="FND_SMS_RQ_TPRT_PSNB" name="FND_SMS_RQ_TPRT_PSNB" title="목표수익률 정수자리" maxlength="3" datatype="N" readonly="" mask="N" enc="off">
						. 
						<input type="text" size="4" id="FND_SMS_RQ_TPRT_DCML" name="FND_SMS_RQ_TPRT_DCML" title="소수자리" maxlength="2" datatype="N" readonly="" mask="N" enc="off">%
					</td>
					<td style="font-size: 12pt;">허용손실률   - 
						<input type="text" size="4" id="FND_SMS_RQ_LOSS_AWRT_PSNB" name="FND_SMS_RQ_LOSS_AWRT_PSNB" title="허용손실률 정수자리" maxlength="2" datatype="N" readonly="" mask="N" enc="off">
						. 
						<input type="text" size="4" id="FND_SMS_RQ_LOSS_AWRT_DCML" name="FND_SMS_RQ_LOSS_AWRT_DCML" title="소수자리" maxlength="2" datatype="N" readonly="" mask="N" enc="off">%
					</td>
				</tr>
							
				<tr>
					<th scope="row" style="font-size: 12pt; background-color: #E6EDF5;">정기수익률 알림<br>문자서비스</th>
					<td colspan="2">
						<input type="radio" id="FND_FP_PRFT_RT_SMS_CHR_RQ_DSCD_1" name="FND_FP_PRFT_RT_SMS_CHR_RQ_DSCD" value="1" onclick="RG_SMScheck(&#39;1&#39;)" checked="checked"> <label for="FND_FP_PRFT_RT_SMS_CHR_RQ_DSCD_1" style="font-size: 12pt;">매월</label> 
						<select id="FND_FP_PRFT_RT_SMS_CHR_RQ_DT_DSCD_1" name="FND_FP_PRFT_RT_SMS_CHR_RQ_DT_DSCD_1" title="sms지정일자1">
									<option value="00">선택</option>
							
									<option value="01">01일</option>
							
									<option value="02">02일</option>
							
									<option value="03">03일</option>
							
									<option value="04">04일</option>
							
									<option value="05">05일</option>
							
									<option value="06">06일</option>
							
									<option value="07">07일</option>
							
									<option value="08">08일</option>
							
									<option value="09">09일</option>
							
									<option value="10">10일</option>
							
									<option value="11">11일</option>
							
									<option value="12">12일</option>
							
									<option value="13">13일</option>
							
									<option value="14">14일</option>
							
									<option value="15">15일</option>
							
									<option value="16">16일</option>
							
									<option value="17">17일</option>
							
									<option value="18">18일</option>
							
									<option value="19">19일</option>
							
									<option value="20">20일</option>
							
									<option value="21">21일</option>
							
									<option value="22">22일</option>
							
									<option value="23">23일</option>
							
									<option value="24">24일</option>
							
									<option value="25">25일</option>
							
									<option value="26">26일</option>
							
									<option value="27">27일</option>
							
									<option value="28">28일</option>
							
									<option value="29">29일</option>
							
									<option value="30">30일</option>
							
									<option value="31">말일</option>
							
						 </select>

						<input type="radio" id="FND_FP_PRFT_RT_SMS_CHR_RQ_DSCD_2" name="FND_FP_PRFT_RT_SMS_CHR_RQ_DSCD" value="2" onclick="RG_SMScheck(&#39;2&#39;)" disabled="disabled"> <label for="FND_FP_PRFT_RT_SMS_CHR_RQ_DSCD_2" style="font-size: 12pt;">매분기말</label>
						<select id="FND_FP_PRFT_RT_SMS_CHR_RQ_DT_DSCD_2" name="FND_FP_PRFT_RT_SMS_CHR_RQ_DT_DSCD_2" title="sms지정일자2" disabled="disabled">
									<option value="00">선택</option>
							
									<option value="01">01일</option>
							
									<option value="02">02일</option>
							
									<option value="03">03일</option>
							
									<option value="04">04일</option>
							
									<option value="05">05일</option>
							
									<option value="06">06일</option>
							
									<option value="07">07일</option>
							
									<option value="08">08일</option>
							
									<option value="09">09일</option>
							
									<option value="10">10일</option>
							
									<option value="11">11일</option>
							
									<option value="12">12일</option>
							
									<option value="13">13일</option>
							
									<option value="14">14일</option>
							
									<option value="15">15일</option>
							
									<option value="16">16일</option>
							
									<option value="17">17일</option>
							
									<option value="18">18일</option>
							
									<option value="19">19일</option>
							
									<option value="20">20일</option>
							
									<option value="21">21일</option>
							
									<option value="22">22일</option>
							
									<option value="23">23일</option>
							
									<option value="24">24일</option>
							
									<option value="25">25일</option>
							
									<option value="26">26일</option>
							
									<option value="27">27일</option>
							
									<option value="28">28일</option>
							
									<option value="29">29일</option>
							
									<option value="30">30일</option>
							
									<option value="31">말일</option>
							
						 </select>
						
						<input type="radio" id="FND_FP_PRFT_RT_SMS_CHR_RQ_DSCD_3" name="FND_FP_PRFT_RT_SMS_CHR_RQ_DSCD" value="3" onclick="RG_SMScheck(&#39;3&#39;)" disabled="disabled"> <label for="FND_FP_PRFT_RT_SMS_CHR_RQ_DSCD_3" style="font-size: 12pt;">미신청</label>
					</td>
				</tr>
			</tbody>
		</table>
	</fieldset>
	<div class="notice-txt mb10">
		<ul>
			
			<li style="font-size: 10pt; color: #F08080;">계좌수익률이 목표수익률 또는 허용손실률을 벗어난 다음 영업일 오전에 휴대폰으로 문자 메시지를 발송하여 드립니다. (3배수까지 발송)</li>
			
		</ul>
	</div>		 
	

	<fieldset>
		<table class="tbl-type mb20 ui-set-tbl-type" border="1" style="width: 100%; margin-top: 40px;">
			<caption><span style="font-size: 13pt;"><strong>펀드 가입정보 입력 3</strong></span></caption>
			<colgroup>
				<col width="170">
				<col>
				<col width="170">
				<col>
			</colgroup>
			<tbody>
				
				<tr>
					<th scope="row" style="font-size: 12pt; background-color: #E6EDF5; width: 18%;">출금계좌선택</th>
					<td colspan="3">
						<input type="radio" id="WDR_DIS_1" name="WDR_DIS" value="WOORI" checked="checked"><label for="WDR_DIS_1" style="font-size: 12pt;">&nbsp;하나은행</label>
						<input type="radio" id="WDR_DIS_2" name="WDR_DIS" value="OPEN"><label for="WDR_DIS_2" style="font-size: 12pt;">&nbsp;다른기관</label>
					</td>
				</tr>
				<tr id="OPEN_WDR_LIST" class="dis-n">
					<th scope="row" style="font-size: 12pt; background-color: #E6EDF5;">출금계좌번호</th>
					<td colspan="3">
						<select id="OPEN_WDR_ACNO" name="OPEN_WDR_ACNO" class="select-number-account" title="오픈뱅킹출금계좌번호" disabled="disabled"><option value="">대상계좌가 없습니다.</option></select>
						<div class="notice-txt">
							<ul>
								<li>다른기관 계좌에서 출금하는 경우 <span class="font-c-b">연결계좌(우리은행 본인계좌)에 입금 후 출금되어 상품에 가입</span>됩니다.<span class="font-c-b">(입금 취소 불가 유의, 1일 출금가능 금액 최대 1천만원).</span></li>
								<li>다른기관 계좌에서 출금하는 경우 <span class="font-c-b">자동이체 계좌는 연결계좌로</span> 자동지정 됩니다.</li>
							</ul>
						</div>						
					</td>
				</tr>
				
				<tr>
					<th id="WDR_ACNO_TEXT" scope="row" style="font-size: 12pt; background-color: #E6EDF5;">출금계좌번호</th>
					<td colspan="3">
						
						<div id="div_WDR_ACT">
							<select id="WDR_ACT" name="WDR_ACT" colname="출금계좌번호" onchange="amtChg();" title="출금계좌번호">
								<option value="101013020036">영하나플러스통장(101013020036)</option>
							</select>
						</div>
					</td>
				</tr>
				<tr>
					<th scope="row" style="font-size: 12pt; background-color: #E6EDF5;"><label for="ACT_PWNO" id="ACT_PWNO_TXT">출금계좌비밀번호</label></th>
					<td colspan="3"> 
						<input type="password" style="border: none; font-size: 12pt; text-align: right; width: 29%; height: 40px;">	
					</td>
				</tr>
				
			</tbody>
		</table>
	</fieldset>
	  
	 
	<fieldset>	
		<table class="tbl-type ui-set-tbl-type" border="1" style="width: 100%; margin-top: 40px;">
			<caption><span style="font-size: 13pt;"><strong>펀드 가입정보 입력 4</strong></span></caption>
			<colgroup>
				<col width="170">
				<col>
				<col width="170">
				<col>
			</colgroup>
			<tbody>

				<tr>
					<th scope="row" style="font-size: 12pt; background-color: #E6EDF5;">자동이체여부</th>
					<td colspan="3">
						<input type="radio" id="rd61_1" name="AT_TS_RQ_YN" value="Y" onclick="getCheckControl(2)"> <label for="rd61_1" style="font-size: 12pt;">매월</label>	  
						<input type="radio" id="rd61_2" name="AT_TS_RQ_YN" value="2" onclick="getCheckControl(3)"> <label for="rd61_2" style="font-size: 12pt;">매주</label>	   
						<input type="radio" id="rd61_3" name="AT_TS_RQ_YN" value="3" onclick="getCheckControl(4)" style="display:none">    
						<input type="radio" id="rd62" name="AT_TS_RQ_YN" value="N" onclick="getCheckControl(1)"> <label for="rd62" style="font-size: 12pt;">아니오</label><br>	 
						<span class="i-dsc" id="_msg"><em style="color: #F08080;">자동이체여부를 신청하시면 자동이체만기통지서비스와 자동이체미처리통지서비스가 자동으로 선택됩니다.</em></span>
					</td>
				</tr>
				<tr>
					<th scope="row" style="font-size: 12pt; background-color: #E6EDF5;"><label for="ATS_RQ_AM">자동이체금액</label></th>
					<td style=" width: 30%;">
						<span style="font-size: 13pt; text-align: right; margin-left: 5pt;"><strong><fmt:formatNumber type="number" maxFractionDigits="0" value="${ portfolio.investmentMoney }" /></strong></span>
						<strong id="ATS_RQ_AM_KorAmt" style="font-size: 12pt;"> 원</strong>
	
					</td>
					<th scope="row" style="font-size: 12pt; background-color: #E6EDF5;"><label for="ATS_STA_DTY">자동이체 <span id="ATMN"> 기간</span></label></th>   
					<td style="font-size: 12pt;">
						<div id="dateRange1">
							
							시작일
								
									<select name="ATS_STA_DTY" id="ATS_STA_DTY"
										title="자동이체시작일-년" class="" style="margin-left: 5px;"
										onchange="calValidateAndSetVal(this, cld_param_ATS_STA_DT ); ">
										<option value="2012">2012</option>
										<option value="2013">2013</option>
										<option value="2014">2014</option>
										<option value="2015">2015</option>
										<option value="2016">2016</option>
										<option value="2017">2017</option>
										<option value="2018">2018</option>
										<option value="2019">2019</option>
										<option value="2020">2020</option>
										<option value="2021" selected="">2021</option>
										<option value="2022">2022</option>
										<option value="2023">2023</option>
										<option value="2024">2024</option>
										<option value="2025">2025</option>
										<option value="2026">2026</option>
										<option value="2027">2027</option>
										<option value="2028">2028</option>
										<option value="2029">2029</option>
										<option value="2030">2030</option>
									</select>년&nbsp;<select name="ATS_STA_DTM"
										id="ATS_STA_DTM" title="자동이체시작일-월" class="" style=""
										onchange="calValidateAndSetVal(this, cld_param_ATS_STA_DT ); ">
										<option value="01">01</option>
										<option value="02">02</option>
										<option value="03">03</option>
										<option value="04">04</option>
										<option value="05">05</option>
										<option value="06">06</option>
										<option value="07">07</option>
										<option value="08">08</option>
										<option value="09">09</option>
										<option value="10" selected="">10</option>
										<option value="11">11</option>
										<option value="12">12</option>
									</select>월&nbsp;<select name="ATS_STA_DTD"
										id="ATS_STA_DTD" title="자동이체시작일-일" class="" style=""
										0="" onchange="calValidateAndSetVal(this, cld_param_ATS_STA_DT ); ">
										<option value="01">01</option>
										<option value="02">02</option>
										<option value="03">03</option>
										<option value="04">04</option>
										<option value="05">05</option>
										<option value="06">06</option>
										<option value="07">07</option>
										<option value="08">08</option>
										<option value="09">09</option>
										<option value="10">10</option>
										<option value="11">11</option>
										<option value="12">12</option>
										<option value="13">13</option>
										<option value="14">14</option>
										<option value="15">15</option>
										<option value="16">16</option>
										<option value="17">17</option>
										<option value="18">18</option>
										<option value="19">19</option>
										<option value="20">20</option>
										<option value="21">21</option>
										<option value="22">22</option>
										<option value="23">23</option>
										<option value="24">24</option>
										<option value="25" selected="">25</option>
										<option value="26">26</option>
										<option value="27">27</option>
										<option value="28">28</option>
										<option value="29">29</option>
										<option value="30">30</option>
										<option value="31">31</option>
									</select>일 

								</div> 
						<div id="dateRange2_1" style="margin-top: 10px;"> 
							부터&nbsp;&nbsp;&nbsp;&nbsp;
							<span style="font-size: 12pt; margin-left: 5px;">${ portfolio.investmentPeriod }개월</span>
						</div>
						<div id="dateRange2_2" style="display: none;"> 
							
							종료일 
									<input type="hidden" name="ATS_END_DT" id="ATS_END_DT"
										value="20220925"> <select name="ATS_END_DTY" id="ATS_END_DTY"
										title="자동이체종료일-년" class="" style=""
										0="" onchange="calValidateAndSetVal(this, cld_param_ATS_END_DT ); ">
										<option value="2013">2013</option>
										<option value="2014">2014</option>
										<option value="2015">2015</option>
										<option value="2016">2016</option>
										<option value="2017">2017</option>
										<option value="2018">2018</option>
										<option value="2019">2019</option>
										<option value="2020">2020</option>
										<option value="2021">2021</option>
										<option value="2022" selected="">2022</option>
										<option value="2023">2023</option>
										<option value="2024">2024</option>
										<option value="2025">2025</option>
										<option value="2026">2026</option>
										<option value="2027">2027</option>
										<option value="2028">2028</option>
										<option value="2029">2029</option>
										<option value="2030">2030</option>
										<option value="2031">2031</option>
									</select>년&nbsp;<select name="ATS_END_DTM"
										id="ATS_END_DTM" title="자동이체종료일-월" class="" style=""
										0="" onchange="calValidateAndSetVal(this, cld_param_ATS_END_DT ); ">
										<option value="01">01</option>
										<option value="02">02</option>
										<option value="03">03</option>
										<option value="04">04</option>
										<option value="05">05</option>
										<option value="06">06</option>
										<option value="07">07</option>
										<option value="08">08</option>
										<option value="09" selected="">09</option>
										<option value="10">10</option>
										<option value="11">11</option>
										<option value="12">12</option>
									</select>월&nbsp;<select name="ATS_END_DTD"
										id="ATS_END_DTD" title="자동이체종료일-일" class="" style=""
										0="" onchange="calValidateAndSetVal(this, cld_param_ATS_END_DT ); ">
										<option value="01">01</option>
										<option value="02">02</option>
										<option value="03">03</option>
										<option value="04">04</option>
										<option value="05">05</option>
										<option value="06">06</option>
										<option value="07">07</option>
										<option value="08">08</option>
										<option value="09">09</option>
										<option value="10">10</option>
										<option value="11">11</option>
										<option value="12">12</option>
										<option value="13">13</option>
										<option value="14">14</option>
										<option value="15">15</option>
										<option value="16">16</option>
										<option value="17">17</option>
										<option value="18">18</option>
										<option value="19">19</option>
										<option value="20">20</option>
										<option value="21">21</option>
										<option value="22">22</option>
										<option value="23">23</option>
										<option value="24">24</option>
										<option value="25" selected="">25</option>
										<option value="26">26</option>
										<option value="27">27</option>
										<option value="28">28</option>
										<option value="29">29</option>
										<option value="30">30</option>
									</select>일 <a id="cld_a_ATS_END_DT"
										class="btn-calendar js-btn-calendar"
										href="https://spib.wooribank.com/pib/Dream?withyou=PSFND0014&amp;__STEP=6#"
										onclick="calBindPicker(this, &#39;ATS_END_DT&#39;); return false;">자동이체종료일
										달력으로 날짜 선택</a>

								</div>
					</td>
				</tr>
				
				<tr>
					<th scope="row" style="font-size: 12pt; background-color: #E6EDF5;">자동이체<br>만기통지서비스</th> 
					<td>
						<input type="radio" id="rd71" name="XPR_NTC_YN" value="1" disabled="disabled"> <label for="rd71" style="font-size: 12pt;">예</label> 
						<input type="radio" id="rd72" name="XPR_NTC_YN" value="2" checked="checked"> <label for="rd72" style="font-size: 12pt;">아니오</label>
						<input type="hidden" id="XPR_NTC_YN_Str" name="XPR_NTC_YN_Str">
					</td>
					
					<th scope="row" style="font-size: 12pt; background-color: #E6EDF5;">자동이체<br>미처리통보서비스</th>  
					<td>
						<input type="radio" id="rd81" name="NPRC_NTC_YN" value="1" disabled="disabled"> <label for="rd81" style="font-size: 12pt;">예</label> 
						<input type="radio" id="rd82" name="NPRC_NTC_YN" value="2" checked="checked"> <label for="rd82" style="font-size: 12pt;">아니오</label>
						<input type="hidden" id="NPRC_NTC_YN_Str" name="NPRC_NTC_YN_Str"></td>
				</tr>
				
			</tbody>
		</table>
	</fieldset>
		<div class="notice-txt mb10">
				<ul>
					<li class="font-c-r" style="font-size: 10pt; color: #F08080;">자동이체 시작일은 신규일로부터 3개월 이내만 지정 가능합니다.</li>
				</ul>
			</div>

		</div>
		
		<div class="btn-area" style="margin-top: 40px; margin-bottom: 40px;">

			<form action="${ pageContext.request.contextPath }/fundSuccess" method="post" style="margin-bottom: 50px; margin-top: 30px;">
		       	<input type="hidden" name="member_id" value="${ portfolio.member_id }">
		       	<input type="hidden" name="name" value="${ userVO.name }">
		       	<input type="hidden" name="investmentPeriod" value="${ portfolio.investmentPeriod }">
		       	<input type="hidden" name="investmentMoney" value="${ portfolio.investmentMoney }">
		       	<input type="hidden" name="investmentRate" value="${ portfolio.investmentRate }">
		       	<input type="hidden" name="minPer" value="${ portfolio.minPer }">
		       	<input type="hidden" name="maxPer" value="${ portfolio.maxPer }">
		       	<input type="hidden" name="investmentType" value="${ portfolio.investmentType }">
		       	<input type="hidden" name="sd" value="${ portfolio.sd }">
		       	<input type="hidden" name="bm" value="${ portfolio.bm }">
		       	<input type="hidden" name="sr" value="${ portfolio.sr }">
		       	<input type="hidden" name="te" value="${ portfolio.te }">
		       	<input type="hidden" name="ja" value="${ portfolio.ja }">
		       	<input type="hidden" name="ir" value="${ portfolio.ir }">
		       	<input type="hidden" name="fund" value="${ portfolio.fund }">
		       	<input type="hidden" name="deposit" value="${ portfolio.deposit }">
		       	<input type="hidden" name="saving" value="${ portfolio.saving }">
		       	<input type="hidden" name="pension" value="${ portfolio.pension }">
		       	<input type="hidden" name="start" value="${ portfolio.start }">
		       	<input type="hidden" name="last" value="${ portfolio.last }">
		 		<input type="submit" value="가입하기" style="font-size:13pt; width: 300px; height: 40px; border-radius: 15px; color: white; background-color: #008B8B; border: none; margin-left: 20%; cursor: pointer;">
		       	<button type="button" id="unagreeBtn" style="font-size:10pt; width: 300px; height: 40px; border-radius: 15px; color: DimGray; background-color: #F7F9FC; border: none; cursor: pointer;">취소</button>		
		     </form>
		        
		</div>
		
		<!-- //content -->
	</section>
	<footer style="clear: both;">
		<jsp:include page="/WEB-INF/include/footer.jsp" />
	</footer>
</body>
</html>