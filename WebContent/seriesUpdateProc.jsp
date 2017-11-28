<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" 
import="java.sql.*, org.cartoon.inha.DBCon" 
import="com.oreilly.servlet.*, com.oreilly.servlet.multipart.*"
import="java.util.*, java.io.*" 
%>

<%
	if(session.getAttribute("email") == null){
    response.sendRedirect("/12114497_Hanjung/index.jsp");
	}
%>

<%
	request.setCharacterEncoding("utf-8");
	
	DBCon DriverManager = new DBCon();
	Connection con= null;
	PreparedStatement pstmt = null;
	int maxsize = 5*1024*1024;
	String realFolder = "/Users/hanjung/12114497/12114497_Hanjung/WebContent/upload";

	try {
		MultipartRequest multi = new MultipartRequest(request, realFolder, maxsize, "utf-8", new DefaultFileRenamePolicy());
		
		String title = multi.getParameter("title");
		String comment = multi.getParameter("comment");
		String thumb_img = multi.getFilesystemName("thumb_img");
		String cartoon_img = multi.getFilesystemName("cartoon_img");

		int series_id = Integer.parseInt(request.getParameter("series_id"));
	
		con = DriverManager.getConnection();
	  String query = "UPDATE series SET title=?, comment=?, thumb_img=?, cartoon_img=? WHERE id=?";
	  
	  pstmt = con.prepareStatement(query);

	  pstmt.setString(1,title);
	  pstmt.setString(2,comment);
	  pstmt.setString(3,thumb_img);
	  pstmt.setString(4,cartoon_img);
	  pstmt.setInt(5,series_id);

	  int n = pstmt.executeUpdate();
	  
	  pstmt.close();
	  con.close();
	  
	  response.sendRedirect("/12114497_Hanjung/webtoon_list.jsp");
	} catch(IOException e) {
		out.println("파일 전송 오류 : " + e);
	}
%>