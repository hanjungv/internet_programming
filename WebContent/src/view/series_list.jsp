<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- navbar start -->
<header>
  <nav class="navbar navbar-custom navbar-expand-lg navbar-light">
    <a class="navbar-brand" href="#">웹툰 관리 프로그램</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav navbar-nav-custom">
        <li class="nav-item active">
          <a class="nav-link" href="#">웹툰 리스트 <span class="sr-only">(current)</span></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">회차 정보</a>
        </li>
      </ul>
    </div>
  </nav>
</header>
<!-- navbar finish -->
    <div class="webtoom-meta-div">
      <div class="thumb-img">
        <img src="https://img.adulti01.com/data/file/webtoon/46da75b2929647a00881c3d4ea5a98fe.jpg" alt="복학왕">
      </div>
      <div class="webtoon-meta-detail-div">
        <h2>복학왕&nbsp;&nbsp;<span>작가: 기안84</span></h2>
        <p><pre>패션왕 우기명이 돌아왔다!
즐거운 대학 생활?! 과연?!</pre>
        </p>
      </div>
    </div>
    <div class="container container-custom">
      <!-- guide button -->
  <div class="guide-button-div">
    <button type="button" class="btn btn-outline-success btn-sm margin-r-5"><span class="glyphicons glyphicons-plus"></span>회차 추가</button>
    <div class="search-div">
      <input class="form-control mr-sm-2" type="text" placeholder="검색하기(제목)" aria-label="Search" id = "seriesSearchQuery">
    </div>
  </div>
  <!-- list -->
  <div class="series-list">
    <div class="card bg-dark text-white card-series-custom">
      <img class="card-img" src="https://img.adulti01.com/data/file/webtoon/46da75b2929647a00881c3d4ea5a98fe.jpg" alt="Card image">
      <div class="card-img-overlay card-img-overlay-custom">
        <h4 class="card-title">3회차</h4>
        <p class="card-text etc-card-text">2017.00.00</p>
        <div class="card-guide-button-div">
          <button type="button" class="btn btn-outline-danger btn-sm margin-r-5">삭제</button>
          <button type="button" class="btn btn-outline-primary btn-sm ">수정</button>
        </div>
      </div>
    </div>
    <div class="card bg-dark text-white card-series-custom">
      <img class="card-img" src="https://img.adulti01.com/data/file/webtoon/46da75b2929647a00881c3d4ea5a98fe.jpg" alt="Card image">
      <div class="card-img-overlay card-img-overlay-custom">
        <h4 class="card-title">2회차</h4>
        <p class="card-text etc-card-text">2017.00.00</p>
        <div class="card-guide-button-div">
          <button type="button" class="btn btn-outline-danger btn-sm margin-r-5">삭제</button>
          <button type="button" class="btn btn-outline-primary btn-sm ">수정</button>
        </div>
      </div>
    </div>
    <div class="card bg-dark text-white card-series-custom">
      <img class="card-img" src="https://img.adulti01.com/data/file/webtoon/46da75b2929647a00881c3d4ea5a98fe.jpg" alt="Card image">
      <div class="card-img-overlay card-img-overlay-custom">
        <h4 class="card-title">1회차</h4>
        <p class="card-text etc-card-text">2017.00.00</p>
        <div class="card-guide-button-div">
          <button type="button" class="btn btn-outline-danger btn-sm margin-r-5">삭제</button>
          <button type="button" class="btn btn-outline-primary btn-sm ">수정</button>
        </div>
      </div>
    </div>
  </div>
</div>
   