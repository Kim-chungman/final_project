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
		<div style="height: 50px;">
			<h3 style="color: #008B8B;"><strong>투자설명서확인</strong></h3>
		</div>

<div class="notice-txt" >
	<ul>
		<li style="font-size: 12pt;">자본시장과 금융투자업에 관한 법에 의거하여, 투자신탁 설명서를 교부 받으셔야 합니다</li>
	</ul>
</div>

	<fieldset>
		<table class="tbl-type mb10 ui-set-tbl-type" border="1" summary="펀드명 제공" style="width: 100%; text-align: center;">
			<tbody>
				<c:forEach items="${ planA }" var="list" varStatus="Loop">
				<tr>
					<th scope="row" style="font-size: 12pt; width: 20%; background-color: #E6EDF5;">펀드명</th>
					<td style="font-size: 12pt;">${ list.fund_name }</td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
	</fieldset>
	<br>
	<br>
	<div id="agreeTxt" class="agree-privision-txt mb10">
		<span class="mt5">
			<input type="checkbox" id="confirm" name="confirm" value="1" style="width: 15px; height: 15px;">
			<label for="confirm" style="font-size: 12pt;">투자설명서, 간이투자설명서(고난도 금융투자상품 가입 시 요약설명서 포함), 집합투자규약 및 수익증권저축약관을 확인했으며,<br> <span style="margin-left: 25px;">이에 동의합니다.</span></label>
		</span>
		<div style="margin-top: 10px;"></div>
		<span class="mt5">
			<input type="checkbox" id="confirm2" name="confirm2" value="1" class="fleft mt3" style="width: 15px; height: 15px;">
			<label for="confirm2" style="font-size: 12pt;">본인은 구속행위 금지에 대한 내용을 확인하고 충분히 이해하였음을 확인합니다.</label>
		</span>
		<div style="margin-top: 10px;"></div>
		<span class="mt5">
			<input type="checkbox" id="confirm3" name="confirm3" value="1" class="fleft mt3" style="width: 15px; height: 15px;">
			<label for="confirm3" style="font-size: 12pt;">「금융실명거래 및 비밀보장에 관한 법률」 제3조 제3항에 따라 누구든지 불법재산의 은닉, 자금세탁행위, 공중협박자금조달행위 및<br> 
				<span style="margin-left: 25px;">강제 집행의 면탈, 그 밖의 목적으로 타인의 실명으로 금융거래를 하여서는 아니되며, 이를 위반시 5년 이하의 징역 또는 5천만원 </span><br> 
				<span style="margin-left: 25px;">이하의 벌금에 처해질 수 있습니다.</span><br>
				<span class="font-c-or" style="margin-left: 25px; margin-top: 10px; color: red;">본인은 위 안내에 대하여 금융회사로부터 충분한 설명을 들어 이해하였으며, 같은 법 제3조 제6항에 따라 설명들었음을 확인합니다.</span></label>
		</span>
	</div>



<div class="title-area mt30" style="margin-top: 30px;">
	<h3 style="color: #008B8B;">집합투자상품 가입고객 확인사항</h3>
</div>

<table class="tbl-type mb10 ui-set-tbl-type" border="1" summary="펀드명, 펀드유형, 가입(투자)자 성명, 운용사 제공" style="width: 100%;">
	
	<colgroup>
		<col width="150">
		<col>
		<col width="150">
		<col>
	</colgroup>
	<tbody>
		<c:forEach items="${ planA }" var="list" varStatus="Loop">
		<tr>
			<th scope="row" style="font-size: 12pt; background-color: #E6EDF5;">펀드명</th>
			<td style="font-size: 12pt; text-align: center;">${ list.fund_name }</td>
			<th scope="row" style="font-size: 12pt; background-color: #E6EDF5;">펀드유형</th>
			<td style="font-size: 12pt; text-align: center;">
				채권형 / 개방형
			</td>
		</tr>
		<tr>
			<th scope="row" style="font-size: 12pt; background-color: #E6EDF5;">가입(투자)자 성명</th>
			<td style="font-size: 12pt; text-align: center;">${ userVO.name }</td>
			<th scope="row" style="font-size: 12pt; background-color: #E6EDF5;">운용사</th>
			<td style="font-size: 12pt; text-align: center;">${ list.fund_company }</td>
		</tr>
		</c:forEach>
	</tbody>
</table>

