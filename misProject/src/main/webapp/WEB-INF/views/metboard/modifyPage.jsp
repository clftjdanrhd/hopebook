<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<jsp:include page="/WEB-INF/views/include/header.jsp" />

<section id="main-content">
      <section class="wrapper">
      
      <div class="row mt">
          <div class="col-lg-12">
            <h4><i class="fa fa-angle-right"></i>모임게시판 수정</h4>
            <div class="form-panel">
              <div class="form">
                <form role="form" name="frm" action="modifyPage"  class="cmxform form-horizontal style-form" method="post" >

					<input type='hidden' name='metBrdNum' value="${metBoardVO.metBrdNum}"> 
					<input type='hidden' name='page' value="${cri.page}"> 
					<input type='hidden' name='perPageNum' value="${cri.perPageNum}"> 
					<input type='hidden' name='searchType' value="${cri.searchType}">
					<input type='hidden' name='keyword' value="${cri.keyword}">
			<input class=" form-control" id="firstname" name="bookBrdNum" value="${metBoardVO.metBrdNum }" type="hidden" />
			
								
								<div class="form-group ">
                    <label for="firstname" class="control-label col-lg-2">분류</label>
                    <div class="col-lg-10">
                      <input class=" form-control round-form le" id="firstname" name="metBrdCategory" type="text" value="${metBoardVO.metBrdCategory}" />
                    </div>
                  </div>					
							<div class="form-group ">
                    <label for="firstname" class="control-label col-lg-2">제목</label>
                    <div class="col-lg-10">
                      <input class=" form-control round-form le" id="firstname" name="metBrdName" type="text" value="${metBoardVO.metBrdName}" />
                    </div>
                  </div>
						
						<div class="form-group ">
                    <label for="username" class="control-label col-lg-2">내용</label>
                    <div class="col-lg-10">
                      <textarea class="form-control le" rows="4" id="username" name="metBrdContent" type="text" >${metBoardVO.metBrdContent}</textarea>
                    </div>
                  </div>
                  
                  <input class=" form-control round-form le" id="firstname"
							name="memNum" type="hidden" readonly="readonly"
							value="${metBoardVO.memNum}" />

						<div class="form-group ">
							<label for="firstname" class="control-label col-lg-2">
								작성자</label>
							<div class="col-lg-10">
								<input class=" form-control round-form le" id="firstname"
									name="memName" type="text" readonly="readonly"
									value="${metBoardVO.memName}" />
							</div>
						</div>
												
													<div>
													<div class="fileupload fileupload-exists" data-provide="fileupload">
												<label for="curl" class="control-label col-lg-2">첨부파일</label>
												<div class="col-lg-10">
													<div id='mydropzone' class="twitter-panel pn le">
														<input type="file" id="fileUpload" name="fileUpload" style="visibility: hidden;" />
														<div class="fileDrop ">
															<input type="hidden" id="uploadCount">
															<div class="panel-body le">
																<i class="fa fa-cloud-upload fa-4x"></i>
																<p>Drop files here or click to upload.</p>
																<input type="hidden" id="uploadCount">
																<p>첨부파일을 업로드하려면 여기에 첨부파일 파일을 끌어 넣거나 클릭해주세요</p>
															</div>
														</div>
													</div>
													</div>
													</div>
														<ul class="dropzone-previews clearfix uploadedList">
															<c:forEach items="${fileVO}" var="fileVO"
																varStatus="status">
																<c:set var="filename" value="${fileVO.fileName}" />
																<li class="dropzone-previews mt-3">
																	<div class="col-lg-4 col-md-4 col-sm-4 mb">
																		<div class="row align-items-center">
																			<div class="white-panel pn"
																				style="width: 200px; height: 150px;">
																				<c:set var="fileNum"
																					value="${fn:toLowerCase(filename)}" />
																				<c:forTokens var="token" items="${fileNum}"
																					delims="." varStatus="status">
																					<c:if test="${status.last}">
																						<c:choose>
																							<c:when test="${token eq 'hwp' }">
																								<img src="한글파일이미지" alt="${filename}" />
																							</c:when>
																							<c:when
																								test="${token eq 'xls' || token eq 'xlsx' }">
																								<img src="엑셀파일이미지" alt="${filename }" />
																							</c:when>
																							<c:when
																								test="${token eq 'jpg' || token eq 'gif' || token eq 'png' || token eq 'bmp' }">
																								<img class="fileupload-new thumbnail"
																									style="width: 200px; height: 150px;"
																									src="/displayFile?fileName=${fileVO.fileLocation}"
																									alt="${filename}" />
																							</c:when>
																							<c:when test="${token eq 'pdf'}">
																								<img src="pdf파일이미지" alt="${filename}" />
																							</c:when>
																							<c:when test="${token eq 'ppt' }">
																								<img src="파워포인트파일이미지" alt="${filename}" />
																							</c:when>
																							<c:otherwise>
																								<img src="기본파일이미지" alt="${filename}" />
																							</c:otherwise>
																						</c:choose>
																					</c:if>
																				</c:forTokens>
																				<div class="info">
																					<a
																						href="/displayFile?fileName=${fileVO.fileLocation}">${fileVO.fileName}</a>
																					<a href="${fileVO.fileLocation}"
																						class="btn btn-small btn-theme04 delbtn"><i
																						class="fa fa-times"></i></a>
																				</div>
																			</div>
																		</div>
																	</div>
																</li>
															</c:forEach>
														</ul>
													</div>
                  <div class="form-group">
                    <div class="col-lg-offset-2 col-lg-10">
                      <button class="btn btn-theme btn-round" type="submit">수정</button>
                      <button class="btn btn-theme04 btn-round" type="button" onclick="location.href='/metboard/metbrdreadlist'">취소</button>
                    </div>
                  </div>
                  
              </div>


          </form>
            </div>
            <!-- /form-panel -->
          </div>
        </div>
		
		</section>
        </section>
        

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script type="text/javascript" src="/resources/lib/upload.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>
<script id="template" type="text/x-handlebars-template">
<li class="dropzone-previews mt-3">
<div class="col-lg-4 col-md-4 col-sm-4 mb">
<div class="row align-items-center">
 <div class="white-panel pn" style="width: 200px; height: 150px;">
    <img class="fileupload-new thumbnail" style="width: 200px; height: 150px;" src="{{imgsrc}}">
 <div class="info">
   <a href="/displayFile?fileName={{fullName}}" text-muted font-weight-bold" data-dz-name="">{{fileName}}</a>
   <a href="{{fullName}}" class="btn btn-small btn-theme04 delbtn"><i class="fa fa-times"></i></a>
 </div>
