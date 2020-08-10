<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<jsp:include page="/WEB-INF/views/include/header.jsp" />

<style>
.le {
	width: 600px;
}
</style>
<!-- Main content -->
<section id="main-content">
	<section class="wrapper">

		<div class="row mt">
			<div class="col-lg-12">
				<h4>
					<i class="fa fa-angle-right"></i>독후감 수정
				</h4>
				<div class="form-panel">
					<div class="form">
						<form role="form" action="modifyPage"
							class="cmxform form-horizontal style-form" method="post">

							<div class="form-group ">
								<label for="firstname" class="control-label col-lg-2">독후감
									제목</label>
								<div class="col-lg-10">
									<input type="text" name='reportTitle'
										class="form-control round-form le"
										value="${reportBoardVO.reportTitle}">
								</div>
							</div>

							<div class="form-group ">
								<label for="username" class="control-label col-lg-2">내용</label>
								<div class="col-lg-10">
									<textarea class="form-control le" rows="4 name="ReportContent">${reportBoardVO.reportContent}</textarea>
								</div>
							</div>

							<div class="form-group ">
								<label for="firstname" class="control-label col-lg-2">
									저자</label>
								<div class="col-lg-10">
									<input class=" form-control round-form le" id="writer"
										name="writer" type="text" readonly="readonly"
										value="${reportBoardVO.writer}" />
								</div>
							</div>
							<div class="form-group ">
								<label for="firstname" class="control-label col-lg-2">
									출판사</label>
								<div class="col-lg-10">
									<input class=" form-control round-form le" id="writer"
										name="writer" type="text" readonly="readonly"
										value="${reportBoardVO.publisher}" />
								</div>
							</div>

					  <div class="form-group">
                    <div class="col-lg-offset-2 col-lg-10">
                      <button class="btn btn-theme btn-round" type="submit">수정</button>
                      <button class="btn btn-theme04 btn-round" type="button">취소</button>
                    </div>
                  </div>
					</div>
					</form>
					<!-- /.box-body -->




				</div>
				<!-- /.box -->
			</div>
			<!--/.col (left) -->

		</div>
		<!-- /.row -->
	</section>
	<!-- /.content -->
	</div>
	<script>
		$(document)
				.ready(
						function() {

							var formObj = $("form[role='form']");

							console.log(formObj);

							$(".btn-theme04")
									.on(
											"click",
											function() {
												self.location = "/reportboard/list?page=${cri.page}&perPageNum=${cri.perPageNum}"
														+ "&searchType=${cri.searchType}&keyword=${cri.keyword}";
											});

							$(".btn-primary").on("click", function() {
								formObj.submit();
							});
						});
	</script>
	<!— /.content-wrapper —>

	<%@include file="../include/footer.jsp"%>