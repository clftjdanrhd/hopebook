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
						<i class="fa fa-bullhorn"></i>이달의 책 목록
					</h3>


					<hr>
					<table class="table table-hover">
						<tr>
							<th style="width: 20px">NO</th>
							<th>책 제목</th>
							<th>저자</th>
							<th>출판사</th>
							<th>작성일</th>
						</tr>
						<c:forEach items="${list}" var="bookBoardVO" varStatus="var">
							<tr>
								<c:if test="${paging.cri.page==1}">
									<td>${var.count }</td>
								</c:if>
								<c:if test="${paging.cri.page !=1 }">
									<td>${var.count + ((paging.cri.page-1)*10) }</td>
								</c:if>

								<td><a
									href='/bookboard/readPage${paging.makeSearch(paging.cri.page) }&bookBrdNum=${bookBoardVO.bookBrdNum}'>
										${bookBoardVO.bookBrdTitle} </a></td>
								<td>${bookBoardVO.writer}</td>
								<td>${bookBoardVO.publisher}</td>
								<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm"
										value="${bookBoardVO.bookBrdDate}" /></td>
							</tr>
						</c:forEach>
					</table>


				<div class=" col-md-offset-10">

				<c:choose>
					<c:when test="${member.authority eq 3}">
						<button id='newBtn' class="btn btn-round btn-info">등록</button>
					</c:when>
					<c:otherwise>
					</c:otherwise>
				</c:choose>
				</div>
				</div>

				<div class="text-center col-xs-6 ">
					<ul
						class="text-center dataTables_paginate paging_bootstrap paginationbtn-round pagination">

						<c:if test="${paging.prev}">
							<li class="prev disabled"><a
								href="list${paging.makeSearch(paging.startPage - 1) }">&laquo;</a></li>
						</c:if>

						<c:forEach begin="${paging.startPage }" end="${paging.endPage }"
							var="idx">
							<li <c:out value="${paging.cri.page == idx?'class =active':''}"/>>
								<a href="list${paging.makeSearch(idx)}">${idx}</a>
							</li>
						</c:forEach>

						<c:if test="${paging.next && paging.endPage > 0}">
							<li class="next"><a
								href="list${paging.makeSearch(paging.endPage +1) }">&raquo;</a></li>
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

							self.location = "list" + '${paging.makeQuery(1)}'
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
