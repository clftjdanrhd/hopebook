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



	<section id="main-content">
		<section class="wrapper">
			<h3>
				<i class="fa fa-angle-right"></i> Advanced Table Example
			</h3>

			<form role="form" method="post" action="removeYnMeeting" 
				class="cmxform form-horizontal style-form">

				<input type='hidden' name='metNum' value="${meetingVO.metNum}">
				<input type='hidden' name='page' value="${cri.page}"> <input
					type='hidden' name='perPageNum' value="${cri.perPageNum}">
				<input type='hidden' name='searchType' value="${cri.searchType}">
				<input type='hidden' name='keyword' value="${cri.keyword}">


				<div class="form-panel">
					<div class="form">

						<div class="form-group ">
							<label for="firstname" class="control-label col-lg-2">모임
								이름</label>
							<div class="col-lg-10">
								<input class=" form-control" id="firstname" name="metName"
									type="text" value="${meetingVO.metName}" readonly="readonly" />
							</div>
						</div>
						<div class="form-group ">
							<label for="lastname" class="control-label col-lg-2">대표자</label>
							<div class="col-lg-10">
								<input class=" form-control" id="lastname" name="represent"
									type="text" value="${meetingVO.represent}" readonly="readonly" />
							</div>
						</div>

						<div class="form-group ">
							<label for="lastname" class="control-label col-lg-2">설립일</label>
							<div class="col-lg-10">
								<input class=" form-control" id="lastname" name="metDate"
									type="text" value="${meetingVO.metDate}" readonly="readonly" />
							</div>
						</div>

						<div class="form-group ">
							<label for="username" class="control-label col-lg-2">인원</label>
							<div class="col-lg-10">
								<input class="form-control " id="username" name="headCount"
									type="text" value="${meetingVO.headCount}" readonly="readonly" />
							</div>
						</div>
						<div class="form-group ">
							<label for="username" class="control-label col-lg-2">인사말</label>
							<div class="col-lg-10">
								<input class="form-control " id="username" name="metIntro"
									type="text" value="${meetingVO.metIntro}" readonly="readonly" />
							</div>
						</div>

						<div class="form-group ">
							<label for="email" class="control-label col-lg-2">주제</label>
							<div class="col-lg-10">
								<input class="form-control " id="email" name="keyword"
									type="email" value="${meetingVO.keyword}" readonly="readonly" />
							</div>
						</div>
						<div class="form-group ">
							<label for="email" class="control-label col-lg-2">소개</label>
							<div class="col-lg-10">
								<input class="form-control " id="email" name="metGreeting"
									type="email" value="${meetingVO.metGreeting}"
									readonly="readonly" />
							</div>
						</div>
						<div class="form-group ">
							<label for="email" class="control-label col-lg-2">지역</label>
							<div class="col-lg-10">
								<input class="form-control " id="email" name="location"
									type="email" value="${meetingVO.location}" readonly="readonly" />
							</div>
						</div>
						<div class="form-group ">
							<label for="email" class="control-label col-lg-2">장소</label>
							<div class="col-lg-10">
								<input class="form-control " id="email" name="metPlace"
									type="email" value="${meetingVO.metPlace}" readonly="readonly" />
							</div>
						</div>
						<div class="form-group ">
							<label for="email" class="control-label col-lg-2">승인 여부</label>
							<div class="col-lg-10">
								<input class="form-control " id="email" name="approval"
									type="email" value="${meetingVO.approval}" readonly="readonly" />
							</div>
						</div>
						<div class="form-group ">
							<label for="email" class="control-label col-lg-2">회원번호</label>
							<div class="col-lg-10">
								<input class="form-control " id="email" name="memNum"
									type="email" value="${meetingVO.memNum}" readonly="readonly" />
							</div>
						</div>

						<div class="form-group">
							<div class="col-lg-offset-2 col-lg-10">
								<button class="btn btn-theme04" >DELETE</button>
								<button class="btn btn-theme03" >LIST</button>
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
		


		$(".btn-theme04").on("click", function() {
			formObj.attr("action", "/ecosys/removeYnMeeting");
			formObj.submit();
		});

		$(".btn-theme03").on("click", function() {
			
			formObj.attr("method", "get");
			formObj.attr("action", "/ecosys/listYnMeeting");
			formObj.submit();
		});

	});
</script>

</html>

<jsp:include page="../include/footer.jsp"  />











