<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	import="java.sql.*, org.cartoon.inha.DBCon, org.cartoon.inha.SecurityUtil"
%>
%>
<%
	request.setCharacterEncoding("utf-8");
	
	DBCon DriverManager = new DBCon();
	Connection con= null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	try {
		int user_id = (int)session.getAttribute("id");
	  
	  
		con = DriverManager.getConnection();
	  String query = "SELECT * FROM cartoon";
	  pstmt = con.prepareStatement(query);
	  rs = pstmt.executeQuery();
	
	  pstmt.close();
	  con.close();
	} catch(Exception e) {
		out.println("오류 : " + e);
	}
%>
	