<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<jsp:include page="/WEB-INF/views/include/header.jsp" />
<style>
.le {
   width: 600px;
}
</style>

<section id="main-content">
   <section class="wrapper">
      <!-- FORM VALIDATION -->
      <div class="row mt">
         <div class="col-lg-12">
            <h4>
               <i class="fa fa-angle-right">공지사항</i>
            </h4>
            <div class="form-panel form-horizontal style-form"">
               <div class=" form">
                  <form role="form" action="modifyPage" id="commentForm"
                     method="GET">
                     <input type='hidden' name='noticeNum'
                        value="${noticeVO.noticeNum}"> <input type='hidden'
                        name='page' value="${cri.page}"> <input type='hidden'
                        name='perPageNum' value="${cri.perPageNum}"> <input
                        type='hidden' name='searchType' value="${cri.searchType}">
                     <input type='hidden' name='keyword' value="${cri.keyword}">

                     <div class="form-group ">
                        <div class="col-lg-4">
                           <label for="firstname" class="control-label col-lg-4">제목</label>
                        </div>
                        <div class="col-lg-6">
                           <label for="firstname" class="control-label col-lg-6">${noticeVO.noticeTitle}</label>
                        </div>
                     </div>

                     <div class="form-group ">
                     <div class="col-lg-4">
                        <label for="firstname" class="control-label col-lg-4">내용</label>
                        </div>
                        <div class="col-lg-6">
                           <label for="firstname" class="control-label col-lg-6">${noticeVO.noticeContent}</label>
                        </div>
                     </div>

                     <div class="form-group ">
                        <label for="firstname" class="control-label col-lg-4">작성자</label>
                        <div class="col-lg-6">
                           <input type='hidden' name='memNum' value="${noticeVO.memNum}">
                           <label for="firstname" class="control-label col-lg-6">${noticeVO.memName}</label>
                        </div>
                     </div>

                     <c:if test="${!empty fileVO}">
                        <div class="fileupload fileupload-exists"
                           data-provide="fileupload">
                           <label for="exampleInputEmail1" class="col-form-label">첨부파일<span
                              class="must-mark">*</span></label>
                        </div>

                        <ul class="dropzone-previews">
                           <c:forEach items="${fileVO}" var="fileVO" varStatus="status">
                              <c:set var="filename" value="${fileVO.fileName}" />
                              <li class="dropzone-previews clearfix uploadedList">
                                 <div class="fileupload fileupload-exists">
                                    <div class="p-2">
                                       <div class="row align-items-center">
                                          <c:set var="fileNm" value="${fn:toLowerCase(filename)}" />
                                          <c:forTokens var="token" items="${fileNm}" delims="."
                                             varStatus="status">
                                             <c:if test="${status.last}">
                                                <c:choose>
                                                   <c:when test="${token eq 'hwp' }">
                                                      <img src="한글파일이미지" alt="${filename}" />
                                                   </c:when>
                                                   <c:when test="${token eq 'xls' || token eq 'xlsx' }">
                                                      <img src="엑셀파일이미지" alt="${filename }" />
                                                   </c:when>
                                                   <c:when
                                                      test="${token eq 'jpg' || token eq 'gif' || token eq 'png' || token eq 'bmp' }">
                                                      <img
                                                         src="/displayFile?fileName=${fileVO.fileLocation}"
                                                         alt="${filename}" />
                                                   </c:when>
                                                   <c:when test="${token eq 'pdf'}">
                                                      <img src="pdf파일이미지" alt="${filename }" />
                                                   </c:when>
                                                   <c:when test="${token eq 'ppt' }">
                                                      <img src="파워포인트파일이미지" alt="${filename}" />
                                                   </c:when>
                                                   <c:otherwise>
                                                      <img src="기본파일이미지" alt="${filename }" />
                                                   </c:otherwise>
                                                </c:choose>
                                             </c:if>
                                          </c:forTokens>
                                          <div class="col pl-0">
                                             <a href="/displayFile?fileName=${fileVO.fileLocation}">${fileVO.fileName}</a>
                                          </div>
                                       </div>
                                    </div>
                                 </div>
                              </li>
                           </c:forEach>
                        </ul>
                     </c:if>
                     <c:if test="${empty fileVO}">
                     </c:if>

                     <div class="form-group">
                     <label class="col-lg-2 col-sm-2 control-label"></label>
                     <div class="col-lg-10">
                        <div class="col-lg-offset-2 col-lg-10">
                                 <button class="btn btn-primary btn-round">목록</button>
                           <c:if test="${member.memNum eq noticeVO.memNum}">
                              <button class="btn btn-warning btn-round">수정</button>
                              <button class="btn btn-danger btn-round">삭제</button>
                              </c:if>

                        </div>
                     </div>
                     </div>
                  </form>
               </div>
            </div>
            <!-- /form-panel -->
         </div>
         <!-- /col-lg-12 -->
      </div>

   </section>
</section>

<script>
   $(document).ready(function() {

      var formObj = $("form[role='form']");

      $(".btn-warning").on("click", function() {
         formObj.attr("action", "/notice/modifyPage");
         formObj.attr("method", "get");
         formObj.submit();
      });

      $(".btn-danger").on("click", function() {
         formObj.attr("action", "/notice/remove");
         formObj.attr("method", "post");
         formObj.submit();
      });

      $(".btn-primary").on("click", function() {
         formObj.attr("action", "/notice/list");
         formObj.attr("method", "get");
         formObj.submit();
      });

   });
</script>
<script>
   function checkImageType(fileName) {
      var pattern = /JPG|jpg|gif|png|jpeg/i;
      return fileName.match(pattern);
   }
</script>
<%@include file="../include/footer.jsp"%>