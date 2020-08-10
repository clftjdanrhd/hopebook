<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
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
                  <i> <i class="fa fa-bullhorn"></i>공지사항
                  </i>
               </h3>

               <div class='box-body'>

                  <select name="searchType">
                     <option value="n"
                        <c:out value="${cri.searchType == null?'selected':''}"/>>
                        ---</option>
                     <option value="t"
                        <c:out value="${cri.searchType eq 't'?'selected':''}"/>>
                        공지사항 제목</option>

                  </select> <input type="text" name='keyword' id="keywordInput"
                     value='${cri.keyword }'>
                  <button id='searchBtn' class="btn btn-round btn-success">검색</button>

                  <c:choose>
                     <c:when test="${member.authority eq 3}">
                        <button id='newBtn' class="btn btn-round btn-info">새 글 등록하기</button>
                     </c:when>

                     <c:otherwise>
                     
                     </c:otherwise>
                  </c:choose>
               </div>

               <hr>
               <table class="table table-hover">
                  <tr>
                     <th style="width: 20px">no</th>
                     <th>제목</th>
                     <th>작성자</th>
                     <th>작성일</th>
                     <th>조회수</th>
                  </tr>

                  <!-- 게시물 번호 -->

                  <c:forEach items="${list}" var="noticeVO" varStatus="var">
                     <tr>
                        <c:if test="${pageMaker.cri.page==1}">
                           <td>${var.count }</td>
                        </c:if>
                        <c:if test="${pageMaker.cri.page !=1 }">
                           <td>${var.count + ((pageMaker.cri.page-1)*10) }</td>
                        </c:if>


                        <td><a
                           href='/notice/readPage${pageMaker.makeSearch(pageMaker.cri.page) }&noticeNum=${noticeVO.noticeNum}'>
                              ${noticeVO.noticeTitle} </a></td>
                        <td>${noticeVO.memName}</td>
                        <td><fmt:formatDate pattern="yyyy-MM-dd HH:mm"
                              value="${noticeVO.noticeDate}" /></td>
                        <td><span class="badge bg-red">${noticeVO.noticeCount}</span></td>

                     </tr>

                  </c:forEach>

               </table>
            </div>
            <div class="text-center col-xs-6" align="center">
               <ul
                  class="text-center dataTables_paginate paging_bootstrap paginationbtn-round pagination">

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
         <!-- /col-md-12 -->
      </div>
      <!-- row -->

      <!-- /content-panel -->

      <!-- /col-md-12 -->

      <!-- /row -->
   </section>
</section>
<!-- /MAIN CONTENT -->
<!--main content end-->
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
</body>
<%@include file="../include/footer.jsp"%>