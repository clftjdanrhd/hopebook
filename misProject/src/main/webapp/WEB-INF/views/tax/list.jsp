<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<jsp:include page="/WEB-INF/views/include/header.jsp" />

<!--main content start-->
<section id="main-content">
	<section class="wrapper">
		<div class="col-md-12 mt">
			<div class="content-panel">
				<table class="table table-hover">
					<h4>
						<i class="fa fa-angle-right"></i>연말정산 영수증 신청 내역
					</h4>

					<!-- left column -->


					<div class='box-body'>

						<select name="searchType">
							<option value="n"
								<c:out value="${cri.searchType == null?'selected':''}"/>>
								---</option>
							<option value="t"
								<c:out value="${cri.searchType eq 't'?'selected':''}"/>>
								taxName</option>
							<option value="c"
								<c:out value="${cri.searchType eq 'c'?'selected':''}"/>>
								taxEmail</option>
							<option value="w"
								<c:out value="${cri.searchType eq 'w'?'selected':''}"/>>
								taxPhone</option>
							<option value="tc"
								<c:out value="${cri.searchType eq 'tc'?'selected':''}"/>>
								taxName OR taxEmail</option>
							<option value="cw"
								<c:out value="${cri.searchType eq 'cw'?'selected':''}"/>>
								taxEmail OR taxPhone</option>
							<option value="tcw"
								<c:out value="${cri.searchType eq 'tcw'?'selected':''}"/>>
								taxName OR taxEmail OR taxPhone</option>
						</select> <input type="text" name='keyword' id="keywordInput"
							value='${cri.keyword }'>
						<button id='searchBtn' button type="button"
							class="btn btn-default">검색</button>
					
					
					
					
					<c:choose>
							<c:when test="${empty member }">
									<button id='newBtn button' type="button" class="btn btn-primary"
							onclick="location.href='/member/login'">세금계산서 작성</button>
							</c:when>
							
							<c:when test="${!empty member }">
									<button id='newBtn button' type="button" class="btn btn-primary"
							onclick="location.href='register'">세금계산서 작성</button>
							</c:when>
					</c:choose>
					<!-- 
						<button id='newBtn button' type="button" class="btn btn-primary"
							onclick="location.href='register'">세금계산서 작성</button> -->

					</div>
					</div>


					<div class="box">
						<div class="box-header with-border">
							<h3 class="box-title">LIST PAGING</h3>
						</div>
						<div class="box-body">
							<table class="table table-bordered">
								<tr>
									<th style="width: 10px">NO</th>
									<th>작성자</th>
									<th>휴대폰 번호</th>
									<td>메세지</td>

								</tr>

								<c:forEach items="${list}" var="TaxVO" varStatus="var">


									<tr>
										<c:if test="${paging.cri.page == 1 }">
											<td>${var.count }</td>
										</c:if>
										<c:if test="${paging.cri.page != 1 }">
											<td>${var.count+ ((paging.cri.page-1 )*10)}</td>
										</c:if>


										<td><a
											href='/tax/readPage${paging.makeSearch(paging.cri.page) }&taxNum=${TaxVO.taxNum}'>
												${TaxVO.taxName} </a></td>
										<td>${TaxVO.taxPhone}</td>
										<td>${TaxVO.taxMsg}</td>
									</tr>

								</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
					<!-- /.box-body -->


					<div class="box-footer">

						<div class="text-center">
							<ul class="pagination">

								<c:if test="${paging.prev}">
									<li><a
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
									<li><a href="list${paging.makeSearch(paging.endPage +1) }">&raquo;</a></li>
								</c:if>

							</ul>
						</div>

					</div>
					<!-- /.box-footer-->
					</div>
					</div>
					<!--/.col (left) -->

					</div>
					<!-- /.row -->
					</section>
					<!-- /.content -->


					<script>
						var result = '${msg}';

						if (result == 'SUCCESS') {
							alert("처리가 완료되었습니다.");
						}
					</script>

					<script>
						$(document)
								.ready(
										function() {

											$('#searchBtn')
													.on(
															"click",
															function(event) {

																self.location = "list"
																		+ '${paging.makeQuery(1)}'
																		+ "&searchType="
																		+ $(
																				"select option:selected")
																				.val()
																		+ "&keyword="
																		+ $(
																				'#keywordInput')
																				.val();

															});

											$('#newBtn')
													.on(
															"click",
															function(evt) {

																self.location = "register";

															});

										});
					</script>

					<%@include file="../include/footer.jsp"%>