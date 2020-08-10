<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="/WEB-INF/views/include/header.jsp" />
<style>
.le {
	width: 600px;
}
</style>
<!-- Main content -->
<section id="main-content">
	<section class="wrapper">
		<div class="row mt cmxform form-horizontal style-form">
			<div class="col-lg-12">
				<h3>
					<i class="fa fa-book"></i> 모임 상세보기
				</h3>
				<div class="form-panel">
					<div class="form">
						<form role="form" action="modifyPage" method="post">

							<input type='hidden' name='metNum' value="${meetingVO.metNum}">
							<input type='hidden' name='page' value="${cri.page}"> <input
								type='hidden' name='perPageNum' value="${cri.perPageNum}">
							<input type='hidden' name='searchType' value="${cri.searchType}">
							<input type='hidden' name='keyword' value="${cri.keyword}">
						</form>


						<div class="form-group  ">
							<div class="col-lg-4">
								<label for="firstname" class="control-label col-lg-4">모임명</label>
							</div>
							<div class="col-lg-6">
								<label for="firstname" class="control-label col-lg-6">${meetingVO.metName}</label>
							</div>
						</div>
						<div class="form-group ">
							<div class="col-lg-4">
								<label for="lastname" class="control-label col-lg-4">대표자</label>
							</div>
							<div class="col-lg-6">
								<label for="firstname" class="control-label col-lg-6">${meetingVO.represent}</label>
							</div>
						</div>
						<div class="form-group ">
							<div class="col-lg-4">
								<label for="username" class="control-label col-lg-4">개설일</label>
							</div>
							<div class="col-lg-6">
								<label for="firstname" class="control-label col-lg-6">${meetingVO.metDate}</label>
							</div>
						</div>

						<div class="form-group ">
							<div class="col-lg-4">
								<label for="username" class="control-label col-lg-4">인원</label>
							</div>
							<div class="col-lg-6">
								<label for="firstname" class="control-label col-lg-6">${meetingVO.headCount}</label>

							</div>
						</div>
						<div class="form-group ">
							<div class="col-lg-4">
								<label for="username" class="control-label col-lg-4">인사말</label>
							</div>
							<div class="col-lg-6">
								<label for="firstname" class="control-label col-lg-6">${meetingVO.metIntro}</label>
							</div>
						</div>
						<div class="form-group ">
							<div class="col-lg-4">
								<label for="username" class="control-label col-lg-4">주제</label>
							</div>
							<div class="col-lg-6">
								<label for="firstname" class="control-label col-lg-6">${meetingVO.keyword}</label>
							</div>
						</div>
						<div class="form-group ">
							<div class="col-lg-4">
								<label for="username" class="control-label col-lg-4">소개</label>
							</div>
							<div class="col-lg-6">
								<label for="firstname" class="control-label col-lg-6">${meetingVO.metGreeting}</label>
							</div>
						</div>
						<div class="form-group ">
							<div class="col-lg-4">
								<label for="username" class="control-label col-lg-4">지역</label>
							</div>
							<div class="col-lg-6">
								<label for="firstname" class="control-label col-lg-6">${meetingVO.location}</label>
							</div>
						</div>
						<div class="form-group ">
							<div class="col-lg-4">
								<label for="username" class="control-label col-lg-4">장소</label>
							</div>
							<div class="col-lg-6">
								<label for="firstname" class="control-label col-lg-6">${meetingVO.metPlace}</label>
							</div>
						</div>
						<div class="form-group ">
							<div class="col-lg-4">
								<label for="username" class="control-label col-lg-4">승인
									여부</label>
							</div>
							<div class="col-lg-6">
								<label for="firstname" class="control-label col-lg-6">${meetingVO.approval}</label>
							</div>
						</div>

						<div class="form-group ">
							<div class="col-lg-4">
								<label for="username" class="control-label col-lg-4">회원번호</label>
							</div>
							<div class="col-lg-6">
								<label for="firstname" class="control-label col-lg-6">${meetingVO.memNum}</label>
							</div>
						</div>


						<div class="form-group">
							<label class="col-lg-2 col-sm-2 control-label"></label>
							<div class="col-lg-10">
								<div class="col-lg-offset-2 col-lg-10">
									<button class="btn btn-theme" type="submit">수정</button>
									<button class="btn btn-theme04">삭제</button>
									<button class="btn btn-theme03"
										onclick="location.href='listMeeting'">등록</button>
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

		$(".btn-theme").on("click", function() {
			formObj.attr("action", "/ecosys/modifyMeeting");
			formObj.attr("method", "get");
			formObj.submit();
		});

		$(".btn-theme04").on("click", function() {
			formObj.attr("action", "/ecosys/removeMeeting");
			formObj.submit();
		});

		$(".btn-theme03").on("click", function() {
			formObj.attr("method", "get");
			formObj.attr("action", "/ecosys/listMeeting");
			formObj.submit();
		});

	});
</script>

<%@include file="../include/footer.jsp"%>
