<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="cells-bg-div">
  <jsp:include page="./header.jsp"></jsp:include>
  <!-- navbar finish -->
  <div class = "bg-polygon">
   	<div class = "black-textbox">
   		웹툰 관리 페이지<br/> 12114497 한정 최종과제 <br/>
   		<%
   			if(session.getAttribute("email")==null){
   				%>
   					<button class="btn btn-light" onClick="window.location.href = '/12114497_Hanjung/login.jsp'">로그인 하기 > </button>		
   				<%
   			} else {
   				%>
		   			<button class="btn btn-light" onClick="window.location.href = '/12114497_Hanjung/webtoon_list.jsp'">웹툰 리스트 보러가기 > </button>
   				<%
   			}
   		%>
   	</div>
  </div>
</div>