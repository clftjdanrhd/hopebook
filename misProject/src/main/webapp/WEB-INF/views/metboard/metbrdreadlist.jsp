<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<jsp:include page="/WEB-INF/views/include/header.jsp" />
<style>
.ti {
	color:
}
</style>
<section id="main-content">
	<section class="wrapper">
		<div class="row">
			<div class="col-md-12">
				<div class="form-panel">
					<!-- /col-md-12 -->
					<h3>
						<i class="fa fa-bullhorn"></i>${MeetingVO.metName}자유 게시판
					</h3>


					<hr>
					<table class="table table-hover">
						<tr>
							<th style="width: 10px">NO</th>
								<th>분류</th>
								<th>제목</th>
								<th>작성자</th>
								<th>작성일자</th>
								<th style="width: 40px">VIEWCNT</th>
						</tr>
						<c:forEach items="${list}" var="metBoardVO" varStatus="var">
							<tr>
								<c:if test="${pageMaker.cri.page==1}">
									<td>${var.count }</td>
								</c:if>
								<c:if test="${pageMaker.cri.page != 1}">
									<td>${var.count + ((pageMaker.cri.page-1)*10) }</td>
								</c:if>


								<td>${metBoardVO.metBrdCategory}</td>
								<td><a
									href='/metboard/readPage${pageMaker.makeSearch(pageMaker.cri.page)}&metBrdNum=${metBoardVO.metBrdNum}'>
										${metBoardVO.metBrdName} </a></td>
								<td>${metBoardVO.memName}</td>
								<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm"
										value="${metBoardVO.regDate}" /></td>
								<td><span class="badge bg-red">${metBoardVO.metBrdCount}</span></td>
							</tr>
						</c:forEach>
					</table>


				<div class=" col-md-offset-10">
				<button type="button" class="btn btn-theme03 btn-round" onclick="location.href='/metboard/list'">돌아가기</button>
				<button type="button" id="newBtn" class="btn btn-theme btn-round">게시글 등록</button>
				</div>
				</div>

				<div class="text-center col-xs-6 ">
					<ul
						class="text-center dataTables_paginate paging_bootstrap paginationbtn-round pagination">

						<c:if test="${pageMaker.prev}">
							<li class="prev disabled"><a
								href="list${pageMaker.makeSearch(pageMaker.startPage - 1) }">&laquo;</a></li>
						</c:if>

						<c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }"
							var="idx">
							<li <c:out value="${pageMaker.cri.page == idx?'class =active':''}"/>>
								<a href="list${pageMaker.makeSearch(idx)}">${idx}</a>
							</li>
						</c:forEach>

						<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
							<li class="next"><a
								href="list${pageMaker.makeSearch(pageMaker.endPage +1) }">&raquo;</a></li>
						</c:if>
					</ul>
				</div>
			</div>
		</div>
		<!-- /col-md-12 -->
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

							self.location = "list" + '${pageMaker.makeQuery(1)}'
									+ "&searchType="
									+ $("select option:selected").val()
									+ "&keyword=" + $('#keywordInput').val();

						});

				$('#newBtn').on("click", function(evt) {

					self.location = "register";

				});

			});
</script>

<%@include file="../include/footer.jsp"%>
