<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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

<script type="text/javascript" src="https://www.google.com/jsapi"></script>
<script src="${ pageContext.request.contextPath }/resources/js/jquery-3.6.0.min.js"></script>

<script>

   google.charts.load("current", {packages:["corechart"]});

   google.setOnLoadCallback(drawChart);
   
   var future = '${ retire.fv }';
   var present = '${ retire.pv }';
   var prepare = '${ retire.prepareMoney }';
   var need = '${ retire.needMoney }';
   var lackfv = '${ retire.fv - retire.prepareMoney }';
   var lackpv = '${ retire.pv - retire.needMoney }';
   
   google.setOnLoadCallback(drawChart);
   
   function drawChart() {
	   
	   	  var jsonData = $.ajax({
	         
	         url : "${ pageContext.request.contextPath }/retireAnalysis",
	         data: { fv : future, pv : present, prepareMoney : prepare, needMoney : need, monthSaving : lackfv, monthSaving2 : lackpv },
	         dataType : "JSON",
	         async : false
	      }).responseText;
	      console.log(jsonData);
	      
	      var data = new google.visualization.DataTable(jsonData);
	      
	      var chart = new google.visualization.PieChart(document.getElementById('chart_div')); 
	      
	      chart.draw(data, {
	         curveType : "function",
	         fontSize: 15,
	         width : 600,
	         height : 400,
	         pieHole: 0.7,
	         colors: ['#FAC8C8','LightBlue'],
	         chartArea: {
	        	 'width': '90%',
	        	 'height' : '90%'
	       	}
	      });
	      
	}
</script>

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
       
       $(document).on('click', '#joinBtn', function(){
  		  
  		  modal.open();
  		});

       $(document).on('click', '#closeModal', function(){
   		  
   		  modal.close();
   		});
       
       var modal2 = {
		  open : function(){
		    $('#myModal2').show();
		  },
		  close : function(){
		    $('#myModal2').hide();    
		  }
		};
 	       
       $(document).on('click', '#joinBtn2', function(){
  		  
  		  modal2.open();
  		});

       $(document).on('click', '#closeModal2', function(){
   		  
   		  modal2.close();
   		  modal.close();
   		});

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
    .modal2 {
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
    .modal-content2 {
        background-color: #fefefe;
        margin: 15% auto;
        padding: 20px;
        border: 1px solid #888;
        width: 30%;                         
    }
</style>

<!-- 채팅 css -->
<style type="text/css">
	*{
		font-family: 나눔고딕;
		
	}
	#messageWindow{
		background: black;
		color: greenyellow;
	}
	#inputMessage{
		width:500px;
		height:20px
	}
	#btn-submit{
		background: white;
		background: #F7E600;
		width:60px;
		height:30px;
		color:#607080;
		border:none;
	}
	
	#main-container{
		width:600px;
		height:680px;
		border:1px solid black;
		margin:10px;
		display: inline-block;
		margin-left: 100px;
	}
	#chat-container{
		vertical-align: bottom;
		border: 1px solid black;
		margin:10px;
		min-height: 600px;
		max-height: 600px;
		overflow: scroll;
		overflow-x:hidden;
		background: #9bbbd4;
	}
	
	.chat{
		font-size: 20px;
		color:black;
		margin: 5px;
		min-height: 20px;
		padding: 5px;
		min-width: 50px;
		text-align: left;
        height:auto;
        word-break : break-all;
        background: #ffffff;
        width:auto;
        display:inline-block;
        border-radius: 10px 10px 10px 10px;
	}
	
	.notice{
		color:#607080;
		font-weight: bold;
		border : none;
		text-align: center;
		background-color: #9bbbd4;
		display: block;
	}

	.my-chat{
		text-align: right;
		background: #F7E600;
		border-radius: 10px 10px 10px 10px;
	}
	
	#bottom-container{
		margin:10px;
	}
	
	.chat-info{
		color:#556677;
		font-size: 10px;
		text-align: right;
		padding: 5px;
		padding-top: 0px;

	}
	
	.chat-box{
		text-align:left;
	}
	.my-chat-box{
		text-align: right;
	}
	
