<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<jsp:include page="/WEB-INF/views/include/header.jsp" />
<style>
.ti{
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
							<i class="fa fa-bullhorn"></i>독후감 목록
						</h3>
						<div class='box-body'>
							<select name="searchType">
							<option value="n"
								<c:out value="${cri.searchType == null?'selected':''}"/>>
								---</option>
							<option value="t"
								<c:out value="${cri.searchType eq 't'?'selected':''}"/>>
								제목</option>
							<option value="c"
								<c:out value="${cri.searchType eq 'c'?'selected':''}"/>>
								내용</option>
							<option value="w"
								<c:out value="${cri.searchType eq 'w'?'selected':''}"/>>
								작성자</option>
							<option value="tc"
								<c:out value="${cri.searchType eq 'tc'?'selected':''}"/>>
								제목 + 내용</option>
							<option value="cw"
								<c:out value="${cri.searchType eq 'cw'?'selected':''}"/>>
								내용 + 제목</option>
							<option value="tcw"
								<c:out value="${cri.searchType eq 'tcw'?'selected':''}"/>>
								제목 + 내용 + 작성자</option>
						</select> <input type="text" name='keyword' id="keywordInput"
								value='${cri.keyword }'>
							<button id='searchBtn' class="btn btn-round btn-success">검색</button>
							<c:choose>
								<c:when test="${empty member}">
									<button onclick="location.href='/member/login'"
										class="btn btn-round btn-info">독후감 작성</button>
								</c:when>
								<c:when test="${!empty member}">
									<button id='newBtn' class="btn btn-round btn-info">독후감 작성
										</button>
								</c:when>
							</c:choose>
						</div>

						<hr>
						<table class="table table-hover">
							<tr>
								<th>NO</th>
							<th>독후감 제목</th>
							<th>날짜</th>
							<th>작성자</th>
							<th>조회수</th>
							</tr>
							<c:forEach items="${list}" var="ReportBoardVO" varStatus="var">
								<tr>
									<c:if test="${paging.cri.page==1}">
										<td>${var.count }</td>
									</c:if>
									<c:if test="${paging.cri.page !=1 }">
										<td>${var.count + ((paging.cri.page-1)*10) }</td>
									</c:if>

										<td><a
								href='/reportboard/readPage${paging.makeSearch(paging.cri.page) }&reportNum=${ReportBoardVO.reportNum}'>
									${ReportBoardVO.reportTitle} </a></td>
							<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm"
									value="${ReportBoardVO.reportDate}" /></td>
							<td>${ReportBoardVO.memName}</td>
							<td><span class="badge bg-red">${ReportBoardVO.reportCount}</span></td>
								</tr>
							</c:forEach>
						</table>

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
				</div>
			</div>
		<!-- /col-md-12 -->
	</section>
</section>

<!-- /.content -->


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
