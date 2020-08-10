<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@include file="../include/header.jsp"%>

<section id="main-content">
	<section class="wrapper">

		<div class="row mt">
			<div class="col-lg-12">
				<h3>
					<i class="fa fa-book"></i> 모임게시판 글쓰기
				</h3>

				<form class="cmxform form-horizontal style-form" method="post"
					role="form" name="frm">
					
					<div class="form-panel">
					
					<div class="form-group ">
					<label for="lastname" class="control-label col-lg-2">주제</label>
							<div class="col-lg-10">
									<select style="width: 400px;" name="metBrdCategory"
										class="btn btn-default dropdown-toggle" data-toggle="dropdown">
										<span class="caret"></span>
										<option value="-">-</option>
										<option value="공지">공지</option>
										<option value="일반">일반</option>
										<option value="행사 및 세미나">행사 및 세미나</option>
										<option value="자료">자료</option>
									</select>

								</div>
						</div>
						
						<div class="form-group ">
							<label for="username" class="control-label col-lg-2">제목</label>
							<div class="col-lg-10">
								<input class=" form-control round-form le"
									name="metBrdName" value="${metBoardVO.metBrdName}" type="text" />
							</div>
						</div>
							
							<div class="form-group ">
							<label for="username" class="control-label col-lg-2">내용</label>
							<div class="col-lg-10">
								<textarea class="form-control  le" name="bookBrdContent"
									rows="4" placeholder="Enter ..."></textarea>
							</div>
						</div>
						
						<div class="form-group ">
							<label for="firstname" class="control-label col-lg-2">
								작성자</label>
							<div class="col-lg-10">
								<input class=" form-control round-form le" id="firstname"
									name="memName" type="text" readonly="readonly"
									value="${member.memName}" />
							</div>
						</div>

							<div class="form-group">
							<label for="curl" class="control-label col-lg-2">첨부파일</label>
							<div class="col-lg-10">
								<div id='mydropzone' class="twitter-panel pn">
									<input type="file" id="fileUpload" name="fileUpload"
										style="visibility: hidden;" />
									<div class="fileDrop">
										<input type="hidden" id="uploadCount">
										<div class="panel-body">
											<i class="fa fa-cloud-upload fa-4x"></i>
											<p>Drop files here or click to upload.</p>
											<input type="hidden" id="uploadCount">
											<p>첨부파일을 업로드하려면 여기에 첨부파일 파일을 끌어 넣거나 클릭해주세요</p>
										</div>
									</div>
								</div>
								<div>
							<ul class="dropzone-previews clearfix uploadedList">
							</ul>
								</div>
							</div>
						</div>
							
								<div class="form-group">
									<div class="col-lg-offset-2 col-lg-10">
										<button type="submit" class="btn btn-primary btn-round">등록</button>
										<button type="button" class="btn btn-theme04 btn-round" onclick="location.href='/metboard/metbrdreadlist'">돌아가기</button>
									</div>
								</div>
								
								</div>
								</form>
							<!-- /.box-body -->

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
   <a href="{{fullName}}" class="btn btn-small btn-theme03 delbtn"><i class="fa fa-times"></i></a>
 </div>
</div>
</div>
</li>
</script>
<script>

	$(document).ready(
					function() {
						var formObj = $("form[role='form']");
						formObj.submit(function(event) {
									event.preventDefault();
									//유효성 검사
									var that = $(this);
									var str = "";

									$(".uploadedList .delbtn").each(
													function(index) {
														str += "<input type='hidden' name='files'"
																+ " value='"
																+ $(this).attr(
																		"href")
																+ "'> ";
													});

									that.append(str);
								/* alert(str); */
									that.get(0).submit();
								});


	$(".btn btn-theme04 btn-round").on("click",function() {
											self.location = "/metboard/metbrdlist=${cri.page}&perPageNum=${cri.perPageNum}"
													+ "&searchType=${cri.searchType}&listType=${cri.listType}&keyword=${cri.keyword}";
										});
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

		if (uploaded >= 3) {
			alert('첨부파일은 3개 까지 업로드할 수 있습니다.');
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
