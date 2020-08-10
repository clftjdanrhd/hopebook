<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>



<jsp:include page="/WEB-INF/views/admin/adminHeader.jsp" />


<!DOCTYPE html>
<html lang="en">


<body>
	<section id="container">
	
	
<!--main content start-->
    <section id="main-content">
      <section class="wrapper">
        <h3><i class="fa fa-angle-right"></i> 도서관 리스트</h3>
        <div class="row mb">
          <!-- page start-->
          <div class="content-panel">
            <div class="adv-table">
              <table cellpadding="0" cellspacing="0" border="0" class="display table table-bordered" >
                <thead>
                
                
								<tr>
									<th style="width: 10px">NO</th>
									<th>도서관 번호</th>
									<th>도서관 명</th>
									<th>주소</th>
									<th>URL</th>
								</tr>
							</thead>

							<tbody>
								<c:forEach items="${list}" var="libraryVO" varStatus="var">
									<tr>
										<c:if test="${pageMaker.cri.page==1}">
											<td>${var.count }</td>
										</c:if>
										<c:if test="${pageMaker.cri.page !=1 }">
											<td>${var.count + ((pageMaker.cri.page-1)*10) }</td>
										</c:if>


										<td>${libraryVO.libraryNum}</td>
										<td><a
											href='/ecosys/readLibrary${pageMaker.makeSearch(pageMaker.cri.page) }&libraryNum=${libraryVO.libraryNum}'>
												${libraryVO.libraryTitle} </a></td>
												<td>${libraryVO.libraryContent}</td>
												<td>${libraryVO.libraryUrl}</td>
									</tr>

								</c:forEach>

							</tbody>
						 </table>
						 <button type="button" class="btn btn-theme" id='newBtn'>등록</button>
            </div>
            
          </div>
          
          	<div class="box-footer">

					<div class="text-center">
						<ul class="pagination">

							<c:if test="${pageMaker.prev}">
								<li><a
									href="list${pageMaker.makeSearch(pageMaker.startPage - 1) }">&laquo;</a></li>
							</c:if>

							<c:forEach begin="${pageMaker.startPage }"
								end="${pageMaker.endPage }" var="idx">
								<li
									<c:out value="${pageMaker.cri.page == idx?'class =active':''}"/>>
									<a href="list${pageMaker.makeSearch(idx)}">${idx}</a>
								</li>
							</c:forEach>

							<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
								<li><a
									href="list${pageMaker.makeSearch(pageMaker.endPage +1) }">&raquo;</a></li>
							</c:if>

						</ul>
					</div>

				</div>
				<!-- /.box-footer-->
          <!-- page end-->
        </div>
        <!-- /row -->
      </section>
      <!-- /wrapper -->
    </section>
    <!-- /MAIN CONTENT -->
    <!--main content end-->


  
  	
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

						self.location = "registerLibrary";

					});

					$('#newBtn2').on("click", function(evt) {

						self.location = "/member/login";

					});

				});
	</script>

</body>

</html>

<jsp:include page="../include/footer.jsp"  />



