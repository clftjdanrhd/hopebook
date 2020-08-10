<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<jsp:include page="/WEB-INF/views/include/header.jsp" />


<!-- Main content -->
<section id="main-content">
	<section class="wrapper">

		<div class="row mt">
			<div class="col-lg-12">
				<h4>
					<i class="fa fa-book"></i>독후감 페이지
				</h4>
				<div class="form-panel form-horizontal style-form">
					<div class="form">
						<form role="form" action="modifyPage" method="post">

							<input type='hidden' name='reportNum'
								value="${reportBoardVO.reportNum}"> <input type='hidden'
								name='page' value="${cri.page}"> <input type='hidden'
								name='perPageNum' value="${cri.perPageNum}"> <input
								type='hidden' name='searchType' value="${cri.searchType}">
							<input type='hidden' name='keyword' value="${cri.keyword}">
						</form>
						<div class="form-group ">
							<div class="col-lg-4">
								<label for="firstname" class="control-label col-lg-4">
									제목</label>
							</div>
							<div class="col-lg-6">
								<label for="firstname" class="control-label col-lg-6">${reportBoardVO.reportTitle}</label>
							</div>
						</div>
						<div class="form-group ">
							<div class="col-lg-4">
								<label for="firstname" class="control-label col-lg-4">
									분류</label>
							</div>
							<div class="col-lg-6">
								<label for="firstname" class="control-label col-lg-6">${reportBoardVO.reportCategory}</label>
							</div>
						</div>

						
						

						<div class="form-group ">
							<div class="col-lg-4">
								<label for="username" class="control-label col-lg-4">저자</label>
							</div>
							<div class="col-lg-6">
								<label for="firstname" class="control-label col-lg-6">${reportBoardVO.writer}</label>
							</div>
						</div>


					<div class="form-group ">
						<div class="col-lg-4">
							<label for="username" class="control-label col-lg-4">출판사</label>
						</div>
						<div class="col-lg-6">
							<label for="firstname" class="control-label col-lg-6">${reportBoardVO.publisher}</label>
						</div>
					</div>
					
					<div class="form-group ">
							<div class="col-lg-4">
								<label for="lastname" class="control-label col-lg-4">
									내용</label>
							</div>
							<div class="col-lg-6">
								<label for="firstname" class="control-label col-lg-12">${reportBoardVO.reportContent}</label>
							</div>
						</div>
						
					<div class="form-group ">
							<div class="col-lg-4">
								<label for="lastname" class="control-label col-lg-4">
									작성자</label>
							</div>
							<div class="col-lg-6">
								<label for="firstname" class="control-label col-lg-12">${reportBoardVO.memName}</label>
							</div>
						</div>
						
						
						

					<div class="form-group">
						<label class="col-lg-2 col-sm-2 control-label"></label>
						<div class="col-lg-10">
							<div class="col-lg-offset-2 col-lg-10">
							<button type="submit" class="btn btn-primary btn-round" onclick="location.href='list'">목록</button>
								<c:if test="${member.memName eq reportBoardVO.memName}">
									<button type="submit" class="btn btn-warning btn-round bookboardModify">수정</button>
										<button class="btn btn-danger btn-round bookboardDel">삭제</button>
								</c:if>
							
							</div>

						</div>
					</div>

				</div>
			</div>

		</div>
		<!-- col-lg-12-->



		<script>
			$(document).ready(function() {

				var formObj = $("form[role='form']");

				console.log(formObj);

				$(".btn-warning").on("click", function() {
					formObj.attr("action", "/reportboard/modifyPage");
					formObj.attr("method", "get");
					formObj.submit();
				});

				$(".btn-danger").on("click", function() {
					formObj.attr("action", "/reportboard/removePage");
					formObj.submit();
				});

				$(".btn-primary").on("click", function() {
					formObj.attr("method", "get");
					formObj.attr("action", "/reportboard/list");
					formObj.submit();
				});

			});
		</script>




		<!— /.box —>
		<!—/.col (left) —>

		<!— /.row —>
	</section>
</section>

<!— /.content —>
</div>
<!— /.content-wrapper —>

<%@include file="../include/footer.jsp"%>