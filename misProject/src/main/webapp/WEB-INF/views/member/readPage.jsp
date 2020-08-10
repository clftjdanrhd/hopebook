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
            <h3><i class="fa fa-book"></i> 회원 상세보기</h3>
				<div class="form-panel">
					<div class="form">
						<form role="form" action="modifyPage" method="post">

			<input type='hidden' name='memNum' value="${memberVO.memNum}">
				<input type='hidden' name='page' value="${cri.page}"> <input
					type='hidden' name='perPageNum' value="${cri.perPageNum}">
				<input type='hidden' name='searchType' value="${cri.searchType}">
				<input type='hidden' name='keyword' value="${cri.keyword}">

						</form>


						<div class="form-group  ">
							<div class="col-lg-4">
								<label for="firstname" class="control-label col-lg-4">이름</label>
							</div>
							<div class="col-lg-6">
								<label for="firstname" class="control-label col-lg-6">${memberVO.memName}</label>
							</div>
						</div>
						<div class="form-group ">
							<div class="col-lg-4">
								<label for="lastname" class="control-label col-lg-4">아이디</label>
							</div>
							<div class="col-lg-6">
								<label for="firstname" class="control-label col-lg-6">${memberVO.memId}</label>
							</div>
						</div>
						<div class="form-group ">
							<div class="col-lg-4">
								<label for="username" class="control-label col-lg-4">비밀번호</label>
							</div>
							<div class="col-lg-6">
								<label for="firstname" class="control-label col-lg-6">${memberVO.memPw}</label>
							</div>
						</div>

						<div class="form-group ">
							<div class="col-lg-4">
								<label for="username" class="control-label col-lg-4">핸드폰번호</label>
							</div>
							<div class="col-lg-6">
								<label for="firstname" class="control-label col-lg-6">${memberVO.phone}</label>

							</div>
						</div>
						<div class="form-group ">
							<div class="col-lg-4">
								<label for="username" class="control-label col-lg-4">이메일</label>
							</div>
							<div class="col-lg-6">
								<label for="firstname" class="control-label col-lg-6">${memberVO.email}</label>
							</div>
						</div>
						<div class="form-group ">
							<div class="col-lg-4">
								<label for="username" class="control-label col-lg-4">주소</label>
							</div>
							<div class="col-lg-6">
								<label for="firstname" class="control-label col-lg-6">${memberVO.adr1}</label>
							</div>
						</div>
						<div class="form-group ">
							<div class="col-lg-4">
								<label for="username" class="control-label col-lg-4"></label>
							</div>
							<div class="col-lg-6">
								<label for="firstname" class="control-label col-lg-6">${memberVO.adr2}</label>
							</div>
						</div>
						<div class="form-group ">
							<div class="col-lg-4">
								<label for="username" class="control-label col-lg-4"></label>
							</div>
							<div class="col-lg-6">
								<label for="firstname" class="control-label col-lg-6">${memberVO.adr3}</label>
							</div>
						</div>
								<div class="form-group ">
							<div class="col-lg-4">
								<label for="username" class="control-label col-lg-4">권한</label>
							</div>
							<div class="col-lg-6">
								<label for="firstname" class="control-label col-lg-6">${memberVO.authority}</label>
							</div>
						</div>
						<div class="form-group ">
							<div class="col-lg-4">
								<label for="username" class="control-label col-lg-4">회원가입일자</label>
							</div>
							<div class="col-lg-6">
								<label for="firstname" class="control-label col-lg-6">${memberVO.signDate}</label>
							</div>
						</div>


						
						<div class="form-group">
							<label class="col-lg-2 col-sm-2 control-label"></label>
							<div class="col-lg-10">
								<div class="col-lg-offset-2 col-lg-10">
	<button class="btn btn-theme btn-round">수정</button>
								<button class="btn btn-theme04 btn-round">삭제</button>
								<button class="btn btn-theme03 btn-round">목록</button>								</div>
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
		

		$(".btn-theme").on("click", function() {
			
			formObj.attr("action", "/member/modifyPage");
			formObj.attr("method", "get");
			formObj.submit();
		});

		$(".btn-theme04").on("click", function() {
			formObj.attr("action", "/member/removePage");
			formObj.submit();
		});

		$(".btn-theme03").on("click", function() {
			
			formObj.attr("method", "get");
			formObj.attr("action", "/member/list");
			formObj.submit();
		});

	});
</script>
<%@include file="../include/footer.jsp"%>
