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
		String genre = multi.getParameter("genre");
		String summary = multi.getParameter("summary");
		String represent_img = multi.getFilesystemName("represent_img");
		int cartoon_id = Integer.parseInt(request.getParameter("webtoon_id"));
	
		con = DriverManager.getConnection();
	  String query = "UPDATE cartoon SET title=?, genre=?, summary=?, represent_img=? WHERE id=?";
	  
	  pstmt = con.prepareStatement(query);

	  System.out.println(cartoon_id);
	  pstmt.setString(1,title);
	  pstmt.setString(2,genre);
	  pstmt.setString(3,summary);
	  pstmt.setString(4,represent_img);
	  pstmt.setInt(5,cartoon_id);

	  int n = pstmt.executeUpdate();
	  
	  pstmt.close();
	  con.close();
	  
	  response.sendRedirect("/12114497_Hanjung/webtoon_list.jsp");
	} catch(IOException e) {
		out.println("파일 전송 오류 : " + e);
	}
%>