<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/board.css"></link>
<script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>

<div align="center">
	<hr width="80%">
	<h2 style="font-size: 16pt; color: #008B8B;">지출 목록(미리보기)</h2>
	<hr width="80%">
	<br>
	<table border="1" style="width: 80%" id="list">
		<tr>
			<th width="40%">카테고리</th>
			<th>금액</th>
			<th width="40%">결제일</th>
		</tr>
		<c:forEach items="${ list }" var="board" varStatus="Loop">
			<c:if test="${ board.expense gt 0 }">
			<tr <c:if test="${ Loop.index mod 2 ne 0 }"> class="odd"</c:if>>
				<td style="text-align: center;">${ board.category }</td>
				<td style="text-align: center;">
					<fmt:formatNumber type="number" pattern="###,###,###,###,###,###" value="${ board.expense }" />원
				</td>
				<td style="text-align: center;">${ board.reg_date }</td>
			</tr>
			</c:if>
		</c:forEach>
	</table>
</div>	