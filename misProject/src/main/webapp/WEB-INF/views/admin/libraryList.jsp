<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>



<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Admin Library List</title>
<link href="/../resources/admin/dist/css/styles.css" rel="stylesheet" />
<link
	href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css"
	rel="stylesheet" crossorigin="anonymous" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/js/all.min.js"
	crossorigin="anonymous"></script>
</head>

	<jsp:include page="/WEB-INF/views/admin/adminHeader.jsp" />
<body class="sb-nav-fixed"
	style="overflow-x: hidden; overflow-y: hidden">
	
</body>

<div id="layoutSidenav">

	<div id="layoutSidenav_content">
		<main>
		<div class="container-fluid">
			<h1 class="mt-4">도서관 리스트</h1>
			<ol class="breadcrumb mb-4">
				<li class="breadcrumb-item"><a href="index.html">독서 생태계 관리</a></li>
				<li class="breadcrumb-item active">도서관 리스트</li>
			</ol>

			<div class="card mb-4">
				<div class="card-header">
					<i class="fas fa-table mr-1"></i> 도서관 리스트
				</div>
				<div class="card-body">
					<div class="table-responsive">


						<table class="table table-bordered" id="dataTable" width="100%"
							cellspacing="0">

							<thead>
								<tr>
									<th style="width: 10px">NO</th>
									<th>NUM</th>
									<th>NAME</th>
									<th>ADRESS</th>
									<th>URL</th>
								</tr>
							</thead>

							<tbody>
								<c:forEach items="${list}" var="memberVO" varStatus="var">
									<tr>
										<c:if test="${pageMaker.cri.page==1}">
											<td>${var.count }</td>
										</c:if>
										<c:if test="${pageMaker.cri.page !=1 }">
											<td>${var.count + ((pageMaker.cri.page-1)*10) }</td>
										</c:if>


										<td>${libraryVO.libraryNum}</td>
										<td><a
											href='/member/readPage${pageMaker.makeSearch(pageMaker.cri.page) }&memNum=${libraryVO.library}'>
												${libraryVO.libraryTitle} </a></td>
												<td>${libraryVO.libraryContent}</td>
												<td>${libraryVO.alibraryUrl}</td>
									</tr>

								</c:forEach>

							</tbody>
						</table>
					</div>
					
					
				</div>
			</div>
		</div>
		</main>
		<footer class="py-4 bg-light mt-auto">
			<div class="container-fluid">
				<div class="d-flex align-items-center justify-content-between small">
					<div class="text-muted">Copyright &copy; Your Website 2020</div>
					<div>
						<a href="#">Privacy Policy</a> &middot; <a href="#">Terms
							&amp; Conditions</a>
					</div>
				</div>
			</div>
		</footer>
	</div>
</div>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.bundle.min.js"
	crossorigin="anonymous"></script>
<script src="/../resources/admin/dist/js/scripts.js"></script>
<script
	src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js"
	crossorigin="anonymous"></script>
<script src="/../resources/admin/dist/assets/demo/datatables-demo.js"></script>
</body>
</html>
