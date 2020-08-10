<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<jsp:include page="/WEB-INF/views/include/header.jsp" />

<!-- Main content -->
<section class="content">
	<div class="row">
		<!-- left column -->
		<div class="col-md-12">
			<!-- general form elements -->
			<div class="box box-primary">
				<div class="box-header">
					<h3 class="box-title"></h3>
				</div>
				<!-- /.box-header -->
				<section id="main-content">
					<section class="wrapper">
						<h3>
							<i class="fa fa-angle-right"></i>세금계산서 페이지
						</h3>

						<form role="form" action="modifyPage" method="post">

							<input type='hidden' name='taxNum' value="${taxVO.taxNum}">
							<input type='hidden' name='page' value="${cri.page}"> <input
								type='hidden' name='perPageNum' value="${cri.perPageNum}">
							<input type='hidden' name='searchType' value="${cri.searchType}">
							<input type='hidden' name='keyword' value="${cri.keyword}">

						</form>
						<div class="form-group">
							

							<div class="form-group">
								<label for="exampleInputPassword1">성함</label>
								<input type="text" name="taxName" class="form-control"
									readonly="readonly" value = "${taxVO.taxName}">
							</div>

							<div class="form-group">
								<label for="exampleInputEmail1">이메일</label> <input type="text"
									name="taxEmail" class="form-control" value="${taxVO.taxEmail}"
									readonly="readonly">
							</div>

							<div class="form-group">
								<label for="exampleInputEmail1">휴대전화 번호</label>
								<input type ="text" name="taxPhone" class="form-control"
									value="${taxVO.taxPhone}" readonly="readonly">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">주소1</label>
								<input type="text" class="form-control" name="taxAdr1"
									value="${taxVO.taxAdr1}" readonly="readonly">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">주소2</label>
								<input type="text" class="form-control" name="taxAdr2"
									value="${taxVO.taxAdr2}" readonly="readonly">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">주소3</label>
								<input type="text" class="form-control" name="taxAdr3"
									value="${taxVO.taxAdr3}" readonly="readonly">
								<div class="form-group">
									<label for="exampleInputPassword1">메세지</label>
									<input type="text" class="form-control" name="taxMsg"
										value="${taxVO.taxMsg}" readonly="readonly">
								</div>
							</div>


						</div>
						<!-- /.box-body -->

						<div class="box-footer">
						<c:if test= "${member.memNum eq taxVO.memNum}">
							<button type="submit" class="btn btn-warning">Modify</button>
							<button type="submit" class="btn btn-danger">REMOVE</button>
							</c:if>
							<button type="submit" class="btn btn-primary">GO LIST</button>
						</div>


						<script>
							$(document).ready(function() {

								var formObj = $("form[role='form']");

								console.log(formObj);

								$(".btn-warning").on("click", function() {
									formObj.attr("action", "/tax/modifyPage");
									formObj.attr("method", "get");
									formObj.submit();
								});

								$(".btn-danger").on("click", function() {
									formObj.attr("action", "/tax/removePage");
									formObj.submit();
								});

								$(".btn-primary").on("click", function() {
									formObj.attr("method", "get");
									formObj.attr("action", "/tax/list");
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

<%@include file="../include/footer.jsp"%>