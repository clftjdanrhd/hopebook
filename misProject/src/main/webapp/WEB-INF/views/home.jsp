<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<jsp:include page="/WEB-INF/views/include/header.jsp" />
<style>
.slides-nav {
	z-index: 99;
	position: fixed;
	right: -5%;
	display: -webkit-box;
	display: flex;
	-webkit-box-align: center;
	align-items: center;
	height: 100%;
	color: #111;
}

@media ( min-width : 54em) {
	.slides-nav {
		right: 2%;
	}
}

.slides-nav__nav {
	position: relative;
	right: 0;
	display: block;
	font-size: 1em;
	-webkit-transform: rotate(90deg);
	transform: rotate(90deg);
	-webkit-transform-origin: center;
	transform-origin: center;
}

.slides-nav button {
	position: relative;
	display: inline-block;
	padding: 0.35em;
	margin: 0;
	font-family: "Space Mono", monospace;
	-webkit-appearance: none;
	-moz-appearance: none;
	appearance: none;
	background: transparent;
	border: 0;
	overflow-x: hidden;
	-webkit-transition: color 0.5s ease;
	transition: color 0.5s ease;
}

.slides-nav button:after {
	content: '';
	position: absolute;
	top: 50%;
	left: 0;
	height: 1px;
	width: 0;
	background: #111;
	-webkit-transition: width 0.4s ease;
	transition: width 0.4s ease;
}

.slides-nav button:hover {
	cursor: pointer;
	color: rgba(17, 17, 17, 0.75);
	-webkit-transition: color 0.5s ease;
	transition: color 0.5s ease;
}

.slides-nav button:hover:after {
	width: 100%;
	-webkit-transition: width 0.4s ease;
	transition: width 0.4s ease;
}

.slides-nav button:focus {
	outline: 0;
}

.is-sliding .slides-nav {
	pointer-events: none;
}

.slides {
	position: relative;
	display: block;
	height: 100vh;
	width: 100%;
	background: #ffffff;
	-webkit-transition: background 1s cubic-bezier(0.99, 1, 0.92, 1);
	transition: background 1s cubic-bezier(0.99, 1, 0.92, 1);
}

.is-sliding .slides {
	background: #ededed;
	-webkit-transition: background 0.3s cubic-bezier(0.99, 1, 0.92, 1);
	transition: background 0.3s cubic-bezier(0.99, 1, 0.92, 1);
}

.slide {
	z-index: -1;
	padding: 0;
	position: absolute;
	width: 100%;
	height: 100vh;
	-webkit-transition: z-index 1s ease;
	transition: z-index 1s ease;
}

.slide.is-active {
	z-index: 19;
	-webkit-transition: z-index 1s ease;
	transition: z-index 1s ease;
}

.slide__content {
	position: relative;
	margin: 0 auto;
	height: 95%;
	width: 100%;
	top: 2.5%;
}

@media ( min-width : 54em) {
	.slide__content {
		height: 80%;
		width: 100%;
		top: 10%;
	}
}

.slide__header {
	z-index: 9;
	position: relative;
	margin-left: 8%;
	height: 100%;
	display: -webkit-box;
	display: flex;
	-webkit-box-align: center;
	align-items: center;
	overflow-y: hidden;
	-webkit-transform: translateX(5%);
	transform: translateX(5%);
}

@media ( min-width : 54em) {
	.slide__header {
		-webkit-transform: translateX(-5%);
		transform: translateX(-5%);
	}
}

