<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>책 검색</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta
	content="A fully featured admin theme which can be used to build CRM, CMS, etc."
	name="description" />
<meta content="Coderthemes" name="author" />
<!-- App favicon -->
<link rel="shortcut icon"
	href="../../resources/dist/assets/images/favicon.ico">
<!-- Favicons -->
<link href="../../resources/img/favicon.png" rel="icon">
<link href="../../resources/img/apple-touch-icon.png"
	rel="apple-touch-icon">

<!-- Bootstrap core CSS -->
<link href="../../resources/lib/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<!--external css-->
<link href="../../resources/lib/font-awesome/css/font-awesome.css"
	rel="stylesheet" />
<link rel="stylesheet" type="text/css"
	href="../../resources/css/zabuto_calendar.css">
<link rel="stylesheet" type="text/css"
	href="../../resources/lib/gritter/css/jquery.gritter.css" />
<!-- Custom styles for this template -->
<link href="../../resources/css/style.css" rel="stylesheet">
<link href="../../resources/css/style-responsive.css" rel="stylesheet">
<script src="../../resources/lib/chart-master/Chart.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-2.1.4.min.js"></script>

<!-- inline style to handle loading of various element-->


<!-- third party css -->
<link href="../../resources/dist/assets/css/vendor/fullcalendar.min.css"
	rel="stylesheet" type="text/css" />
<!-- third party css end -->

<!-- App css -->
<link href="/../..resources/dist/assets/css/icons.min.css"
	rel="stylesheet" type="text/css" />
<link href="../../resources/dist/assets/css/app.min.css"
	rel="stylesheet" type="text/css" id="main-style-container" />

</head>
<style>
td, th {
	text-align: center;
}
</style>
<body>
	<!-- Begin page -->
	<!-- ============================================================== -->
	<!-- Start Page Content here -->
	<!-- ============================================================== -->
	<!-- Main content -->
	<section id="main-content">
		<section class="wrapper">

			<div class="row">
				<div class="col-12">
					<div class="page-title-box">
						<h4 class="page-title">책 검색</h4>
					</div>
				</div>
			</div>
			<!-- end page title -->

			<div class="row mt">
				<div class="col-lg-12">

					<div class="form-panel">
						<h4 class="mb">
							<i class="fa fa-angle-right"></i> 책 검색
						</h4>
						<form method="get" action="searchBook"
							onsubmit="return searchCheck();">
							<div class="form-group">
								<label class="sr-only" for="exampleInputEmail2">책 </label> <input
									type="text" class="form-control" id="bookTitle"
									style="width: 600px;" name="bookTitle" placeholder="책을 선택해주세요.">
							</div>
							<button class="btn btn-warning" type="submit">검색</button>

						</form>
					</div>

					<!-- /form-panel -->
				</div>
				<!-- /col-lg-12 -->
			</div>

			<div class="col-md-12 mt">
				<div class="content-panel">
					<table class="table table-hover">
						<thead>

							<tr>
								<th>NO</th>
								<th>책 제목</th>
								<th>저자</th>
								<th>출판사</th>

							</tr>
						</thead>
						<tbody>



							<c:if test="${!empty bookList}">
								<c:forEach items="${bookList}" var="BookVO" varStatus="listStat">
									<tr>
										<td>${listStat.count}<input type="hidden" name="bookNum"
											id="bookNum" value="${BookVO.bookNum}">
										</td>
										  <td><a href="#"
											onclick="sendData('${BookVO.bookNum}', '${BookVO.bookTitle}','${BookVO.writer}', '${BookVO.publisher}')">
											${BookVO.bookTitle}</a>
										</td>

										<td>${BookVO.writer}</td>
										<td>${BookVO.publisher}</td>
									
									</tr>
								</c:forEach>
							</c:if>
							<c:if test="${empty bookList}">
								<tr>
									<td colspan="2">내역이 없습니다.</td>
								</tr>
							</c:if>
						
						</tbody>
					</table>




				</div>
			</div>


		</section>
	</section>
	<!-- END wrapper -->

	<!-- App js -->
	<script src="../../resources/dist/assets/js/app.js"></script>

	<!-- third party js -->
	<script src="../../resources/dist/assets/js/vendor/jquery-ui.min.js"></script>
	<script src="../../resources/dist/assets/js/vendor/fullcalendar.min.js"></script>
	<!-- third party js ends -->

	<!-- demo app -->
	<script src="/../../resources/dist/assets/js/pages/demo.calendar.js"></script>
	<!-- end demo js-->




</body>

</script>
</html>