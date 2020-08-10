<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<jsp:include page="/WEB-INF/views/include/header.jsp" />

<!-- Main content -->
<!DOCTYPE html>
<html lang="en">



<body>
   <section id="main-content">
      <section class="wrapper">
         <div class="row">
            <div class="col-md-12">
               <div class="form-panel">
                  <!-- /col-md-12 -->

                  <section id="main-content" style="margin-left: 0px;">
                     <section class="wrapper site-min-height" style="margin-top: 0px;">
                        <h3>
                           <i class="fa fa-angle-right"></i> Bookstore
                        </h3>
                        <hr>
                        <div class="row mt">
                           <c:forEach items="${list}" var="BookstoreVO" varStatus="var">
                              <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 desc"
                                 style="padding-bottom: 15px;">

                                 <div class="project-wrapper">

                                    <div class="project">
                                       <div class="photo-wrapper">

                                          <div class="photo">
                                             <a class="fancybox" href="${BookstoreVO.bookstoreUrl}"
                                                target="_blank"> <img class="img-responsive"
                                                src="../../resources/img/portfolio/book2.jpg" alt=""
                                                style="width: 500px;">
                                                <div class="photo-text">

                                                   <h3>${BookstoreVO.bookstoreTitle}</h3>
                                                   <h6 style="width: 300px;">${BookstoreVO.bookstoreContent}</h6>
                                                </div>
                                             </a>
                                          </div>
                                          <div class="overlay" href="${BookstoreVO.bookstoreUrl}"></div>

                                       </div>
                                    </div>

                                 </div>

                              </div>
                           </c:forEach>
                        </div>

                     </section>
                  </section>
               </div>
               <!-- /.box-body -->




               <div class="text-center col-xs-6 ">
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
         </div>

         <!-- /.box-footer-->
      </section>
   </section>

</body>
</html>


<%@include file="/WEB-INF/views/include/footer.jsp"%>