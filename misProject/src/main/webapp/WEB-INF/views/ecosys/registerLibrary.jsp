<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<jsp:include page="/WEB-INF/views/admin/adminHeader.jsp" />
<!DOCTYPE html>
<html lang="en">
<head>
<title>도서관</title>
<meta charset="utf-8">

</head>

<body>
	<section id="main-content">
		<section class="wrapper">
			<h3>
				<i class="fa fa-angle-right"></i> 도서관 등록
			</h3>
			<div class="row mt">
				<!--  폼 시작 -->
				<div class="col-lg-12">
					<div class="form-panel">
						<form role="form" method="post" class="form-horizontal style-form">


							<div class="form-group">
								<input type="hidden" name="memNum" value="${member.memNum}">
			
								<label class="col-sm-2 col-sm-2 control-label">도서관 이름</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" name='libraryTitle'
										style="width: 328px; margin-left: 68px;">
								</div>
							</div>

							<div class="form-group">
								<label class="col-sm-2 col-sm-2 control-label">주소</label>
								<div class="col-sm-10">

									<input type="text" class="form-control" name='libraryContent'
										style="width: 328px; margin-left: 68px;">
								</div>
							</div>


							<div class="form-group">
								<label class="col-sm-2 col-sm-2 control-label">홈페이지 주소</label>
								<div class="col-sm-10">

									<input type="text" class="form-control" name='libraryUrl'
										style="width: 328px; margin-left: 68px;">
								</div>
							</div>


							<div class="btn-group btn-group-justified">
								<div class="btn-group">
									<button class="btn btn-theme" type="submit">신청</button>
									<!-- onclick="return /ecosys/listYnMeeting" -->
								</div>
								<div class="btn-group">
									<button class="btn btn-theme03">목록으로
										돌아가기</button>
								</div>
							</div>
						</form>
						
					</div>
				</div>
			</div>
		</section>
	</section>

<script>
		$(document).ready(function() {

			var formObj = $("form[role='form']");

			console.log(formObj);

			/* 		$(".btn btn-theme").on("click", function() {
			 formObj.attr("action", "/meeting/modifyPage");
			 formObj.attr("method", "get");
			 formObj.submit();
			 });
			 */

			$(".btn-theme03").on("click", function() {
				formObj.attr("method", "get");
				formObj.attr("action", "/ecosys/listLibrary");
				formObj.submit();
			});

		});
	</script>

	
</body>
</html>
<jsp:include page="/WEB-INF/views/include/footer.jsp"/>