<div class="notice-txt mb30" style="margin-top: 20px;">
	<ul>
		<li style="font-size: 12pt;">※ 펀드 가입시 여러펀드로 분산 투자하는 것이 위험을 줄이며 안정적인 수익을 기대할 수 있습니다.</li>
		<li style="font-size: 12pt;">※ 당행에서 판매하고 있는 집합투자상품에 가입(투자)함에 있어 아래의 내용을 확인하시기 바랍니다.<br>※ 아래의 각 항목에 동의하시면, 각 항목 앞에 있는 체크박스를 클릭하신 후, 페이지 맨 아래의 확인버튼을 클릭하십시오.</li>
	</ul>
</div>

<div class="title-area mb10" style="margin-top: 30px;">
		<h3 style="color: #008B8B;"><strong>상품내용 이해여부 확인</strong></h3>
	</div>
	<fieldset>
		<table class="tbl-type-1 mb30 ui-set-tbl-type" border="1" summary=" , - 아래 - 제공">
			<colgroup>
				<col width="50">
				<col>
			</colgroup>
			<thead>
				<tr>
					<th scope="col" style="font-size: 12pt; background-color: #E6EDF5;">&nbsp;</th>
					<th scope="col" style="font-size: 12pt; background-color: #E6EDF5;">- 아래 -</th>
				</tr>
			</thead>
			<tfoot>
				<tr>
					<td colspan="2" class="txt-c" style="text-align: center;"><input type="checkbox" id="typecheck" name="typecheck" value="typecheck" onclick="allCheck1(this)" style="width: 15px; height: 15px;"> 
					<label for="typecheck" style="font-size: 12pt;">전체선택</label></td>
				</tr>
			</tfoot>
			<tbody>
				<tr>
					<td><input type="checkbox" id="chk11" name="typecheck" style="width: 15px; height: 15px;"></td>
					<td class="txt-l"><label for="chk11" style="font-size: 11pt;">1) 집합투자기구는 운용 결과에 따라 투자 원금의 손실이 발생할 수 있으며, 그 손실은 투자자에게 귀속됩니다.</label></td>
				</tr>
				<tr>
					<td><input type="checkbox" id="chk12" name="typecheck" style="width: 15px; height: 15px;"></td>
					<td class="txt-l"><label for="chk12" style="font-size: 11pt;">2) 상품 가입을 결정하기 전 투자 대상, 투자 위험, 환매 방법 및 보수, 수수료 등에 관하여 투자설명서를 반드시 읽어보시기 바랍니다.</label></td>
				</tr>
				<tr>
					<td><input type="checkbox" id="chk13" name="typecheck" style="width: 15px; height: 15px;"></td>
					<td class="txt-l"><label for="chk13" style="font-size: 11pt;">3) 위와 같이 전자문서로 게시된 간이투자설명서, 투자설명서, 집합투자규약 등의 내용 열람으로 투자설명서 서면 교부에 갈음함을 동의하며, 해당 상품 가입 절차를 계속 진행합니다.</label></td>
				</tr>
				<tr>
					<td><input type="checkbox" id="chk14" name="typecheck" style="width: 15px; height: 15px;"></td>
					<td class="txt-l"><label for="chk14" style="font-size: 11pt;">4) 본인은 투자설명서를 제공받고, 그 주요 내용을 설명 들었습니다.</label></td>
				</tr>
				<tr>
					<td><input type="checkbox" id="chk15" name="typecheck" style="width: 15px; height: 15px;"></td>
					<td class="txt-l"><label for="chk15" style="font-size: 11pt;">5) 상품의 명칭 및 종류가 무엇인지 확인하고 이해하였습니다.</label></td>
				</tr>
				<tr>
					<td><input type="checkbox" id="chk16" name="typecheck" style="width: 15px; height: 15px;"></td>
					<td class="txt-l"><label for="chk16" style="font-size: 11pt;">6) 상품의 운용개념 및 수익구조에 대해 확인하고 이해하였습니다.</label></td>
				</tr>
				<tr>
					<td><input type="checkbox" id="chk17" name="typecheck" style="width: 15px; height: 15px;"></td>
					<td class="txt-l"><label for="chk17" style="font-size: 11pt;">7) 상품 투자 시 투자원금의 손실 가능성 및 최대손실 가능금액 등 투자위험에 대해 확인하고 이해하였습니다.</label></td>
				</tr>
				<tr>
					<td><input type="checkbox" id="chk18" name="typecheck" style="width: 15px; height: 15px;"></td>
					<td class="txt-l"><label for="chk18" style="font-size: 11pt;">8) 상품의 투자목적, 투자대상자산 및 주요 투자전략 등의 운용방법, 운용제한 및 운용전략에 대해 확인하고 이해하였습니다.</label></td>
				</tr>
				<tr>
					<td><input type="checkbox" id="chk19" name="typecheck" style="width: 15px; height: 15px;"></td>
					<td class="txt-l"><label for="chk19" style="font-size: 11pt;">9) 상품의 환매(방법/제한/수수료 부과기간 및 연기 등)에 관한 사항에 대해 확인하고 이해하였습니다.</label></td>
				</tr>
				<tr>
					<td><input type="checkbox" id="chk110" name="typecheck" style="width: 15px; height: 15px;"></td>
					<td class="txt-l"><label for="chk110" style="font-size: 11pt;">10) 상품의 각종 보수, 수수료, 비용 및 투자소득의 과세에 대해 확인하고 이해하였습니다.</label></td>
				</tr>
				<tr>
					<td><input type="checkbox" id="chk111" name="typecheck" style="width: 15px; height: 15px;"></td>
					<td class="txt-l"><label for="chk111" style="font-size: 11pt;">11) 신탁약관 또는 투자회사 정관 주요 내용 변경에 따른 공시에 대해 확인하고 이해하였습니다.</label></td>
				</tr>
				<tr>
					<td><input type="checkbox" id="chk112" name="typecheck" style="width: 15px; height: 15px;"></td>
					<td class="txt-l"><label for="chk112" style="font-size: 11pt;">12) 수익자 총회 또는 주주총회에 대해 확인하고 이해하였습니다.</label></td>
				</tr>
				<tr>
					<td><input type="checkbox" id="chk113" name="typecheck" style="width: 15px; height: 15px;"></td>
					<td class="txt-l"><label for="chk113" style="font-size: 11pt;">13) 상품의 투자대상 국가(지역), 투자대상자산별 투자비율 및 경제·증시상황 등을 확인하고 이해하였습니다.</label></td>
				</tr>
				<tr>
					<td><input type="checkbox" id="chk114" name="typecheck" style="width: 15px; height: 15px;"></td>
					<td class="txt-l"><label for="chk114" style="font-size: 11pt;">14) 해외자산에 투자하는 상품의 경우 환율변동 위험, 환위험 헤지 여부, 목표 환헤지 비율 등에 대해 확인하고 이해하였으며, 국내자산에만 투자하는 경우는 해당사항이 없으므로 확인하지 않았습니다.</label></td>
				</tr>
				<tr>
					<td><input type="checkbox" id="chk115" name="typecheck" style="width: 15px; height: 15px;"></td>
					<td class="txt-l"><label for="chk115" style="font-size: 11pt;">15) 파생/부동산/특별자산 관련 상품인 경우 자산의 특성 및 투자위험을 추가적으로 확인하고 이해하였으며, 파생/부동산/특별자산 관련 상품이 아닌 경우는 해당사항이 없으므로 추가적으로 확인하지 않았습니다.</label></td>
				</tr>
				<tr>
					<td><input type="checkbox" id="chk116" name="typecheck" style="width: 15px; height: 15px;"></td>
					<td class="txt-l"><label for="chk116" style="font-size: 11pt;">16) 기타 법령 및 규정 또는 회사가 정한 사항에 대해 확인하고 이해하였습니다.</label></td>
				</tr>
			</tbody>
		</table>
	</fieldset>
	
	<script>
		function allCheck1(typecheck)  {
			  const checkboxes 
			       = document.getElementsByName('typecheck');
			  
			  checkboxes.forEach((checkbox) => {
			    checkbox.checked = typecheck.checked;
			  })
			}
	</script>

	<div class="title-area mb10" style="margin-top: 40px;">
		<h3 style="color: #008B8B;"><strong>추가 확인사항</strong></h3>
	</div>
	<fieldset>
		<table class="tbl-type-1 ui-set-tbl-type" border="1" style="font-size: 12pt;">
			
			<colgroup>
				<col width="50">
				<col>
			</colgroup>
			<thead>
				<tr>
					<th scope="col" style="font-size: 12pt; background-color: #E6EDF5;">&nbsp;</th>
					<th scope="col" style="font-size: 12pt; background-color: #E6EDF5;">- 아래 -</th>
				</tr>
			</thead>
			<tfoot>
				<tr>
					<td colspan="2" class="txt-c" style="text-align: center;"><input type="checkbox" id="typecheckAll" name="typecheck1" value="typecheck1" onclick="allCheck(this);" style="width: 15px; height: 15px;"> 
					<label for="typecheckAll"><span style="text-align: center; font-size: 12pt;">전체선택</span></label></td>
				</tr>
			</tfoot>
			<tbody>
				<tr>
					<td><input type="checkbox" id="chk21" name="typecheck1" style="width: 15px; height: 15px;"></td>
					<td class="txt-l"  style="font-size: 11pt;">
					<label for="chk21">
					1) 본 상품은 자본시장과 금융투자업에 관한 법률에 의하여 수탁회사에 안전하게 보관 관리되고 있으며, 운용결과에 따르는 이익 또는 손실은 투자자에게 귀속됩니다.
					</label></td>
				</tr>
				<tr>
					<td><input type="checkbox" id="chk22" name="typecheck1" style="width: 15px; height: 15px;"></td>
					<td class="txt-l"  style="font-size: 11pt;"><label for="chk22"><strong>2) 본 상품은 예금자보호법에 따라 예금보험공사가 보호하지 않습니다 <span class="font-c-r text-deco">실적배당상품으로서 투자원금의 손실이 발생할 수 있습니다.</span><br>
																※ 금융투자상품이 아닌 투자자예탁금은 예금자보호법에 따른 예금자보호대상입니다.</strong></label>
					</td>
				</tr>
				<tr>
					<td><input type="checkbox" id="chk23" name="typecheck1" style="width: 15px; height: 15px;"></td>
					<td class="txt-l"><label for="chk23" style="font-size: 11pt;"><strong>3) 본 상품의 과거수익률이 미래의 수익률을 보장하지 않습니다.</strong></label></td>
				</tr>
				<tr>
					<td><input type="checkbox" id="chk24" name="typecheck1" style="width: 15px; height: 15px;"></td>
					<td class="txt-l"><label for="chk24" style="font-size: 11pt;">4) 본 상품은 매수시 약관에서 정한 거래 기준시간에 따라 익영업일 또는 익익영업일에 손님의 연결계좌에서 자동 인출되어 수익증권 가입(투자)처리되며, 기준시간 이전에 매수 신청 건에 대하여 기준시간 이후에는 취소가 불가합니다.</label></td>
				</tr>
				<tr>
					<td><input type="checkbox" id="chk25" name="typecheck1" style="width: 15px; height: 15px;"></td>
					<td class="txt-l"><label for="chk25" style="font-size: 11pt;">5) 본 상품은 환매시 약관에서 정한 거래 기준시간에 따라 기준가적용 및 대금지급일이 1영업일씩 이연처리 되며, 기준시간 이전 환매신청 건에 대하여 기준시간 이후에는 취소가 불가합니다.</label></td>
				</tr>
				<tr>
					<td><input type="checkbox" id="chk26" name="typecheck1" style="width: 15px; height: 15px;"></td>
					<td class="txt-l"><label for="chk26" style="font-size: 11pt;">6)본 상품은 매수신청(자동이체포함)시 신청 금액만큼 지급 정지되어 매수 처리시까지 인출 및 다른 청구분에 대하여 결제(대출이자, 신용카드대금등)가 불가 합니다.</label></td>
				</tr>
				<tr>
					<td><input type="checkbox" id="chk27" name="typecheck1" style="width: 15px; height: 15px;"></td>
					<td class="txt-l"><label for="chk27" style="font-size: 11pt;">7) 신탁회계기간 종료에 따라 발생하는 이익분배금에 대해서 당행은 재투자합니다.</label></td>
				</tr>
				<tr>
					<td><input type="checkbox" id="chk28" name="typecheck1" style="width: 15px; height: 15px;"></td>
					<td class="txt-l"><label for="chk28" style="font-size: 11pt;">8) 가입(투자)하신 집합투자상품에 대한 자세한 내용(신탁재산운용보고서,기준가격 등)은 해당펀드의 운용사나 우리은행 홈페이지(www.wooribank.com)에서 열람하시기바랍니다.</label></td>
				</tr>
			</tbody>
		</table>
	</fieldset>
	
	<script>
		function allCheck(typecheck1)  {
			  const checkboxes 
			       = document.getElementsByName('typecheck1');
			  
			  checkboxes.forEach((checkbox) => {
			    checkbox.checked = typecheck1.checked;
			  })
			}
	</script>

	<div class="notice-txt mb20" style="margin-top: 40px;">
		<ul>
			<li><strong class="font-14" style="font-size: 14pt;">본인은 상기 확인사항을 충분히 이해하고 본 집합투자상품에 가입하였음을 확인합니다.</strong></li>
		</ul>
	</div>
	<div class="agree-privision-txt" style="margin-top: 20px;">
		<input type="checkbox" id="EML_SMS_YN" name="EML_SMS_YN" onclick="emlSmsChk()" class="fleft mt3">
		<label for="EML_SMS_YN" style="font-size: 12pt;">상품 자료 교부 받기(선택)	</label>
		<br><br><label for="EML_SMS_YN" style="font-size: 11pt;">· 관련 상품자료: 투자설명서(고난도금융투자 상품을 가입하시는 경우 요약설명서·간이 투자설명서 포함), 수익증권저축약관, 상품설명서</label>
		<br><br><label for="EML_SMS_YN" style="font-size: 11pt;">· '교부 받기' 선택시 관련 자료 다운로드 과정이 생략됩니다.</label>
		<br><br><label for="EML_SMS_YN" style="font-size: 11pt;">· 이메일 주소 변경시 펀드 가입을 처음부터 다시 진행해주셔야 합니다.</label>
		
		<br><br><label for="EML_SMS_YN" style="font-size: 11pt;">· 이메일과 SMS 중복선택 가능합니다.</label>
		
		<div id="EML_SMS_CHK" class="mt5 ml20 dis-n" style="display: none; margin-top: 30px;">
			<input type="checkbox" id="PRD_DES_EML" value="Y"> 
				<label for="PRD_DES_EML" style="font-size: 12pt;">이메일
				<input type="text" disabled="disabled" value="cndaksrla@naver.com" class="ml10" mask="n" enc="off" style="margin-left:8px"></label><br>
			
			<input type="checkbox" id="PRD_DES_SMS" value="S" onclick="emlSmsClick(this)"> 
				<label for="PRD_DES_SMS" style="font-size: 12pt;">SMS
				<input type="text" disabled="disabled" value="0105221****" mask="n" enc="off" style="margin-left:25px;"></label>
			
		</div>
	</div>
