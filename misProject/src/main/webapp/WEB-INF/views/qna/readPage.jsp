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
               <i class="fa fa-book"></i>문의글 상세보기
            </h4>
            <div class="form-panel form-horizontal style-form">
               <div class="form">
                  <form role="form" action="modifyPage" method="post">
<input type='hidden' name='qNum' id='qNum'
										value="${qnAVO.qNum}"> <input type='hidden'
										name='page' value="${cri.page}"> <input type='hidden'
										name='perPageNum' value="${cri.perPageNum}"> <input
										type='hidden' name='searchType' value="${cri.searchType}">
									<input type='hidden' name='keyword' value="${cri.keyword}">

                  </form>


                  <div class="form-group ">
                     <div class="col-lg-4">
                     <label for="firstname" class="control-label col-lg-4">제목</label>
                     </div>
                     <div class="col-lg-6">
                     <label for="firstname" class="control-label col-lg-6">${qnAVO.title}</label>
                     </div>
                  </div>
                  
                  
                  <div class="form-group ">
                     <div class="col-lg-4">
                     <label for="lastname" class="control-label col-lg-4">내용</label>
                     </div>
                     <div class="col-lg-6">
                           <label for="firstname" class="control-label col-lg-12">${qnAVO.content}</label>
                        </div>                        
                  </div>
                  
                  <input type="hidden" name="memNum" class="form-control"
											value="${qnAVO.memNum}" readonly="readonly">
                  
                  
                  
                     <div class="form-group ">
                        <div class="col-lg-4">
                           <label for="username" class="control-label col-lg-4">작성자</label>
                        </div>
                        <div class="col-lg-6">
                           <label for="firstname" class="control-label col-lg-6">${qnAVO.memName}</label>
                        </div>
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
                                 <div class="fileupload fileupload-exists" style="align:center;">
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
                                                      <img src="/displayFile?fileName=${fileVO.fileLocation}" style="width:30%; height:30%"
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


                  
                  
                  <div class="row mt">
							<div class="col-md-12">
								<section class="task-panel tasks-widget">
									<div class="panel-heading">
										<div class="pull-left">
											<h5>
												<i class="fa fa-comment-o"></i> 댓글 달기
											</h5>
										</div>
										<br>
									</div>
									<div class="panel-body">
										<div class="task-content">
											<form class="form-horizontal style-form" method="get">
												<div class="col-sm-10">
													<input type="hidden" value="${member.memNum}"
														id="newMemNum"> <input type="text"
														class="form-control" id="newqnaComContent">
												</div>
												<div class="col-sm-2">
													<a class="btn btn-theme btn-sm pull-left comentAddBtn">댓글
														등록</a>
												</div>
											</form>

										</div>
									</div>
								</section>
							</div>
						</div>

						<!--  row -->
						<!-- COMPLEX TO DO LIST -->
						<div class="row mt">
							<div class="col-md-12">
								<section class="task-panel tasks-widget">
									<div class="panel-heading">
										<div class="pull-left">
											<h5>
												<i class="fa fa-comments-o"></i> 댓글 목록
											</h5>
										</div>
										<br>
									</div>
									<div class="panel-body">
										<div class="task-content">
											<ul id="coments" class="task-list">

											</ul>
										</div>
									</div>


								</section>
							</div>
						</div>
                  
                  
                  
                  
                  
                  
                  <div class="form-group">
                     <label class="col-lg-2 col-sm-2 control-label"></label>
                     <div class="col-lg-10">
                        <div class="col-lg-offset-2 col-lg-10">
                           <button type="submit" class="btn btn-primary btn-round" onclick="location.href='list'">목록</button>
                           <c:if test="${member.memNum eq qnAVO.memNum}">
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






<!-- 		<section id="main-content">
			<section class="wrapper">
				<div class="row mt">
					<div class="col-lg-12">
						<div class="form-panel">


							<div class="box box-success">
								<div class="box-header">
									<h3 class="box-title">댓글 작성</h3>
								</div>
								<div class="box-body">
									<label for="exampleInputEmail1">Writer</label> <input
										class="form-control" type="text" placeholder="USER ID"
										id="newReplyWriter"> <label for="exampleInputEmail1">Reply
										Text</label> <input class="form-control" type="text"
										placeholder="REPLY TEXT" id="newReplyText">

								</div>
								/.box-body
								<div class="box-footer">
									<button type="button" class="btn btn-primary" id="replyAddBtn">ADD
										REPLY</button>
								</div>
							</div>

						</div>
			</section>
		</section> -->
<!--                     추가                         -->










<script>
	$(document).ready(function() {

		var formObj = $("form[role='form']");

		console.log(formObj);

		$(".btn-warning").on("click", function() {
			formObj.attr("action", "/qna/modifyPage");
			formObj.attr("method", "get");
			formObj.submit();
		});

		$(".btn-danger").on("click", function() {
			formObj.attr("action", "/qna/removePage");
			formObj.submit();
		});

		$(".btn-primary").on("click", function() {
			formObj.attr("method", "get");
			formObj.attr("action", "/qna/list");
			formObj.submit();
		});

	});
