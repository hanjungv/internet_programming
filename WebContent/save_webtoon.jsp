<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.sql.*"%>
<%
	Class.forName("com.mysql.jdbc.Driver");
	String DB_URL = "jdbc:mysql://localhost:3306/webtoon?useSSL=false";
	String DB_USER = "admin";
	String DB_PASSWORD= "1234";
	
	Connection con= null;
	PreparedStatement pstmt = null;
	ResultSet rs   = null;

	String title = request.getParameter("title");
	String genre = request.getParameter("genre");
	String summary = request.getParameter("summary");
	String represent_img = request.getParameter("represent_img");
	int user_id = 1;
	
	try {
	  con = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
	  String query = "INSERT INTO cartoon(title, genre, summary, represent_img, user_id) VALUES(?,?,?,?,?)";
	  
	  pstmt = con.prepareStatement(query);
	  pstmt.setString(1,title);
	  pstmt.setString(2,genre);
	  pstmt.setString(3,summary);
	  pstmt.setString(4,represent_img);
	  pstmt.setInt(5,user_id);
	  
	  
	  con.close();
	  pstmt.close();
	  
	  
	} catch(Exception e){
		
	}
	
%>