</style>

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
															id="wq_uuid_238" class="w2span " >은퇴준비<br>자가진단
														</span></a></li>
													<li id="wq_uuid_239" class="w2group " data-load="load"><a
														id="wq_uuid_240" class="w2group "
														href=""
														title=""><span id="wq_uuid_241" class="w2span ">미래설계<br>상품
														</span></a></li>
													<li id="wq_uuid_242" class="w2group " data-load="load"><a
														id="wq_uuid_243" class="w2group " style="cursor: pointer;">
														<span id="joinBtn" class="w2span ">은퇴상담<br>신청
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
														<li id="wq_uuid_258" class="w2group on"><span
															id="wq_uuid_259" class="w2span ">4</span>
														<p id="wq_uuid_260" class="w2textbox ">은퇴준비결과</p></li>
													</ul>
												</div>
											</div>
											<div id="wq_uuid_1517" class="w2group contbox pt20 ">
											<div id="wq_uuid_1518" class="w2group tabTy03 multi">
												<ul id="wq_uuid_1519" class="w2group ">
													<li id="wq_uuid_1520" class="w2group on"><a
														id="wq_uuid_1521" class="w2group "
														href="javascript:void(null);"><span id="wq_uuid_1522"
															class="w2span ">진단<br>결과
														</span></a></li>
												</ul>
											</div>
											<h2 id="wq_uuid_1535"
												class="w2textbox titH02 fs15 b mb10 mt5">필요/준비자금</h2>
											<div id="wq_uuid_1536" class="w2group mb15 ba1_gray bl0 br0">
												<div id="id_준비자금메인도넛그래프"
													type="Doughnut2D" drawtype="javascript"></div>
													<div id="chart_div" align="center" style="margin-left: 200px;">
													
													</div>
													<p id="wq_uuid_1540" class="w2textbox tac"><strong>은퇴자금 준비율</strong></p>
												</div>
											</div>
											<div id="wq_uuid_1541" class="w2textbox tar fs12">(단위:만원)</div>
											<table id="wq_uuid_1542"
												class="w2group w2tb tableTyInfo mb15" summary="준비자금 달성률 테이블">
												<caption id="wq_uuid_1543" class="w2group setcaption">구분,필요자금,준비자금,과부족,현재가치,미래가치
													을(를) 나타낸 표</caption>
												<colgroup id="wq_uuid_1544" class="w2group ">
													<col id="wq_uuid_1545" class="w2group ">
													<col id="wq_uuid_1546" class="w2group ">
													<col id="wq_uuid_1547" class="w2group ">
													<col id="wq_uuid_1548" class="w2group ">
												</colgroup>
												<tbody>
													<tr id="wq_uuid_1549" class="w2group ">
														<th id="wq_uuid_1550" class="w2group w2tb_th"><div
																id="wq_uuid_1551" class="w2textbox ">구분</div></th>
														<th id="wq_uuid_1552" class="w2group w2tb_th"><div
																id="wq_uuid_1553" class="w2textbox ">필요자금</div></th>
														<th id="wq_uuid_1554" class="w2group w2tb_th"><div
																id="wq_uuid_1555" class="w2textbox ">준비자금</div></th>
														<th id="wq_uuid_1556" class="w2group w2tb_th"><div
																id="wq_uuid_1557" class="w2textbox ">과부족</div></th>
													</tr>
													<tr id="wq_uuid_1558" class="w2group ">
														<th id="wq_uuid_1559" class="w2group w2tb_th"><div
																id="wq_uuid_1560" class="w2textbox ">현재가치</div></th>
														<td id="wq_uuid_1561" class="w2group w2tb_td"
															data-title="현재가치"><div id="현재_필요자금"
																class="w2textbox " style="text-align: center;"><fmt:formatNumber type="number" pattern="###,###,###,###,###,###" value="${ retire.pv }" /></div></td>
														<td id="wq_uuid_1563" class="w2group w2tb_td w2tb_noTH"><div
																id="현재_준비자금" class="w2textbox " style="text-align: center;"><fmt:formatNumber type="number" pattern="###,###,###,###,###,###" value="${ retire.needMoney }" /></div></td>
														<td id="wq_uuid_1565" class="w2group w2tb_td w2tb_noTH">
															<c:if test="${ (retire.pv - retire.needMoney) gt 0 }">
															<div id="현재_과부족" class="w2textbox " style="color: red; text-align: center;">
																-<fmt:formatNumber type="number" pattern="###,###,###,###,###,###" value="${ retire.pv - retire.needMoney }" />
															</div>
															</c:if>
															<c:if test="${ (retire.pv - retire.needMoney) lt 0 }">
															<div id="현재_과부족" class="w2textbox " style="color: blue; text-align: center;">
																<fmt:formatNumber type="number" pattern="###,###,###,###,###,###" value="${ retire.pv - retire.needMoney }" />
															</div>
															</c:if>
														</td>
													</tr>
													<tr id="wq_uuid_1567" class="w2group ">
														<th id="wq_uuid_1568" class="w2group w2tb_th"><div
																id="wq_uuid_1569" class="w2textbox ">미래가치</div></th>
														<td id="wq_uuid_1570" class="w2group w2tb_td"
															data-title="미래가치"><div id="미래_필요자금"
																class="w2textbox " style="text-align: center;"><fmt:formatNumber type="number" pattern="###,###,###,###,###,###" value="${ retire.fv }" /></div></td>
														<td id="wq_uuid_1572" class="w2group w2tb_td w2tb_noTH"><div
																id="미래_준비자금" class="w2textbox " style="text-align: center;"><fmt:formatNumber type="number" pattern="###,###,###,###,###,###" value="${ retire.prepareMoney }" /></div></td>
														<td id="wq_uuid_1574" class="w2group w2tb_td w2tb_noTH">
															<c:if test="${ (retire.fv - retire.prepareMoney) gt 0 }">
															<div id="미래_과부족" class="w2textbox " style="color: red; text-align: center;">
																-<fmt:formatNumber type="number" pattern="###,###,###,###,###,###" value="${ retire.fv - retire.prepareMoney}" />			
															</div>
															</c:if>
															<c:if test="${ (retire.fv - retire.prepareMoney) lt 0 }">
															<div id="미래_과부족" class="w2textbox " style="color: blue; text-align: center;">
																<fmt:formatNumber type="number" pattern="###,###,###,###,###,###" value="${ retire.fv - retire.prepareMoney}" />
															</div>
															</c:if>
														</td>
													</tr>
												</tbody>
											</table>
											<div id="wq_uuid_1576" class="w2group listDot">
												<ul id="wq_uuid_1577" class="w2group ">
													<li id="wq_uuid_1578" class="w2textbox ">은퇴자금 준비율 :
														준비자금/필요자금*100%</li>
													<li id="wq_uuid_1579" class="w2textbox ">미래가치는 은퇴시점의
														가치이며, 기 은퇴자는 현재가치와 같습니다.</li>
												</ul>
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
		<div align="center">
			<a id="btn_F14다음" class="w2anchor2 btnTyBlue02 big"
				href="${ pageContext.request.contextPath }/" style="background-color: #008B8B;">메인으로</a>
		</div>	
   </section>
   <!-- The Modal -->
    <div id="myModal" class="modal">
 
      <!-- Modal content -->
      <div class="modal-content" style="border-color: #008B8B; border-width: 3px; width: 700px;">
            <p style="text-align: center;">
            	<span style="font-size: 15pt; color: #008B8B;"><strong style="font-size: 25px;">은퇴상담신청</strong></span>
            </p>
            <hr style="border-color: #008B8B; border-width: 1px;">
            <p style="text-align: left; font-size: 23pt;">은퇴설계가 어려우시다면</p>
            <p style="text-align: left; font-size: 15pt;">전문가의 도움을 받으세요!</p>
            <br><br>
            
            <div style="background-color:white;text-align: center;padding-bottom: 30px;padding-top: 10px; width: 200px; margin-left: 500px;">
            	<a>
            		<button id="joinBtn2" style="font-size: 13pt; border: none; width: 100px; background-color: #008B8B; line-height: 32px; border-radius: 80px; color: white; cursor: pointer;">
            			신청하기
            		</button>
            	</a>
            	<button class="pop_bt" style="border-width: 1px; width: 100px;  font-size: 13pt; border-color: #008B8B; line-height: 32px; color: #008B8B; float: right; cursor: pointer;"  id="closeModal">
                     닫기
                </button>
            </div>
                      
      </div>
    </div>
    <!--End Modal-->
    <!-- The Modal -->
    <div id="myModal2" class="modal2">
 
      <!-- Modal content -->
      <div class="modal-content2" style="border-color: #008B8B; border-width: 3px; width: 800px; height: 750px;">
	           
	     <div id="main-container">
			<div id="chat-container">
				
			</div>
			<div id="bottom-container">
				<input id="inputMessage" type="text">
				<input id="btn-submit" type="submit" value="전송" >
			</div>
		</div>
        <button id="closeModal2" style="float: right; font-size: 13pt; border: none; width: 100px; background-color: #008B8B; line-height: 32px; border-radius: 80px; color: white; cursor: pointer; margin-right: 100px;">
   			닫기
   		</button>              
      </div>
    </div>
    <!--End Modal-->
