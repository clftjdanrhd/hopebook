<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html lang="en">

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
  <!-- Custom styles for this template -->
  <link href="../../resources/css/style.css" rel="stylesheet">
  <link href="../../resources/css/style-responsive.css" rel="stylesheet">
  
  <!-- =======================================================
    Template Name: Dashio
    Template URL: https://templatemag.com/dashio-bootstrap-admin-template/
    Author: TemplateMag.com
    License: https://templatemag.com/license/
  ======================================================= -->
</head>

<body>
  <!-- **********************************************************************************************************************************************************
      MAIN CONTENT
      *********************************************************************************************************************************************************** -->
  <div id="login-page">
    <div class="container">
      <form class="form-login" action="/member/login" method ="post">
        <h2 class="form-login-heading">희망의 책 로그인</h2>
        <div class="login-wrap">
          <input type="text" class="form-control" placeholder="User ID" name="memId" autofocus>
          <br>
          <input type="password" class="form-control" name="memPw" placeholder="Password">
          <label class="checkbox">
            <span class="pull-right">
            <a data-toggle="modal" href="/member/"> 비밀번호 찾기</a>
            </span>
            </label>
          <button class="btn btn-theme btn-block" href="/" type="submit"><i class="fa fa-lock"></i> 로그인</button>
          <hr>
         
          <div class="registration">
           아직 회원이 아니신가요?<br/>
            <a class="" href="/member/register">
             회원가입
              </a>
          </div>
        </div>
        <!-- Modal -->
        <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal" class="modal fade">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">비밀번호 찾기</h4>
              </div>
              <div class="modal-body">
                <p>Enter your e-mail address below to reset your password.</p>
                <input type="text" name="email" placeholder="Email" autocomplete="off" class="form-control placeholder-no-fix">
              </div>
              <div class="modal-footer">
                <button data-dismiss="modal" class="btn btn-default" type="button">취소</button>
                <button class="btn btn-theme" type="button">로그인</button>
              </div>
            </div>
          </div>
        </div>
        <!-- modal -->
      </form>
    </div>
  </div>
  <!-- js placed at the end of the document so the pages load faster -->
  <script src="../../resources/lib/jquery/jquery.min.js"></script>
  <script src="../../resources/lib/bootstrap/js/bootstrap.min.js"></script>
  <!--BACKSTRETCH-->
  <!-- You can use an image of whatever size. This script will stretch to fit in any screen size.-->
  <script type="text/javascript" src="../../resources/lib/jquery.backstretch.min.js"></script>
  <script>
    $.backstretch("../../resources/img/login-bg.jpg", {
      speed: 500
    });
  </script>
</body>

</html>
