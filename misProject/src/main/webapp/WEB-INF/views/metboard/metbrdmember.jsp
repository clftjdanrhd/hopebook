<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@include file="../include/header.jsp"%>

<!-- Main content -->
<section id="main-content">
	<section class="wrapper mt">
		<div>
			<hr style="margin-left: 50px; margin-right: 50px;">


		<div class="bg-white border-radius-3 py-5 all-text-dark pattern-overlay-2">
			<div class="row">
			<div class="container">
				<div class="row all-text-white">
					<div class="col-md-12 align-self-center">
						<h1 class="innerpage-title" style="text-align: center;" value="${meetingVo.metName}">-멤버 관리</h1>
						<h5 class="innerpage-title" style="text-align: center;">다같이 만들어가는 독서모임</h5>
						<nav aria-label="breadcrumb"
							style="border-right: thin solid rgba(255, 255, 255, 0.15)">
							<ol class="breadcrumb" style="text-align: center;">
								<li class="breadcrumb-item active"><a
									href="/main?command=loginForm"><i class="fa fa-home"></i>Home&nbsp;&nbsp;&nbsp;
								</a>
								<a onclick="location.href='/metboard/metadminlist'">
										<i class="fa fa-book">모임관리</i></a>
								</li>
							</ol>
						</nav>
					</div>
				</div>
			</div>
		</div>

				<div class="container" style="margin-top: 3%;">
					<div class="row">
						<hr style="margin-top: 10px; margin-bottom: 10px;">
							<table class="table">
								<thead>
									<tr>
										<th>번호</th>
										<th>아이디</th>
										<th>이름</th>
										<th>가입일</th>
										<th>추방여부</th>
									</tr>
								</thead>
								<tr>
								<td>${memberVO.memNum}</td>
								<td>${memberVO.memId}</td>
								<td>${memberVO.memName}</td>	
								<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm"
										value="${memberVO.signDate}" /></td>
								<td>${memberVO.approval}</td>												
								</tr>
								</table>
						
						
					</div>
							
                  </div>

				</div>
			</div>

	</section>
	<!-- /.box-body -->					
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

							self.location = "list"
									+ '${pageMaker.makeQuery(1)}'
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
