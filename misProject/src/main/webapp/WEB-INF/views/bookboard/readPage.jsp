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
<!-- Main content -->
<section id="main-content">
   <section class="wrapper">

      <div class="row mt">
         <div class="col-lg-12">
            <h4>
               <i class="fa fa-book"></i>이달의 책 상세보기
            </h4>
            <div class="form-panel form-horizontal style-form">
               <div class="form">
                  <form role="form" action="modifyPage" method="post">

                     <input type='hidden' name='bookBrdNum' value="${bookBoardVO.bookBrdNum}">
                     <input type='hidden' name='page' value="${cri.page}"> <input
                        type='hidden' name='perPageNum' value="${cri.perPageNum}">
                     <input type='hidden' name='searchType' value="${cri.searchType}">
                     <input type='hidden' name='keyword' value="${cri.keyword}">

                  </form>


                  <div class="form-group ">
                     <div class="col-lg-4">
                     <label for="firstname" class="control-label col-lg-4">제목</label>
                     </div>
                     <div class="col-lg-6">
                     <label for="firstname" class="control-label col-lg-6">${bookBoardVO.bookBrdTitle}</label>
                     </div>
                  </div>
                     <div class="form-group ">
                     <c:if test="${!empty bookBoardVO.imgPath}">
                           <div class="col-lg-4" align="center">
                              <img src="/displayFile?fileName=${bookBoardVO.imgPath}" style="width:60%; height:60%;"/>
                           </div>
                           <div class="col-lg-4">
                           <label for="username" class="control-label col-lg-4">책제목</label>
                        </div>
                        <div class="col-lg-6">
                           <label for="firstname" class="control-label col-lg-6">${bookBoardVO.bookTitle}</label>
                        </div>
                     </c:if>
                     <c:if test="${empty bookBoardVO.imgPath}">
                        <div class="col-lg-4">
                           <label for="username" class="control-label col-lg-4">책제목</label>
                        </div>
                        <div class="col-lg-6">
                           <label for="firstname" class="control-label col-lg-6">${bookBoardVO.bookTitle}</label>
                        </div>
                     </c:if>
                  </div>
                  <div class="form-group ">
                        <div class="col-lg-4">
                           <label for="username" class="control-label col-lg-4">저자</label>
                        </div>
                        <div class="col-lg-6">
                           <label for="firstname" class="control-label col-lg-6">${bookBoardVO.writer}</label>
                        </div>
                     </div>

                  </div>
                  
                  <div class="form-group ">
                     <div class="col-lg-4">
                     <label for="username" class="control-label col-lg-4">출판사</label>
                     </div>
                        <div class="col-lg-6">
                           <label for="firstname" class="control-label col-lg-6">${bookBoardVO.publisher}</label>
                        </div>                     
                  </div>
                  
                  
                  <div class="form-group ">
                     <div class="col-lg-4">
                     <label for="lastname" class="control-label col-lg-4">내용</label>
                     </div>
                     <div class="col-lg-6">
                           <label for="firstname" class="control-label col-lg-12">${bookBoardVO.bookBrdContent}</label>
                        </div>                        
                  </div>
                  <input class="form-control round-form  le" id="username" name="bookNum" readonly="readonly" value="${bookBoardVO.bookNum}" type="hidden" />
                  <input class=" form-control round-form le" id="firstname" name="memNum" type="hidden" readonly="readonly" value="${bookBoardVO.memNum}" />

                  <div class="form-group ">
                     <div class="col-lg-4">
                     <label for="firstname" class="control-label col-lg-4"> 작성자</label>
                     </div>
                  <div class="col-lg-6">
                           <label for="firstname" class="control-label col-lg-6">${bookBoardVO.memName}</label>
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
                                                      test="${token eq 'jpg' || token eq 'gif' || token eq 'png' || token eq 'bmp' || token eq 'jpeg' }">
                                                      <img src="/displayFile?fileName=${fileVO.fileLocation}"
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
                                                </c:choose></c:if>
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
                           <button type="submit" class="btn btn-primary btn-round" onclick="location.href='list'">목록</button>
                           <c:if test="${member.memNum eq bookBoardVO.memNum}">
                              <button type="submit" class="btn btn-warning btn-round bookboardModify">수정</button>
                              <button class="btn btn-danger btn-round bookboardDel">삭제</button>
                           </c:if>
                        </div>
                     </div>

                  </div>
               </div>
               <!-- /form-panel -->
            </div>
            <!-- /col-lg-12 -->
         </div>
         <!-- /row -->
   </section>
   <!-- /wrapper -->
</section>



<!-- /.box-body -->
<script>
   $(document).ready(function() {

      var formObj = $("form[role='form']");

      console.log(formObj);

      $(".bookboardModify").on("click", function() {
         formObj.attr("action", "/bookboard/modifyPage");
         formObj.attr("method", "get");
         formObj.submit();
      });

      $(".bookboardDel").on("click", function() {
         formObj.attr("action", "/bookboard/removePage");
         formObj.submit();
      });

      $(".btn-primary").on("click", function() {
         formObj.attr("method", "get");
         formObj.attr("action", "/bookboard/list");
         formObj.submit();
      });

   });
</script>
<%@include file="../include/footer.jsp"%>