</script>


<script>
	var qNum = $("#qNum").val();
	var memNumObj = $("#newMemNum").val(); //로그인 정보 가져오기
	var metBrdMemNum = $("#metBrdMemNum").val(); //게시글 쓴 사람 정보 가져오기

	$
			.getJSON(
					"/coments/all/" + qNum,
					function(data) {
						var str = "";

						$(data)
								.each(
										function() {

											var strbutton = "";

											str += "<li data-metComtNum='"
													+ "<div class='task-title'><span class='badge bg-success'>"
													+ this.memName
													+ "</span>&nbsp;&nbsp;&nbsp;&nbsp;"
													+ "<span class='task-title-sp'>"
													+ this.qnaComContent
													+ "</span>&nbsp;&nbsp;&nbsp;&nbsp;"
													+ "<span class='badge btn-theme02' style='float:right;'>"
													+ this.ajaxComtDate
													+ "</span>";

											if (memNumObj == this.memNum
													|| memNumObj == metBrdMemNum)//댓글 정보와 로그인 정보 같을 경우 OR 게시글의 주인 인 경우 댓글 삭제 가능
											{
												strbutton += "<div class='pull-right hidden-phone'>"
														+ "  <button onclick='deleteReply("
														+ this.qnaComtNum
														+ ")' class='btn btn-danger btn-xs fa fa-trash-o  comentDelBtn'>"
														+ "</div>";
											}
											str += strbutton;
											str += "</div></li>";

										});

						$("#coments").html(str);
					});

	//댓글 저장 버튼 클릭 이벤트
	$(".comentAddBtn").on("click", function() {

		// 입력 form 선택자
		var memNumObj = $("#newMemNum");
		var qnaComContentObj = $("#newqnaComContent");

		var memNum = memNumObj.val();
		var qnaComContent = qnaComContentObj.val();

		if (memNum == "") { //로그인 정보 없을 경우

			alert("로그인 후 댓글 기능을 사용할 수 있습니다.");
			qnaComContentObj.val("");

		}

		// 댓글 입력처리 수행
		$.ajax({
			type : "post",
			url : "/coments/",
			headers : {
				"Content-Type" : "application/json",
				"X-HTTP-Method-Override" : "POST"
			},
			dataType : "text",
			data : JSON.stringify({
				qNum : qNum,
				memNum : memNum,
				qnaComContent : qnaComContent

			}),
			success : function(result) {
				if (result === "SUCCESS") {
					alert("댓글이 등록되었습니다.");
					$("#newqnaComContent").val(""); //댓글 입력창 공백처리
					getReplies(); //댓글 목록 호출
				}
			}
		});
	});

	function deleteReply(qnaComtNum) {

		$.ajax({
			type : 'delete',
			url : '/coments/' + qnaComtNum,
			headers : {
				"Content-Type" : "application/json",
				"X-HTTP-Method-Override" : "DELETE"
			},
			dataType : 'text',
			success : function(result) {
				console.log("result: " + result);
				if (result == 'SUCCESS') {
					alert("삭제 되었습니다.");
					getReplies();
				}
			}
		});

	}

	function getReplies() {

		$
				.getJSON(
						"/coments/all/" + qNum,
						function(data) {
							var str = "";

							$(data)
									.each(
											function() {

												var strbutton = "";

												str += "<li data-metComtNum='"
														+ "<div class='task-title'><span class='badge bg-success'>"
														+ this.memName
														+ "</span>&nbsp;&nbsp;&nbsp;&nbsp;"
														+ "<span class='task-title-sp'>"
														+ this.qnaComContent
														+ "</span>&nbsp;&nbsp;&nbsp;&nbsp;"
														+ "<span class='badge btn-theme02'' style='float:right;'>"
														+ this.ajaxComtDate
														+ "</span>";

												if (memNumObj == this.memNum
														|| memNumObj == metBrdMemNum)//댓글 정보와 로그인 정보 같을 경우 OR 게시글의 주인 인 경우 댓글 삭제 가능
												{
													strbutton += "<div class='pull-right hidden-phone'>"
															+ "  <button onclick='deleteReply("
															+ this.qnaComtNum
															+ ")' class='btn btn-danger btn-xs fa fa-trash-o  comentDelBtn'>"
															+ "</div>";
												}
												str += strbutton;
												str += "</div></li>";

											});

							$("#coments").html(str);
						});

	}
</script>

<script>
	function checkImageType(fileName) {
		var pattern = /JPG|jpg|gif|png|jpeg/i;
		return fileName.match(pattern);
	}
</script>
<!— /.box —>
<!—/.col (left) —>

<!— /.row —>

<!— /.content —>

<!— /.content-wrapper —>

<!-- /.box -->
<!--/.col (left) -->

<!-- /.row -->

<!-- /.content -->

<!-- /.content-wrapper -->

<%@include file="../include/footer.jsp"%>