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
                        <h1 class="mt-4">ReadPage</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="index.html">그룹</a></li>
                            <li class="breadcrumb-item active">하위 메뉴</li>
                        </ol>
                        <div class="box">
                        Title
                        <div class="card mb-4">
                           
                                <input type="text"
							name='title' class="form-control" value="${libraryVO.libraryTitle}"
							readonly="readonly">
                            
                        </div>
                        </div>
                        <div class="box">
                            Content
                            <div class="card mb-4">
                                
                                    <input type="text"
							name='title' class="form-control" value="${libraryVO.libraryContent}"
							readonly="readonly">                                </div>
                           
                            </div>
                            <div class="box">
                                Url
                                <div class="card mb-4">
                                   
                                         <input type="text"
							name='title' class="form-control" value="${libraryVO.libraryUrl}"
							readonly="readonly">
                                  
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