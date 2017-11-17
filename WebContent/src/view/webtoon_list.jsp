<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div class="cells-bg-div">
  <jsp:include page="./header.jsp"></jsp:include>
	<!-- navbar finish -->
	<div class="container container-custom">
	  <h2>웹툰 리스트</h2>
	  <div class="guide-button-div">
	    <button type="button" class="btn btn-outline-success btn-sm margin-r-5"><span class="glyphicons glyphicons-plus"></span>웹툰 추가</button>
	    <button type="button" class="btn btn-outline-danger btn-sm margin-r-5" id="selectedRemoveBtn">선택 삭제</button>
	    <button type="button" class="btn btn-outline-primary btn-sm margin-r-5" id="selectedResetBtn">선택 초기화</button>
	    <div class="search-div">
	      <input class="form-control mr-sm-2" type="text" placeholder="검색하기(작가명, 제목)" aria-label="Search" id="webtoonSearchQuery">
	    </div>
	  </div>
	  <div class="card bg-dark text-white card-custom">
	    <img class="card-img" src="https://img.adulti01.com/data/file/webtoon/46da75b2929647a00881c3d4ea5a98fe.jpg" alt="Card image">
	    <div class="card-img-overlay card-img-overlay-custom">
	      <h4 class="card-title">복학왕</h4>
	      <p class="card-text">패션왕 우기명이 돌아왔다! 즐거운 대학 생활?! 과연?!</p>
	      <p class="card-text etc-card-text">genre: 코미디</p>
	      <p class="card-text etc-card-text">작가: 기안84</p>
	      <div class="card-guide-button-div">
	        <input type="checkbox" name="deleteArr" id="webtoon1" value="webtoon1" hidden>        
	        <button type="button" class="btn btn-outline-warning btn-sm margin-r-5 boxSelectBtn">선택</button>
	        <button type="button" class="btn btn-outline-danger btn-sm margin-r-5">삭제</button>
	        <button type="button" class="btn btn-outline-primary btn-sm ">수정</button>
	      </div>
	    </div>
	  </div>
	  <div class="card bg-dark text-white card-custom">
	    <img class="card-img" src="http://image.zdnet.co.kr/2016/12/30/leespot_mOnDo29n1snb.jpg" alt="Card image">
	    <div class="card-img-overlay card-img-overlay-custom">
	      <h4 class="card-title">외모지상주의</h4>
	      <p class="card-text">어느날 그에게 일어난 기적같은 일</p>
	      <p class="card-text etc-card-text">genre: 코미디</p>
	      <p class="card-text etc-card-text">작가: 박태준</p>
	      <div class="card-guide-button-div">
	        <input type="checkbox" name="deleteArr" id="webtoon2" value="webtoon2" hidden>        
	        <button type="button" class="btn btn-outline-warning btn-sm margin-r-5 boxSelectBtn">선택</button>
	        <button type="button" class="btn btn-outline-danger btn-sm margin-r-5">삭제</button>
	        <button type="button" class="btn btn-outline-primary btn-sm ">수정</button>
	      </div>
	    </div>
	  </div>
	  <div class="card bg-dark text-white card-custom">
	    <img class="card-img" src="http://mblogthumb2.phinf.naver.net/20140822_145/lovedh1114_1408704835285bXxbx_JPEG/4.jpg?type=w2" alt="Card image">
	    <div class="card-img-overlay card-img-overlay-custom">
	        <h4 class="card-title">조의 영역</h4>
	      <p class="card-text">물에 살던 녀석들의 모습이 상식을 벗어나기 시작했다. '마음의 소리' 조석의 재난 스릴러</p>
	      <p class="card-text etc-card-text">genre: 스릴러</p>
	      <p class="card-text etc-card-text">작가: 조석</p>
	      <div class="card-guide-button-div">
	        <input type="checkbox" name="deleteArr" id="webtoon3" value="webtoon3" hidden>        
	        <button type="button" class="btn btn-outline-warning btn-sm margin-r-5 boxSelectBtn">선택</button>
	        <button type="button" class="btn btn-outline-danger btn-sm margin-r-5">삭제</button>
	        <button type="button" class="btn btn-outline-primary btn-sm ">수정</button>
	      </div>
	    </div>
	  </div>
	  <div class="card bg-dark text-white card-custom">
	    <img class="card-img" src="https://i.ytimg.com/vi/l7kQIFL3eJY/maxresdefault.jpg" alt="Card image">
	    <div class="card-img-overlay card-img-overlay-custom">
	      <h4 class="card-title">유미의 세포들</h4>
	      <p class="card-text">유미와 그녀의 세포들 이야기. 이동건 작가의 컷툰 신작!</p>
	      <p class="card-text etc-card-text">genre: Drama</p>
	      <p class="card-text etc-card-text">작가: 이동건</p>
	      <div class="card-guide-button-div">
	        <input type="checkbox" name="deleteArr" id="webtoon4" value="webtoon4" hidden>        
	        <button type="button" class="btn btn-outline-warning btn-sm margin-r-5 boxSelectBtn">선택</button>            
	        <button type="button" class="btn btn-outline-danger btn-sm margin-r-5">삭제</button>
	        <button type="button" class="btn btn-outline-primary btn-sm ">수정</button>
	      </div>
	    </div>
	  </div>    
	</div>    
</div>