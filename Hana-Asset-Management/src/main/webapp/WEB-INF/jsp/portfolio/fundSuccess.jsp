<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.2, user-scalable=yes" />
<title>Hana Solution - 펀드가입</title>
<link rel="shortcut icon" type="image/x-icon" href="${ pageContext.request.contextPath }/resources/images/favicon.png" />
<script src="${ pageContext.request.contextPath }/resources/js/jquery-3.6.0.min.js"></script>
<script src="${ pageContext.request.contextPath }/resources/js/myJS.js"></script>
<script>
	$(document).ready(function() {
		$('#startBtn').click(function() {
			location.href="${ pageContext.request.contextPath }/";
		})
	})
	 
</script>
<style>
	#loginLogo {
		position: absolute;
		z-index: 99;
		top: 26%;
		left: 38%;
	}
	#loginLogo2 {
		position: absolute;
		z-index: 99;
		top: 24.5%;
		left: 41%;
		font-size: 15pt;
		font-family: 'inherit';
	}

	#form-div {
		margin-right: 140px;
	}
	#tdNum {
		text-align: center;
		font-size: 12pt;
		font-family: 'inherit';
		border-bottom: solid;
		border-bottom-width: 2px;
		background-color: white;
	}
	#tdNo {
		text-align: center;
		font-size: 12pt;
		font-family: 'inherit';
		border: none;
		background-color: white;
	}
	#memberType{
		width: 900px; 
		height: 380px; 
		border: solid;
		border-width: 1px;
		font-family: 'inherit';
	}
</style>
</head>
<body>
	<header>
		<jsp:include page="/WEB-INF/include/header.jsp" />
	</header>
	<section style="height: 1000px;">
		<br>
		<br>
		<div style="height: 100px;">
			<img alt="logo" id="loginLogo" src="${ pageContext.request.contextPath }/resources/images/favicon.png">
			<p id="loginLogo2">Hana Solution | 펀드가입성공</p>
		</div>
		
		<div align="center">
			<h2 style="text-align: center; margin-right: 90px; color: #008B8B;">펀드가입</h2>
			<br>
			
			<div style="margin-top: 50px; width: 900px; height: 600px; margin-right: 100px; border: none;">
				<h2 style="color: gray; font-family: inherit; margin-top: 30px;"><strong>펀드가입을 축하합니다.</strong></h2>
				<div style="font-size: 15pt; font-family: inherit; margin-top: 20px;">
					<p style="color: #008B8B; font-size: 15pt; font-family: inherit;">${ userVO.name }</p>고객님 <p style="font-size: 15pt; font-family: inherit;">펀드가입을 축하합니다!!</p><br>
					<p style="font-size: 15pt; font-family: inherit;"><가입내역></p>
					<table style="width: 80%;">
					<c:forEach items="${ planA }" var="list" varStatus="Loop">
						<tr>
							<th style="font-size: 15pt; background-color: #E6EDF5;">펀드명</th>
							<td style="color: #008B8B; font-size: 15pt; font-family: inherit; text-align: center;">${ list.fund_name }</td>
						</tr>
					</c:forEach>
					</table>
					<p style="color: #008B8B; font-size: 15pt; font-family: inherit;">${ userVO.email }<span>로</span></p>
					<span style="font-family: inherit; font-size: 15pt;">투자설명서를 발송했으니 확인해주세요.<br></span>
				</div>
			</div>
			
		</div>

		<div style="margin-top: 100px; clear: both;" align="center">
			<button id="startBtn" style="font-size:13pt; width: 300px; height: 40px; border-radius: 15px; color: white; background-color: #008B8B; border: none; margin-right: 140px;">
				다른 상품보기
			</button>
		</div>
	</section>
	<footer>
		<jsp:include page="/WEB-INF/include/footer.jsp" />
	</footer>
</body>
</html>