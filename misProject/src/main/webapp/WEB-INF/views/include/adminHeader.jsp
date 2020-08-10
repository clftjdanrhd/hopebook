<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="Dashboard">
<meta name="keyword"
	content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
<title>Dashio - Bootstrap Admin Template</title>

<!-- Favicons -->
<link href="/resources/img/favicon.png" rel="icon">
<link href="/resources/img/apple-touch-icon.png" rel="apple-touch-icon">

<!-- Bootstrap core CSS -->
<link href="/resources/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<!--external css-->
<link href="/resources/lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="/resources/css/zabuto_calendar.css">
<link rel="stylesheet" type="text/css" href="/resources/lib/gritter/css/jquery.gritter.css" />
<!-- Custom styles for this template -->
<link href="/resources/css/style.css" rel="stylesheet">
<link href="/resources/css/style-responsive.css" rel="stylesheet">
<script src="/resources/lib/chart-master/Chart.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-2.1.4.min.js"></script>
<!-- =======================================================
    Template Name: Dashio
    Template URL: https://templatemag.com/dashio-bootstrap-admin-template/
    Author: TemplateMag.com
    License: https://templatemag.com/license/
  ======================================================= -->
<style>
ul.sidebar-menu li a{
    color: white;}
</style>
</head>

<body>
	<section id="container"> <!-- **********************************************************************************************************************************************************
        TOP BAR CONTENT & NOTIFICATIONS
        *********************************************************************************************************************************************************** -->
	<!--header start--> <header class="header black-bg">
	<div class="sidebar-toggle-box">
		<div class="fa fa-bars tooltips" data-placement="right" data-original-title="Toggle Navigation"></div>
	</div>
	<!--logo start--> <a href="/" class="logo"><img
		style="width: 80px;" src="/resources/img/hmob.png"></a> <!--logo end-->
	<div class="top-menu">
		<ul class="nav pull-right top-menu">
			<li><a class="logout" href="login.html">Logout</a></li>
		</ul>
	</div>

	</header> <!--header end--> <!-- **********************************************************************************************************************************************************
        MAIN SIDEBAR MENU
        *********************************************************************************************************************************************************** -->
	<!--sidebar start--> <aside>

	<div id="sidebar" class="nav-collapse "
		style="background-color: #22242a">
		<!-- sidebar menu start-->
		<ul class="sidebar-menu" id="nav-accordion">


			<li class="mt"><a class="active" href="${path}/member/list">
					<i class="fa fa-dashboard"></i> <span>회원 관리</span>
			</a></li>



			<li class="sub-menu"><a href="javascript:;"> <i
					class="fa fa-desktop"></i> <span>모임 관리</span> <i
					class="fa fa-angle-down"></i></a>

				<ul class="sub">
					<li><a href="/ecosys/listMeeting">모임 리스트</a></li>
					<li><a href="/ecosys/listYnMeeting">모임 승인/거절</a></li>


				</ul></li>
			<li class="sub-menu"><a href="${path}/bookboard/list"> <i
					class="fa fa-book"></i> <span>이달의책</span>
			</a></li>




			<li class="sub-menu"><a href="javascript:;"> <i
					class="fa fa-th"></i><span>독서생태계 관리</span><i
					class="fa fa-angle-down"></i>
			</a>
				<ul class="sub">
					<li><a href="/ecosys/listReport">독후감 리스트</a></li>
					<li><a href="/ecosys/listLibrary">도서관 리스트</a></li>
					<li><a href="/ecosys/listBookstore">책방 리스트</a></li>
				</ul></li>
			<li>
			<li class="sub-menu"><a href="javascript:;"> <i
					class="fa fa-th"></i> <span>문의관리</span>
			</a></li>

			<li class="sub-menu"><a href="javascript:;"> <i
					class="fa fa-envelope"></i> <span>후원관리 </span><i
					class="fa fa-angle-down"></i>
			</a>
				<ul class="sub">
					<li><a href="/tax/intro">후원 내역</a></li>
					<li><a href="/tax/list"> 영수증 신청 내역</a></li>
				</ul></li>

		</ul>
		<!-- sidebar menu end-->
	</div>
	</aside> </section>


