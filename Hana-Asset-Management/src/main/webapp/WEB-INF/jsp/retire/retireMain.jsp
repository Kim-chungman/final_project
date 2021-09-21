<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.2, user-scalable=yes" />
<title>Hana Solution - 은퇴설계</title>
<!-- 파비콘 -->
<link rel="shortcut icon" type="image/x-icon" href="${ pageContext.request.contextPath }/resources/images/favicon.png" />
<!-- 은퇴설계 -->
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
<meta name="format-detection" content="telephone=no">
<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/retire/style.css">
<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/retire/edit.css">
<script src="${ pageContext.request.contextPath }/resources/retire/jquery.min.js"></script>
<script src="${ pageContext.request.contextPath }/resources/js/jquery-3.6.0.min.js"></script>

</head>
<body>
	<header>
		<jsp:include page="/WEB-INF/include/header.jsp" />
	</header>

	<!-- Section -->
	<section class="page01">
		<div class="section03">
			<div class="text">
				<h2>
					때가 왔다.<br>연금 가입할 때
				</h2>
				<ul>
					<li class="" id="joinBtn"><a> <span>1편</span>
							연금? 그게 뭐야?
					</a></li>
					<li class=""><a> <span>2편</span>
							개인연금 상품편
					</a></li>
					<li class=""><a> <span>3편</span>
							세액공제 디테일편
					</a></li>
				</ul>
			</div>
			<div class="img">
				<img src="${ pageContext.request.contextPath }/resources/retire/irp06.png" alt="">
				<a href="${ pageContext.request.contextPath }/retire/agree">
				<button type="button" style="font-size:13pt; width: 300px; height: 40px; border-radius: 15px; color: white; background-color: #008B8B; border: none; margin-left: 200px; margin-top: 20px;">
					가입하기
				</button></a>
			</div>
		</div>
		<div class="popup_wrap">
			<div class="popup">
				<div class="swiper-container swiper1 swiper-container-horizontal">
					<div class="swiper-wrapper">
						<div class="swiper-slide swiper-slide-active">
							<img src="${ pageContext.request.contextPath }/resources/retire/irp06_card01_01.png"
								alt="" style="margin-left: 420px; width: 800px;">
						</div>
						<div class="swiper-slide swiper-slide-next">
							<img src="${ pageContext.request.contextPath }/resources/retire/irp06_card01_02.png"
								alt="" style="margin-left: 420px; width: 800px;">
						</div>
						<div class="swiper-slide">
							<img src="${ pageContext.request.contextPath }/resources/retire/irp06_card01_03.png"
								alt="" style="margin-left: 420px; width: 800px;">
						</div>
						<div class="swiper-slide">
							<img src="${ pageContext.request.contextPath }/resources/retire/irp06_card01_04.png"
								alt="" style="margin-left: 420px; width: 800px;">
						</div>
						<div class="swiper-slide">
							<img src="${ pageContext.request.contextPath }/resources/retire/irp06_card01_05.png"
								alt="" style="margin-left: 420px; width: 800px;">>
						</div>
						<div class="swiper-slide">
							<img src="${ pageContext.request.contextPath }/resources/retire/irp06_card01_06.png"
								alt="" style="margin-left: 420px; width: 800px;">
						</div>
						<div class="swiper-slide">
							<img src="${ pageContext.request.contextPath }/resources/retire/irp06_card01_07.png"
								alt="" style="margin-left: 420px; width: 800px;">
						</div>
						<div class="swiper-slide">
							<img src="${ pageContext.request.contextPath }/resources/retire/irp06_card01_08.png"
								alt="" style="margin-left: 420px; width: 800px;">
						</div>
						<div class="swiper-slide">
							<img src="${ pageContext.request.contextPath }/resources/retire/irp06_card01_09.png"
								alt="" style="margin-left: 420px; width: 800px;">
						</div>
						<!--div class="swiper-slide"><img src="/common/3050/images/irp06_card01_10.png" alt=""></div-->
						<div class="swiper-slide">
							<img src="${ pageContext.request.contextPath }/resources/retire/irp06_card01_11.jpg"
								alt="" style="margin-left: 420px; width: 800px;">
						</div>
					</div>
				</div>
				<!-- Add Arrows -->
				<div class="swiper-button-next swiper-button-next1"></div>
				<div
					class="swiper-button-prev swiper-button-prev1 swiper-button-disabled"></div>
			</div>
			<div class="popup">
				<div class="swiper-container swiper2 swiper-container-horizontal">
					<div class="swiper-wrapper">
						<div class="swiper-slide swiper-slide-active">
							<img src="${ pageContext.request.contextPath }/resources/retire/irp06_card02_01.png"
								alt="" style="margin-left: 420px; width: 800px;">
						</div>
						<div class="swiper-slide swiper-slide-next">
							<img src="${ pageContext.request.contextPath }/resources/retire/irp06_card02_02.png"
								alt="" style="margin-left: 420px; width: 800px;">
						</div>
						<div class="swiper-slide">
							<img src="${ pageContext.request.contextPath }/resources/retire/irp06_card02_03.png"
								alt="" style="margin-left: 420px; width: 800px;">
						</div>
						<div class="swiper-slide">
							<img src="${ pageContext.request.contextPath }/resources/retire/irp06_card02_04.png"
								alt="" style="margin-left: 420px; width: 800px;">
						</div>
						<div class="swiper-slide">
							<img src="${ pageContext.request.contextPath }/resources/retire/irp06_card02_05.png"
								alt="" style="margin-left: 420px; width: 800px;">
						</div>
						<div class="swiper-slide">
							<img src="${ pageContext.request.contextPath }/resources/retire/irp06_card02_06.png"
								alt="" style="margin-left: 420px; width: 800px;">
						</div>
						<div class="swiper-slide">
							<img src="${ pageContext.request.contextPath }/resources/retire/irp06_card02_07.png"
								alt="" style="margin-left: 420px; width: 800px;">
						</div>
						<div class="swiper-slide">
							<img src="${ pageContext.request.contextPath }/resources/retire/irp06_card02_08.png"
								alt="" style="margin-left: 420px; width: 800px;">
						</div>
						<div class="swiper-slide">
							<img src="${ pageContext.request.contextPath }/resources/retire/irp06_card02_09.png"
								alt="" style="margin-left: 420px; width: 800px;">
						</div>
					</div>
				</div>
				<!-- Add Arrows -->
				<div class="swiper-button-next swiper-button-next2"></div>
				<div
					class="swiper-button-prev swiper-button-prev2 swiper-button-disabled"></div>
			</div>
			<div class="popup">
				<div class="swiper-container swiper3 swiper-container-horizontal">
					<div class="swiper-wrapper">
						<div class="swiper-slide swiper-slide-active">
							<img src="${ pageContext.request.contextPath }/resources/retire/irp06_card03_01.png"
								alt="" style="margin-left: 420px; width: 800px;">
						</div>
						<div class="swiper-slide swiper-slide-next">
							<img src="${ pageContext.request.contextPath }/resources/retire/irp06_card03_02.png"
								alt="" style="margin-left: 420px; width: 800px;">
						</div>
						<div class="swiper-slide">
							<img src="${ pageContext.request.contextPath }/resources/retire/irp06_card03_03.png"
								alt="" style="margin-left: 420px; width: 800px;">
						</div>
						<div class="swiper-slide">
							<img src="${ pageContext.request.contextPath }/resources/retire/irp06_card03_04.png"
								alt="" style="margin-left: 420px; width: 800px;">
						</div>
						<div class="swiper-slide">
							<img src="${ pageContext.request.contextPath }/resources/retire/irp06_card03_05.png"
								alt="" style="margin-left: 420px; width: 800px;">
						</div>
						<div class="swiper-slide">
							<img src="${ pageContext.request.contextPath }/resources/retire/irp06_card03_06.png"
								alt="" style="margin-left: 420px; width: 800px;">
						</div>
						<div class="swiper-slide">
							<img src="${ pageContext.request.contextPath }/resources/retire/irp06_card03_07.png"
								alt="" style="margin-left: 420px; width: 800px;">
						</div>
						<div class="swiper-slide">
							<img src="${ pageContext.request.contextPath }/resources/retire/irp06_card03_08.png"
								alt="" style="margin-left: 420px; width: 800px;">
						</div>
						<!--div class="swiper-slide"><img src="/common/3050/images/irp06_card03_09.png" alt=""></div-->
						<div class="swiper-slide">
							<img src="${ pageContext.request.contextPath }/resources/retire/irp06_card03_10.jpg"
								alt="" style="margin-left: 420px; width: 800px;">
						</div>
					</div>
				</div>
				<!-- Add Arrows -->
				<div class="swiper-button-next swiper-button-next3"></div>
				<div
					class="swiper-button-prev swiper-button-prev3 swiper-button-disabled"></div>
			</div>
		</div>
	</section>
		<script>
	        var i = 1;
	        var Rotate;
	
	        function startInterval(){
	            Rotate = setInterval(function(){
	                $('.section03 .text ul li').removeClass('on');
	                $('.section03 .text ul li').eq(i).addClass('on');
	                if(i >= $('.section03 .text ul li').length - 1){
	                    i = 0;
	                }else{
	                    i++;
	                }
	            },1500);
	        }
	
	        startInterval();
	
	        $('.section03 .text ul li').mouseenter(function(){
	            $('.section03 .text ul li').removeClass('on');
	            $(this).addClass('on');
	            clearInterval(Rotate);
	        });
	
	        $('.section03 .text ul li').mouseleave(function(){
	            $('.section03 .text ul li').removeClass('on');
	            $('.section03 .text ul li').eq(0).addClass('on');
	            i = 1;
	            startInterval();
	        });
	
	        $('.section03 .text ul li').click(function(){
	            $('body').css('overflow','hidden');
	            $('.page01 .popup_wrap .popup').eq($(this).index()).addClass('on');
	        });
	
	        $('.popup').click(function(){
	            $('body').css('overflow','auto');
	            $(this).removeClass('on');
	        });
	
	        $('.popup *').click(function(e){
	            e.stopPropagation();
	        });
	
	        var swiper1 = new Swiper('.swiper1', {
	            nextButton: '.swiper-button-next1',
	            prevButton: '.swiper-button-prev1',
	            slidesPerView: 'auto',
	            spaceBetween: 0,
	        });
	
	        var swiper2 = new Swiper('.swiper2', {
	            nextButton: '.swiper-button-next2',
	            prevButton: '.swiper-button-prev2',
	            slidesPerView: 'auto',
	            spaceBetween: 0,
	        });
	
	        var swiper3 = new Swiper('.swiper3', {
	            nextButton: '.swiper-button-next3',
	            prevButton: '.swiper-button-prev3',
	            slidesPerView: 'auto',
	            spaceBetween: 0,
	        });
	    </script>
	<footer>
		<jsp:include page="/WEB-INF/include/footer.jsp" />
	</footer>
</body>
</html>