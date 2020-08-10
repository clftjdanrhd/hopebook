<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>



<%@include file="../include/header.jsp"%>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!--main content start-->
<section id="main-content">
	<section class="wrapper">
		<div class="row mt">
			<div class="col-lg-12">
				<div class="form-panel">




					
						<section id="container">
							<form action="memberUpdate" method="post" role="form">
								<input class="form-control" type="hidden" id="memNum"
									name="memNum" value="${member.memNum}" readonly="readonly" />


								<div class="form-group">
									<label class="col-sm-2 col-sm-2 control-label">아이디</label><input
										maxlength="12" class="form-control round-form"
										style="width: 400px" type="text" id="memId" name="memId"
										value="${member.memId}" readonly="readonly" />
								</div>

								<div class="form-group">
									<label class="col-sm-2 col-sm-2 control-label">비밀번호</label>
									<div class="col-sm-10">
										<input type="password" placeholder="*********" name="memPw"
											id="pwd1" maxlength="12" class="form-control round-form"
											style="width: 400px">
									</div>
								</div>

								<div class="form-group">
									<label class="col-sm-2 col-sm-2 control-label">비밀번호확인</label>
									<div class="col-sm-10">
										<input type="password" placeholder="*********" id="pwd2"
											class="form-control round-form" style="width: 400px;">
									</div>


									<div class="alert alert-success" id="alert-success">비밀번호가
										일치합니다.</div>
									<div class="alert alert-danger" id="alert-danger">비밀번호가
										일치하지 않습니다.</div>
								</div>


								<div class="form-group">
									<label class="col-sm-2 col-sm-2 control-label" for="userName">성명</label>
									<input class="form-control" type="text" id="memName"
										name="memName" value="${member.memName}" readonly="readonly" />
								</div>


								<div class="form-group">
									<label class="col-sm-2 col-sm-2 control-label">주민번호</label>
									<div class="col-sm-10">

										<input type="text" placeholder="ex)960116-********"
											name="jumin" class="form-control round-form"
											onkeydown='return onlyNumber(event)'
											onkeyup='removeChar(event)'
											style="ime-mode: disabled; width: 400px;" readonly="readonly">
									</div>
								</div>

								<div class="form-group">
									<label class="col-sm-2 col-sm-2 control-label">주소</label>
									<div class="col-sm-10">

										<input class="form-control round-form"
											style="width: 275px; display: inline;" placeholder="우편번호"
											name="adr1" id="adr1" type="text" readonly="readonly"
											value="${member.adr1}" />


										<button type="button" class="btn btn-default"
											onclick="execPostCode();">
											<i class="fa fa-search"></i> 우편번호 찾기
										</button>


									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-2 col-sm-2 control-label"></label>
									<div class="col-sm-10">
										<input class="form-control round-form" style="width: 400px;"
											placeholder="도로명 주소" name="adr2" id="adr2" type="text"
											readonly="readonly" value="${member.adr2}" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-2 col-sm-2 control-label"></label>
									<div class="col-sm-10">
										<input class="form-control round-form" placeholder="상세주소"
											style="width: 400px;" name="adr3" id="adr3" type="text"
											value="${member.adr3}" />
									</div>
								</div>

								<div class="form-group">
									<label class="col-sm-2 col-sm-2 control-label">핸드폰번호</label>
									<div class="col-sm-10">
										<input type="tel" name="phone" id="phone"
											class="form-control round-form" placeholder="숫자만 입력해주세요."
											value="${member.phone}" maxlength="11"
											onkeydown='return onlyNumber(event)'
											onkeyup='removeChar(event)'
											style="ime-mode: disabled; width: 400px;">
									</div>
								</div>


								<div class="form-group">
									<label class="col-sm-2 col-sm-2 control-label">이메일 주소</label>
									<div class="col-sm-10">
										<input type="email" name="email" id="email"
											class="form-control round-form" style="width: 400px;"
											value="${member.email}">
									</div>
								</div>

								<div class="form-group">
									<label class="col-sm-2 col-sm-2 control-label"></label>
									<div class="col-sm-10">
										<input type="radio" name="authority" id="authority" value="1">일반회원
										<input type="radio" name="authority" id="authority" value="2">기부회원
									</div>
								</div>
								<div class="form-group">
									<button class="btn btn-success" type="submit" id="submit">회원정보수정</button>
									<button class="cencle btn btn-danger" type="button"
										>취소</button>
								</div>
							</form>
						</section>

			





				</div>
			</div>

		</div>



	</section>
</section>


<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>

<script type="text/javascript" src="../../resources/js/member.js"></script>





<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="/resources/js/addressapi.js"></script>
<script>
	function execPostCode() {
		new daum.Postcode({
			oncomplete : function(data) {
				// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

				// 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
				// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
				var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
				var extraRoadAddr = ''; // 도로명 조합형 주소 변수

				// 법정동명이 있을 경우 추가한다. (법정리는 제외)
				// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
				if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
					extraRoadAddr += data.bname;
				}
				// 건물명이 있고, 공동주택일 경우 추가한다.
				if (data.buildingName !== '' && data.apartment === 'Y') {
					extraRoadAddr += (extraRoadAddr !== '' ? ', '
							+ data.buildingName : data.buildingName);
				}
				// 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
				if (extraRoadAddr !== '') {
					extraRoadAddr = ' (' + extraRoadAddr + ')';
				}
				// 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
				if (fullRoadAddr !== '') {
					fullRoadAddr += extraRoadAddr;
				}

				// 우편번호와 주소 정보를 해당 필드에 넣는다.
				console.log(data.zonecode);
				console.log(fullRoadAddr);

				$("[name=adr1]").val(data.zonecode);
				$("[name=adr2]").val(fullRoadAddr);

				/* document.getElementById('signUpUserPostNo').value = data.zonecode; //5자리 새우편번호 사용
				document.getElementById('signUpUserCompanyAddress').value = fullRoadAddr;
				document.getElementById('signUpUserCompanyAddressDetail').value = data.jibunAddress; */
			}
		}).open();
	}
</script>






<script type="text/javascript">
$(function(){
	$("#alert-success").hide();
	$("#alert-danger").hide();
	$("input").keyup(function(){
		var pwd1=$("#pwd1").val(); 
		var pwd2=$("#pwd2").val(); 
		if(pwd1 != "" || pwd2 != ""){ 
			if(pwd1 == pwd2){ $("#alert-success").show();
			$("#alert-danger").hide();
			$("#submit").removeAttr("disabled"); 
			}else{ $("#alert-success").hide(); 
			$("#alert-danger").show(); 
			$("#submit").attr("disabled", "disabled"); 
			} 
			} 
		});
	})
</script>

<script type="text/javascript">
		$(document).ready(function(){
			// 취소
			$(".cencle").on("click", function(){
				
				location.href = "/";
						    
			})
		

			
				
			
		})
	</script>
	



<%@include file="../include/footer.jsp"%>