<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@include file="../include/header.jsp"%>

<!-- Main content -->
<section id="main-content">
	<section class="wrapper mt">
		<div>
			<h3>
				<i class="fa fa-cogs" style="padding-left: 50px"></i>관리자화면
			</h3>

			<div calss="fee_payment" style="margin-top: 20px; padding-top: 20px;">
				<div class="row">
					<div class="col-md-12">
						<div class="content-panel" style="padding-top: 2px;">

							<h4>후원 내역</h4>



							<hr style="margin-top: 10px; margin-bottom: 10px;">
							<table class="table">

								<thead>
									<tr>
										<th style="width: 10px">NO</th>
										<th>이름</th>
										<th>이메일</th>
										<th>전화번호</th>
										<th>소속</th>
										<th>직급</th>
										<th>은행</th>
										<th>계좌번호</th>
										<th>금액</th>
										<th>후원방식</th>
										<th>예금주</th>
									</tr>
								</thead>
								<c:forEach items="${list}" var="feePayMentVO" varStatus="var">

									<tr>
										<c:if test="${pageMaker.cri.page==1}">
											<td>${var.count }</td>
										</c:if>
										<c:if test="${pageMaker.cri.page != 1}">
											<td>${var.count + ((pageMaker.cri.page-1)*10) }</td>
										</c:if>


										<td>${feePayMentVO.payName}</td>
										<td>${feePayMentVO.payEmail}></td>
										<td>${feePayMentVO.payMobileNumber}</td>
										<td>${feePayMentVO.payAttach}</td>
										<td>${feePayMentVO.payPosition}</td>
										<td>${feePayMentVO.payBankNum}</td>
										<td>${feePayMentVO.payBank}</td>
										<td>${feePayMentVO.payFee}</td>
										<td>${feePayMentVO.paySponsor}</td>
										<td>${feePayMentVO.memNum}</td>
									</tr>
								</c:forEach>
							</table>

						</div>

					</div>
				</div>
			</div>
	</section>
	<!-- /.box-body -->
</section>
<!-- /.content -->



<%@include file="../include/footer.jsp"%>
