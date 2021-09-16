<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<section>
		<c:if test="${ userVO.investmentType eq 1}">
        <div style="width: 900px; margin-top: 50px;">
            <div class="one-third">
                <div class="price-table">
                    <div class="head white">
                        <p>예금</p>
                        <h2 class="price">20%</h2>
                    </div>
                    <div class="body">
                        <ul>
                            <li>
                            	<strong style="font-size: 11pt;">하나 더예금</strong> <br>
                            	최저 연0.90%~최고 연<span style="font-size: 11pt; color: #008B8B;">1.40%
                            	</span>
                            </li>
                            <li>
                            	<strong style="font-size: 11pt;">주거래 정기예금</strong> <br>
                            	최저 연0.75%~최고 연<span style="font-size: 11pt; color: #008B8B;">1.25%
                            	</span>
                            </li>
                            <li>
                            	<strong style="font-size: 11pt;">언제나 청춘 정기예금</strong> <br>
                            	최저 연0.90%~최고 연<span style="font-size: 11pt; color: #008B8B;">1.10%
                            	</span>
                            </li>
                            <li>
                            	<strong style="font-size: 11pt;">3·6·9정기예금</strong> <br>
                            	최저 연0.85%~최고 연<span style="font-size: 11pt; color: #008B8B;">0.95%
                            	</span>
                            </li>
                        </ul>
                        <p class="more"><a href="#">더보기</a></p>
                    </div>
                </div>
            </div>
            <div class="one-third">
                <div class="price-table">
                    <div class="head grey">
                        <p>적금</p>
                        <h2 class="price">30%</h2>
                    </div>
                    <div class="body">
                        <ul>
                            <li>
                            	<strong style="font-size: 11pt;">하나 더예금</strong> <br>
                            	최저 연0.90%~최고 연<span style="font-size: 11pt; color: #008B8B;">1.40%
                            	</span>
                            </li>
                            <li>
                            	<strong style="font-size: 11pt;">주거래 정기예금</strong> <br>
                            	최저 연0.75%~최고 연<span style="font-size: 11pt; color: #008B8B;">1.25%
                            	</span>
                            </li>
                            <li>
                            	<strong style="font-size: 11pt;">언제나 청춘 정기예금</strong> <br>
                            	최저 연0.90%~최고 연<span style="font-size: 11pt; color: #008B8B;">1.10%
                            	</span>
                            </li>
                            <li>
                            	<strong style="font-size: 11pt;">3·6·9정기예금</strong> <br>
                            	최저 연0.85%~최고 연<span style="font-size: 11pt; color: #008B8B;">0.95%
                            	</span>
                            </li>
                        </ul>
                        <p class="more"><a href="#">더보기</a></p>
                    </div>
                </div>
            </div>
            <div class="one-third last">
                <div class="price-table">
                    <div class="head blue">
                        <p>펀드</p>
                        <h2 class="price">15%</h2>
                    </div>
                    <div class="body">
                        <ul>
                            <li>
                            	<strong style="font-size: 11pt;">하나 더예금</strong> <br>
                            	최저 연0.90%~최고 연<span style="font-size: 11pt; color: #008B8B;">1.40%
                            	</span>
                            </li>
                            <li>
                            	<strong style="font-size: 11pt;">주거래 정기예금</strong> <br>
                            	최저 연0.75%~최고 연<span style="font-size: 11pt; color: #008B8B;">1.25%
                            	</span>
                            </li>
                            <li>
                            	<strong style="font-size: 11pt;">언제나 청춘 정기예금</strong> <br>
                            	최저 연0.90%~최고 연<span style="font-size: 11pt; color: #008B8B;">1.10%
                            	</span>
                            </li>
                            <li>
                            	<strong style="font-size: 11pt;">3·6·9정기예금</strong> <br>
                            	최저 연0.85%~최고 연<span style="font-size: 11pt; color: #008B8B;">0.95%
                            	</span>
                            </li>
                        </ul>
                        <p class="more"><a href="#">더보기</a></p>
                    </div>
                </div>
            </div>
            <div class="one-third">
                <div class="price-table">
                    <div class="head red">
                        <p>연금</p>
                        <h2 class="price">25%</h2>
                    </div>
                    <div class="body">
                        <ul>
                            <li>
                            	<strong style="font-size: 11pt;">하나 더예금</strong> <br>
                            	최저 연0.90%~최고 연<span style="font-size: 11pt; color: #008B8B;">1.40%
                            	</span>
                            </li>
                            <li>
                            	<strong style="font-size: 11pt;">주거래 정기예금</strong> <br>
                            	최저 연0.75%~최고 연<span style="font-size: 11pt; color: #008B8B;">1.25%
                            	</span>
                            </li>
                            <li>
                            	<strong style="font-size: 11pt;">언제나 청춘 정기예금</strong> <br>
                            	최저 연0.90%~최고 연<span style="font-size: 11pt; color: #008B8B;">1.10%
                            	</span>
                            </li>
                            <li>
                            	<strong style="font-size: 11pt;">3·6·9정기예금</strong> <br>
                            	최저 연0.85%~최고 연<span style="font-size: 11pt; color: #008B8B;">0.95%
                            	</span>
                            </li>
                        </ul>
                        <p class="more"><a href="#">더보기</a></p>
                    </div>
                </div>
            </div>
            <div class="one-third">
                <div class="price-table">
                    <div class="head green">
                        <p>방카슈랑스</p>
                        <h2 class="price">10%</h2>
                    </div>
                    <div class="body">
                        <ul>
                            <li>
                            	<strong style="font-size: 11pt;">하나 더예금</strong> <br>
                            	최저 연0.90%~최고 연<span style="font-size: 11pt; color: #008B8B;">1.40%
                            	</span>
                            </li>
                            <li>
                            	<strong style="font-size: 11pt;">주거래 정기예금</strong> <br>
                            	최저 연0.75%~최고 연<span style="font-size: 11pt; color: #008B8B;">1.25%
                            	</span>
                            </li>
                            <li>
                            	<strong style="font-size: 11pt;">언제나 청춘 정기예금</strong> <br>
                            	최저 연0.90%~최고 연<span style="font-size: 11pt; color: #008B8B;">1.10%
                            	</span>
                            </li>
                            <li>
                            	<strong style="font-size: 11pt;">3·6·9정기예금</strong> <br>
                            	최저 연0.85%~최고 연<span style="font-size: 11pt; color: #008B8B;">0.95%
                            	</span>
                            </li>
                        </ul>
                        <p class="more"><a href="#">더보기</a></p>
                    </div>
                </div>
            </div>
        </div>
        </c:if>
        <c:if test="${ userVO.investmentType eq 2}">
        <div style="width: 900px; margin-top: 50px;">
            <div class="one-third">
                <div class="price-table">
                    <div class="head white">
                        <p>예금</p>
                        <h2 class="price">15%</h2>
                    </div>
                    <div class="body">
                        <ul>
                            <li>
                            	<strong style="font-size: 11pt;">하나 더예금</strong> <br>
                            	최저 연0.90%~최고 연<span style="font-size: 11pt; color: #008B8B;">1.40%
                            	</span>
                            </li>
                            <li>
                            	<strong style="font-size: 11pt;">주거래 정기예금</strong> <br>
                            	최저 연0.75%~최고 연<span style="font-size: 11pt; color: #008B8B;">1.25%
                            	</span>
                            </li>
                            <li>
                            	<strong style="font-size: 11pt;">언제나 청춘 정기예금</strong> <br>
                            	최저 연0.90%~최고 연<span style="font-size: 11pt; color: #008B8B;">1.10%
                            	</span>
                            </li>
                            <li>
                            	<strong style="font-size: 11pt;">3·6·9정기예금</strong> <br>
                            	최저 연0.85%~최고 연<span style="font-size: 11pt; color: #008B8B;">0.95%
                            	</span>
                            </li>
                        </ul>
                        <p class="more"><a href="#">더보기</a></p>
                    </div>
                </div>
            </div>
            <div class="one-third">
                <div class="price-table">
                    <div class="head grey">
                        <p>적금</p>
                        <h2 class="price">30%</h2>
                    </div>
                    <div class="body">
                        <ul>
                            <li>
                            	<strong style="font-size: 11pt;">하나 더예금</strong> <br>
                            	최저 연0.90%~최고 연<span style="font-size: 11pt; color: #008B8B;">1.40%
                            	</span>
                            </li>
                            <li>
                            	<strong style="font-size: 11pt;">주거래 정기예금</strong> <br>
                            	최저 연0.75%~최고 연<span style="font-size: 11pt; color: #008B8B;">1.25%
                            	</span>
                            </li>
                            <li>
                            	<strong style="font-size: 11pt;">언제나 청춘 정기예금</strong> <br>
                            	최저 연0.90%~최고 연<span style="font-size: 11pt; color: #008B8B;">1.10%
                            	</span>
                            </li>
                            <li>
                            	<strong style="font-size: 11pt;">3·6·9정기예금</strong> <br>
                            	최저 연0.85%~최고 연<span style="font-size: 11pt; color: #008B8B;">0.95%
                            	</span>
                            </li>
                        </ul>
                        <p class="more"><a href="#">더보기</a></p>
                    </div>
                </div>
            </div>
            <div class="one-third last">
                <div class="price-table">
                    <div class="head blue">
                        <p>펀드</p>
                        <h2 class="price">20%</h2>
                    </div>
                    <div class="body">
                        <ul>
                            <li>
                            	<strong style="font-size: 11pt;">하나 더예금</strong> <br>
                            	최저 연0.90%~최고 연<span style="font-size: 11pt; color: #008B8B;">1.40%
                            	</span>
                            </li>
                            <li>
                            	<strong style="font-size: 11pt;">주거래 정기예금</strong> <br>
                            	최저 연0.75%~최고 연<span style="font-size: 11pt; color: #008B8B;">1.25%
                            	</span>
                            </li>
                            <li>
                            	<strong style="font-size: 11pt;">언제나 청춘 정기예금</strong> <br>
                            	최저 연0.90%~최고 연<span style="font-size: 11pt; color: #008B8B;">1.10%
                            	</span>
                            </li>
                            <li>
                            	<strong style="font-size: 11pt;">3·6·9정기예금</strong> <br>
                            	최저 연0.85%~최고 연<span style="font-size: 11pt; color: #008B8B;">0.95%
                            	</span>
                            </li>
                        </ul>
                        <p class="more"><a href="#">더보기</a></p>
                    </div>
                </div>
            </div>
            <div class="one-third">
                <div class="price-table">
                    <div class="head red">
                        <p>연금</p>
                        <h2 class="price">20%</h2>
                    </div>
                    <div class="body">
                        <ul>
                            <li>
                            	<strong style="font-size: 11pt;">하나 더예금</strong> <br>
                            	최저 연0.90%~최고 연<span style="font-size: 11pt; color: #008B8B;">1.40%
                            	</span>
                            </li>
                            <li>
                            	<strong style="font-size: 11pt;">주거래 정기예금</strong> <br>
                            	최저 연0.75%~최고 연<span style="font-size: 11pt; color: #008B8B;">1.25%
                            	</span>
                            </li>
                            <li>
                            	<strong style="font-size: 11pt;">언제나 청춘 정기예금</strong> <br>
                            	최저 연0.90%~최고 연<span style="font-size: 11pt; color: #008B8B;">1.10%
                            	</span>
                            </li>
                            <li>
                            	<strong style="font-size: 11pt;">3·6·9정기예금</strong> <br>
                            	최저 연0.85%~최고 연<span style="font-size: 11pt; color: #008B8B;">0.95%
                            	</span>
                            </li>
                        </ul>
                        <p class="more"><a href="#">더보기</a></p>
                    </div>
                </div>
            </div>
            <div class="one-third">
                <div class="price-table">
                    <div class="head green">
                        <p>방카슈랑스</p>
                        <h2 class="price">15%</h2>
                    </div>
                    <div class="body">
                        <ul>
                            <li>
                            	<strong style="font-size: 11pt;">하나 더예금</strong> <br>
                            	최저 연0.90%~최고 연<span style="font-size: 11pt; color: #008B8B;">1.40%
                            	</span>
                            </li>
                            <li>
                            	<strong style="font-size: 11pt;">주거래 정기예금</strong> <br>
                            	최저 연0.75%~최고 연<span style="font-size: 11pt; color: #008B8B;">1.25%
                            	</span>
                            </li>
                            <li>
                            	<strong style="font-size: 11pt;">언제나 청춘 정기예금</strong> <br>
                            	최저 연0.90%~최고 연<span style="font-size: 11pt; color: #008B8B;">1.10%
                            	</span>
                            </li>
                            <li>
                            	<strong style="font-size: 11pt;">3·6·9정기예금</strong> <br>
                            	최저 연0.85%~최고 연<span style="font-size: 11pt; color: #008B8B;">0.95%
                            	</span>
                            </li>
                        </ul>
                        <p class="more"><a href="#">더보기</a></p>
                    </div>
                </div>
            </div>
        </div>
        </c:if>
        <c:if test="${ userVO.investmentType eq 3}">
        <div style="width: 900px; margin-top: 50px;">
            <div class="one-third">
                <div class="price-table">
                    <div class="head white">
                        <p>예금</p>
                        <h2 class="price">10%</h2>
                    </div>
                    <div class="body">
                        <ul>
                            <li>
                            	<strong style="font-size: 11pt;">하나 더예금</strong> <br>
                            	최저 연0.90%~최고 연<span style="font-size: 11pt; color: #008B8B;">1.40%
                            	</span>
                            </li>
                            <li>
                            	<strong style="font-size: 11pt;">주거래 정기예금</strong> <br>
                            	최저 연0.75%~최고 연<span style="font-size: 11pt; color: #008B8B;">1.25%
                            	</span>
                            </li>
                            <li>
                            	<strong style="font-size: 11pt;">언제나 청춘 정기예금</strong> <br>
                            	최저 연0.90%~최고 연<span style="font-size: 11pt; color: #008B8B;">1.10%
                            	</span>
                            </li>
                            <li>
                            	<strong style="font-size: 11pt;">3·6·9정기예금</strong> <br>
                            	최저 연0.85%~최고 연<span style="font-size: 11pt; color: #008B8B;">0.95%
                            	</span>
                            </li>
                        </ul>
                        <p class="more"><a href="#">더보기</a></p>
                    </div>
                </div>
            </div>
            <div class="one-third">
                <div class="price-table">
                    <div class="head grey">
                        <p>적금</p>
                        <h2 class="price">25%</h2>
                    </div>
                    <div class="body">
                        <ul>
                            <li>
                            	<strong style="font-size: 11pt;">하나 더예금</strong> <br>
                            	최저 연0.90%~최고 연<span style="font-size: 11pt; color: #008B8B;">1.40%
                            	</span>
                            </li>
                            <li>
                            	<strong style="font-size: 11pt;">주거래 정기예금</strong> <br>
                            	최저 연0.75%~최고 연<span style="font-size: 11pt; color: #008B8B;">1.25%
                            	</span>
                            </li>
                            <li>
                            	<strong style="font-size: 11pt;">언제나 청춘 정기예금</strong> <br>
                            	최저 연0.90%~최고 연<span style="font-size: 11pt; color: #008B8B;">1.10%
                            	</span>
                            </li>
                            <li>
                            	<strong style="font-size: 11pt;">3·6·9정기예금</strong> <br>
                            	최저 연0.85%~최고 연<span style="font-size: 11pt; color: #008B8B;">0.95%
                            	</span>
                            </li>
                        </ul>
                        <p class="more"><a href="#">더보기</a></p>
                    </div>
                </div>
            </div>
            <div class="one-third last">
                <div class="price-table">
                    <div class="head blue">
                        <p>펀드</p>
                        <h2 class="price">30%</h2>
                    </div>
                    <div class="body">
                        <ul>
                            <li>
                            	<strong style="font-size: 11pt;">하나 더예금</strong> <br>
                            	최저 연0.90%~최고 연<span style="font-size: 11pt; color: #008B8B;">1.40%
                            	</span>
                            </li>
                            <li>
                            	<strong style="font-size: 11pt;">주거래 정기예금</strong> <br>
                            	최저 연0.75%~최고 연<span style="font-size: 11pt; color: #008B8B;">1.25%
                            	</span>
                            </li>
                            <li>
                            	<strong style="font-size: 11pt;">언제나 청춘 정기예금</strong> <br>
                            	최저 연0.90%~최고 연<span style="font-size: 11pt; color: #008B8B;">1.10%
                            	</span>
                            </li>
                            <li>
                            	<strong style="font-size: 11pt;">3·6·9정기예금</strong> <br>
                            	최저 연0.85%~최고 연<span style="font-size: 11pt; color: #008B8B;">0.95%
                            	</span>
                            </li>
                        </ul>
                        <p class="more"><a href="#">더보기</a></p>
                    </div>
                </div>
            </div>
            <div class="one-third">
                <div class="price-table">
                    <div class="head red">
                        <p>연금</p>
                        <h2 class="price">20%</h2>
                    </div>
                    <div class="body">
                        <ul>
                            <li>
                            	<strong style="font-size: 11pt;">하나 더예금</strong> <br>
                            	최저 연0.90%~최고 연<span style="font-size: 11pt; color: #008B8B;">1.40%
                            	</span>
                            </li>
                            <li>
                            	<strong style="font-size: 11pt;">주거래 정기예금</strong> <br>
                            	최저 연0.75%~최고 연<span style="font-size: 11pt; color: #008B8B;">1.25%
                            	</span>
                            </li>
                            <li>
                            	<strong style="font-size: 11pt;">언제나 청춘 정기예금</strong> <br>
                            	최저 연0.90%~최고 연<span style="font-size: 11pt; color: #008B8B;">1.10%
                            	</span>
                            </li>
                            <li>
                            	<strong style="font-size: 11pt;">3·6·9정기예금</strong> <br>
                            	최저 연0.85%~최고 연<span style="font-size: 11pt; color: #008B8B;">0.95%
                            	</span>
                            </li>
                        </ul>
                        <p class="more"><a href="#">더보기</a></p>
                    </div>
                </div>
            </div>
            <div class="one-third">
                <div class="price-table">
                    <div class="head green">
                        <p>방카슈랑스</p>
                        <h2 class="price">15%</h2>
                    </div>
                    <div class="body">
                        <ul>
                            <li>
                            	<strong style="font-size: 11pt;">하나 더예금</strong> <br>
                            	최저 연0.90%~최고 연<span style="font-size: 11pt; color: #008B8B;">1.40%
                            	</span>
                            </li>
                            <li>
                            	<strong style="font-size: 11pt;">주거래 정기예금</strong> <br>
                            	최저 연0.75%~최고 연<span style="font-size: 11pt; color: #008B8B;">1.25%
                            	</span>
                            </li>
                            <li>
                            	<strong style="font-size: 11pt;">언제나 청춘 정기예금</strong> <br>
                            	최저 연0.90%~최고 연<span style="font-size: 11pt; color: #008B8B;">1.10%
                            	</span>
                            </li>
                            <li>
                            	<strong style="font-size: 11pt;">3·6·9정기예금</strong> <br>
                            	최저 연0.85%~최고 연<span style="font-size: 11pt; color: #008B8B;">0.95%
                            	</span>
                            </li>
                        </ul>
                        <p class="more"><a href="#">더보기</a></p>
                    </div>
                </div>
            </div>
        </div>
        </c:if>
        <c:if test="${ userVO.investmentType eq 4}">
        <div style="width: 900px; margin-top: 50px;">
            <div class="one-third">
                <div class="price-table">
                    <div class="head white">
                        <p>예금</p>
                        <h2 class="price">10%</h2>
                    </div>
                    <div class="body">
                        <ul>
                            <li>
                            	<strong style="font-size: 11pt;">하나 더예금</strong> <br>
                            	최저 연0.90%~최고 연<span style="font-size: 11pt; color: #008B8B;">1.40%
                            	</span>
                            </li>
                            <li>
                            	<strong style="font-size: 11pt;">주거래 정기예금</strong> <br>
                            	최저 연0.75%~최고 연<span style="font-size: 11pt; color: #008B8B;">1.25%
                            	</span>
                            </li>
                            <li>
                            	<strong style="font-size: 11pt;">언제나 청춘 정기예금</strong> <br>
                            	최저 연0.90%~최고 연<span style="font-size: 11pt; color: #008B8B;">1.10%
                            	</span>
                            </li>
                            <li>
                            	<strong style="font-size: 11pt;">3·6·9정기예금</strong> <br>
                            	최저 연0.85%~최고 연<span style="font-size: 11pt; color: #008B8B;">0.95%
                            	</span>
                            </li>
                        </ul>
                        <p class="more"><a href="#">더보기</a></p>
                    </div>
                </div>
            </div>
            <div class="one-third">
                <div class="price-table">
                    <div class="head grey">
                        <p>적금</p>
                        <h2 class="price">20%</h2>
                    </div>
                    <div class="body">
                        <ul>
                            <li>
                            	<strong style="font-size: 11pt;">하나 더예금</strong> <br>
                            	최저 연0.90%~최고 연<span style="font-size: 11pt; color: #008B8B;">1.40%
                            	</span>
                            </li>
                            <li>
                            	<strong style="font-size: 11pt;">주거래 정기예금</strong> <br>
                            	최저 연0.75%~최고 연<span style="font-size: 11pt; color: #008B8B;">1.25%
                            	</span>
                            </li>
                            <li>
                            	<strong style="font-size: 11pt;">언제나 청춘 정기예금</strong> <br>
                            	최저 연0.90%~최고 연<span style="font-size: 11pt; color: #008B8B;">1.10%
                            	</span>
                            </li>
                            <li>
                            	<strong style="font-size: 11pt;">3·6·9정기예금</strong> <br>
                            	최저 연0.85%~최고 연<span style="font-size: 11pt; color: #008B8B;">0.95%
                            	</span>
                            </li>
                        </ul>
                        <p class="more"><a href="#">더보기</a></p>
                    </div>
                </div>
            </div>
            <div class="one-third last">
                <div class="price-table">
                    <div class="head blue">
                        <p>펀드</p>
                        <h2 class="price">25%</h2>
                    </div>
                    <div class="body">
                        <ul>
                            <li>
                            	<strong style="font-size: 11pt;">하나 더예금</strong> <br>
                            	최저 연0.90%~최고 연<span style="font-size: 11pt; color: #008B8B;">1.40%
                            	</span>
                            </li>
                            <li>
                            	<strong style="font-size: 11pt;">주거래 정기예금</strong> <br>
                            	최저 연0.75%~최고 연<span style="font-size: 11pt; color: #008B8B;">1.25%
                            	</span>
                            </li>
                            <li>
                            	<strong style="font-size: 11pt;">언제나 청춘 정기예금</strong> <br>
                            	최저 연0.90%~최고 연<span style="font-size: 11pt; color: #008B8B;">1.10%
                            	</span>
                            </li>
                            <li>
                            	<strong style="font-size: 11pt;">3·6·9정기예금</strong> <br>
                            	최저 연0.85%~최고 연<span style="font-size: 11pt; color: #008B8B;">0.95%
                            	</span>
                            </li>
                        </ul>
                        <p class="more"><a href="#">더보기</a></p>
                    </div>
                </div>
            </div>
            <div class="one-third">
                <div class="price-table">
                    <div class="head red">
                        <p>연금</p>
                        <h2 class="price">20%</h2>
                    </div>
                    <div class="body">
                        <ul>
                            <li>
                            	<strong style="font-size: 11pt;">하나 더예금</strong> <br>
                            	최저 연0.90%~최고 연<span style="font-size: 11pt; color: #008B8B;">1.40%
                            	</span>
                            </li>
                            <li>
                            	<strong style="font-size: 11pt;">주거래 정기예금</strong> <br>
                            	최저 연0.75%~최고 연<span style="font-size: 11pt; color: #008B8B;">1.25%
                            	</span>
                            </li>
                            <li>
                            	<strong style="font-size: 11pt;">언제나 청춘 정기예금</strong> <br>
                            	최저 연0.90%~최고 연<span style="font-size: 11pt; color: #008B8B;">1.10%
                            	</span>
                            </li>
                            <li>
                            	<strong style="font-size: 11pt;">3·6·9정기예금</strong> <br>
                            	최저 연0.85%~최고 연<span style="font-size: 11pt; color: #008B8B;">0.95%
                            	</span>
                            </li>
                        </ul>
                        <p class="more"><a href="#">더보기</a></p>
                    </div>
                </div>
            </div>
            <div class="one-third">
                <div class="price-table">
                    <div class="head green">
                        <p>방카슈랑스</p>
                        <h2 class="price">10%</h2>
                    </div>
                    <div class="body">
                        <ul>
                            <li>
                            	<strong style="font-size: 11pt;">하나 더예금</strong> <br>
                            	최저 연0.90%~최고 연<span style="font-size: 11pt; color: #008B8B;">1.40%
                            	</span>
                            </li>
                            <li>
                            	<strong style="font-size: 11pt;">주거래 정기예금</strong> <br>
                            	최저 연0.75%~최고 연<span style="font-size: 11pt; color: #008B8B;">1.25%
                            	</span>
                            </li>
                            <li>
                            	<strong style="font-size: 11pt;">언제나 청춘 정기예금</strong> <br>
                            	최저 연0.90%~최고 연<span style="font-size: 11pt; color: #008B8B;">1.10%
                            	</span>
                            </li>
                            <li>
                            	<strong style="font-size: 11pt;">3·6·9정기예금</strong> <br>
                            	최저 연0.85%~최고 연<span style="font-size: 11pt; color: #008B8B;">0.95%
                            	</span>
                            </li>
                        </ul>
                        <p class="more"><a href="#">더보기</a></p>
                    </div>
                </div>
            </div>
            <div class="one-third last">
                <div class="price-table">
                    <div class="head yellow">
                        <p>주식</p>
                        <h2 class="price">15%</h2>
                    </div>
                    <div class="body">
                        <ul>
                            <li>
                            	<strong style="font-size: 11pt;">하나 더예금</strong> <br>
                            	최저 연0.90%~최고 연<span style="font-size: 11pt; color: #008B8B;">1.40%
                            	</span>
                            </li>
                            <li>
                            	<strong style="font-size: 11pt;">주거래 정기예금</strong> <br>
                            	최저 연0.75%~최고 연<span style="font-size: 11pt; color: #008B8B;">1.25%
                            	</span>
                            </li>
                            <li>
                            	<strong style="font-size: 11pt;">언제나 청춘 정기예금</strong> <br>
                            	최저 연0.90%~최고 연<span style="font-size: 11pt; color: #008B8B;">1.10%
                            	</span>
                            </li>
                            <li>
                            	<strong style="font-size: 11pt;">3·6·9정기예금</strong> <br>
                            	최저 연0.85%~최고 연<span style="font-size: 11pt; color: #008B8B;">0.95%
                            	</span>
                            </li>
                        </ul>
                        <p class="more"><a href="#">더보기</a></p>
                    </div>
                </div>
            </div>
        </div>
        </c:if>
        <c:if test="${ userVO.investmentType eq 5}">
        <div style="width: 900px; margin-top: 50px;">
            <div class="one-third">
                <div class="price-table">
                    <div class="head white">
                        <p>예금</p>
                        <h2 class="price">10%</h2>
                    </div>
                    <div class="body">
                        <ul>
                            <li>
                            	<strong style="font-size: 11pt;">하나 더예금</strong> <br>
                            	최저 연0.90%~최고 연<span style="font-size: 11pt; color: #008B8B;">1.40%
                            	</span>
                            </li>
                            <li>
                            	<strong style="font-size: 11pt;">주거래 정기예금</strong> <br>
                            	최저 연0.75%~최고 연<span style="font-size: 11pt; color: #008B8B;">1.25%
                            	</span>
                            </li>
                            <li>
                            	<strong style="font-size: 11pt;">언제나 청춘 정기예금</strong> <br>
                            	최저 연0.90%~최고 연<span style="font-size: 11pt; color: #008B8B;">1.10%
                            	</span>
                            </li>
                            <li>
                            	<strong style="font-size: 11pt;">3·6·9정기예금</strong> <br>
                            	최저 연0.85%~최고 연<span style="font-size: 11pt; color: #008B8B;">0.95%
                            	</span>
                            </li>
                        </ul>
                        <p class="more"><a href="#">더보기</a></p>
                    </div>
                </div>
            </div>
            <div class="one-third">
                <div class="price-table">
                    <div class="head grey">
                        <p>적금</p>
                        <h2 class="price">15%</h2>
                    </div>
                    <div class="body">
                        <ul>
                            <li>
                            	<strong style="font-size: 11pt;">하나 더예금</strong> <br>
                            	최저 연0.90%~최고 연<span style="font-size: 11pt; color: #008B8B;">1.40%
                            	</span>
                            </li>
                            <li>
                            	<strong style="font-size: 11pt;">주거래 정기예금</strong> <br>
                            	최저 연0.75%~최고 연<span style="font-size: 11pt; color: #008B8B;">1.25%
                            	</span>
                            </li>
                            <li>
                            	<strong style="font-size: 11pt;">언제나 청춘 정기예금</strong> <br>
                            	최저 연0.90%~최고 연<span style="font-size: 11pt; color: #008B8B;">1.10%
                            	</span>
                            </li>
                            <li>
                            	<strong style="font-size: 11pt;">3·6·9정기예금</strong> <br>
                            	최저 연0.85%~최고 연<span style="font-size: 11pt; color: #008B8B;">0.95%
                            	</span>
                            </li>
                        </ul>
                        <p class="more"><a href="#">더보기</a></p>
                    </div>
                </div>
            </div>
            <div class="one-third last">
                <div class="price-table">
                    <div class="head blue">
                        <p>펀드</p>
                        <h2 class="price">25%</h2>
                    </div>
                    <div class="body">
                        <ul>
                            <li>
                            	<strong style="font-size: 11pt;">하나 더예금</strong> <br>
                            	최저 연0.90%~최고 연<span style="font-size: 11pt; color: #008B8B;">1.40%
                            	</span>
                            </li>
                            <li>
                            	<strong style="font-size: 11pt;">주거래 정기예금</strong> <br>
                            	최저 연0.75%~최고 연<span style="font-size: 11pt; color: #008B8B;">1.25%
                            	</span>
                            </li>
                            <li>
                            	<strong style="font-size: 11pt;">언제나 청춘 정기예금</strong> <br>
                            	최저 연0.90%~최고 연<span style="font-size: 11pt; color: #008B8B;">1.10%
                            	</span>
                            </li>
                            <li>
                            	<strong style="font-size: 11pt;">3·6·9정기예금</strong> <br>
                            	최저 연0.85%~최고 연<span style="font-size: 11pt; color: #008B8B;">0.95%
                            	</span>
                            </li>
                        </ul>
                        <p class="more"><a href="#">더보기</a></p>
                    </div>
                </div>
            </div>
            <div class="one-third">
                <div class="price-table">
                    <div class="head red">
                        <p>연금</p>
                        <h2 class="price">10%</h2>
                    </div>
                    <div class="body">
                        <ul>
                            <li>
                            	<strong style="font-size: 11pt;">하나 더예금</strong> <br>
                            	최저 연0.90%~최고 연<span style="font-size: 11pt; color: #008B8B;">1.40%
                            	</span>
                            </li>
                            <li>
                            	<strong style="font-size: 11pt;">주거래 정기예금</strong> <br>
                            	최저 연0.75%~최고 연<span style="font-size: 11pt; color: #008B8B;">1.25%
                            	</span>
                            </li>
                            <li>
                            	<strong style="font-size: 11pt;">언제나 청춘 정기예금</strong> <br>
                            	최저 연0.90%~최고 연<span style="font-size: 11pt; color: #008B8B;">1.10%
                            	</span>
                            </li>
                            <li>
                            	<strong style="font-size: 11pt;">3·6·9정기예금</strong> <br>
                            	최저 연0.85%~최고 연<span style="font-size: 11pt; color: #008B8B;">0.95%
                            	</span>
                            </li>
                        </ul>
                        <p class="more"><a href="#">더보기</a></p>
                    </div>
                </div>
            </div>
            <div class="one-third">
                <div class="price-table">
                    <div class="head green">
                        <p>방카슈랑스</p>
                        <h2 class="price">10%</h2>
                    </div>
                    <div class="body">
                        <ul>
                            <li>
                            	<strong style="font-size: 11pt;">하나 더예금</strong> <br>
                            	최저 연0.90%~최고 연<span style="font-size: 11pt; color: #008B8B;">1.40%
                            	</span>
                            </li>
                            <li>
                            	<strong style="font-size: 11pt;">주거래 정기예금</strong> <br>
                            	최저 연0.75%~최고 연<span style="font-size: 11pt; color: #008B8B;">1.25%
                            	</span>
                            </li>
                            <li>
                            	<strong style="font-size: 11pt;">언제나 청춘 정기예금</strong> <br>
                            	최저 연0.90%~최고 연<span style="font-size: 11pt; color: #008B8B;">1.10%
                            	</span>
                            </li>
                            <li>
                            	<strong style="font-size: 11pt;">3·6·9정기예금</strong> <br>
                            	최저 연0.85%~최고 연<span style="font-size: 11pt; color: #008B8B;">0.95%
                            	</span>
                            </li>
                        </ul>
                        <p class="more"><a href="#">더보기</a></p>
                    </div>
                </div>
            </div>
            <div class="one-third last">
                <div class="price-table">
                    <div class="head yellow">
                        <p>주식</p>
                        <h2 class="price">30%</h2>
                    </div>
                    <div class="body">
                        <ul>
                            <li>
                            	<strong style="font-size: 11pt;">하나 더예금</strong> <br>
                            	최저 연0.90%~최고 연<span style="font-size: 11pt; color: #008B8B;">1.40%
                            	</span>
                            </li>
                            <li>
                            	<strong style="font-size: 11pt;">주거래 정기예금</strong> <br>
                            	최저 연0.75%~최고 연<span style="font-size: 11pt; color: #008B8B;">1.25%
                            	</span>
                            </li>
                            <li>
                            	<strong style="font-size: 11pt;">언제나 청춘 정기예금</strong> <br>
                            	최저 연0.90%~최고 연<span style="font-size: 11pt; color: #008B8B;">1.10%
                            	</span>
                            </li>
                            <li>
                            	<strong style="font-size: 11pt;">3·6·9정기예금</strong> <br>
                            	최저 연0.85%~최고 연<span style="font-size: 11pt; color: #008B8B;">0.95%
                            	</span>
                            </li>
                        </ul>
                        <p class="more"><a href="#">더보기</a></p>
                    </div>
                </div>
            </div>
        </div>
        </c:if>
	</section>
</body>
</html>