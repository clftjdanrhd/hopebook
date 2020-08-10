<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<jsp:include page="/WEB-INF/views/include/header.jsp"/>
<style>
.le{
width:600px;
}
</style>
<!-- Main content -->
<section id="main-content">
      <section class="wrapper">
      
      <div class="row mt">
          <div class="col-lg-12">
            <h3><i class="fa fa-book"></i> 책 수정</h3>
            <div class="form-panel">
              <div class="form">
   <form role="form" action="modifyPage"  class="cmxform form-horizontal style-form" method="post" >

	<input type='hidden' name='page' value="${cri.page}"> <input
		type='hidden' name='perPageNum' value="${cri.perPageNum}">
	<input type='hidden' name='searchType' value="${cri.searchType}">
	<input type='hidden' name='keyword' value="${cri.keyword}">
	
	
                   <div class="form-group ">
                    <label for="firstname" class="control-label col-lg-2">책 제목</label>
                    <div class="col-lg-10">
                      <input class=" form-control round-form le" id="firstname" name="bookTitle" value="${bookVO.bookTitle}" type="text" />
                    </div>
                  </div>
                  <div class="form-group ">
                    <label for="lastname" class="control-label col-lg-2">저자</label>
                    <div class="col-lg-10">
                      <input class=" form-control round-form le" id="lastname" name="writer" value="${bookVO.writer}" type="text" />
                    </div>
                  </div>
                  <div class="form-group ">
                    <label for="username" class="control-label col-lg-2">출판사</label>
                    <div class="col-lg-10">
                      <input class=" form-control round-form le" id="username" name="publisher" value="${bookVO.publisher}" type="text" />
                    </div>
                  </div>
           
                  <div class="form-group ">
                    <label for="username" class="control-label col-lg-2">키워드1</label>
                    <div class="col-lg-10">
                      <input class=" form-control round-form le" id="username" name="bookKeyword1" value="${bookVO.bookKeyword1}"  type="text" />
                    </div>
                  </div>
                  <div class="form-group ">
                    <label for="username" class="control-label col-lg-2">키워드2</label>
                    <div class="col-lg-10">
                      <input class=" form-control round-form le" id="username" name="bookKeyword2" value="${bookVO.bookKeyword2}" type="text" />
                    </div>
                  </div>
                  <div class="form-group ">
                    <label for="username" class="control-label col-lg-2">키워드3</label>
                    <div class="col-lg-10">
                      <input class=" form-control round-form le" id="username" name="bookKeyword3"   value="${bookVO.bookKeyword3}" type="text" />
                    </div>
                  </div>
                  <div class="form-group ">
                    <label for="username" class="control-label col-lg-2">isbn</label>
                    <div class="col-lg-10">
                      <input class=" form-control round-form le" id="username" name="isbn" value="${bookVO.isbn}" type="text" />
                    </div>
                  </div>
                  
                 
                      <input class=" form-control round-form le" id="firstname" name="memNum" type="hidden" readonly="readonly" value="${member.memNum}"/>
                 
                   <div class="form-group ">
                    <label for="firstname" class="control-label col-lg-2"> 작성자</label>
                    <div class="col-lg-10">
                      <input class=" form-control round-form le" id="firstname" name="memName" type="text" readonly="readonly" value="${member.memName}"/>
                    </div>
                  </div>
                 
                  <div class="form-group">
                    <div class="col-lg-offset-2 col-lg-10">
                      <button class="btn btn-theme btn-round" type="submit">수정</button>
                      <button class="btn btn-theme04 btn-round" type="button">취소</button>
                    </div>
                  </div>
                </form>
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

<script>

$(document).ready(
	function() {

		var formObj = $("form[role='form']");

		console.log(formObj);

		$(".btn-theme04")
				.on("click",function() {
					self.location = "/book/list?page=${cri.page}&perPageNum=${cri.perPageNum}"
							+ "&searchType=${cri.searchType}&keyword=${cri.keyword}";
				});

		$(".btn-primary").on("click",
				function() {
					formObj.submit();
				});
	});
</script>




	
<%@include file="../include/footer.jsp"%>
