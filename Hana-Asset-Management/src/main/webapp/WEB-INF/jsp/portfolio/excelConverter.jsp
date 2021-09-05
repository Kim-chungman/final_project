<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.2, user-scalable=yes" />
<title>Hana Solution - portfolio</title>
<link rel="shortcut icon" type="image/x-icon" href="${ pageContext.request.contextPath }/resources/images/favicon.png" />
<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/board.css"></link>
</head>
<body>
	<header>
		<jsp:include page="/WEB-INF/include/header.jsp" />
	</header>
	<section>
		<div align="center">
		<hr width="80%">
		<h2>회원 목록</h2>
		<hr width="80%">
		<br>
		<table border="1" style="width: 80%" id="list">
			<tr>
				<th>아이디</th>
				<th>이름</th>
				<th>주소</th>
				<th>핸드폰번호</th>
				<th>이메일</th>
				<th>성별</th>
				<th>알림여부</th>
				<th>가입일</th>
			</tr>
			<c:forEach items="${ list }" var="member" varStatus="Loop">
				<tr <c:if test="${ Loop.index mod 2 ne 0 }"> class="odd"</c:if>>
					<td>${ member.id }</td>
					<td>${ member.name }</td>
					<td>${ member.address }</td>
					<td>${ member.phonenumber }</td>
					<td>${ member.email }</td>
					<td>${ member.gender }</td>
					<td>${ member.notice }</td>
					<td>${ member.regDate }</td>
				</tr>
			</c:forEach>
		</table>
		<br>
		<form method="post" name="download">
			<input type="hidden" name="id" id="id" value="${ userVO.id }">
			<input type="submit" value="다운로드">
		</form>
	</div>	
	</section>
	<footer>
		<jsp:include page="/WEB-INF/include/footer.jsp" />
	</footer>
</body>
</html>