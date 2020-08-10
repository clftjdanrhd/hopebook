<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@include file="../include/header.jsp"%>

<body>



	<section id="main-content">
	<section class="wrapper mt">
		<div>
			<hr style="margin-left: 50px; margin-right: 50px;">


		<div class="bg-white border-radius-3 py-5 all-text-dark pattern-overlay-2">
			<div class="row">
			<div class="container">
				<div class="row all-text-white">
					<div class="col-md-12 align-self-center">
						<h1 class="innerpage-title" style="text-align: center;">독서모임 수정</h1>
						<h5 class="innerpage-title" style="text-align: center;">나만의 독서모임 수정하기</h5>
						<nav aria-label="breadcrumb"
							style="border-right: thin solid rgba(255, 255, 255, 0.15)">
							<ol class="breadcrumb" style="text-align: center;">
								<li class="breadcrumb-item active"><a
									href="/main?command=loginForm"><i class="fa fa-home"></i>Home&nbsp;&nbsp;&nbsp;
								</a></li>
							</ol>
						</nav>
					</div>
				</div>
			</div>
		</div>

			<form role="form" method="post" action="removeYnMeeting" 
				class="cmxform form-horizontal style-form">

				<input type='hidden' name='metNum' value="${meetingVO.metNum}">
				<input type='hidden' name='page' value="${cri.page}"> <input
					type='hidden' name='perPageNum' value="${cri.perPageNum}">
				<input type='hidden' name='searchType' value="${cri.searchType}">
				<input type='hidden' name='keyword' value="${cri.keyword}">


				<div class="form-panel">
					<div class="form">

						<div class="form-group ">
							<label for="firstname" class="control-label col-lg-2">모임
								명</label>
								<div class="col-lg-2">
									<input type="text" name='metName' class="form-control"
										value="${meetingVO.metName}">
								</div>
						</div>
						
						<div class="form-group ">
							<label for="email" class="control-label col-lg-2">독서모임 소개</label>
							<div class="col-lg-8">
								<textarea class="form-control" name="metGreeting" rows="6"
							>${meetingVO.metGreeting}</textarea>
							</div>
						</div>
						
						<div class="form-group ">
							<label for="username" class="control-label col-lg-2">인사말</label>
							<div class="col-lg-8">
								<input type="text" name='metBrdCategory' class="form-control"
										value="${meetingVO.metIntro}">
							</div>
						</div>						
						
						<div class="form-group ">
							<label for="lastname" class="control-label col-lg-2">대표자</label>
							<div class="col-lg-2">
								<input class=" form-control" id="lastname" name="represent"
									type="text" value="${meetingVO.represent}" readonly="readonly"/>
							</div>
						</div>

						<div class="form-group ">
							<label for="email" class="control-label col-lg-2">주활동지역</label>
							<div class="col-lg-4">
									<select style="width: 170px;" name="location"
										class="btn btn-default dropdown-toggle" data-toggle="dropdown">
										<span class="caret"></span>
										<option value="대전광역시">대전광역시</option>
										<option value="서울특별시">서울특별시</option>
										<option value="인천광역시">인천광역시</option>
										<option value="세종특별자치시">세종특별자치시</option>
										<option value="대구광역시">대구광역시</option>
										<option value="부산광역시">부산광역시</option>
										<option value="울산광역시">울산광역시</option>
										<option value="광주광역시">광주광역시</option>
										<option value="경기도">경기도</option>
										<option value="충청북도">충청북도</option>
										<option value="충청남도">충청남도</option>
										<option value="전라북도">전라북도</option>
										<option value="경상북도">경상북도</option>
										<option value="경상남도">경상남도</option>
										<option value="제주특별자치시">제주특별자치시</option>
									</select>
							</div>
							<div class="col-lg-5">
								<input class="form-control " id="email" name="location"
									type="email"/>
								</div>
				
						</div>
						<div class="form-group ">
							<label for="email" class="control-label col-lg-2">활동주제</label>
							<div class="col-lg-10">
					<div class="custom-control custom-checkbox mr-sm-2">
						<input type="checkbox" name="keyword" value="home" class="custom-control-input" id="home">
						<label class="custom-control-label" for="home">가정/육아</label>
					</div>
						
					<div class="custom-control custom-checkbox mr-sm-2">
						<input type="checkbox" name="keyword" value="health&beauti" class="custom-control-input" id="health&beauti">
						<label class="custom-control-label" for="health&beauti">건강/뷰티</label>
					</div>
						
					<div class="custom-control custom-checkbox mr-sm-2">	
						<input type="checkbox" name="keyword" value="economy&business" class="custom-control-input" id="economy&business">
						<label class="custom-control-label" for="economy&business">경제/경영</label>
					</div>	
						
					<div class="custom-control custom-checkbox mr-sm-2">	
						<input type="checkbox" name="keyword" value="education" class="custom-control-input" id="education">
						<label class="custom-control-label" for="education">교육</label>
					</div>	
						
					<div class="custom-control custom-checkbox mr-sm-2">	
						<input type="checkbox" name="keyword" value="literature" class="custom-control-input" id="literature">
						<label class="custom-control-label" for="literature">문학</label>
					</div>	
						
					<div class="custom-control custom-checkbox mr-sm-2">	
						<input type="checkbox" name="keyword" value="social&science" class="custom-control-input" id="social&science">
						<label class="custom-control-label" for="social&science">사회과학</label>
					</div>
					
					<div class="custom-control custom-checkbox mr-sm-2">	
						<input type="checkbox" name="keyword" value="IT&programing" class="custom-control-input" id="IT&programing">
						<label class="custom-control-label" for="IT&programing">IT/개발</label>
					</div>
						
					<div class="custom-control custom-checkbox mr-sm-2">	
						<input type="checkbox" name="keyword" value="leisure" class="custom-control-input" id="leisure">
						<label class="custom-control-label" for="leisure">여가생활</label>
					</div>	
						
					<div class="custom-control custom-checkbox mr-sm-2">	
						<input type="checkbox" name="keyword" value="history" class="custom-control-input" id="history">
						<label class="custom-control-label" for="history">역사</label>
					</div>
					
					<div class="custom-control custom-checkbox mr-sm-2">
						<input type="checkbox" name="keyword" value="art&popculture" class="custom-control-input" id="art&popculture">
						<label class="custom-control-label" for="art&popculture">예술/대중문화</label>
					</div>	
						
					<div class="custom-control custom-checkbox mr-sm-2">	
						<input type="checkbox" name="keyword" value="foreign" class="custom-control-input" id="foreign">
						<label class="custom-control-label" for="foreign">외국어/외국문학</label>
					</div>	
						
					<div class="custom-control custom-checkbox mr-sm-2">	
						<input type="checkbox" name="keyword" value="child&teenager" class="custom-control-input" id="child&teenager">
						<label class="custom-control-label" for="child&teenager">아동/청소년</label>
					</div>	
						
					<div class="custom-control custom-checkbox mr-sm-2">	
						<input type="checkbox" name="keyword" value="humanity" class="custom-control-input" id="humanity">
						<label class="custom-control-label" for="humanity">인문학</label>
					</div>	
						
					<div class="custom-control custom-checkbox mr-sm-2">	
						<input type="checkbox" name="keyword" value="self-improve" class="custom-control-input" id="self-improve">
						<label class="custom-control-label" for="self-improve">자기계발</label>
					</div>
						
					<div class="custom-control custom-checkbox mr-sm-2">	
						<input type="checkbox" name="keyword" value="natural&science" class="custom-control-input" id="natural&science">
						<label class="custom-control-label" for="natural&science">자연/과학</label>
					</div>	
						
					<div class="custom-control custom-checkbox mr-sm-2">	
						<input type="checkbox" name="keyword" value="computer&internet" class="custom-control-input" id="computer&internet">
						<label class="custom-control-label" for="computer&internet">컴퓨터/인터넷</label>
					</div>
					<br/>
					
						<div class="form-group">
							<div class="col-lg-offset-2 col-lg-10">
								<button class="btn btn-round btn-warning" >수정하기</button>
								<button class="btn btn-round btn-primary" >취소</button>
							</div>
						</div>

					</div>

				</div>
					</form>
				</div>
		</section>
	</section>
</body>
<script>
	$(document).ready(function() {

		var formObj = $("form[role='form']");
		


		$(".btn-warning").on("click", function() {
			formObj.attr("action", "/metboard/list");
			formObj.submit();
		});

		$(".btn-primary").on("click", function() {
			
			formObj.attr("method", "get");
			formObj.attr("action", "/metboard/list");
			formObj.submit();
		});

	});
</script>

</html>

<jsp:include page="../include/footer.jsp"  />











