<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="cells-bg-div">
  <jsp:include page="./header.jsp"></jsp:include>
  <!-- navbar finish -->
  <div class = "bg-polygon">
    <div class="container container-custom col-sm-6 col-xs-6">
      <div class="form-div-custom">
        <h2>시리즈 등록</h2>
        <hr>
        <form method="POST" action="/12114497_Hanjung/seriesSaveProc.jsp?webtoon_id=<%=request.getParameter("webtoon_id")%>" enctype="multipart/form-data">
          <div class="form-group row">
            <label for="title" class="col-sm-12 col-form-label">제목</label>
            <div class="col-sm-12">
              <input type="text" class="form-control" id="title" name="title" placeholder="제목을 입력하세요" required>
            </div>
          </div>
          <div class="form-group row">
            <label for="title" class="col-sm-12 col-form-label">작가의 말</label>
            <div class="col-sm-12">
              <input type="text" class="form-control" id="comment" name="comment" placeholder="작가의 말을 입력하세요" required>
            </div>
          </div>
          <div class="form-group row">
            <label for="inputPassword" class="col-sm-12 col-form-label">썸네일 이미지</label>
            <div class="col-sm-12">
              <input type="file" name="thumb_img" class="form-control-file" id="exampleFormControlFile1" required>
            </div>
          </div>
          <div class="form-group row">
            <label for="inputPassword" class="col-sm-12 col-form-label">만화 그림파일</label>
            <div class="col-sm-12">
              <input type="file" name="cartoon_img" class="form-control-file" id="exampleFormControlFile1" required>
            </div>
          </div>
          <div class="consent-div">
            <div id="accordion" role="tablist">
              <div class="card consent-accordian">
                <div class="card-header" role="tab" id="headingOne">
                  <h5 class="mb-0 consent-accordian-title">
                    <a data-toggle="collapse" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne" id="agreement-anchor">
                      운영 방안 보기
                    </a>
                  </h5>
                </div>
                <div id="collapseOne" class="collapse" role="tabpanel" aria-labelledby="headingOne" data-parent="#accordion">
                  <div class="card-body consent-accordian-content">
                    1.국회는 헌법개정안이 공고된 날로부터 60일 이내에 의결하여야 하며, 국회의 의결은 재적의원 3분의 2 이상의 찬성을 얻어야 한다. 공무원의 직무상 불법행위로 손해를 받은 국민은 법률이 정하는 바에 의하여 국가 또는 공공단체에 정당한 배상을 청구할 수 있다. 이 경우 공무원 자신의 책임은 면제되지 아니한다.<br/><br/>
                        
                    2.국회의 회의는 공개한다. 다만, 출석의원 과반수의 찬성이 있거나 의장이 국가의 안전보장을 위하여 필요하다고 인정할 때에는 공개하지 아니할 수 있다.<br/><br/>
                                          
                    3.국가는 법률이 정하는 바에 의하여 재외국민을 보호할 의무를 진다. 대통령은 국가의 원수이며, 외국에 대하여 국가를 대표한다. 정부는 회계연도마다 예산안을 편성하여 회계연도 개시 90일전까지 국회에 제출하고, 국회는 회계연도 개시 30일전까지 이를 의결하여야 한다.<br/><br/>
                  </div>
                </div>
              </div>
            </div>
            <div class="agreement-div">
              <div class="form-check form-check-inline">
                <label class="form-check-label"> 
                  <input class="form-check-input" type="radio" name="agreement" id="agree" value="agree"> 운영방안에 동의하십니까?
                </label>
              </div>
              <div class="form-check form-check-inline">
                <label class="form-check-label">
                  <input class="form-check-input" type="radio" name="agreement" id="disagree" value="disagree" checked> 동의하지 않으십니까?
                </label>
              </div>
            </div>
          </div>
          <button type="submit" class="btn btn-primary btn-lg btn-block" id="makeSeriesBtn" disabled>생성하기</button>
        </form>
      </div>
    </div>
  </div>
</div>