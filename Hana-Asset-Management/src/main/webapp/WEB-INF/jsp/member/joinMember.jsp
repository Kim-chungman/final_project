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
		$('#memberType').click(function() {
			location.href="${ pageContext.request.contextPath }/member/joinIndiAgree";
		})
	})
	 
</script>
<style>
	#loginLogo {
		position: absolute;
		z-index: 99;
		top: 26%;
		left: 42%;
	}
	#loginLogo2 {
		position: absolute;
		z-index: 99;
		top: 24.5%;
		left: 44%;
		font-size: 15pt;
		font-family: 'inherit';
	}
	#loginHr {
		position: absolute;
		z-index: 99;
		top: 32%;
		left: 47%;
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
		width: 440px; 
		height: 380px; 
		border: solid;
		border-width: 1px;
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
			<h2 style="text-align: center; margin-right: 120px; color: #008B8B;">회원가입</h2>
			<br>
			
			<div>
				<table style="width: 900px; align-content: center; margin-right: 100px;">
					<tr>
						<td id="tdNum" style="color: #008B8B;">
							<a href="${ pageContext.request.contextPath }/member/join" style="color: #008B8B; font-size: 12pt; font-family: inherit;">1 회원선택</a>
						</td>
						<td id="tdNum">2 약관동의</td>
						<td id="tdNum">3 정보입력</td>
						<td id="tdNum">4 가입완료</td>
					</tr>
				</table>
			</div>
			<div style="margin-top: 10px;">
				<table style="width: 900px; height: 400px; align-content: center; margin-right: 100px;">
					<tr>
						<td id="tdNo">
							<button id="memberType" style="border-color: #ca874b; background-color: white;">
								<img alt="개인회원" src="${ pageContext.request.contextPath }/resources/images/member.svg">
								<p style="color: #ca874b; font-size: 13pt;">개인회원</p>
								<p style="font-size: 10pt; margin-top: 20px;">개인회원으로 가입합니다.</p>
							</button>
						</td>
						<td id="tdNo">
							<button id="memberType" style="border-color: #27b2ad; background-color: white;">
								<img alt="사업자회원" src="${ pageContext.request.contextPath }/resources/images/company.svg">
								<p style="color: #27b2ad; font-size: 13pt;">사업자회원</p>
								<p style="font-size: 10pt; margin-top: 20px;">사업자회원으로 가입합니다.</p>
							</button>
						</td>
					</tr>
				</table>
			</div>
			
		</div>

	</section>
	<footer>
		<jsp:include page="/WEB-INF/include/footer.jsp" />
	</footer>
</body>
</html>