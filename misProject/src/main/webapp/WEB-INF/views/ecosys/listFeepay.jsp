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
<title>Admin Member List</title>
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
			<h1 class="mt-4">후원 내역</h1>
			<ol class="breadcrumb mb-4">
				<li class="breadcrumb-item"><a href="index.html">후원 관리</a></li>
				<li class="breadcrumb-item active">후원 내역</li>
			</ol>

			<div class="card mb-4">
				<div class="card-header">
					<i class="fas fa-table mr-1"></i> 후원 내역
				</div>
				<div class="card-body">
					<div class="table-responsive">


						<table class="table table-bordered" id="dataTable" width="100%"
							cellspacing="0">

							<thead>
								<tr>
									<th style="width: 10px">NO</th>
									<th>NUM</th>
									<th>ID</th>
									<th>NAME</th>
									<th>PAY</th>
									<th>SPONSER</th>
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


										<td>${memberVO.memNum}</td>
										<td><a
											href='/member/readPage${pageMaker.makeSearch(pageMaker.cri.page) }&memNum=${memberVO.memNum}'>
												${memberVO.memId} </a></td>
												<td>${memberVO.memName}</td>
												<td>${memberVO.authority}</td>
												<td>${memberVO.phone}</td>
												<td>${memberVO.email}</td>
										<td>${memberVO.signDate}</td>
									</tr>

								</c:forEach>

							</tbody>
						</table>
					</div>
					
					
				</div>
			</div>
		</div>
		</main>
		
	</div>
</div>
</body>
</html>


<jsp:include page="../include/footer.jsp"  />