</div>
</div>
</li>
</script>

<script>
	$(document)
			.ready(function() {
				var formObj = $("form[role='form']");
				formObj.submit(function(event) {
							event.preventDefault();
							//유효성 검사
							var that = $(this);
							var str = "";

							$(".uploadedList .delbtn")
									.each(
											function(index) {
												str += "<input type='hidden' name='files'"
														+ " value='"
														+ $(this).attr(
																"href")
														+ "'> ";
											});

							that.append(str);
							console.log(str);

							that.get(0).submit();
						});
						
				$(".btn-warning").on("click", function() {
					formObj.attr("method", "get");
					formObj.attr("action", "/notice/list");
					formObj.submit();
				});				
				/* 
						$(".btn-warning").on("click", function() {
							alert('btn-warning click');
							
							self.location = "/notice/list?page=${cri.page}&perPageNum=${cri.perPageNum}"
													+ "&searchType=${cri.searchType}&keyword=${cri.keyword}";
										}); */
					});

	$('#mydropzone').click(function(event) {

		document.frm.fileUpload.click();

	});

	var template = Handlebars.compile($("#template").html());

	$(".fileDrop").on("dragenter dragover", function(event) {
		event.preventDefault();
	});

	$(".fileDrop").on("drop", function(event) {

		event.preventDefault();

		var uploaded = $("#uploadCount").val();

		var files = event.originalEvent.dataTransfer.files;

		var file = files[0];

		var formData = new FormData();

		formData.append("file", file);

		$.ajax({
			url : '/uploadAjax',
			data : formData,
			dataType : 'text',
			processData : false,
			contentType : false,
			type : 'POST',
			success : function(data) {

				var fileInfo = getFileInfo(data);
				var html = template(fileInfo);

				alert(html);

				var str = "";

				$(".uploadedList").append(html);

				uploaded++;
				$("#uploadCount").attr("value", uploaded);

				$(".uploadedList").append(str);
			}
		});
	});

	//클릭으로 파일 업로드할 때 호출되는 함수
	$("#fileUpload").on("change", function(event) {
		event.preventDefault();

		var uploaded = $("#uploadCount").val();

		if (uploaded >= 1) {
			alert('첨부파일은 1개 까지 업로드할 수 있습니다.');
			return;
		}

		// 파일업로드 인풋에서 파일을 받음
		var file = document.getElementById("fileUpload").files[0];

		// 새로운 폼데이터를 생성
		var formData = new FormData();

		// 폼데이터에 파일을 붙임
		formData.append("file", file);

		// AJAX로 uploadAjax 메소드를 호출해서 파일을 업로드함
		$.ajax({
			url : '/uploadAjax',
			data : formData,
			dataType : 'text',
			processData : false,
			contentType : false,
			type : 'POST',
			success : function(data) {

				var fileInfo = getFileInfo(data);
				var html = template(fileInfo);

				var str = "";

				$(".uploadedList").append(html);

				uploaded++;
				$("#uploadCount").attr("value", uploaded);

				$(".uploadedList").append(str);
			}
		});
	});

	$(".uploadedList").on("click", ".delbtn", function(event) {
		event.preventDefault();

		var that = $(this);
		var uploaded = $("#uploadCount").val();

		$.ajax({
			url : "/deleteFile",
			type : "post",
			data : {
				fileName : $(this).attr("href")
			},
			dataType : "text",
			success : function(result) {

				if (result == 'deleted') {

					that.closest("li").remove();
					uploaded--;
					$("#uploadCount").attr("value", uploaded);

				}
			}

		});

	});

	function getOriginalName(fileName) {

		if (checkImageType(fileName)) {
			return;
		}

		var idx = fileName.indexOf("_") + 1;
		return fileName.substr(idx);

	}

	function getImageLink(fileName) {

		if (!checkImageType(fileName)) {
			return;
		}
		var front = fileName.substr(0, 12);
		var end = fileName.substr(14);

		return front + end;

	}

</script>



<%@include file="../include/footer.jsp"%>
