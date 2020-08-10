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
						<h1 class="innerpage-title" style="text-align: center;">${meetingVo.metName}-관리 홈</h1>
						<h5 class="innerpage-title" style="text-align: center;">다같이 만들어가는 독서모임</h5>
						<nav aria-label="breadcrumb"
							style="border-right: thin solid rgba(255, 255, 255, 0.15)">
							<ol class="breadcrumb" style="text-align: center;">
								<li class="breadcrumb-item active"><a
									href="/main?command=loginForm"><i class="fa fa-home"></i>Home&nbsp;&nbsp;&nbsp;
								</a> <a
									onclick="location.href='/meeting/list'" ${metBoardVo.metNum}">

										<i class="fa fa-book">독서모임</i>

								</a></li>
							</ol>
						</nav>
					</div>
				</div>
			</div>
		</div>


	
				<div class="container" style="margin-top: 3%;">
					<div class="row">
						<div class="col-md-4">
							<div align="middle">
							<div class="feature-box h-100 icon-grad">
								<h1>
									<div class="fa fa-cog">
								</h1>
								<a onclick="location.href='/metboard/metmodify'">독서모임 수정</a>
							</div>
							<h3 class="feature-box-title"></h3>
							<p class="feature-box-desc">독서모임에 대한 기본정보를 수정할수 있습니다.</p>
						</div>
						</div>
						

						<div class="col-md-4">
							<div align="middle">
								<div class="feature-box h-100 icon-grad">
									<h1>
										<div class="fa fa-medkit">
									</h1>
									<a onclick="location.href='/memlist/list'">가입신청 관리</a>
								</div>
								<h3 class="feature-box-title"></h3>
								<p class="feature-box-desc">가입신청한 멤버를 승인 또는 거절 할 수 있습니다.</p>
							</div>
						</div>

						<div class="col-md-4">
							<div align="middle">
								<div class="feature-box h-100 icon-grad">
									<h1>
										<div class="fa fa-group">
									</h1>
									<a onclick="location.href='/metboard/metbrdmember'">멤버관리</a>
								</div>
								<h3 class="feature-box-title"></h3>
								<p class="feature-box-desc">독서모임에 가입된 멤버를 관리합니다.</p>
							</div>
						</div>

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
