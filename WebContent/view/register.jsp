<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="cells-bg-div">
  <jsp:include page="./header.jsp"></jsp:include>
  <!-- navbar finish -->
  <div class = "bg-polygon">
    <div class="container container-custom col-sm-3 col-xs-3">
      <div class="form-div-custom">
        <h2>회원 가입</h2>
        <hr>
        <form method="POST" action="/12114497_Hanjung/registerProc.jsp">
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
          <div class="form-group row">
            <label for="name" class="col-sm-12 col-form-label">이름</label>
            <div class="col-sm-12">
              <input type="text" class="form-control" id="name" name="name" placeholder="이름을 입력하세요">
            </div>
          </div>
          <div class="form-group row">
            <label for="is_writer" class="col-sm-12 col-form-label">작가이신가요?</label>
            <div class="col-sm-12">
	            <div class="form-check">
								<label class="form-check-label">
									<input type="radio" class="form-check-input" id="is_writer" name="is_writer" value="1">네
								</label>
							</div>
							<div class="form-check">
								<label class="form-check-label">
		             	<input type="radio" class="form-check-input" id="is_writer" name="is_writer" value="0" checked>아니요
	               </label>
               </div>
            </div>
          </div>
          <button type="submit" class="btn btn-primary btn-lg btn-block">회원가입 하기</button>
        </form>
      </div>
    </div>
  </div>
</div>