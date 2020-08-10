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

</head>

<body>
<section id="main-content">
    <section class="wrapper">
      <h3><i class="fa fa-angle-right"></i> 독서 모임 등록</h3>
      <div class="row mt">
        <!--  폼 시작 -->
        <div class="col-lg-12">
          <div class="form-panel">
            <form action="#" class="form-horizontal style-form">

              <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label">독서 모임 명</label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control" style=" width: 328px;margin-left: 120px;">
                  </div>
                </div>
            
              <div class="form-group">
                <label class="control-label col-md-3">독서모임 소개</label>
                <div class="col-md-3 col-xs-11">
                  <div class="input-append date dpYears">
                   
                        <textarea class="form-control" name="message" id="contact-message" placeholder="Your Message" rows="5" data-rule="required" data-msg="Please write something for us"></textarea>
                        <div class="validate"></div>
                     
                      
                      </span>
                  </div>
                  
                </div>
              </div>
              <div class="form-group">
                <label class="control-label col-md-3">인사말</label>
                <div class="col-md-3 col-xs-11">
                    <div class="input-append date dpYears">
                   
                        <textarea class="form-control" name="message" id="contact-message" placeholder="Your Message" rows="5" data-rule="required" data-msg="Please write something for us"></textarea>
                        <div class="validate"></div>
                     
                      
                      </span>
                  </div>
              </div>
              </div>
              <div class="form-group">
                <label class="control-label col-md-3">대표자</label>
                <div class="col-md-3 col-xs-11">
                  <div class="input-group input-large">
                    <input class="form-control" id="disabledInput" type="text" placeholder="Disabled input here..." disabled>
                </div></div></div>
                
                
                <div class="form-group">
                    <label class="control-label col-md-3">주 활동지역</label>
                    <div class="col-md-4">
                      <div class="input-group input-large" >
                        <select class="form-control">
                            <option>1</option>
                            <option>2</option>
                            <option>3</option>
                            <option>4</option>
                            <option>5</option>
                          </select>
 
                         <input type="text" class="form-control" placeholder="placeholder">
                            
                          </div>
                      </div>
                    
                    </div>
            

              <div class="form-group">
                <label class="control-label col-md-3">활동주제<br>(* 가장 적합한 1개의 주제 선택)</label>
                <div class="col-md-4">
                  <div class="input-group input-large" data-date="01/01/2014" data-date-format="mm/dd/yyyy">
                    <label>
                        <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked>
                        가정/육아
                        </label> &nbsp;
                        <label>
                            <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked>
                            건강/뷰티
                            </label> &nbsp;
                            <label>
                                <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked>
                                경제/경영
                                </label> &nbsp;
                                <label>
                                    <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked>
                                    교육
                                    </label> &nbsp;
                                    <label>
                                        <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked>
                                        문학
                                        </label> &nbsp;
                                        <label>
                                            <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked>
                                            사회과학
                                            </label> &nbsp;
                                            <label>
                                                <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked>
                                                IT/개발
                                                </label> &nbsp;
                                                <label>
                                                    <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked>
                                                    여가생활
                                                    </label> &nbsp;
                                                    <label>
                                                        <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked>
                                                        역사
                                                        </label> &nbsp;
                                                        <label>
                                                            <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked>
                                                            예술/대중문화
                                                            </label> &nbsp;
                                                            <label>
                                                                <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked>
                                                                외국어/외국문학
                                                                </label> &nbsp;
                                                                <label>
                                        <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked>
                                        아동/청소년
                                        </label> &nbsp;
                                        <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked>
                                        인문학
                                        </label> &nbsp;
                                        <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked>
                                        자기계발
                                        </label> &nbsp;
                                        <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked>
                                        자연/과학
                                        </label> &nbsp;
                                        <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked>
                                        컴퓨터/인터넷
                                        </label>
                                        </div>
                                    </div>
                                </div>
                          
               
              
               
            
            <div class="btn-group btn-group-justified">
                <div class="btn-group">
                  <button type="button" class="btn btn-theme">신청</button>
                </div>
                <div class="btn-group">
                  <button type="button" class="btn btn-theme">리셋</button>
                </div>
                <div class="btn-group">
                  <button type="button" class="btn btn-theme">목록으로 돌아가기</button>
                </div>
              </div>
           
         
          



</body>
<%@include file="/WEB-INF/views/include/footer.jsp"%>
</html>
