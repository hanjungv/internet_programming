<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="cells-bg-div">
  <jsp:include page="./header.jsp"></jsp:include>
  <!-- navbar finish -->
  <div class = "bg-polygon">
    <div class="container container-custom col-sm-5 col-xs-5">
      <div class="form-div-custom">
        <h2>로그인</h2>
        <hr>
        <form method="POST" action="series_result.jsp">
          <div class="form-group row">
            <label for="email" class="col-sm-12 col-form-label">이메일</label>
            <div class="col-sm-12">
              <input type="email" class="form-control" id="email" name="email" placeholder="이메일을 입력하세요" required>
            </div>
          </div>
          <div class="form-group row">
            <label for="password" class="col-sm-12 col-form-label">비밀번호</label>
            <div class="col-sm-12">
              <input type="password" class="form-control" id="password" name="password" placeholder="비밀번호를 입력하세요">
            </div>
          </div>
          <button type="submit" class="btn btn-primary btn-lg btn-block">로그인 하기</button>
          <div class="text-center">
          		<a href="/12114497_Hanjung/register.jsp">회원가입하기</a>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>