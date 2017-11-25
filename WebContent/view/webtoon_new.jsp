<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- navbar start -->
<div class="cells-bg-div">
  <jsp:include page="./header.jsp"></jsp:include>
  <!-- navbar finish -->
 	<div class="bg-polygon">
    <div class="container container-custom col-sm-6">
      <div class="form-div-custom">
        <h2>웹툰 등록</h2>
        <hr/>
        <form method="post" action="/12114497_Hanjung/webtoonSaveProc.jsp">
          <div class="form-group row">
            <label for="title" class="col-sm-12 col-form-label">제목</label>
            <div class="col-sm-12">
              <input type="text" class="form-control" id="title" name="title" placeholder="제목을 입력하세요">
            </div>
          </div>
          <div class="form-group row">
            <label for="inputPassword" class="col-sm-12 col-form-label">장르</label>
            <div class="col-sm-12">
              <select name="genre" id="genre" class="form-control">
                <option value="action">액션</option>
                <option value="comedy">코미디</option>
                <option value="romance">로맨스</option>
                <option value="horror">호러</option>
                <option value="drama">드라마</option>
              </select>
            </div>
          </div>
          <div class="form-group row">
            <label for="summary" class="col-sm-12 col-form-label">줄거리</label>
            <div class="col-sm-12">
              <textarea name="summary" class="form-control" id="summary" rows="5"></textarea>
            </div>
          </div>
          <div class="form-group row">
            <label for="represent_img" class="col-sm-12 col-form-label">대표 이미지</label>
            <div class="col-sm-12">
              <input type="file" name="represent_img" class="represent_img" id="represent_img">
            </div>
          </div>
          <button type="submit" class="btn btn-primary btn-lg btn-block">생성하기</button>
        </form>
      </div>
    </div>
  </div>
</div>