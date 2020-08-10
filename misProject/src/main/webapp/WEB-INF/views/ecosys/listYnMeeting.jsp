<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
 


<jsp:include page="/WEB-INF/views/admin/adminHeader.jsp" />


<!DOCTYPE html>
<html lang="en">
<head>



<style>
#btn-ok {
	border-top-left-radius: 5px;
	border-bottom-left-radius: 5px;
	margin-right: -4px;
}

#btn-nope {
	border-top-right-radius: 5px;
	border-bottom-right-radius: 5px;
	margin-left: -3px;
}

#btn_group button {
	border: 1px solid #007bff;
	background-color: white;
	color: #007bff;
	padding: 5px;
}

#btn_group button:hover {
	color: white;
	background-color: #007bff;
}
</style>



</head>


<body>
	<section id="container">

		<!--main content start-->
		<section id="main-content">
			<section class="wrapper">
				<h3>
					<i class="fa fa-angle-right"></i> 모임 승인 대기 리스트
				</h3>
				<div class="row mb">
					<!-- page start-->
					<div class="content-panel">
						<div class="adv-table">
							<table cellpadding="0" cellspacing="0" border="0"
								class="display table table-bordered" id="checkboxTestTbl">
								<thead>
									<tr>
										<th style="text-align: center;">
										<input type="checkbox"
						style="padding-right: 5px; margin-right: 5px; margin-left: 5px;" />ALL</th>
										<th style="width: 10px">NO</th>
										<th>대기번호</th>
										<th>모임명</th>
										<th>회원 수 </th>
										<th>지역</th>
										<th>주제</th>
										<th>개설일자</th>
											
									</tr>
								</thead>

								<tbody>
									<c:forEach items="${list}" var="meetingVO" varStatus="var">
										<tr>
											<td style="text-align: center;"><input type="checkbox" /></td>
											<c:if test="${pageMaker.cri.page==1}">
												<td>${var.count }</td>
											</c:if>
											<c:if test="${pageMaker.cri.page !=1 }">
												<td>${var.count + ((pageMaker.cri.page-1)*10) }</td>
											</c:if>


											<td>${meetingVO.metNum}</td>
											<td><a
												href='/ecosys/readYnMeeting${pageMaker.makeSearch(pageMaker.cri.page) }&metNum=${meetingVO.metNum}'>
													${meetingVO.metName} </a></td>
											<td>${meetingVO.headCount}</td>
											<td>${meetingVO.location}</td>
											<td>${meetingVO.keyword}</td>
											<td>${meetingVO.metDate}</td>
										</tr>

									</c:forEach>

								</tbody>

							</table>
							<div id="btn_group">
								<button
										type="submit" class="btn-ok" id="btn-ok">승인</button>
									<button type="submit" class="btn-nope" id="btn-nope">거절</button>
							
							</div>
						</div>


					</div>
				</div>
			</section>
		</section>
	</section>
	
	
	<!-- 스트립트 -->

  
	 <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js" type="text/javascript"></script>
 
    <script>
        $(document).ready(function(){
            var tbl = $("#checkboxTestTbl");
             
            // 테이블 헤더에 있는 checkbox 클릭시
            $(":checkbox:first", tbl).click(function(){
                // 클릭한 체크박스가 체크상태인지 체크해제상태인지 판단
                if( $(this).is(":checked") ){
                    $(":checkbox", tbl).attr("checked", "checked");
                }
                else{
                    $(":checkbox", tbl).removeAttr("checked");
                }
 
                // 모든 체크박스에 change 이벤트 발생시키기               
                $(":checkbox", tbl).trigger("change");
            });
             
            // 헤더에 있는 체크박스외 다른 체크박스 클릭시
            $(":checkbox:not(:first)", tbl).click(function(){
                var allCnt = $(":checkbox:not(:first)", tbl).length;
                var checkedCnt = $(":checkbox:not(:first)", tbl).filter(":checked").length;
                 
                // 전체 체크박스 갯수와 현재 체크된 체크박스 갯수를 비교해서 헤더에 있는 체크박스 체크할지 말지 판단
                if( allCnt==checkedCnt ){
                    $(":checkbox:first", tbl).attr("checked", "checked");
                }
                else{
                    $(":checkbox:first", tbl).removeAttr("checked");
                }
            }).change(function(){
                if( $(this).is(":checked") ){
                    // 체크박스의 부모 > 부모 니까 tr 이 되고 tr 에 selected 라는 class 를 추가한다.
                    $(this).parent().parent().addClass("selected");
                }
                else{
                    $(this).parent().parent().removeClass("selected");
                }
            });
        });
    </script>




	
   <!-- 모임 승인 거절  -->
   <script>
      $(document).ready(function() {

         var formObj = $("form[role='form']");

         console.log(formObj);

         $(".btn-ok").on("click", function() {
            formObj.attr("action", "/ecosys/listMeeting");
            formObj.attr("method", "get");
            formObj.submit();
         });

         $(".btn-nope").on("click", function() {
            formObj.attr("action", "/ecosys/deleteYnMeeting");
            formObj.submit();
         });

      });
   </script>




   <script>
      $(document).ready(function() {
         $('btn-ok').submit(function() {
            var result = alert("승인되었습니다.");

            return result;
         })
      })
   </script>
   <script type="text/javascript">
      $(document).ready(function() {
         if ($('.meetingAc').trigger('click'))
            $('.treevi ').addClass("active");
         $('#m4').attr('style', 'gray;')
      });
   </script>

</body>
</html>

<jsp:include page="../include/footer.jsp"  />
