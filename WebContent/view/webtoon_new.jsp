<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	import="java.sql.*, org.cartoon.inha.DBCon, org.cartoon.inha.SecurityUtil" %>
	
<%
	request.setCharacterEncoding("utf-8");
	DBCon DriverManager = new DBCon();
	Connection con= null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	try {
	  if(request.getParameter("webtoon_id") != null){
	  		con = DriverManager.getConnection();
		  String query = "SELECT * FROM cartoon where id = ?";
		  pstmt = con.prepareStatement(query);
		  pstmt.setInt(1, Integer.parseInt(request.getParameter("webtoon_id")));
		  rs = pstmt.executeQuery();
		  rs.next();
	  }
	} catch(Exception e) {
		out.println("오류 : " + e);
	}
%>

<div class="cells-bg-div">
  <jsp:include page="./header.jsp"></jsp:include>
 	<div class="bg-polygon">
    <div class="container container-custom col-sm-6">
      <div class="form-div-custom">
        <h2>웹툰 등록</h2>
        <hr/>
        <% if(request.getParameter("webtoon_id") == null){ %>
        <form method="post" action="/12114497_Hanjung/webtoonSaveProc.jsp" enctype="multipart/form-data">
        <% } else { %>
        <form method="post" action='/12114497_Hanjung/webtoonUpdateProc.jsp?webtoon_id=<%= request.getParameter("webtoon_id")%>' enctype="multipart/form-data">
        <% } %>
          <div class="form-group row">
            <label for="title" class="col-sm-12 col-form-label">제목</label>
            <div class="col-sm-12">
              <input type="text" class="form-control" id="title" name="title" placeholder="제목을 입력하세요" value='<%=(request.getParameter("webtoon_id") == null ? "" : rs.getString("title"))%>'>
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
              <textarea name="summary" class="form-control" id="summary" rows="5"><%=(request.getParameter("webtoon_id") == null ? "" : rs.getString("summary"))%></textarea>
            </div>
          </div>
          <div class="form-group row">
            <label for="represent_img" class="col-sm-12 col-form-label">대표 이미지</label>
            <div class="col-sm-12">
              <input type="file" name="represent_img" class="represent_img" id="represent_img" value='<%= (request.getParameter("webtoon_id") == null ? "" : rs.getString("represent_img"))%>'>
            </div>
          </div>
          <button type="submit" class="btn btn-primary btn-lg btn-block">생성하기</button>
        </form>
      </div>
    </div>
  </div>
</div>

<script>
let genreVal = "<%=(request.getParameter("webtoon_id") == null ? "action" : rs.getString("genre")) %>";
document.getElementById("genre").value = genreVal; //genre setting
</script>
