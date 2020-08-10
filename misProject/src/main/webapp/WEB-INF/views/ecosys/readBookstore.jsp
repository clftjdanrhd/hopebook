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
				<i class="fa fa-angle-right"></i> 책방 상세정보
			</h3>

			<form role="form" action="modifyBookstore" method="post"
				class="cmxform form-horizontal style-form" >

				<input type='hidden' name='bookstoreNum' value="${bookstoreVO.bookstoreNum}">
				<input type='hidden' name='page' value="${cri.page}"> <input
					type='hidden' name='perPageNum' value="${cri.perPageNum}">
				<input type='hidden' name='searchType' value="${cri.searchType}">
				<input type='hidden' name='keyword' value="${cri.keyword}">





				<div class="form-panel">
					<div class="form">

						<div class="form-group ">
							<label for="firstname" class="control-label col-lg-2">책방 명</label>
							<div class="col-lg-10">
								<label for="firstname" class="control-label col-lg-2">${bookstoreVO.bookstoreTitle}</label>
							</div>
						</div>
						<div class="form-group ">
							<label for="lastname" class="control-label col-lg-2">주소</label>
							<div class="col-lg-10">
								<label for="firstname" class="control-label col-lg-2">${bookstoreVO.bookstoreContent}</label>
							</div>
						</div>

						<div class="form-group ">
							<label for="email" class="control-label col-lg-2">URL</label>
							<div class="col-lg-10">
								<label for="firstname" class="control-label col-lg-2">${bookstoreVO.bookstoreUrl}</label>
							</div>
						</div>					

						<div class="form-group">
							<div class="col-lg-offset-2 col-lg-10">
								<button class="btn btn-theme" type="submit">수정</button>
								<button class="btn btn-theme04" >삭제</button>
								<button class="btn btn-theme03" >목록</button>
							</div>
						</div>

					</div>


				</div>
			</form>
		</section>
	</section>

</body>

<script>
	$(document).ready(function() {

		var formObj = $("form[role='form']");

		console.log(formObj);

		$(".btn-theme").on("click", function() {
			formObj.attr("method", "get");
			formObj.attr("action", "/ecosys/modifyBookstore");
			formObj.submit();
		});

		
		$(".btn-theme04").on("click", function() {
			formObj.attr("action", "/ecosys/removeBookstore");
			formObj.submit();
		});
		
		$(".btn-theme03").on("click", function() {
			formObj.attr("method", "get");
			formObj.attr("action", "/ecosys/listBookstore");
			formObj.submit();
		});

	});
</script>


</html>


<jsp:include page="../include/footer.jsp"  />