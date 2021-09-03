<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.2, user-scalable=yes" />
<title>Hana Solution - 로그인</title>
<link rel="shortcut icon" type="image/x-icon" href="${ pageContext.request.contextPath }/resources/images/favicon.png" />
<script src="${ pageContext.request.contextPath }/resources/js/jquery-3.6.0.min.js"></script>
<script src="${ pageContext.request.contextPath }/resources/js/myJS.js"></script>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script>
	
	$(document).ready(function() {
		$('#joinBtn').click(function() {
			location.href="${ pageContext.request.contextPath }/member/join";
		})
	})
	

	function checkForm() {
		
		let f = document.loginForm
		
		if(isNull(f.id, '아이디를 입력하세요'))
			return false;
		if(isNull(f.password, '패스워드를 입력하세요'))
			return false;

		return true;
	}
	 
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
			<p id="loginLogo2">Hana Solution | login</p>
			<hr id="loginHr" style="width: 2%; color: #008B8B;">
		</div>
		
		<div align="center">
			<h2 style="text-align: center; margin-right: 120px; color: #008B8B;">환영합니다</h2>
			<br>
			
			<form action="${ pageContext.request.contextPath }/login" method="post" name="loginForm" onsubmit="return checkForm()">
				<div id="form-div" style="width: 15%;">
					<input type="text" id="id" name="id" placeholder="아이디" style="width:300px; height: 40px; border-radius: 10px; border-width: 1px; border-color: #008B8B; margin-bottom: 5px;">
					<span id="msg" style="color: red;"></span>
					<br>
					<input type="password" id="password" name="password" placeholder="비밀번호" style="width:300px; height: 40px; border-radius: 10px; border-width: 1px; border-color: #008B8B;">
				</div>
				
				<br>
				<input type="submit" id="login" value="로그인" style="font-size:13pt; width: 300px; height: 40px; border-radius: 15px; color: white; background-color: #008B8B; border: none; margin-right: 140px;">
			</form>
			<div style="margin-right: 140px;">
				<input type="checkbox">아이디저장
				<a style="font-size: 10pt; margin-left: 50px;">아이디 찾기</a> <a style="font-size: 10pt; margin-left: 10px;">비밀번호 찾기</a>
			</div>
			
			<div style="margin-top: 50px;">
				<h5 style="text-align: center; margin-right: 120px; color: #008B8B; font-family: 'inherit';">회원이 아니신가요?</h5>
			</div>
			<button id="joinBtn" style="font-size:13pt; width: 220px; height: 40px; border-radius: 5px; color: white; background-color: #008B8B; border: none; margin-right: 130px; margin-top: 5px;">회원가입</button>
			
			<div>
				
			</div>
			<div id="loginBtn" style="margin-top: 5px; margin-bottom: 30px;">
				<a id="kakao-login-btn" style="margin-right: 130px;"></a>
				<a href="http://developers.kakao.com/logout"></a>
				<script type='text/javascript'>
				    Kakao.init('e3a32771d0c4bba4f7f84fcd7a531f9a');
				    
				    Kakao.Auth.createLoginButton({
				    	container: '#kakao-login-btn',
				    	success: function(authObj) {
				    		Kakao.API.request({
				    	       url: '/v2/user/me',
				    	       success: function(res) {
				    	             /* alert(JSON.stringify(res)); */
				    	           
				    	             console.log(res.id);
				    	             console.log(res.properties['nickname']);
				    	             console.log(res.kakao_account.email);
				    	             console.log(authObj.access_token);
				    	           
				    	             let id = res.id
				    	             let email = res.kakao_account.email
				    	             let token = authObj.access_token
				    	             
				    	             location.href= "/CM-Bank/kakaoJoin.do?id=" + id + "&email=" + email + "&token=" + token;
				    	    	}
				    	    })
				    	},
				    	fail: function(error) {
				    		alert(JSON.stringify(error));
				    	}
					});
				</script>
				</div>
		</div>

	</section>
	<footer>
		<jsp:include page="/WEB-INF/include/footer.jsp" />
	</footer>
</body>
</html>