<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<jsp:include page="/WEB-INF/views/include/header.jsp" />
<!DOCTYPE html>
<html lang="en">
<head>
<title>독서모임</title>
<meta charset="utf-8">
<!-- <style>
.btn-primary:hover {
    color: #fff;
    background-color: #4ECDC4;
    border-color: #4ECDC4;
}
.btn-primary {
    color: #fff;
    background-color: #4ECDC4;
    border-color: #4ECDC4;
    width: 533.98438px;
    height: 32.98438px;
    margin-left: 5px;
    

    border-left-width: 0px;
    border-bottom-width: 0px;
    border-top-width: 0px;
    border-right-width: 0px;

    }
</style> -->
</head>

<body>
   <section id="main-content">
      <section class="wrapper">
         <h3>
            <i class="fa fa-angle-right"></i> 독서 모임 등록
         </h3>
         <div class="row mt">
            <!--  폼 시작 -->
            <div class="col-lg-12">
               <div class="form-panel">
                  <form role="form" method="post" class="form-horizontal style-form">

                     <div class="form-group">
                        <label class="control-label col-md-3" style="margin-right: 15px;">독서 모임 명</label> <input
                           type="text" class="form-control" name='metName'
                           style="width: 328px;">

                     </div>

                     <div class="form-group">
                        <input type="hidden" name="memNum" value="${member.memNum}">
                        <label class="control-label col-md-3">독서모임 소개</label>
                        <div class="col-md-3 col-xs-11">
                           <div class="input-append date dpYears">

                              <textarea class="form-control " name='metIntro'
                                 id="contact-message" placeholder="Your Message" rows="5"
                                 data-rule="required" data-msg="Please write something for us"
                                 style="width: 530px;"></textarea>
                              <div class="validate"></div>



                           </div>

                        </div>
                     </div>
                     <div class="form-group">
                        <label class="control-label col-md-3">인사말</label>
                        <div class="col-md-3 col-xs-11">
                           <div class="input-append date dpYears">

                              <textarea class="form-control " name="metGreeting"
                                 id="contact-message" placeholder="Your Message" rows="5"
                                 data-rule="required" data-msg="Please write something for us"
                                 style="width: 530px;"></textarea>
                              <div class="validate"></div>


                              </span>
                           </div>
                        </div>
                     </div>
                     <div class="form-group">
                        <label class="control-label col-md-3">대표자</label>
                        <div class="col-md-3 col-xs-11">
                           <div class="input-group input-large">
                              <input class="form-control round-form" id="disabledInput"
                                 type="text" name="represent" value="${member.memName}"
                                 readonly>

                           </div>
                        </div>
                     </div>


                     <div class="form-group">
                        <label class="control-label col-md-3">주 활동지역</label>
                        <div class="col-md-4">
                           <div class="input-group input-large">
                              <select class="form-control" name="location"
                                 style="margin-bottom: 5px;">
                                 <option value="서울특별시">서울특별시</option>
                                 <option value="인천광역시">인천광역시</option>
                                 <option value="대전광역시" selected>대전광역시</option>
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
                                 <option value="제주도특별자치시">제주도특별자치시</option>
                              </select> <input type="text" class="form-control"
                                 placeholder="placeholder" name="metPlace">

                           </div>
                        </div>

                     </div>


                     <div class="form-group">
                        <label class="control-label col-md-3">활동주제<br>(* 가장
                           적합한 1개의 주제 선택)
                        </label>
                        <div class="col-md-4">
                           <div class="input-group input-large" style="width: 530px;">
                              <label> <input type="radio" name="keyword"
                                 value="home" id="optionsRadios1" value="option1" checked>
                                 가정/육아
                              </label> &nbsp; <label> <input type="radio" name="keyword"
                                 value="health" id="optionsRadios1" value="option1" checked>
                                 건강/뷰티
                              </label> &nbsp; <label> <input type="radio" name="keyword"
                                 value="business" id="optionsRadios1" value="option1" checked>
                                 경제/경영
                              </label> &nbsp; <label> <input type="radio" name="keyword"
                                 value="education" id="optionsRadios1" value="option1" checked>
                                 교육
                              </label> &nbsp; <label> <input type="radio" name="keyword"
                                 value="literature" id="optionsRadios1" value="option1"
                                 checked> 문학
                              </label> &nbsp; <label> <input type="radio" name="keyword"
                                 value="social" id="optionsRadios1" value="option1" checked>
                                 사회과학
                              </label> &nbsp; <label> <input type="radio" name="keyword"
                                 value="IT" id="optionsRadios1" value="option1" checked>
                                 IT/개발
                              </label> &nbsp; <label> <input type="radio" name="keyword"
                                 value="leisure" id="optionsRadios1" value="option1" checked>
                                 여가생활
                              </label> &nbsp; <label> <input type="radio" name="keyword"
                                 value="history" id="optionsRadios1" value="option1" checked>
                                 역사
                              </label> &nbsp; <label> <input type="radio" name="keyword"
                                 value="art" id="optionsRadios1" value="option1" checked>
                                 예술/대중문화
                              </label> &nbsp; <label> <input type="radio" name="keyword"
                                 value="foreign" id="optionsRadios1" value="option1" checked>
                                 외국어/외국문학
                              </label> &nbsp; <label> <input type="radio" name="keyword"
                                 value="child" id="optionsRadios1" value="option1" checked>
                                 아동/청소년
                              </label> &nbsp; <input type="radio" name="keyword" value="humanity"
                                 id="optionsRadios1" value="option1" checked> 인문학 </label>
                              &nbsp; <input type="radio" name="keyword" value="selfimprove"
                                 id="optionsRadios1" value="option1" checked> 자기계발 </label>
                              &nbsp; <input type="radio" name="keyword" value="natural"
                                 id="optionsRadios1" value="option1" checked> 자연/과학 </label>
                              &nbsp; <input type="radio" name="keyword" value="computer"
                                 id="optionsRadios1" value="option1" checked> 컴퓨터/인터넷
                              </label>
                           </div>
                        </div>
                     </div>



                     <div class="form-group">
                        <div class="col-lg-offset-2 col-lg-10"
                           style="margin-left: 310px;">
                           <button class="btn btn-theme btn-round" type="submit">등록</button>
                           <button class="btn btn-theme04 btn-round">취소</button>
                        </div>
                     </div>
                  </form>
               </div>
            </div>
         </div>
      </section>
   </section>

   <script>
      $(document).ready(function() {

         var formObj = $("form[role='form']");

         console.log(formObj);

         /*       $(".btn btn-theme").on("click", function() {
          formObj.attr("action", "/meeting/modifyPage");
          formObj.attr("method", "get");
          formObj.submit();
          });
          */

         $(".btn-theme04").on("click", function() {
            formObj.attr("method", "get");
            formObj.attr("action", "/meeting/list");
            formObj.submit();
         });

      });
   </script>

   <!-- check-box 선택값 1개로 제한하기 -->
   <script type="text/javascript">
      function check_only(chk) {
         var cnt = document.getElementsByName("keyword"); //checkbox keyword의 배열값을 불러옴

         for (var i = 0; i < cnt.length; i++) { //checked한 배열의 차와 cnt가 같지 않으면 unchecked 상태로 돌려줌
            if (cnt[i] != chk) {
               cnt[i].checked = false;
            }
         }
      }
   </script>

</body>
</html>

<%@include file="/WEB-INF/views/include/footer.jsp"%>