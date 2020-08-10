<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="/WEB-INF/views/include/header.jsp"/>

<!-- Main content -->
<section class="content">
	<div class="row">
		<!-- left column -->
		<div class="col-md-12">
			<!-- general form elements -->
			<div class="box box-primary">
				<div class="box-header">
					<h3 class="box-title">READ Bookstore</h3>
				</div>
				<!-- /.box-header -->

				<form role="form" action="modifyPage" method="post">

					<input type='hidden' name='bookstoreNum' value="${bookstoreVO.bookstoreNum}"> <input
						type='hidden' name='page' value="${cri.page}"> <input
						type='hidden' name='perPageNum' value="${cri.perPageNum}">
					<input type='hidden' name='searchType' value="${cri.searchType}">
					<input type='hidden' name='keyword' value="${cri.keyword}">

				</form>

				<div class="box-body">
					<div class="form-group">
						<label for="exampleInputEmail1">bookstoreNum</label> <input type="text"
							name='bookstoreNum' class="form-control" value="${bookstoreVO.bookstoreNum}"
							readonly="readonly">
					</div>

					<div class="form-group">
						<label for="exampleInputEmail1">bookstoreTitle</label> <input type="text"
							name='bookstoreTitle' class="form-control" value="${bookstoreVO.bookstoreTitle}"
							readonly="readonly">
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1">bookstoreContent</label>
						<textarea class="form-control" name="bookstoreContent" rows="3"
							readonly="readonly">${bookstoreVO.bookstoreContent}</textarea>
					</div>
					
					<div class="form-group">
						<label for="exampleInputEmail1">bookstoreUrl</label> <input type="text"
							name='bookstoreUrl' class="form-control" value="${bookstoreVO.bookstoreUrl}"
							readonly="readonly">
				</div>
				<!-- /.box-body -->

				<div class="box-footer">
	
						<button type="submit" class="btn btn-warning">Modify</button>
						<button type="submit" class="btn btn-danger">REMOVE</button>

					<button type="submit" class="btn btn-primary">GO LIST</button>
				</div>


				<script>
					$(document).ready(function() {

						var formObj = $("form[role='form']");

						console.log(formObj);

						$(".btn-warning").on("click", function() {
							formObj.attr("action", "/bookstore/modifyPage");
							formObj.attr("method", "get");
							formObj.submit();
						});

						$(".btn-danger").on("click", function() {
							formObj.attr("action", "/bookstore/removePage");
							formObj.submit();
						});

						$(".btn-primary").on("click", function() {
							formObj.attr("method", "get");
							formObj.attr("action", "/bookstore/list");
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
<%@include file="/WEB-INF/views/include/footer.jsp"%>
