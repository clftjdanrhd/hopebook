<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<jsp:include page="/WEB-INF/views/admin/adminHeader.jsp" />


<!DOCTYPE html>
<html lang="en">

<style type="text/css">
div.box {
	margin-bottom: 20px;
	width: 300px;
	float: right;
	margin-left: 5%;
	"
}
</style>

<body>

	<!--main content start-->

	<section id="main-content">
		<section class="wrapper">
			<h3>
				<i class="fa fa-angle-right"></i> 도서관 정보 수정
			</h3>

			<form role="form" action="modifyLibrary" method="post"
				class="cmxform form-horizontal style-form">

				<input type='hidden' name='libraryNum' value="${libraryVO.libraryNum}">
				<input type='hidden' name='page' value="${cri.page}"> <input
					type='hidden' name='perPageNum' value="${cri.perPageNum}">
				<input type='hidden' name='searchType' value="${cri.searchType}">
				<input type='hidden' name='keyword' value="${cri.keyword}">




				<div class="form-panel">
					<div class="form">

						<div class="form-group ">
							<label for="firstname" class="control-label col-lg-2">도서관 이름</label>
							<div class="col-lg-10">
								<input class=" form-control"name="libraryTitle"
									type="text" value="${libraryVO.libraryTitle}" />
							</div>
						</div>
						<div class="form-group ">
							<label for="lastname" class="control-label col-lg-2">주소</label>
							<div class="col-lg-10">
								<input class=" form-control"  name="libraryContent"
									type="text" value="${libraryVO.libraryContent}"/>
							</div>
						</div>

		

						<div class="form-group ">
							<label for="email" class="control-label col-lg-2">URL</label>
							<div class="col-lg-10">
								<input class="form-control " name="libraryUrl" type="text"
									value="${libraryVO.libraryUrl}" />
							</div>
						</div>
						

						<div class="form-group">
							<div class="col-lg-offset-2 col-lg-10">
								<button  class="btn btn-theme">SAVE</button>
								<button class="btn btn-theme03">LIST</button>
							</div>
						</div>

					</div>


				</div>
			</form>
		</section>
	</section>

</body>

<script>
$(document).ready(
	function() {

		var formObj = $("form[role='form']");

		console.log(formObj);

		$(".btn-theme03")
				.on("click",function() {
					self.location = "/ecosys/listLibrary?page=${cri.page}&perPageNum=${cri.perPageNum}"
							+ "&searchType=${cri.searchType}&keyword=${cri.keyword}";
				});

		$(".btn-theme").on("click",
				function() {
					formObj.submit();
				});
	});
</script>



<jsp:include page="../include/footer.jsp"  />
