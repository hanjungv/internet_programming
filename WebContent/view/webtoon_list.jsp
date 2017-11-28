<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	import="java.sql.*, org.cartoon.inha.DBCon, org.cartoon.inha.SecurityUtil" %>
<%
	request.setCharacterEncoding("utf-8");
	
	DBCon DriverManager = new DBCon();
	Connection con= null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	try {
		int user_id = (int)session.getAttribute("id");
		con = DriverManager.getConnection();
		String query = "SELECT cartoon.id as cartoonId, cartoon.title, cartoon.genre, cartoon.summary, cartoon.represent_img, user.name, user.id "
	  		+"FROM cartoon INNER JOIN user ON cartoon.user_id = user.id";
		
		if(request.getParameter("search") != null){
			query = "SELECT cartoon.id as cartoonId, cartoon.title, cartoon.genre, cartoon.summary, cartoon.represent_img, user.name, user.id "
		  		+"FROM cartoon INNER JOIN user ON cartoon.user_id = user.id WHERE cartoon.title LIKE ?";
		}
		
	  pstmt = con.prepareStatement(query);
	  if(request.getParameter("search") != null){
			String para = request.getParameter("search");
	  		pstmt.setString(1, "%"+ para + "%");
	  }
	  
	  rs = pstmt.executeQuery();
	 
	} catch(Exception e) {
		out.println("오류 : " + e);
	}
%>
<div class="cells-bg-div">
  <jsp:include page="./header.jsp"></jsp:include>
	<!-- navbar finish -->
	<div class="container container-custom">
	  <h2>웹툰 리스트</h2>
	  <div class="guide-button-div">
	    <button type="button" class="btn btn-outline-success btn-sm margin-r-5" onClick="window.location.href = '/12114497_Hanjung/webtoon_new.jsp'"><span class="glyphicons glyphicons-plus"></span>웹툰 추가</button>
	    <div class="search-div">
	    		<form method='get' action='on_id") %>' style="wth:100%">
	      		<input class="form-control mr-sm-2" type="text" name="search" placeholder="검색하기(작가명, 제목)" aria-label="Search" id="webtoonSearchQuery" >
	        <button type="submit" class="btn btn-outline-info btn-sm">검색</button>
	      </form>
	    </div>
	  </di
		  >
	  <% while(rs.
		  	ext()){ %>
		  	<div class="card bg-dark text-white card-custom" onClick='goSeries(<%=rs.getString("cartoonId")%>)'>
		    <img class="card-img" src="http://localhost:8181/12114497_Hanjung/upload/<%=rs.getString("represent_img") %>" alt="Card image">
		    <div class="card-img-overlay card-img-overlay-custom">
		      <h4 class="card-title"><%=rs.getString("title") %></h4>
		      <p class="card-text"><%=rs.getString("summary") %></p>
		      <p class="card-text etc-card-text">genre: <%=rs.getString("genre") %></p>
		      <p class="card-text etc-card-text">작가: <%=rs.getString("name") %></p>
		      <div class="card-guide-button-div">
		        <input type="checkbox" name="deleteArr" id="webtoon1" value="webtoon1" hidden>
		        <%
		        		int user_id = Integer.parseInt(rs.getString("id"));
		        		if((int)session.getAttribute("id") == user_id){
      				%>
				        <button type="button" onClick="eraseWebtoon(event, <%=rs.getString("cartoonId")%>)" class="btn btn-outline-danger btn-sm margin-r-5">삭제</button>
				        <button type="button" onClick="editWebtoon(event, <%=rs.getString("cartoonId")%>)" class="btn btn-outline-primary btn-sm ">수정</button>
		        			<%
		        		}
		        			%>        
		      </div>
		    </div>
		  </div>
		  	<%
		  }
	  rs.close();
	  pstmt.close();
	  con.close();
	  %>
	</div>    
</div>

<script>
function goSeries(id){
	window.location.href='/12114497_Hanjung/series_list.jsp?webtoon_id='+id;
}

function eraseWebtoon(e, cartoonId){
  e.stopPropagation();
  let YN = confirm("삭제하시겠습니까?");
  if(YN){
  		window.location.href='/12114497_Hanjung/webtoonDeleteProc.jsp?webtoon_id='+cartoonId;
  }
}

function editWebtoon(e, cartoonId){
	e.stopPropagation();
	window.location.href='/12114497_Hanjung/webtoon_new.jsp?webtoon_id='+cartoonId;
}
</script>


