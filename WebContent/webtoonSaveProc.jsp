<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" 
import="java.sql.*, org.cartoon.inha.DBCon" %>
<%
	DBCon DriverManager = new DBCon();
	Connection con= null;
	PreparedStatement pstmt = null;
	// ResultSet rs   = null;

	request.setCharacterEncoding("utf-8");

	String title = request.getParameter("title");
	String genre = request.getParameter("genre");
	String summary = request.getParameter("summary");
	String represent_img = request.getParameter("represent_img");
	int user_id = 1;
	
	try {
	  con = DriverManager.getConnection();
	  String query = "INSERT INTO cartoon(title, genre, summary, represent_img, user_id) VALUES(?,?,?,?,?)";
	  
	  pstmt = con.prepareStatement(query);
	  pstmt.setString(1,title);
	  pstmt.setString(2,genre);
	  pstmt.setString(3,summary);
	  pstmt.setString(4,represent_img);
	  pstmt.setInt(5,user_id);
	  
	  pstmt.executeUpdate();
	  
	  pstmt.close();
	  con.close();
	  
	  response.sendRedirect("/12114497_Hanjung/webtoon_list.jsp");
	  
	} catch(Exception e){
		System.out.println(e);
	}
%>