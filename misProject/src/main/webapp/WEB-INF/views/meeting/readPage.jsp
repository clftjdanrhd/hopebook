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
					<h3 class="box-title">READ BOARD</h3>
				</div>
				<!-- /.box-header -->

				<form role="form" action="modifyPage" method="post">

					<input type='hidden' name='metNum' value="${meetingVO.metNum}"> <input
						type='hidden' name='page' value="${cri.page}"> <input
						type='hidden' name='perPageNum' value="${cri.perPageNum}">
					<input type='hidden' name='searchType' value="${cri.searchType}">
					<input type='hidden' name='keyword' value="${cri.keyword}">

				</form>
				

				<div class="box-body">
					<div class="form-group">
						<label for="exampleInputEmail1">metName</label> <input type="text"
							name='title' class="form-control" value="${meetingVO.metName}"
							readonly="readonly">
					</div>

					<div class="form-group">
						<label for="exampleInputEmail1">metGreeting</label> <input type="text"
							name='title' class="form-control" value="${meetingVO.metGreeting}"
							readonly="readonly">
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">represent</label> <input type="text"
							name='title' class="form-control" value="${meetingVO.represent}"
							readonly="readonly">
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">headCount</label> <input type="text"
							name='title' class="form-control" value="${meetingVO.headCount}"
							readonly="readonly">
					</div>
					
						<div class="form-group">
						<label for="exampleInputPassword1">metIntro</label>
						<textarea class="form-control" name="content" rows="3"
							readonly="readonly">${meetingVO.metIntro}</textarea>
					</div>

					<div class="form-group">
						<label for="exampleInputEmail1">keyword</label> <input type="text"
							name='title' class="form-control" value="${meetingVO.keyword}"
							readonly="readonly">
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">location</label> <input type="text"
							name='title' class="form-control" value="${meetingVO.location}"
							readonly="readonly">
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">metPlace</label> <input type="text"
							name='title' class="form-control" value="${meetingVO.metPlace}"
							readonly="readonly">
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">approval</label> <input type="text"
							name='title' class="form-control" value="${meetingVO.approval}"
							readonly="readonly">
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">metImg</label> <input type="text"
							name="writer" class="form-control" value="${meetingVO.metImg}"
							readonly="readonly">
					</div>
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

						$(".btn btn-warning").on("click", function() {
							formObj.attr("action", "/meeting/modifyPage");
							formObj.attr("method", "get");
							formObj.submit();
						});
						$(".btn btn-danger").on("click", function() {
							formObj.attr("action", "/meeting/removePage");
							formObj.submit();
						});

						$(".btn btn-primary").on("click", function() {
							formObj.attr("method", "get");
							formObj.attr("action", "/meeting/list");
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

<!-- /.content-wrapper -->

<%@include file="/WEB-INF/views/include/footer.jsp"%>
