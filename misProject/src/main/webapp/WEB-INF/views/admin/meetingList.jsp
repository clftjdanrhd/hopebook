<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<jsp:include page="/WEB-INF/views/admin/adminHeader.jsp" />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body class="sb-nav-fixed"
	style="overflow-x: hidden; overflow-y: hidden">
	
</body>

<div id="layoutSidenav">

	<div id="layoutSidenav_content">
		<main>
		<div class="container-fluid">
			<h1 class="mt-4">독서모임 리스트</h1>
			<ol class="breadcrumb mb-4">
				<li class="breadcrumb-item"><a href="index.html">모임 관리</a></li>
				<li class="breadcrumb-item active">모임 리스트</li>
			</ol>

			<div class="card mb-4">
				<div class="card-header">
					<i class="fas fa-table mr-1"></i> 독서모임 리스트
				</div>
				<div class="card-body">
					<div class="table-responsive">


						<table class="table table-bordered" id="dataTable" width="100%"
							cellspacing="0">

							<thead>
								<tr>
									<th style="width: 10px">NO</th>
									<th>모임이름</th>
									<th>모임번호</th>
									<th>회원 수</th>
								</tr>
							</thead>

							<tbody>
								<c:forEach items="${list}" var="MeetingVO" varStatus="var">
									<tr>
										<c:if test="${pageMaker.cri.page==1}">
											<td>${var.count }</td>
										</c:if>
										<c:if test="${pageMaker.cri.page !=1 }">
											<td>${var.count + ((pageMaker.cri.page-1)*10) }</td>
										</c:if>


										<td>${MeetingVO.memId}</td>
										<td><a
											href='../member/readPage${pageMaker.makeSearch(pageMaker.cri.page) }&metNum=${MeetingVO.metNum}'>
												${MeetingVO.metName} </a></td>
										<td>${MeetingVO.headCount}</td>
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