<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.2, user-scalable=yes" />
<title>Hana Solution - 회원가입</title>
<link rel="shortcut icon" type="image/x-icon" href="${ pageContext.request.contextPath }/resources/images/favicon.png" />
<script src="${ pageContext.request.contextPath }/resources/js/jquery-3.6.0.min.js"></script>
<script src="${ pageContext.request.contextPath }/resources/js/myJS.js"></script>
<script>
	$(document).ready(function() {
		$('#startBtn').click(function() {
			location.href="${ pageContext.request.contextPath }/login";
		})
	})
	 
</script>
<style>
	#loginLogo {
		position: absolute;
		z-index: 99;
		top: 26%;
		left: 40%;
	}
	#loginLogo2 {
		position: absolute;
		z-index: 99;
		top: 24.5%;
		left: 42%;
		font-size: 15pt;
		font-family: 'inherit';
	}
	#loginHr {
		position: absolute;
		z-index: 99;
		top: 32%;
		left: 45%;
		font-family: 'inherit';
		color: #008B8B; 
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
	<section>
		<br>
		<br>
		<div style="height: 100px;">
			<img alt="logo" id="loginLogo" src="${ pageContext.request.contextPath }/resources/images/favicon.png">
			<p id="loginLogo2">Hana Solution | join</p>
			<hr id="loginHr" style="width: 2%; color: #008B8B;">
		</div>
		
		<div align="center">
			<h2 style="text-align: center; margin-right: 120px; color: #008B8B;">개인회원가입</h2>
			<br>
			
			<div>
				<table style="width: 900px; align-content: center; margin-right: 100px;">
					<tr>
						<td id="tdNum" style="color: #008B8B;">
							<a href="${ pageContext.request.contextPath }/member/join" style="color: #008B8B; font-size: 12pt; font-family: inherit;">1 회원선택</a>
						</td>
						<td id="tdNum" style="color: #008B8B;">
							<a href="${ pageContext.request.contextPath }/member/joinIndiAgree" style="color: #008B8B; font-size: 12pt; font-family: inherit;">2 약관동의</a>
						</td>
						<td id="tdNum" style="color: #008B8B;">
							<a href="${ pageContext.request.contextPath }/member/joinIndiInfo" style="color: #008B8B; font-size: 12pt; font-family: inherit;">3 정보입력</a>
						</td>
						<td id="tdNum" style="color: #008B8B;">
							<a href="${ pageContext.request.contextPath }/member/joinSuccess" style="color: #008B8B; font-size: 12pt; font-family: inherit;">4 가입완료</a>
							<!-- <p style="color: #008B8B; font-size: 12pt; font-family: inherit;">4 가입완료</p> -->
						</td>
					</tr>
				</table>
			</div>
			<div style="margin-top: 50px; width: 900px; height: 600px; margin-right: 100px; border: none;">
				<h2 style="color: gray; font-family: inherit; margin-top: 30px;"><strong>Hana Solution 회원가입을 축하합니다.</strong></h2>
				<div style="font-size: 15pt; font-family: inherit; margin-top: 20px;">
					<p style="color: #008B8B; font-size: 15pt; font-family: inherit;">${ userVO.name }</p>고객님 <p style="font-size: 15pt; font-family: inherit;">환영합니다.</p><br>
					<p style="color: #008B8B; font-size: 15pt; font-family: inherit;">${ userVO.email }</p>로 인증메일을 발송했으니 확인해주세요.<br>
					<img alt="가입축하" src="${ pageContext.request.contextPath }/resources/images/celebration.png">
				</div>
			</div>
			<div style="margin-top: 40px;">
				<button id="startBtn" style="font-size:13pt; width: 300px; height: 40px; border-radius: 15px; color: white; background-color: #008B8B; border: none; margin-right: 140px;">
					시작하기
				</button>
			</div>
			
		</div>

	</section>
	<footer>
		<jsp:include page="/WEB-INF/include/footer.jsp" />
	</footer>
</body>
</html>