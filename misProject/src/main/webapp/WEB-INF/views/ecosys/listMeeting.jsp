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
        <h3><i class="fa fa-angle-right"></i> 모임 리스트</h3>
        <div class="row mb">
          <!-- page start-->
          <div class="content-panel">
            <div class="adv-table">
              <table cellpadding="0" cellspacing="0" border="0" class="display table table-bordered" id="checkboxTestTbl">
                <thead>
								<tr>
								<th style="text-align: center;">
										<input type="checkbox"
						style="padding-right: 5px; margin-right: 5px; margin-left: 5px;" />ALL</th>
									<th style="width: 10px">NO</th>
									<th>모임번호</th>
									<th>모임 명</th>
									<th>회원 수</th>
									<th>지역</th>
									<th>주제</th>
									<th>개설 일자</th>
									<th>승인 여부</th>
								</tr>
							</thead>

							<tbody>
								<c:forEach items="${list}" var="meetingVO" varStatus="var">
									<tr>
									<td style="text-align: center;"><input type="checkbox" /></td>
										<c:if test="${pageMaker.cri.page==1}">
											<td>${var.count }</td>
										</c:if>
										<c:if test="${pageMaker.cri.page !=1 }">
											<td>${var.count + ((pageMaker.cri.page-1)*10) }</td>
										</c:if>


										<td>${meetingVO.metNum}</td>
										<td><a
											href='/ecosys/readMeeting${pageMaker.makeSearch(pageMaker.cri.page) }&metNum=${meetingVO.metNum}'>
												${meetingVO.metName} </a></td>
												<td>${meetingVO.headCount}</td>
												<td>${meetingVO.location}</td>
												<td>${meetingVO.keyword}</td>
												<td>${meetingVO.metDate}</td>
												<td>${meetingVO.approval}</td>
									</tr>

								</c:forEach>

							</tbody>
              </table>
            </div>  
            
            
      
				
          </div>
          <!-- page end-->
          
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
        </div>
        <!-- /row -->
      </section>
      <!-- /wrapper -->
    </section>
    <!-- /MAIN CONTENT -->
    <!--main content end-->







  </section>

    <script>
        $(document).ready(function(){
            var tbl = $("#checkboxTestTbl");
             
            // 테이블 헤더에 있는 checkbox 클릭시
            $(":checkbox:first", tbl).click(function(){
                // 클릭한 체크박스가 체크상태인지 체크해제상태인지 판단
                if( $(this).is(":checked") ){
                    $(":checkbox", tbl).attr("checked", "checked");
                }
                else{
                    $(":checkbox", tbl).removeAttr("checked");
                }
 
                // 모든 체크박스에 change 이벤트 발생시키기               
                $(":checkbox", tbl).trigger("change");
            });
             
            // 헤더에 있는 체크박스외 다른 체크박스 클릭시
            $(":checkbox:not(:first)", tbl).click(function(){
                var allCnt = $(":checkbox:not(:first)", tbl).length;
                var checkedCnt = $(":checkbox:not(:first)", tbl).filter(":checked").length;
                 
                // 전체 체크박스 갯수와 현재 체크된 체크박스 갯수를 비교해서 헤더에 있는 체크박스 체크할지 말지 판단
                if( allCnt==checkedCnt ){
                    $(":checkbox:first", tbl).attr("checked", "checked");
                }
                else{
                    $(":checkbox:first", tbl).removeAttr("checked");
                }
            }).change(function(){
                if( $(this).is(":checked") ){
                    // 체크박스의 부모 > 부모 니까 tr 이 되고 tr 에 selected 라는 class 를 추가한다.
                    $(this).parent().parent().addClass("selected");
                }
                else{
                    $(this).parent().parent().removeClass("selected");
                }
            });
        });
    </script>
</body>

</html>

<jsp:include page="../include/footer.jsp"  />
