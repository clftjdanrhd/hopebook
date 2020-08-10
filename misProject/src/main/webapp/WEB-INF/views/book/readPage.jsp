<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:include page="/WEB-INF/views/include/header.jsp"/>
<style>
.le{
width:600px;
}
</style>
<!-- Main content -->
<section id="main-content">
      <section class="wrapper">
      <div class="row mt cmxform form-horizontal style-form">
          <div class="col-lg-12">
            <h3><i class="fa fa-book"></i> 책 상세보기</h3>
				<div class="form-panel">
					<div class="form">
						<form role="form" action="modifyPage" method="post">

							<input type='hidden' name='bookNum' value="${bookVO.bookNum}">
							<input type='hidden' name='page' value="${cri.page}"> <input
								type='hidden' name='perPageNum' value="${cri.perPageNum}">
							<input type='hidden' name='searchType' value="${cri.searchType}">
							<input type='hidden' name='keyword' value="${cri.keyword}">

						</form>


						<div class="form-group  ">
							<div class="col-lg-4">
								<label for="firstname" class="control-label col-lg-4">책 제목</label>
							</div>
							<div class="col-lg-6">
								<label for="firstname" class="control-label col-lg-6">${bookVO.bookTitle}</label>
							</div>
						</div>
						<div class="form-group ">
							<div class="col-lg-4">
								<label for="lastname" class="control-label col-lg-4">저자</label>
							</div>
							<div class="col-lg-6">
								<label for="firstname" class="control-label col-lg-6">${bookVO.writer}</label>
							</div>
						</div>
						<div class="form-group ">
							<div class="col-lg-4">
								<label for="username" class="control-label col-lg-4">출판사</label>
							</div>
							<div class="col-lg-6">
								<label for="firstname" class="control-label col-lg-6">${bookVO.publisher}</label>
							</div>
						</div>

						<div class="form-group ">
							<div class="col-lg-4">
								<label for="username" class="control-label col-lg-4">키워드1</label>
							</div>
							<div class="col-lg-6">
								<label for="firstname" class="control-label col-lg-6">${bookVO.bookKeyword1}</label>

							</div>
						</div>
						<div class="form-group ">
							<div class="col-lg-4">
								<label for="username" class="control-label col-lg-4">키워드2</label>
							</div>
							<div class="col-lg-6">
								<label for="firstname" class="control-label col-lg-6">${bookVO.bookKeyword2}</label>
							</div>
						</div>
						<div class="form-group ">
							<div class="col-lg-4">
								<label for="username" class="control-label col-lg-4">키워드3</label>
							</div>
							<div class="col-lg-6">
								<label for="firstname" class="control-label col-lg-6">${bookVO.bookKeyword3}</label>
							</div>
						</div>
						<div class="form-group ">
							<div class="col-lg-4">
								<label for="username" class="control-label col-lg-4">isbn</label>
							</div>
							<div class="col-lg-6">
								<label for="firstname" class="control-label col-lg-6">${bookVO.isbn}</label>
							</div>
						</div>


						<input class=" form-control round-form le" id="firstname"
							name="memNum" type="hidden" readonly="readonly"
							value="${bookVO.memNum}" />

						<div class="form-group ">
							<div class="col-lg-4">
								<label for="firstname" class="control-label col-lg-4">
									작성자</label>
							</div>
							<div class="col-lg-6">
								<label for="firstname" class="control-label col-lg-6">${bookVO.memName}</label>
							</div>
						</div>

						<div class="form-group">
							<label class="col-lg-2 col-sm-2 control-label"></label>
							<div class="col-lg-10">
								<div class="col-lg-offset-2 col-lg-10">
									<button type="submit" class="btn btn-primary btn-round" onclick="location.href='list'">목록</button>
									<c:if test="${member.memNum eq bookVO.memNum}">
										<button type="submit" class="btn btn-warning btn-round">수정</button>
										<button type="submit" class="btn btn-danger btn-round" onclick="location.href='removePage'">삭제</button>
									</c:if>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- /form-panel -->
          </div>
          <!-- /col-lg-12 -->
        </div>
        <!-- /row -->
      </section>
      <!-- /wrapper -->
    </section>

<!-- /.box-body -->
<script>
	$(document).ready(function() {

		var formObj = $("form[role='form']");

		console.log(formObj);

		$(".btn-warning").on("click", function() {
			formObj.attr("action", "/book/modifyPage");
			formObj.attr("method", "get");
			formObj.submit();
		});

		$(".btn-danger").on("click", function() {
			formObj.attr("action", "/book/removePage");
			formObj.submit();
		});

		$(".btn-primary").on("click", function() {
			formObj.attr("method", "get");
			formObj.attr("action", "/book/list");
			formObj.submit();
		});

	});
</script>
<%@include file="../include/footer.jsp"%>
