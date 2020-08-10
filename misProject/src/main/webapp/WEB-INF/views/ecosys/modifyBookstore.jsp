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
<form role="form" action="modifyBookstore" method="post">
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

						<input type="text" name='title' class="form-control"
							value="${bookstoreVO.bookstoreTitle}">

					</div>
				</div>
				<div class="box">
					Content
					<div class="card mb-4">

						<input type="text" name='title' class="form-control"
							value="${bookstoreVO.bookstoreContent}">
					</div>

				</div>
				<div class="box">
					Url
					<div class="card mb-4">

						<input type="text" name='title' class="form-control"
							value="${bookstoreVO.bookstoreUrl}">

					</div>
				</div>
			</main>
</form>
<div class="box-footer">
	<button type="submit" class="btn btn-primary">SAVE</button>
	<button type="submit" class="btn btn-warning">CANCEL</button>
</div>


</div>
</div>
</body>
</html>
<script>
	$(document)
			.ready(
					function() {

						var formObj = $("form[role='form']");

						console.log(formObj);

						$(".btn-warning")
								.on(
										"click",
										function() {
											self.location = "/ecosys/listBookstore?page=${cri.page}&perPageNum=${cri.perPageNum}"
													+ "&searchType=${cri.searchType}&keyword=${cri.keyword}";
										});

						$(".btn-primary").on("click", function() {
							formObj.submit();
						});
					});
</script>




</div>
<!-- /.box -->
</div>
<!--/.col (left) -->

</div>
<!-- /.row -->
</section>
<!-- /.content -->
</div>
<!-- /.content-wrapper -->

<jsp:include page="../include/footer.jsp"  />
