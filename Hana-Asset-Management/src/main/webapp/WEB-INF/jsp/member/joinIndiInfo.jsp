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
						<td id="tdNum">4 가입완료</td>
					</tr>
				</table>
			</div>
			<div style="margin-top: 50px; width: 900px; margin-right: 150px;">
				<p style="color: #008B8B; font-size: 14pt; font-family: inherit; margin-left: 20px;">개인정보</p>
				<form method="post" name="joinIndiInfo">
				<div id="form-div" style="width: 15%;">
					<p style="font-size: 14pt; font-family: inherit; float: left; color: #008B8B;">ID</p>
					<input type="text" id="id" name="id" placeholder="아이디" style="clear: both; width:300px; height: 40px; border-radius: 10px; border-width: 1px; border-color: #008B8B; margin-bottom: 5px;" required="required">
					<button id="idCheckBtn" style="float:left; font-size:10pt; width: 70px; height: 20px; border-radius: 15px; color: white; background-color: #ca874b; border: none;">중복체크</button>
					<div id="msg" style="color: red;"></div>
					<br>
					<p style="font-size: 14pt; font-family: inherit; float: left; color: #008B8B;">PASSWORD</p>
					<input type="password" id="password" name="password" placeholder="비밀번호" style="width:300px; height: 40px; border-radius: 10px; border-width: 1px; border-color: #008B8B;" required="required">
					<p style="font-size: 14pt; font-family: inherit; float: left; color: #008B8B;">이름</p>
					<input type="text" id="name" name="name" placeholder="이름" style="clear: both; width:300px; height: 40px; border-radius: 10px; border-width: 1px; border-color: #008B8B; margin-bottom: 5px;" required="required">
					<p style="font-size: 14pt; font-family: inherit; float: left; color: #008B8B;">주민등록번호</p>
					<input type="text" id="rrn" name="rrn" placeholder="주민등록번호" style="clear: both; width:300px; height: 40px; border-radius: 10px; border-width: 1px; border-color: #008B8B; margin-bottom: 5px;" required="required">
					<p style="font-size: 14pt; font-family: inherit; float: left; color: #008B8B;">핸드폰번호</p>
					<input type="text" id="phonenumber" name="phonenumber" placeholder="핸드폰번호" style="clear: both; width:300px; height: 40px; border-radius: 10px; border-width: 1px; border-color: #008B8B; margin-bottom: 5px;" required="required">
					<p style="font-size: 14pt; font-family: inherit; float: left; color: #008B8B;">성별</p>
					<p style="clear: both; font-size: 11pt; color: #ca874b; margin-right: 60px;">
						<input type="radio" id="gender" name="gender" value="M">남 
						<input type="radio" id="gender" name="gender" value="W">여
					</p>
					<p style="font-size: 14pt; font-family: inherit; float: left; color: #008B8B;">주소</p>
					<input type="text" id="address" name="address" placeholder="주소" style="clear: both; width:300px; height: 40px; border-radius: 10px; border-width: 1px; border-color: #008B8B; margin-bottom: 5px;">
					<p style="font-size: 14pt; font-family: inherit; float: left; color: #008B8B;">이메일</p>
					<input type="email" id="email" name="email" placeholder="이메일" style="clear: both; width:300px; height: 40px; border-radius: 10px; border-width: 1px; border-color: #008B8B; margin-bottom: 5px;">
					<p style="font-size: 14pt; font-family: inherit; float: left; color: #008B8B;">알림동의</p>
					<p style="clear: both; font-size: 11pt; color: #ca874b; margin-right: 60px; width: 120px;">
						<input type="radio" id="notice" name="notice" value="Y">동의 
						<input type="radio" id="notice" name="notice" value="N">미동의
					</p>
				</div>
				<br>
				<input type="submit" value="회원가입" style="font-size:13pt; width: 300px; height: 40px; border-radius: 15px; color: white; background-color: #008B8B; border: none; margin-left: 30px;">
				</form>
			</div>
			
		</div>

	</section>
	<footer>
		<jsp:include page="/WEB-INF/include/footer.jsp" />
	</footer>
</body>
</html>