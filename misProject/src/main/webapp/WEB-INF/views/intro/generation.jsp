
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp"%> 
<style>


.timeline{
    --uiTimelineMainColor: var(--timelineMainColor, #222);
    --uiTimelineSecondaryColor: var(--timelineSecondaryColor, #fff);
  
    position: relative;
    padding-top: 3rem;
    padding-bottom: 3rem;
  }
  
  .timeline:before{
    content: "";
    width: 4px;
    height: 100%;
    background-color: var(--uiTimelineMainColor);
  
    position: absolute;
    top: 0;
  }
  
  .timeline__group{
    position: relative;
  }
  
  .timeline__group:not(:first-of-type){
    margin-top: 4rem;
  }
  
  .timeline__year{
    padding: .5rem 1.5rem;
    color: var(--uiTimelineSecondaryColor);
    background-color: #4ECDC4;
  
    position: absolute;
    left: 0;
    top: 0;
  }

  
  .timeline__box{
    position: relative;
  }
  
  .timeline__box:not(:last-of-type){
    margin-bottom: 30px;
  }
  
  .timeline__box:before{
    content: "";
    width: 100%;
    height: 2px;
    background-color: var(--uiTimelineMainColor);
  
    position: absolute;
    left: 0;
    z-index: -1;
  }
  
  .timeline__date{
    min-width: 65px;
    position: absolute;
    left: 0;
  
    box-sizing: border-box;
    padding: .5rem 1.5rem;
    text-align: center;
  
    background-color: var(--uiTimelineMainColor);
    color: var(--uiTimelineSecondaryColor);
  }
  
  .timeline__day{
    font-size: 2rem;
    font-weight: 700;
    display: block;
  }
  
  .timeline__month{
    display: block;
    font-size: .8em;
    text-transform: uppercase;
  }
  
  .timeline__post{
    padding: 1.5rem 2rem;
    border-radius: 2px;
    border-left: 3px solid var(--uiTimelineMainColor);
    box-shadow: 0 1px 3px 0 rgba(0, 0, 0, .12), 0 1px 2px 0 rgba(0, 0, 0, .24);
    background-color: var(--uiTimelineSecondaryColor);
  }
  
  @media screen and (min-width: 641px){
  
    .timeline:before{
      left: 30px;
      
      background-color: #4ECDC4;
      
    }
  
    .timeline__group{
      padding-top: 55px;
    }
  
    .timeline__box{
      padding-left: 80px;
    }
  
    .timeline__box:before{
      top: 50%;
      transform: translateY(-50%);  
    }  
  
    .timeline__date{
      top: 50%;
      margin-top: -27px;
    }
  }
  
  @media screen and (max-width: 640px){
  
    .timeline:before{
      left: 0;
    }
  
    .timeline__group{
      padding-top: 40px;
    }
  
    .timeline__box{
      padding-left: 20px;
      padding-top: 70px;
    }
  
    .timeline__box:before{
      top: 90px;
    }    
  
    .timeline__date{
      top: 0;
    }
  }
  
  .timeline{
    --timelineMainColor: #4557bb;
    font-size: 16px;
  }
  
  /*
  =====
  DEMO
  =====
  */
  
  @media (min-width: 768px){
  
    html{
      font-size: 62.5%;
    }
  }
  
  @media (max-width: 767px){
  
    html{
      font-size: 55%;
    }
  }
  
  body{
    font-family: -apple-system, BlinkMacSystemFont, Segoe UI, Roboto, Open Sans, Ubuntu, Fira Sans, Helvetica Neue, sans-serif;
    font-size: 1.6rem;
    color: #222;
  
    background-color: #f0f0f0;
    margin: 0;
    -webkit-overflow-scrolling: touch;   
    overflow-y: scroll;
    
    display: flex;
    flex-direction: column;
  }
  
  p{
    margin-top: 0;
    margin-bottom: 1.5rem;
    line-height: 1.5;
  }
  
  p:last-child{
    margin-bottom: 0;
  }
  
  .page{
    max-width: 800px;
    padding: 10rem 2rem 3rem;
    margin-left: auto;
    margin-right: auto;
    order: 1;
  }
  
  /*
  =====
  LinkedIn
  =====
  */
  
  .linkedin{
    background-color: #fff;
    text-align: center;
  }
  
  .linkedin__container{
    max-width: 1000px;
    padding: 10px;
    margin-left: auto;
    margin-right: auto;  
  }
  
  .linkedin__text{
    margin-top: 0;
    margin-bottom: 0;
  }
  
  .linkedin__link{
    color: #ff5c5c;
  }
</style>


 <section id="main-content">
      <section class="wrapper">
 <h1><i class="fa fa-angle-right"></i>연혁</h1>

<div class="page">
    <div class="timeline">
      <div class="timeline__group">
        <span class="timeline__year">2006</span>

        <div class="timeline__box">
          <div class="timeline__date">
            <span class="timeline__day">2</span>
            <span class="timeline__month">Dec</span>
          </div>

          <div class="timeline__post">
            <div class="timeline__content">
              <p>독서문화 진흥법 제정/공포</p>
            </div>
          </div>
        </div>

        <div class="timeline__group">
            <span class="timeline__year">2007</span>
        <div class="timeline__box">
          <div class="timeline__date">
            <span class="timeline__day">5</span>
            <span class="timeline__month">Apr</span>
          </div>
          <div class="timeline__post">
            <div class="timeline__content">
              <p>독서문화진흥법 본격 시행</p>
            </div>
          </div>
        </div>
        <div class="timeline__box">
            <div class="timeline__date">
              <span class="timeline__day">19</span>
              <span class="timeline__month">Apr</span>
            </div>
            <div class="timeline__post">
              <div class="timeline__content">
                <p>대전광역시 『책 읽는 대전 운동 종합계획』수립및 22개 실천과제발굴 각급기관 및 단체에 참여와 협조 요청</p>
              </div>
            </div>
          </div>
          <div class="timeline__box">
            <div class="timeline__date">
              <span class="timeline__day">23</span>
              <span class="timeline__month">Apr</span>
            </div>
            <div class="timeline__post">
              <div class="timeline__content">
                <p>4대전시장의요청에 따라 한국문화원연합회 대전광역시지회에서는 지역문화원, 도서관, 시민단체가 협력을 통해 책 읽는 운동을 지역문화운동으로 발전을 위한추진본부 구성 추진</p>
              </div>
            </div>
          </div>

          <div class="timeline__box">
            <div class="timeline__date">
              <span class="timeline__day">7</span>
              <span class="timeline__month">Jun</span>
            </div>
            <div class="timeline__post">
              <div class="timeline__content">
                <p>한국문화원연합회대전지회(지회장조성남), 대전사랑시민협의회(회장 양희권), 대전참여자치시민연대(공동의장송인준), 한국문인협회대전지회(회장 이규식), 대전여성단체협의회(회장장금식), 대전YMCA(사무총장 이충재) 6개 대전시민사회단체가 창립준비모임을통해 추진본부 조직구성 창립대회 일정, 운영규약, 책 읽는 대전운동선언문 등 기본(안)마련</p>
              </div>
            </div>
          </div>

          <div class="timeline__box">
            <div class="timeline__date">
              <span class="timeline__day">24</span>
              <span class="timeline__month">Jul</span>
            </div>
            <div class="timeline__post">
              <div class="timeline__content">
                <p>「책읽는 대전운동」 명칭공모를 통해 명칭은 희망의 책 대전본부로슬로건은 “책으로 행복한 대전”으로 확정하고 「희망의 책 대전본부」출범식과 “책으로 행복한 대전” 선포식 진행</p>
              </div>
            </div>
            <div class="timeline__post">
                <div class="timeline__content">
                  <p>희망의 책 대전본부 출범이후 보다 효율적인 사업추진과 범시민적 참여와본부의 공공성과 신뢰성을 강화하기 위해 다각적인 모색 후 제4차 공동대표회의(10/9)와발기인대회(10/9) 를 통해 지역네트워크를 통한 민간 참여강화와 민간중심의거버넌스 강화를 위해 법인화를 결정</p>
                </div>
              </div>
          </div>
          
          <div class="timeline__box">
            <div class="timeline__date">
              <span class="timeline__day">23</span>
              <span class="timeline__month">Oct</span>
            </div>
            <div class="timeline__post">
              <div class="timeline__content">
                <p>사단법인 희망의 책 대전본부 창립총회 - 조성남 본 회의 이사장으로 추대</p>
              </div>
            </div>
          </div>

          <div class="timeline__box">
            <div class="timeline__date">
              <span class="timeline__day">26</span>
              <span class="timeline__month">Nov</span>
            </div>
            <div class="timeline__post">
              <div class="timeline__content">
                <p>사단법인 희망의 책 대전본부 법인설립허가</p>
              </div>
            </div>
          </div>

          <div class="timeline__box">
            <div class="timeline__date">
              <span class="timeline__day">12</span>
              <span class="timeline__month">Dec</span>
            </div>
            <div class="timeline__post">
              <div class="timeline__content">
                <p>사단법인 희망의 책 대전본부 법인설립허가증 발급</p>
              </div>
            </div>
          </div>
      </div>
      
      <div class="timeline__group">
        <span class="timeline__year">2008</span>
        <div class="timeline__box">
          <div class="timeline__date">
            <span class="timeline__day">19</span>
            <span class="timeline__month">Jan</span>
          </div>
          <div class="timeline__post">
            <div class="timeline__content">
              <p>2008년도 정기총회 개최
            </p>
            </div>
          </div>
        </div>
      </div>


        <div class="timeline__group">
            <span class="timeline__year">2010</span>
        <div class="timeline__box">
          <div class="timeline__date">
            <span class="timeline__day">25</span>
            <span class="timeline__month">Mar</span>
          </div>
          <div class="timeline__post">
            <div class="timeline__content">
              <p>2010년도 정기총회 개최
                
                </p>
            </div>
          </div>
        </div>
        <div class="timeline__box">
            <div class="timeline__date">
              <span class="timeline__day">12</span>
              <span class="timeline__month">Nov</span>
            </div>
            <div class="timeline__post">
              <div class="timeline__content">
                <p>11월12일 2010년도 임시총회 개최,
                    조성남 이사장을 본회 이사장으로 재추대
                    </p>
              </div>
            </div>
          </div>
          

          <div class="timeline__group">
            <span class="timeline__year">2011</span>
            <div class="timeline__box">
              <div class="timeline__date">
                <span class="timeline__day">24</span>
                <span class="timeline__month">Feb</span>
              </div>
              <div class="timeline__post">
                <div class="timeline__content">
                  <p>2011년도 정기총회 개최</p>
                </div>
              </div>
            </div>
          </div>

          <div class="timeline__group">
            <span class="timeline__year">2012</span>
            <div class="timeline__box">
              <div class="timeline__date">
                <span class="timeline__day">14</span>
                <span class="timeline__month">Mar</span>
              </div>
              <div class="timeline__post">
                <div class="timeline__content">
                  <p>2012년도 정기총회 개최
                </p>
                </div>
              </div>
            </div>
          </div>


          <div class="timeline__group">
            <span class="timeline__year">2013</span>
            <div class="timeline__box">
              <div class="timeline__date">
                <span class="timeline__day">15</span>
                <span class="timeline__month">Mar</span>
              </div>
              <div class="timeline__post">
                <div class="timeline__content">
                  <p>3월15일 2013년도 정기총회 개최</p>
                </div>
              </div>
            </div>
          </div>

          <div class="timeline__group">
            <span class="timeline__year">2014</span>
        <div class="timeline__box">
          <div class="timeline__date">
            <span class="timeline__day">20</span>
            <span class="timeline__month">Mar</span>
          </div>
          <div class="timeline__post">
            <div class="timeline__content">
              <p>2014년도 정기총회 개최
                
                </p>
            </div>
          </div>
        </div>
        <div class="timeline__box">
            <div class="timeline__date">
              <span class="timeline__day">29</span>
              <span class="timeline__month">May</span>
            </div>
            <div class="timeline__post">
              <div class="timeline__content">
                <p>2014년도 임시총회 개최,
                    조성남 이사장을 본회 이사장으로 재추대
                    
                    </p>
              </div>
            </div>
          </div>
              
            </div>
          </div>
      </div>
    </div>
  </div>
  </section>
  </section>


<%@include file="../include/footer.jsp"%> 
  
  