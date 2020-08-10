<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="Dashboard">
  <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
  <title>Dashio - Bootstrap Admin Template</title>

  <!-- Favicons -->
  <link href="../../resources/img/favicon.png" rel="icon">
  <link href="../../resources/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Bootstrap core CSS -->
  <link href="../../resources/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!--external css-->
  <link href="../../resources/lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
  <link rel="stylesheet" type="text/css" href="../../resources/css/zabuto_calendar.css">
  <link rel="stylesheet" type="text/css" href="../../resources/lib/gritter/css/jquery.gritter.css" />
  <!-- Custom styles for this template -->
  <link href="../../resources/css/style.css" rel="stylesheet">
  <link href="../../resources/css/style-responsive.css" rel="stylesheet">
 
  <link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/moonspam/NanumSquare/master/nanumsquare.css">
  <script src="../../resources/lib/chart-master/Chart.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>
  <script type="text/javascript" src="http://code.jquery.com/jquery-2.1.4.min.js"></script>
  
  <link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/moonspam/NanumSquare/master/nanumsquare.css"> 
  <!-- =======================================================
    Template Name: Dashio
    Template URL: https://templatemag.com/dashio-bootstrap-admin-template/
    Author: TemplateMag.com
    License: https://templatemag.com/license/
  ======================================================= -->
</head>

<body>
  <section id="container">
    <!-- **********************************************************************************************************************************************************
        TOP BAR CONTENT & NOTIFICATIONS
        *********************************************************************************************************************************************************** -->
    <!--header start-->
    <header class="header bg-white">
      <div class="sidebar-toggle-box">
        <div class="fa fa-bars tooltips" data-placement="right" data-original-title="Toggle Navigation"></div>
       &nbsp; &nbsp;
      </div>
      <!--logo start-->
     <a href="/" class="logo"><img style="width: 80px;" src="../../resources/img/hmob.png"></a>

      <!--logo end-->
     
       <div class="nav notify-row" id="top_menu">
        <!--  notification start -->
        <ul class="nav top-menu">
          <!-- settings start -->
           
          <!-- settings end -->

          <!-- inbox dropdown start-->
         
          <!-- inbox dropdown end -->
          
          <!-- notification dropdown start-->
         
          <!-- notification dropdown end -->
        </ul>
        <!--  notification end -->
      </div>
      <div class="top-menu">
        <ul class="nav pull-right top-menu">
       <c:if test="${!empty member}">
        <li><a class="logout" href="/member/logout">logout</a></li>
        </c:if>
        
        <c:if test="${empty member}">
       <li><a class="logout" href="/member/login">login</a></li>
        </c:if>
        
        </ul>
      </div>
      
      
      
   
      
      
    </header>
    <!--header end-->
    <!-- **********************************************************************************************************************************************************
        MAIN SIDEBAR MENU
        *********************************************************************************************************************************************************** -->
    <!--sidebar start-->
    <aside>
    
      <div id="sidebar" class="nav-collapse ">
      
        <!-- sidebar menu start-->
        <ul class="sidebar-menu" id="nav-accordion">
          
          
          <c:choose>
          <c:when test="${empty member}">
          <h5 class="centered"></h5>
				</c:when>
				
				
          <c:when test="${member.authority eq 1 or member.authority eq 2 }">
           <p class="centered"><a href="/member/list"><img src="../../resources/img/user.png" class="img-circle" width="80"></a></p>
          <h5 class="centered">${member.memName}님 반갑습니다!</h5> &nbsp;
          <h5 class="centered mypage"><a href="/mypage/memberUpdateView" class="mypage"><i class="fa fa-github-alt">내 정보</i></a></h5>          
				</c:when>
				
          <c:when test="${member.authority eq 3 }">
           <p class="centered"><a href="/mypage/memberUpdateView"><img src="../../resources/img/user.png" class="img-circle" width="80"></a></p>
          <h5 class="centered">${member.memName}님 반갑습니다!</h5> &nbsp;
          <h5 class="centered mypage"><a href="/member/list" class="mypage"><i class="fa fa-github-alt">관리자페이지</i></a></h5>          
				</c:when>
          </c:choose>
				
				
				
          <li class="mt">
            <a class="active"  href="/notice/list">
              <i class="fa fa-dashboard"></i>
              <span>공지사항</span>
              </a>
          </li>
          
          
          <li class="sub-menu">
            <a href="javascript:;">
              <i class="fa fa-desktop"></i>
              <span>희망의 책 소개</span><i class="fa fa-angle-down"></i>
            </a>
          <ul class="sub">
            <li><a href="/intro/intro">인사말</a></li>
            <li><a href="/intro/hire">조직도</a></li>
            <li><a href="/intro/generation">연혁</a></li>
            <li><a href="/intro/map">찾아오시는 길</a></li>

            </ul>
          </li>
          
          
         <li class="sub-menu">
          <a href="/bookboard/list">
            <i class="fa fa-book"></i>
            <span>이달의책</span>
            </a>
        </li>
         


        <li class="sub-menu">
            <a href="/meeting/list">
              <i class="fa fa-tasks"></i>
              <span>독서모임</span>
              </a>
          
          </li>
  

          </li>
          <li class="sub-menu">
            <a href="javascript:;">
              <i class="fa fa-th"></i>
              <span>독서생태계</span><i class="fa fa-angle-down"></i>
              </a>
            <ul class="sub">
              <li><a href="/reportboard/list">독후감</a></li>
              <li><a href="/library/list">도서관</a></li>
              <li><a href="/bookstore/list">책방</a></li>
              <li><a href="/book/list">책 둘러보기</a></li>
            </ul>
          </li>
          <li>
   
          <li class="sub-menu">
            <a href="/qna/list">
              <i class="fa fa-th"></i>
              <span>문의게시판</span>
              </a>
          </li>

          <li class="sub-menu">
            <a href="javascript:;">
              <i class="fa fa-envelope"></i>
              <span>후원하기 </span><i class="fa fa-angle-down"></i>
              </a>
  
              <ul class="sub">
                <li><a href="/business/intro">사업소개</a></li>
                <li><a href="/feepayment/register"> 개인후원</a></li>
                <li><a href="/tax/register"> 연말정산 영수증 신청</a></li>
              </ul>
          </li>
  
        </ul>
        <!-- sidebar menu end-->
      </div>
    </aside>
</section>
