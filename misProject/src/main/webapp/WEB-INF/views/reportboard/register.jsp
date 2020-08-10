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
				<h3>
					<i class="fa fa-book"></i>독후감 등록
				</h3>
				<div class="form-panel">
					<div class="form">
						<div class="row mt">
							<div class="col-lg-12">
								<div class="form-panel">
									<form class="cmxform form-horizontal style-form" role="form"
										method="post" name="frm">
										<div class="form-group">
											<input type="hidden" name='memNum' class="form-control"
												placeholder="Enter Title" value='${member.memNum}'>


										</div>
										<input type="hidden" name='bookNum' class="form-control"
											value="${bookVO.bookNum}">


										<div class="form-group">
											<label class="col-sm-2 col-sm-2 control-label"> 제목</label>
											<div class="col-sm-10">
												<input type="text" name='reportTitle'
													class="form-control  round-form le">
											</div>
										</div>

										<div class="form-group">
											<label class="col-sm-2 col-sm-2 control-label">카테고리</label>
											<div class="col-sm-10">
												<input type="text" name='reportCategory'
													class="form-control  round-form le">
											</div>
										</div>



										<div class="form-group ">
											<label for="firstname" class="control-label col-lg-2">책
												제목</label>
											<div class="col-lg-10">
												<input type="text" class="form-control round-form"
													name="bookTitle" id="bookTitle" readonly="readonly"
													style="width: 300px;" placeholder="책을 선택해주세요."
													style="width: 320px; display: inline;"> <a href='#'
													onClick="window.open('/reportboard/searchPopup', 'CLIENT_WINDOW',
                                          'toolbar=yes,menubar=yes,width=700.height=500')">
													<button class="btn btn-primary" type="button" id="popupBtn">책
														검색</button>
												</a>
											</div>

										</div>




										<div class="form-group ">
											<label for="username" class="control-label col-lg-2">저자</label>
											<div class="col-lg-10">
												<input class=" form-control round-form le" name="writer"
													value="${bookVO.writer}" type="text" readonly="readonly" />
											</div>
										</div>
										<div class="form-group ">
											<label for="username" class="control-label col-lg-2">출판사</label>
											<div class="col-lg-10">
												<input class=" form-control round-form le" name="publisher"
													type="text" readonly="readonly" value="${bookVO.publisher}" />
											</div>
										</div>




										<div class="form-group">
											<label class="col-sm-2 col-sm-2 control-label">독후감 내용</label>
											<div class="col-sm-10">
												<textarea class="form-control " name="reportContent"
													rows="3"></textarea>
											</div>
										</div>



										<div class="form-group">
											<label class="col-sm-2 col-sm-2 control-label">작성자 </label>
											<div class="col-sm-10">
												<input type="text" name='memName' class="form-control"
													value='${member.memName}' readonly="readonly">
											</div>
										</div>



										<div class="form-group">
											<div class="col-lg-offset-2 col-lg-10">
												<button class="btn btn-theme btn-round" type="submit">등록</button>
												<button class="btn btn-theme04 btn-round" type="button">취소</button>
											</div>
										</div>
								</div>
							</div>
							</form>
						</div>
					</div>
					<!-- col-lg-12-->
				</div>
			</div>
			<!-- /.box-body -->




		</div>
		<!-- /.box -->
	</section>
	<!-- /.content -->

	<!-- <script>
   // searchSub 팝업창 띄우기
   $("#searchPopup")
         .click(
               function() {
                  var url = "searchPopup";
                  var name = "책 검색";
                  var option = "width = 700, height = 500, top = 100, left = 200, location = no";
                  window.open(url, name, option);
               });

   // 신청 등록 유효성 검사 
   function validate() {
      var bookNum = $("#bookNum").val();
      var bookTitle = $("#bookTitle").val();

      if (uscarNo == "") {
         alert("책을 선택해주세요.");
         document.getElementById("reportNum").focus();
         return false;
      }

      return true;

   }
</script> -->

	<script>
		$(document)
				.ready(
						function() {
							var formObj = $("form[role='form']");
							formObj
									.submit(function(event) {
										event.preventDefault();
										//유효성 검사
										var that = $(this);
										var str = "";

										$(".uploadedList .delbtn")
												.each(
														function(index) {
															str += "<input type='hidden' name='files'"
																	+ " value='"
																	+ $(this)
																			.attr(
																					"href")
																	+ "'> ";
														});

										that.append(str);
										console.log(str);

										that.get(0).submit();
									});

							$(".btn btn-theme04 btn-round")
									.on(
											"click",
											function() {
												self.location = "/notice/list=${cri.page}&perPageNum=${cri.perPageNum}"
														+ "&searchType=${cri.searchType}&listType=${cri.listType}&keyword=${cri.keyword}";

												/* formObj.attr("method", "get");
												formObj.attr("action", "/notice/list");
												formObj.submit(); */
											});

						});
	</script>
	<script>
		$("#bookPopup")
				.click(
						function() {
							var url = "searchPopup";
							var name = "";
							var option = "width = 700, height = 500, top = 100, left = 200, location = no";
							//window.open(url, name, option);      
							window
									.open(
											"/reportboard/register/searchPopup?make_date="
													+ make_date, "_blank",
											"toolbar=yes,menubar=yes,width=700.height=500");

						})
	</script>



	<%@include file="../include/footer.jsp"%>