</body>
<script type="text/javascript">
	

	var textarea = document.getElementById("messageWindow");
	var webSocket = new WebSocket('ws://localhost:9999/Hana-Asset-Management/counseling/${userVO.name}');
	
	// 로컬에서 테스트할 때 사용하는 URL입니다.
	var inputMessage = document.getElementById('inputMessage');
	
	webSocket.onerror = function(e){
		onError(e);
	};
	webSocket.onopen = function(e){
		onOpen(e);
	};
	webSocket.onmessage = function(e){
		onMessage(e);
	};
	
	
	function onMessage(e){
		var chatMsg = event.data;
		var date = new Date();
		var dateInfo = date.getHours() + ":" + date.getMinutes() + ":" + date.getSeconds();
		if(chatMsg.substring(0,6) == 'server'){
			var $chat = $("<div class='chat notice'>" + chatMsg + "</div>");
			$('#chat-container').append($chat);
		}else{
			var $chat = $("<div class='chat-box'><div class='chat'>" + chatMsg + "</div><div class='chat-info chat-box'>"+ dateInfo +"</div></div>");
			$('#chat-container').append($chat);
		}
		
		
		$('#chat-container').scrollTop($('#chat-container')[0].scrollHeight+20);
	}
	
	function onOpen(e){
		
	}
	
	function onError(e){
		alert(e.data);
	}
	
	function send(){
		var chatMsg = inputMessage.value;
		if(chatMsg == ''){
			return;
		}
		var date = new Date();
		var dateInfo = date.getHours() + ":" + date.getMinutes() + ":" + date.getSeconds();
		var $chat = $("<div class='my-chat-box'><div class='chat my-chat'>" + chatMsg + "</div><div class='chat-info'>"+ dateInfo +"</div></div>");
		$('#chat-container').append($chat);
		webSocket.send(chatMsg);
		inputMessage.value = "";
		$('#chat-container').scrollTop($('#chat-container')[0].scrollHeight+20);
	}
	
</script>

<script type="text/javascript">
	$(function(){
		$('#inputMessage').keydown(function(key){
			if(key.keyCode == 13){
				$('#inputMessage').focus();
				send();
			}
		});
		$('#btn-submit').click(function(){
			send();
		});
		
	})
</script>
</html>