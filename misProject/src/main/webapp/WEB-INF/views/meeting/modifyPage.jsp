<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<jsp:include page="/WEB-INF/views/include/header.jsp"/>

<!-- Main content -->
<section class="content">
	<div class="row">
		<!-- left column -->
		<div class="col-md-12">
			<!-- general form elements -->
			<div class="box box-primary">
				<div class="box-header">
					<h3 class="box-title">MODIFY BOARD</h3>
				</div>
				<!-- /.box-header -->

<form role="form" action="modifyPage" method="post">

	<input type='hidden' name='page' value="${cri.page}"> <input
		type='hidden' name='perPageNum' value="${cri.perPageNum}">
	<input type='hidden' name='searchType' value="${cri.searchType}">
	<input type='hidden' name='keyword' value="${cri.keyword}">

					<div class="box-body">

						<div class="form-group">
							<label for="exampleInputEmail1">NUM</label> <input type="text"
								name='metNum' class="form-control" value="${meetingVO.metNum}"
								readonly="readonly">
						</div>

						<div class="form-group">
							<label for="exampleInputEmail1">Title</label> <input type="text"
								name='title' class="form-control" value="${meetingVO.metName}">
						</div>
						
						<div class="form-group">
							<label for="exampleInputEmail1">Price</label> <input type="text"
								name='title' class="form-control" value="${meetingVO.metGreeting}">
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">Price</label> <input type="text"
								name='title' class="form-control" value="${meetingVO.metrepresent}">
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">Price</label> <input type="text"
								name='title' class="form-control" value="${meetingVO.metheadCount}">
						</div>

						<div class="form-group">
							<label for="exampleInputPassword1">Content</label>
							<textarea class="form-control" name="content" rows="3">${meetingVO.metIntro}</textarea>
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">Price</label> <input type="text"
								name='title' class="form-control" value="${meetingVO.keyword}">
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">Price</label> <input type="text"
								name='title' class="form-control" value="${meetingVO.location}">
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">Price</label> <input type="text"
								name='title' class="form-control" value="${meetingVO.metPlace}">
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">Price</label> <input type="text"
								name='title' class="form-control" value="${meetingVO.approval}">
						</div>
	
					</div>
					<!-- /.box-body -->
				</form>
				<div class="box-footer">
					<button type="submit" class="btn btn-primary">SAVE</button>
					<button type="submit" class="btn btn-warning">CANCEL</button>
				</div>

<script>
$(document).ready(
	function() {

		var formObj = $("form[role='form']");

		console.log(formObj);

		$(".btn-warning")
				.on("click",function() {
					self.location = "/meeting/list?page=${cri.page}&perPageNum=${cri.perPageNum}"
							+ "&searchType=${cri.searchType}&keyword=${cri.keyword}";
				});

		$(".btn-primary").on("click",
				function() {
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
