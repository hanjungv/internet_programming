<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	import="java.sql.*, org.cartoon.inha.DBCon, org.cartoon.inha.SecurityUtil" %>
<%
	request.setCharacterEncoding("utf-8");
	
	DBCon DriverManager = new DBCon();
	Connection con= null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	ResultSet rss = null;
	
	try {
		int user_id = (int)session.getAttribute("id");
	  int webtoon_id = Integer.parseInt(request.getParameter("webtoon_id"));
		con = DriverManager.getConnection();

	  String query = "SELECT cartoon.title as cartoonTitle, cartoon.summary, cartoon.genre, cartoon.represent_img FROM cartoon where id = ?";
	  pstmt = con.prepareStatement(query);
	  pstmt.setInt(1, webtoon_id);
	  rss = pstmt.executeQuery();
	
	  query = "SELECT series.title as seriesTitle, series.createdAt, series.thumb_img FROM series where cartoon_id = ?";
	  pstmt = con.prepareStatement(query);
	  pstmt.setInt(1, webtoon_id);
	  rs = pstmt.executeQuery();
	} catch(Exception e) {
		System.out.println("오류 : " + e);
	}
%>

<script>
function goAddSeries(webtoon_id){
	window.location.href='/12114497_Hanjung/series_new.jsp?webtoon_id='+webtoon_id;
}
</script>

<!-- navbar start -->
<div class="cells-bg-div">
  <jsp:include page="./header.jsp"></jsp:include>
   	<%
	  		while(rss.next()){
	  	%>
    <div class="webtoom-meta-div">
      <div class="thumb-img">
        <img src="http://localhost:8181/12114497_Hanjung/upload/<%=rss.getString("represent_img") %>" alt="복학왕">
      </div>
      <div class="webtoon-meta-detail-div">
        <h2><%=rss.getString("cartoonTitle") %>&nbsp;&nbsp;<span>genre: <%=rss.getString("genre")%></span></h2>
        <p><pre><%=rss.getString("summary") %></pre>
        </p>
      </div>
    </div>
		<div class="container container-custom">
    <!-- guide button -->
		  <div class="guide-button-div">
		    <button type="button" class="btn btn-outline-success btn-sm margin-r-5" onClick="goAddSeries(<%=request.getParameter("webtoon_id")%>)"><span class="glyphicons glyphicons-plus"></span>회차 추가</button>
		    <div class="search-div">
		      <input class="form-control mr-sm-2" type="text" placeholder="검색하기(제목)" aria-label="Search" id = "seriesSearchQuery">
		    </div>
		  </div>
	  <%
	  		}
	  %>
  	  <!-- list -->
  	  <%
  	 		if(rs.next()){
  		    rs.beforeFirst(); 
	  			while(rs.next()){
	  	%>
		  <div class="series-list">
		    <div class="card bg-dark text-white card-series-custom">
		      <img class="card-img" src="http://localhost:8181/12114497_Hanjung/upload/<%=rs.getString("thumb_img") %>" alt="Card image">
		      <div class="card-img-overlay card-img-overlay-custom">
		        <h4 class="card-title"><%=rs.getString("seriesTitle") %></h4>
		        <p class="card-text etc-card-text"><%=rs.getString("createdAt") %></p>
		        <div class="card-guide-button-div">
		          <button type="button" class="btn btn-outline-danger btn-sm margin-r-5">삭제</button>
		          <button type="button" class="btn btn-outline-primary btn-sm ">수정</button>
		        </div>
		      </div>
		    </div>
    <%
  			}
 		} else {
    %>
    		<h1 style="text-align:center; margin-top:150px">시리즈가 없습니다!</h1>
    <%
 		}
    %>
	  </div>
	</div>
</div>
   