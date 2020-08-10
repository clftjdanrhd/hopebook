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
        <h3><i class="fa fa-angle-right"></i> 독후감 리스트</h3>
        <div class="row mb">
          <!-- page start-->
          <div class="content-panel">
            <div class="adv-table">
              <table cellpadding="0" cellspacing="0" border="0" class="display table table-bordered" >
                <thead>
								<tr>
									<th style="width: 10px">NO</th>
									<th>NUM</th>
									<th>TITLE</th>
									<th>CATEGORY</th>
									<th>NAME</th>
									<th>DATE</th>
								</tr>
							</thead>

							<tbody>
								<c:forEach items="${list}" var="reportBoardVO" varStatus="var">
									<tr>
										<c:if test="${pageMaker.cri.page==1}">
											<td>${var.count }</td>
										</c:if>
										<c:if test="${pageMaker.cri.page !=1 }">
											<td>${var.count + ((pageMaker.cri.page-1)*10) }</td>
										</c:if>


										<td>${reportBoardVO.reportNum}</td>
										<td><a
											href='/ecosys/reportReadPage${pageMaker.makeSearch(pageMaker.cri.page) }&reportNum=${reportBoardVO.reportNum}'>
												${reportBoardVO.reportTitle} </a></td>
										<td>${reportBoardVO.reportCategory}</td>
										<td>${reportBoardVO.memName}</td>
										<td>${reportBoardVO.reportDate}</td>

									</tr>

								</c:forEach>

							
							</tbody>
              </table>
            </div>
          </div>
          <!-- page end-->
        </div>
        <!-- /row -->
      </section>
      <!-- /wrapper -->
    </section>
    <!-- /MAIN CONTENT -->
    <!--main content end-->


  </section>
  
</body>
</html>

<jsp:include page="../include/footer.jsp"  />
