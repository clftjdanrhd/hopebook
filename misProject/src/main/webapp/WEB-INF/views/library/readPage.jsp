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
					<h3 class="box-title">READ Library</h3>
				</div>
				<!-- /.box-header -->

				<form role="form" action="modifyPage" method="post">

					<input type='hidden' name='libraryNum' value="${libraryVO.libraryNum}"> <input
						type='hidden' name='page' value="${cri.page}"> <input
						type='hidden' name='perPageNum' value="${cri.perPageNum}">
					<input type='hidden' name='searchType' value="${cri.searchType}">
					<input type='hidden' name='keyword' value="${cri.keyword}">

				</form>

				<div class="box-body">
					<div class="form-group">
						<label for="exampleInputEmail1">libraryNum</label> <input type="text"
							name='libraryNum' class="form-control" value="${LibraryVO.libraryNum}"
							readonly="readonly">
					</div>

					<div class="form-group">
						<label for="exampleInputEmail1">libraryTitle</label> <input type="text"
							name='libraryTitle' class="form-control" value="${LibraryVO.libraryTitle}"
							readonly="readonly">
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1">libraryContent</label>
						<textarea class="form-control" name="libraryContent" rows="3"
							readonly="readonly">${LibraryVO.libraryContent}</textarea>
					</div>
					
					<div class="form-group">
						<label for="exampleInputEmail1">libraryUrl</label> <input type="text"
							name='libraryUrl' class="form-control" value="${LibraryVO.libraryUrl}"
							readonly="readonly">
				</div>
				
				<div class="form-group">
						<label for="exampleInputEmail1">memNum</label> <input type="text"
							name='memNum' class="form-control" value="${LibraryVO.memNum}"
							readonly="readonly">
					</div>
				<!-- /.box-body -->

				<div class="box-footer">
	
						<button type="submit" class="btn btn-warning">Modify</button>
						<button type="submit" class="btn btn-danger">REMOVE</button>

					<button type="submit" class="btn btn-primary" >GO LIST</button>
				</div>
				
									


				<script>
					$(document).ready(function() {

						var formObj = $("form[role='form']");

						console.log(formObj);

						$(".btn-warning").on("click", function() {
							formObj.attr("action", "/library/modifyPage");
							formObj.attr("method", "get");
							formObj.submit();
						});

						$(".btn-danger").on("click", function() {
							formObj.attr("action", "/library/removePage");
							formObj.submit();
						});

						$(".btn-primary").on("click", function() {
							formObj.attr("method", "get");
							formObj.attr("action", "/library/list");
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
