<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/layout.css"></link>
<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/board.css"></link>
<script src="${ pageContext.request.contextPath }/resources/js/myJS.js"></script>
<script src="${ pageContext.request.contextPath }/resources/js/html2canvas.js"></script>
<script src="${ pageContext.request.contextPath }/resources/js/jspdf.min.js"></script>
<script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>

	$(document).ready(function() {
		$('#savePdf').click(function() { // pdf저장 button id
			
		    html2canvas($('#pdfDiv')[0]).then(function(canvas) { //저장 영역 div id
			
		    // 캔버스를 이미지로 변환
		    var imgData = canvas.toDataURL('image/png');
			     
		    var imgWidth = 190; // 이미지 가로 길이(mm) / A4 기준 210mm
		    var pageHeight = imgWidth * 1.414;  // 출력 페이지 세로 길이 계산 A4 기준
		    var imgHeight = canvas.height * imgWidth / canvas.width;
		    var heightLeft = imgHeight;
		    var margin = 10; // 출력 페이지 여백설정
		    var doc = new jsPDF('p', 'mm');
		    var position = 0;
		       
		    // 첫 페이지 출력
		    doc.addImage(imgData, 'PNG', margin, position, imgWidth, imgHeight);
		    heightLeft -= pageHeight;
		         
		    // 한 페이지 이상일 경우 루프 돌면서 출력
		    while (heightLeft >= 20) {
		        position = heightLeft - imgHeight;
		        doc.addPage();
		        doc.addImage(imgData, 'PNG', 0, position, imgWidth, imgHeight);
		        heightLeft -= pageHeight;
		    }
		 
		    // 파일 저장
		    doc.save('file-name.pdf');
	
			  
		});
	
		});
		
		
	})
	
</script>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
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
</head>
<body>
	<header>
		<jsp:include page="/WEB-INF/include/header.jsp" />
	</header>
	<div id="pdfDiv">
		<div id="main-container">
			<div id="chat-container">
				
			</div>
			<div id="bottom-container">
				<input id="inputMessage" type="text">
				<input id="btn-submit" type="submit" value="전송" >
			</div>
		</div>
		<br>
		<button type="button" class="btn btn-primary" id="savePdf" >PDF 저장</button>
	</div>
	<footer>
		<jsp:include page="/WEB-INF/include/footer.jsp" />
	</footer>
</body>
</html>