
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<jsp:include page="/WEB-INF/views/include/header.jsp" />
<!DOCTYPE html>
<html lang="en">
<head>
<title>독서모임</title>
<meta charset="utf-8">

</head>

<!-- page start-->
<body>
	<section id="container">
		<section id="main-content">
			<section class="wrapper site-min-height">
				<h3>
					<i class="fa fa-angle-right"></i> 독서모임
				</h3>
				<hr style="margin-bottom: 10px;">


				<div class='box-body' style="height: 40px;">

	
					<div class="btn-group btn-group-justified">
						<div class="btn-group">
							<c:if test="${!empty member}">
								<button type="button" class="btn btn-theme btn-round" style="width:200px;" id='newBtn'>모임신청</button>
							</c:if>
							<c:if test="${empty member}">
								<button type="button" class="btn btn-theme" style="width:200px;" id='newBtn2'>모임신청</button>
							</c:if>
						</div>
					</div>
				</div>




				<c:forEach items="${list}" var="MeetingVO" varStatus="var">
					<div class="col-lg-4 col-md-4 col-sm-4 mb"
						style="padding-left: 0px;">

						<div class="content-panel pn">


							<a class="fancybox"
                        href='/metboard/list${pageMaker.makeSearch(pageMaker.cri.page) }&metNum=${MeetingVO.metNum}'>

								<div id="spotify">
									<div class="col-xs-4 col-xs-offset-8">

										<button class="btn btn-sm btn-clear-g btn-round" 
											style="background-color: #48bcb4">
											<font style="color: white;">더보기</font>
										</button>
									</div>
									<div class="sp-title">
										<h3>GROUP: ${MeetingVO.metName}</h3>
										<h6>
											NO. ${MeetingVO.metNum}</6>
											<h6>#${MeetingVO.keyword}</h6>
									</div>
									
								</div>

							</a>
							<p class="followers">
								<i class="fa fa-user"></i> ${MeetingVO.headCount} 명의 회원이 활동하고있습니다.
							</p>
						</div>

					</div>
				</c:forEach>
			</section>

				<div class="text-center col-xs-6 ">
						<ul class="text-center dataTables_paginate paging_bootstrap paginationbtn-round pagination">

							<c:if test="${paging.prev}">
								<li class="prev disabled"><a
									href="list${paging.makeSearch(paging.startPage - 1) }">&laquo;</a></li>
							</c:if>

							<c:forEach begin="${paging.startPage }"
								end="${paging.endPage }" var="idx">
								<li
									<c:out value="${paging.cri.page == idx?'class =active':''}"/>>
									<a href="list${paging.makeSearch(idx)}">${idx}</a>
								</li>
							</c:forEach>

							<c:if test="${paging.next && paging.endPage > 0}">
								<li class="next"><a
									href="list${paging.makeSearch(paging.endPage +1) }">&raquo;</a></li>
							</c:if>

						</ul>
					</div>
				<!-- /.box-footer-->
		</section>
	</section>

	<script>
		var result = '${msg}';

		if (result == 'SUCCESS') {
			alert("처리가 완료되었습니다.");
		}
	</script>

	<script>
		$(document).ready(
				function() {

					$('#searchBtn').on(
							"click",
							function(event) {

								self.location = "list"
										+ '${pageMaker.makeQuery(1)}'
										+ "&searchType="
										+ $("select option:selected").val()
										+ "&keyword="
										+ $('#keywordInput').val();

							});

					$('#newBtn').on("click", function(evt) {

						self.location = "register";

					});

					$('#newBtn2').on("click", function(evt) {

						self.location = "/member/login";

					});

				});
	</script>



	<!-- js placed at the end of the document so the pages load faster -->


	<%@include file="/WEB-INF/views/include/footer.jsp"%>
</body>



</html>

