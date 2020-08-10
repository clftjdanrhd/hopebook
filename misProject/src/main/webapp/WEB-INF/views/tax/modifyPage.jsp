<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="../include/header.jsp"%>

<!-- Main content -->
<section class="content">
	<div class="row">
		<!-- left column -->
		<div class="col-md-12">
			<!-- general form elements -->
			<div class="box box-primary">
				<div class="box-header">
					<h3 class="box-title">세금계산서 수정 페이지</h3>
				</div>
				<!-- /.box-header -->

				<form role="form" action="modifyPage" method="post">

					<input type='hidden' name='page' value="${cri.page}"> <input
						type='hidden' name='perPageNum' value="${cri.perPageNum}">
					<input type='hidden' name='searchType' value="${cri.searchType}">
					<input type='hidden' name='keyword' value="${cri.keyword}">

					<section id="main-content">
						<section class="wrapper">
							<h3>
								<i class="fa fa-angle-right"></i>세금계산서 수정 페이지
							</h3>

							<div class="box-body">
								<div class="form-group">
									<input type="hidden" name='taxNum' class="form-control"
										value="${taxVO.taxNum}" placeholder="Enter Title"
										readonly="readonly">
								</div>

								<div class="form-group">
									<label for="exampleInputEmail1">taxName</label> <input
										type="text" name='taxName' class="form-control"
										value="${taxVO.taxName}" placeholder="Enter Title">
								</div>
								<div class="form-group">
									<label for="exampleInputPassword1">taxEmail</label>
									<textarea class="form-control" name="taxEmail"
										value="${taxVO.taxEmail}" placeholder="Enter ..."></textarea>
								</div>
								<div class="form-group">
									<label for="exampleInputPassword1">taxPhone</label>
									<textarea class="form-control" value="${taxVO.taxPhone}"
										name="taxPhone" placeholder="Enter ..."></textarea>
								</div>
								<div class="form-group">
									<input class="form-control"
										style="width: 40%; display: inline;" placeholder="우편번호"
										name="taxAdr1" id="taxAdr1" type="text" readonly="readonly">
									<button type="button" class="btn btn-default"
										onclick="execPostCode();">
										<i class="fa fa-search"></i> 우편번호 찾기
									</button>
								</div>
								<div class="form-group">
									<input class="form-control" style="top: 5px;"
										placeholder="도로명 주소" name="taxAdr2" id="taxAdr2" type="text"
										readonly="readonly" />
								</div>
								<div class="form-group">
									<input class="form-control" placeholder="상세주소" name="taxAdr3"
										id="taxAdr3" type="text" />
								</div>
								<label for="exampleInputPassword1">taxMsg</label>
								<textarea class="form-control" name="taxMsg"
									value="${taxVO.taxMsg}" placeholder="Enter ..."></textarea>
							</div>
<!-- /.box-body -->
<div class="box-footer">
	<button type="submit" class="btn btn-primary">SAVE</button>
	<button class="btn btn-warning">CANCEL</button>
</div>
						</section>
					</section>
				</form>
			</div>
		</div>

	</div>
</section>


<script>
	$(document)
			.ready(
					function() {

						var formObj = $("form[role='form']");

						console.log(formObj);

						$(".btn-warning")
								.on(
										"click",
										function() {
											self.location = "/tax/list?page=${cri.page}&perPageNum=${cri.perPageNum}"
													+ "&searchType=${cri.searchType}&keyword=${cri.keyword}";
										});

						$(".btn-primary").on("click", function() {
							formObj.submit();
						});
					});
</script>




<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="/resources/js/addressapi.js"></script>
<script>
	function execPostCode() {
		new daum.Postcode({
			oncomplete : function(data) {
				// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

				// 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
				// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
				var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
				var extraRoadAddr = ''; // 도로명 조합형 주소 변수

				// 법정동명이 있을 경우 추가한다. (법정리는 제외)
				// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
				if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
					extraRoadAddr += data.bname;
				}
				// 건물명이 있고, 공동주택일 경우 추가한다.
				if (data.buildingName !== '' && data.apartment === 'Y') {
					extraRoadAddr += (extraRoadAddr !== '' ? ', '
							+ data.buildingName : data.buildingName);
				}
				// 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
				if (extraRoadAddr !== '') {
					extraRoadAddr = ' (' + extraRoadAddr + ')';
				}
				// 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
				if (fullRoadAddr !== '') {
					fullRoadAddr += extraRoadAddr;
				}

				// 우편번호와 주소 정보를 해당 필드에 넣는다.
				console.log(data.zonecode);
				console.log(fullRoadAddr);

				$("[name=taxAdr1]").val(data.zonecode);
				$("[name=taxAdr2]").val(fullRoadAddr);

				/* document.getElementById('signUpUserPostNo').value = data.zonecode; //5자리 새우편번호 사용
				document.getElementById('signUpUserCompanyAddress').value = fullRoadAddr;
				document.getElementById('signUpUserCompanyAddressDetail').value = data.jibunAddress; */
			}
		}).open();
	}
</script>

<%@include file="../include/footer.jsp"%>