@font-face {
	font-family: 'paybooc-Bold';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-07@1.0/paybooc-Bold.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

@font-face {
	font-family: 'InfinitySans-BoldA1';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@2.1/InfinitySans-BoldA1.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

@font-face {
	font-family: 'NEXON Lv1 Gothic OTF';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@2.1/NEXON Lv1 Gothic OTF.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

.slide__title {
	font-family: "InfinitySans-BoldA1";
	font-size: 2em;
	font-weight: 700;
	color: #ffffff;
	overflow-y: hidden;
}

@media ( min-width : 54em) {
	.slide__title {
		font-size: 2.5em;
	}
}

.slide__title .title-line {
	display: block;
	overflow-y: hidden;
}

.slide__title .title-line span {
	display: inline-block;
	-webkit-transform: translate3d(0, 140%, 0);
	transform: translate3d(0, 140%, 0);
	opacity: 0;
	-webkit-transition: opacity 0.8s ease, -webkit-transform 0.4s ease;
	transition: opacity 0.8s ease, -webkit-transform 0.4s ease;
	transition: transform 0.4s ease, opacity 0.8s ease;
	transition: transform 0.4s ease, opacity 0.8s ease, -webkit-transform
		0.4s ease;
}

.slide__title .title-line span:nth-child(1) {
	-webkit-transition-delay: 0.15s;
	transition-delay: 0.15s;
}

.slide__title .title-line span:nth-child(2) {
	-webkit-transition-delay: 0.3s;
	transition-delay: 0.3s;
}

.is-active .slide__title .title-line span {
	-webkit-transform: translate3d(0, 0%, 0);
	transform: translate3d(0, 0%, 0);
	opacity: 1;
	-webkit-transition: opacity 0.1s ease, -webkit-transform 0.6s
		cubic-bezier(0.77, 0, 0.175, 1);
	transition: opacity 0.1s ease, -webkit-transform 0.6s
		cubic-bezier(0.77, 0, 0.175, 1);
	transition: transform 0.6s cubic-bezier(0.77, 0, 0.175, 1), opacity 0.1s
		ease;
	transition: transform 0.6s cubic-bezier(0.77, 0, 0.175, 1), opacity 0.1s
		ease, -webkit-transform 0.6s cubic-bezier(0.77, 0, 0.175, 1);
}

.is-active .slide__title .title-line:nth-of-type(2n) span {
	-webkit-transition-delay: 0.2s;
	transition-delay: 0.2s;
}

.slide__subtitle {
	font-family: NanumSquare;
	font-size: 1.5em;
	font-weight: 700;
	color: #ffffff;
	overflow-y: hidden;
}

@media ( min-width : 54em) {
	.slide__subtitle {
		font-size: 3em;
	}
}

.slide__subtitle .subtitle-line {
	display: block;
	overflow-y: hidden;
}

.slide__subtitle .subtitle-line span {
	display: inline-block;
	-webkit-transform: translate3d(0, 140%, 0);
	transform: translate3d(0, 140%, 0);
	opacity: 0;
	-webkit-transition: opacity 0.8s ease, -webkit-transform 0.4s ease;
	transition: opacity 0.8s ease, -webkit-transform 0.4s ease;
	transition: transform 0.4s ease, opacity 0.8s ease;
	transition: transform 0.4s ease, opacity 0.8s ease, -webkit-transform
		0.4s ease;
}

.slide__subtitle .subtitle-line span:nth-child(1) {
	-webkit-transition-delay: 0.15s;
	transition-delay: 0.15s;
}

.slide__subtitle .subtitle-line span:nth-child(2) {
	-webkit-transition-delay: 0.3s;
	transition-delay: 0.3s;
}

.is-active .slide__subtitle .subtitle-line span {
	-webkit-transform: translate3d(0, 0%, 0);
	transform: translate3d(0, 0%, 0);
	opacity: 1;
	-webkit-transition: opacity 0.1s ease, -webkit-transform 0.6s
		cubic-bezier(0.77, 0, 0.175, 1);
	transition: opacity 0.1s ease, -webkit-transform 0.6s
		cubic-bezier(0.77, 0, 0.175, 1);
	transition: transform 0.6s cubic-bezier(0.77, 0, 0.175, 1), opacity 0.1s
		ease;
	transition: transform 0.6s cubic-bezier(0.77, 0, 0.175, 1), opacity 0.1s
		ease, -webkit-transform 0.6s cubic-bezier(0.77, 0, 0.175, 1);
}

.is-active .slide__subtitle .subtitle-line:nth-of-type(2n) span {
	-webkit-transition-delay: 0.2s;
	transition-delay: 0.2s;
}

.slide__figure {
	z-index: 7;
	position: absolute;
	left: 0;
	right: 0;
	margin: 0 auto;
	height: 100%;
	width: 100%;
	-webkit-transition: -webkit-transform 0.5s
		cubic-bezier(0.19, 1, 0.22, 1);
	transition: -webkit-transform 0.5s cubic-bezier(0.19, 1, 0.22, 1);
	transition: transform 0.5s cubic-bezier(0.19, 1, 0.22, 1);
	transition: transform 0.5s cubic-bezier(0.19, 1, 0.22, 1),
		-webkit-transform 0.5s cubic-bezier(0.19, 1, 0.22, 1);
}

.is-sliding .slide__figure {
	-webkit-transform: scale(0.8);
	transform: scale(0.8);
	-webkit-transition: -webkit-transform 0.5s
		cubic-bezier(0.19, 1, 0.22, 1);
	transition: -webkit-transform 0.5s cubic-bezier(0.19, 1, 0.22, 1);
	transition: transform 0.5s cubic-bezier(0.19, 1, 0.22, 1);
	transition: transform 0.5s cubic-bezier(0.19, 1, 0.22, 1),
		-webkit-transform 0.5s cubic-bezier(0.19, 1, 0.22, 1);
}

.slide__img {
	position: relative;
	display: block;
	background-size: cover;
	background-attachment: fixed;
	background-position: 50%;
	-webkit-backface-visibility: hidden;
	height: 0%;
	width: 100%;
	-webkit-filter: grayscale(0%);
	filter: grayscale(0%);
	-webkit-transition: height 1s 1.4s cubic-bezier(0.19, 1, 0.22, 1),
		-webkit-filter 0.4s 0.1s ease;
	transition: height 1s 1.4s cubic-bezier(0.19, 1, 0.22, 1),
		-webkit-filter 0.4s 0.1s ease;
	transition: height 1s 1.4s cubic-bezier(0.19, 1, 0.22, 1), filter 0.4s
		0.1s ease;
	transition: height 1s 1.4s cubic-bezier(0.19, 1, 0.22, 1), filter 0.4s
		0.1s ease, -webkit-filter 0.4s 0.1s ease;
}

.is-active .slide__img {
	height: 100%;
	opacity: 1;
	-webkit-transition: height 0.5s 0.3s cubic-bezier(0.77, 0, 0.175, 1),
		-webkit-filter 0.4s 0.1s ease;
	transition: height 0.5s 0.3s cubic-bezier(0.77, 0, 0.175, 1),
		-webkit-filter 0.4s 0.1s ease;
	transition: height 0.5s 0.3s cubic-bezier(0.77, 0, 0.175, 1), filter
		0.4s 0.1s ease;
	transition: height 0.5s 0.3s cubic-bezier(0.77, 0, 0.175, 1), filter
		0.4s 0.1s ease, -webkit-filter 0.4s 0.1s ease;
}

.is-sliding .slide__img {
	-webkit-filter: grayscale(100%);
	filter: grayscale(100%);
}
</style>

<section id="main-content">
	<section class="wrapper">

		<section class="slides">

			<section class="slides-nav">
				<nav class="slides-nav__nav"></nav>
			</section>

			<section class="slide is-active">
				<div class="slide__content">
					<figure class="slide__figure">
						<div class="slide__img"
							style="background-image: url(https://i.ibb.co/qJR1sJv/book.jpg);"></div>
					</figure>
					<header class="slide__header">
						<h2 class="slide__title">
							<span class="title-line"><span style="font-size: 1.5em;">희망의 책 대전본부</span></span> 
							<span class="title-line"><span>책으로 행복한 대전,희망의 책</span></span>
						</h2>
				<div class="col-md-4  col-md-offset-3"  style="height:90%;">
					<div class="fb-page"
						data-href="https://www.facebook.com/%ED%9D%AC%EB%A7%9D%EC%9D%98-%EC%B1%85-%EB%8C%80%EC%A0%84%EB%B3%B8%EB%B6%80-1913139302044535/"
						data-tabs="timeline" data-width="600" data-height="730"
						data-small-header="false" data-adapt-container-width="true"
						data-hide-cover="false" data-show-facepile="false">
						<blockquote
							cite="https://www.facebook.com/%ED%9D%AC%EB%A7%9D%EC%9D%98-%EC%B1%85-%EB%8C%80%EC%A0%84%EB%B3%B8%EB%B6%80-1913139302044535/"
							class="fb-xfbml-parse-ignore">
							<a
								href="https://www.facebook.com/%ED%9D%AC%EB%A7%9D%EC%9D%98-%EC%B1%85-%EB%8C%80%EC%A0%84%EB%B3%B8%EB%B6%80-1913139302044535/">희망의
								책 대전본부</a>
						</blockquote>
					</div>
				</div>
					</header>
					
				</div>
			</section>


		</section>


		<div class="row">


			<div class="text-center">
				<h1>
					<span style="color: #4ECDC4"> 이달의 책 </span>
				</h1>

			</div>
			<br><br>
			

			<c:forEach var="bookBoardVO" items="${bbList}" varStatus="status">
				<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
					<div class="custom-box">
						<div class="servicetitle">
							<h2>
								<b>${bookBoardVO.bookBrdTitle }</b>
							</h2>
							<hr>
						</div>

					
						<a href="/bookboard/readPage&bookBrdNum=${bookBoardVO.bookBrdNum}">
							<img src="/displayFile?fileName=${bookBoardVO.imgPath}"
								alt="${filename}" style="width: 80%; height: 80%;" />
						</a>
						
						<p>
							<span style="font-size: 20px;"><b>${bookBoardVO.bookTitle}</b></span>
						</p>
					</div>
					<!-- end custombox -->
				</div>
			</c:forEach>
			
			
			
			</div>
			
			
		<div class="row">
			
				<div class="text-center">
				<h1>
					<span style="color: #4ECDC4"> 독서모임 </span>
				</h1>

			</div>
			<br><br>
			

			<c:forEach items="${metList}" var="MeetingVO" varStatus="var">
				<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">

						<div class="content-panel pn">


							<a class="fancybox"
								href='/meeting/readPage?metNum=${MeetingVO.metNum}'>

								<div id="spotify">
									<div class="col-xs-4 col-xs-offset-8">

										<button class="btn btn-sm btn-clear-g btn-round"
											style="background-color: #48bcb4">
											<font style="color: white;">JOIN</font>
										</button>
									</div>
									<div class="sp-title">
										<h3>GROUP: ${MeetingVO.metName}</h3>
										<h6>
											NO. ${MeetingVO.metNum}</6>
											<h6>#${MeetingVO.keyword}</h6>
									</div>
									
								</div>

							</a>
							<p class="followers">
								<i class="fa fa-user"></i> ${MeetingVO.headCount} FOLLOWERS
							</p>
						</div>

					</div>
				</c:forEach>
				


		</div>
		<!-- /row -->
	</section>
</section>

<jsp:include page="include/footer.jsp" />
<script async defer crossorigin="anonymous"
	src="https://connect.facebook.net/ko_KR/sdk.js#xfbml=1&version=v5.0&appId=2634739346617283&autoLogAppEvents=1">
	
</script>
</html>

