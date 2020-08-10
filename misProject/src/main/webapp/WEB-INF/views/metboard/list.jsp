<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@include file="../include/header.jsp"%>

<!-- Main content -->
<section id="main-content">
	<section class="wrapper mt">
<div class="row mt mb">
          <div class="col-lg-12">
          <h3><i class="fa fa-angle-right"></i>독서모임</h3>
          
          
       <div class="col-lg-3 col-md-3 col-sm-12">
       
              <div class="dmbox">
                <div class="service-icon">
                  <a class="" href="faq.html#"><i class="dm-icon fa fa-cogs fa-3x"></i></a>
                </div>
                <h4>남서연</h4>
                <p>대표자</p>
            </div>
            
            </div>
            <!-- end dmbox -->
            <div class="col-lg-3 col-md-3 col-sm-12">
              <div class="dmbox">
                <div class="service-icon">
                  <a class="" href="faq.html#"><i class="dm-icon fa fa-calendar fa-3x"></i></a>
                </div>
                <h4>2020-08-06</h4>
                <p> 개설일자</p>
              </div>
            </div>
            <!-- end dmbox -->
            
            
            <div class="col-lg-3 col-md-3 col-sm-12">
              <div class="dmbox">
                <div class="service-icon">
                  <a class="" href="faq.html#"><i class="dm-icon fa fa-users fa-3x"></i></a>
                </div>
                <h4>0명</h4>
                <p>회원수</p>
              </div>
            </div>
            
            <div class="col-lg-3 col-md-3 col-sm-12">
              <div class="dmbox">
                <div class="service-icon">
                  <a class="" href="faq.html#"><i class="dm-icon fa fa-map-marker fa-3x"></i></a>
                </div>
                <h4>대전광역시</h4>
                <p>오정동</p>
              </div>
            </div>
            <!-- end dmbox -->
          <!--  /col-lg-12 -->
        </div>
					
					
					</div>
					
					 <div class="row content-panel">
          <h2 class="centered">소개글</h2>
          <div class="col-md-10 col-md-offset-1 mt mb">
            <div class="accordion" id="accordion2">
              <div class="accordion-group">
                
                <div id="collapseOne" class="accordion-body collapse in">
                  <div class="accordion-inner">
                    <p>사단법인 어린이도서연구회 대전충북지부 대전동화읽는어른모임에 속해 있는 동화읽는교사모임입니다. 회원은 현직 초등학교 교사들로 매주 목요일 모여 어린이문학 관련 세미나, 발제 등을 해오고 있습니다. 올해 21년차로 520강 발제를 해왔습니다. 가입조건은 현직교사로 제한하고 있습니다. 공부한 내용은 다음 카페 '동화지기'에 연도별로 정리하고 있습니다.</p>
                  </div>
                  </div>
                </div>
              </div>
              
              
               <div class="row content-panel">
          <h2 class="centered">인사말</h2>
          <div class="col-md-10 col-md-offset-1 mt mb">
            <div class="accordion" id="accordion2">
              <div class="accordion-group">
              
                <div id="collapseOne" class="accordion-body collapse in">
                  <div class="accordion-inner">
                    <p>대전에 많은 책읽는 모임들이 있다는 것을 알고 반가웠습니다. 앞으로 많은 모임들이 더 활발하게 활동하였으면 합니다.</p>
                  </div>
                </div>
              </div>
     
             
              
        
					</div>
					</div>
					
					<div class="row">
						<div class="col-md-12">
							<div class="content-panel" style="padding-top: 2px;">
								
									<h4><i class="fa fa-angle-right"></i> 모임게시판
						<button class="btn btn-round btn-info" type="button" onclick="location.href='/metboard/metbrdreadlist'">게시글 더보기</button>
					</h4>

								<hr style="margin-top: 10px; margin-bottom: 10px;">
								<table class="table">
									<thead>
							<tr>
								<th style="width: 10px">NO</th>
								<th>분류</th>
								<th>모임제목</th>
								<th>작성자</th>
								<th>작성일자</th>
								<th style="width: 40px">VIEWCNT</th>
							</tr>
						</thead>
						<c:forEach items="${list}" var="metBoardVO" varStatus="var">

							<tr>
								<c:if test="${pageMaker.cri.page==1}">
									<td>${var.count }</td>
								</c:if>
								<c:if test="${pageMaker.cri.page != 1}">
									<td>${var.count + ((pageMaker.cri.page-1)*10) }</td>
								</c:if>

							
								<td>${metBoardVO.metBrdCategory}</td>
								<td><a
									href='/metboard/readPage${pageMaker.makeSearch(pageMaker.cri.page)}&metBrdNum=${metBoardVO.metBrdNum}'>
										${metBoardVO.metBrdName} </a></td>
								<td>${metBoardVO.memName}</td>
								<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm"
										value="${metBoardVO.regDate}" /></td>
								<td><span class="badge bg-red">${metBoardVO.metBrdCount}</span></td>
								<td>
							</tr>
						</c:forEach>
					</table>

</div>
</div>
</div>
				</div>
			</div>
		</div>
		</div>
	</section>
	<!-- /.box-body -->					
	</section>
<!-- /.content -->






<script>
	var result = '${msg}';

	if (result == 'SUCCESS') {
		alert("처리가 완료되었습니다.");
	}
</script>

<script>
	$(document).ready(
			function() {

				$('#searchBtn').on(
						"click",
						function(event) {

							self.location = "list"
									+ '${pageMaker.makeQuery(1)}'
									+ "&searchType="
									+ $("select option:selected").val()
									+ "&keyword=" + $('#keywordInput').val();

						});

				$('#newBtn').on("click", function(evt) {

					self.location = "register";

				});

			});
</script>


<%@include file="../include/footer.jsp"%>