<input type="hidden" name="transkey_i" id="transkey_i" value="0"><input type="hidden" name="transkey_inputs" id="transkey_inputs" value=""><input type="hidden" name="transkeyUuid" id="transkeyUuid" value="undefined"></form>

<div class="btn-area" style="margin-top: 40px; margin-bottom: 40px;">

	<form action="${ pageContext.request.contextPath }/fundInfo" method="post" style="margin-bottom: 50px; margin-top: 30px;">
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
 		<input type="submit" value="다음" style="font-size:13pt; width: 300px; height: 40px; border-radius: 15px; color: white; background-color: #008B8B; border: none; margin-left: 20%; cursor: pointer;">
       	<button type="button" id="unagreeBtn" style="font-size:10pt; width: 300px; height: 40px; border-radius: 15px; color: DimGray; background-color: #F7F9FC; border: none; cursor: pointer;">취소</button>		
     </form>
        
</div>

<div style="display:inline;" id="xwup_certselect"></div>
	

<script type="text/javascript">
	 
	$(document).ready(function() {

		$('#unagreeBtn').click(function() {
			location.href= "${ pageContext.request.contextPath }/";
		})
		
	});  
	
	/*******************************************************************************
	 * @. 이메일/SMS 약관 수신 여부 확인
	 ******************************************************************************/
	 function emlSmsChk(){
		$("input[id*=PRD_DES_]").attr("checked",false);
		$("#PRD_DES_OUP_YN").val("");
		if($("input[name='EML_SMS_YN']").is(":checked")){
			$("#EML_SMS_CHK").slideDown();
		} else {
			$("#EML_SMS_CHK").slideUp();
		}
	}
	
	function emlSmsClick(obj){
		if($(obj).val()=="Y" && $(obj).is(":checked")){

			alert("이메일 주소 변경시 펀드 가입을 처음부터 다시 진행해주셔야 합니다.");
		} else if($(obj).val()=="S" && $(obj).is(":checked")){

			alert("등록된 휴대전화 번호 변경이 필요하신 경우 가까운 영업점 혹은 고객센터로 연락 바랍니다.");
		}
	}
	
	function emlSmsValid(){
		if($("#EML_SMS_YN").is(":checked")){
			
			var emlsms_count = 0;
			var emlsms_val = "";
			$("input[id*=PRD_DES_]").each(function(idx,els){
				if($(els).is(":checked")){
					emlsms_count++;
					emlsms_val = $(els).val();
				}
			});
			
			if(emlsms_count==2){
				$("#PRD_DES_OUP_YN").val("A");
			} else if(emlsms_count==1){
				$("#PRD_DES_OUP_YN").val(emlsms_val);
			} else {
				$("#PRD_DES_OUP_YN").val("");
				alert("이메일 혹은 SMS 교부 여부를 체크해주세요");
				$("#PRD_DES_EML").focus();
				return false;
			}
		}
		return true;
	}
	/*************************메일/SMS 약관 수신 여부 확인 끝**************************************/
		
</script>

		
	</section>
	<footer style="clear: both;">
		<jsp:include page="/WEB-INF/include/footer.jsp" />
	</footer>
</body>
</html>